import { createApp } from 'vue'
import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'
import '@/assets/styles/index.scss'
import App from '@/App.vue'
import router, { createNewRouter } from '@/router/index.js'
import store from '@/store/index.js'
import { getToken } from '@/utils/cookie.js'
import { loginApi } from '@/api/login.js'
import { useUserStore } from '@/store/modules/user.js'
import * as ElementPlusIconsVue from '@element-plus/icons-vue'
import 'virtual:svg-icons-register'
import Icon from '@/components/Icon/index.vue'
import { hasPermission } from '@/utils/permission.js'

// 初始化
setupInit()

async function setupInit() {
  const app = createApp(App)
  app.use(store)

  if (getToken()) {
    try {
      // 用户已登录
      const res = await loginApi.getUserInfo()
      if (res) {
        // 先加载权限和菜单，再挂载，避免 v-permission 指令在权限列表为空时误删元素
        useUserStore(store).login(res)
        // 创建动态路由
        if (res.routerList) {
          createNewRouter(res.routerList)
        }
      }
    } catch (e) {
      console.error('获取用户信息失败:', e)
    }
  }

  init(app)
}

function init(app) {
  app.use(router)
  app.use(ElementPlus)

  // 注册图标组件
  for (const [key, component] of Object.entries(ElementPlusIconsVue)) {
    app.component(key, component)
  }
  // 注册图标组件
  app.component('Icon', Icon)

  // 注册自定义指令（权限使用）
  app.directive('permission', (el, binding) => {
    if (!hasPermission(binding.value)) {
      el.parentNode && el.parentNode.removeChild(el)
    }
  })

  // 全局配置：Dialog遮罩层点击不关闭
  app._context.components.ElDialog.props.closeOnClickModal.default = false

  // 挂载
  app.mount('#app')
}

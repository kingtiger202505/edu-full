package com.roncoo.education.course.callback;

import cn.hutool.core.util.StrUtil;
import com.roncoo.education.common.base.BaseController;
import com.roncoo.education.common.tools.JsonUtil;
import com.roncoo.education.common.video.impl.polyv.live.*;
import com.roncoo.education.common.video.impl.polyv.vod.CallbackVodAuth;
import com.roncoo.education.common.video.impl.polyv.vod.CallbackVodUpload;
import com.roncoo.education.course.callback.biz.PolyvCallbackBiz;
import io.swagger.v3.oas.annotations.Operation;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.constraints.NotNull;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.util.StreamUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.nio.charset.StandardCharsets;

/**
 * 保利威
 *
 * @author wujing
 */
@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/course/callback/polyv")
public class PolyvCallbackController extends BaseController {

    @NotNull
    private final PolyvCallbackBiz biz;

    /**
     * 上传回调
     *
     * @param callbackVodUpload
     * @param request
     * @return
     */
    @Operation(summary = "点播上传状态回调", description = "上传状态回调")
    @RequestMapping(value = "/vod/upload", method = {RequestMethod.POST, RequestMethod.GET})
    public String vodUpload(CallbackVodUpload callbackVodUpload, HttpServletRequest request) {
        if (callbackVodUpload == null) {
            callbackVodUpload = new CallbackVodUpload();
        }
        if (StrUtil.isBlank(callbackVodUpload.getType()) && StrUtil.isBlank(callbackVodUpload.getEventType())) {
            try {
                String body = StreamUtils.copyToString(request.getInputStream(), StandardCharsets.UTF_8);
                if (StrUtil.isNotBlank(body)) {
                    CallbackVodUpload bodyDto = JsonUtil.parseObject(body, CallbackVodUpload.class);
                    if (bodyDto != null) {
                        if (StrUtil.isBlank(bodyDto.getSign())) {
                            bodyDto.setSign(callbackVodUpload.getSign() != null ? callbackVodUpload.getSign() : request.getParameter("sign"));
                        }
                        callbackVodUpload = bodyDto;
                    }
                }
            } catch (Exception e) {
                log.error("解析保利威点播回调请求体异常", e);
            }
        }
        return biz.vodUpload(callbackVodUpload);
    }

    @Operation(summary = "点播播放授权回调", description = "播放授权回调")
    @GetMapping(value = "/vod/auth")
    public String vodAuth(CallbackVodAuth callbackVodAuth) {
        return biz.vodAuth(callbackVodAuth);
    }


    @Operation(summary = "直播状态回调")
    @GetMapping(value = "/live/status")
    public String liveStatus(CallbackLiveStatus callbackLiveStatus) {
        return biz.liveStatus(callbackLiveStatus);
    }

    @Operation(summary = "直播授观看授权")
    @RequestMapping(value = "/live/auth", method = {RequestMethod.POST, RequestMethod.GET})
    public String liveAuth(CallbackLiveAuth callbackLiveAuth) {
        return biz.liveAuth(callbackLiveAuth);
    }

    @Operation(summary = "直播回放生成")
    @GetMapping(value = "/live/playback")
    public String livePlayback(CallbackLivePlayback callbackLivePlayback) {
        return biz.livePlayback(callbackLivePlayback);
    }

    @Operation(summary = "直播回放转存")
    @GetMapping(value = "/live/convert")
    public String liveConvert(CallbackLiveConvert callbackLiveConvert) {
        return biz.liveConvert(callbackLiveConvert);
    }

    @Operation(summary = "直播课件重制")
    @GetMapping(value = "/live/refashion")
    public String liveRefashion(CallbackLiveRefashion callbackLiveRefashion) {
        return biz.liveRefashion(callbackLiveRefashion);
    }
}

package com.unity3d.ads.core.domain;

import android.opengl.GLES20;
import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.gl.EglCore;
import com.unity3d.ads.gl.OffscreenSurface;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: compiled from: AndroidGetOpenGLRendererInfo.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidGetOpenGLRendererInfo implements GetOpenGLRendererInfo {
    private final SessionRepository sessionRepository;

    public AndroidGetOpenGLRendererInfo(SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.sessionRepository = sessionRepository;
    }

    @Override // com.unity3d.ads.core.domain.GetOpenGLRendererInfo
    public ByteString invoke() {
        if (this.sessionRepository.getFeatureFlags().getOpenglGpuEnabled()) {
            EglCore eglCore = new EglCore(null, 2);
            OffscreenSurface offscreenSurface = new OffscreenSurface(eglCore, 1, 1);
            offscreenSurface.makeCurrent();
            String strGlGetString = GLES20.glGetString(7937);
            Intrinsics.checkNotNull(strGlGetString);
            byte[] bytes = strGlGetString.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            ByteString byteStringCopyFrom = ByteString.copyFrom(bytes);
            offscreenSurface.release();
            eglCore.release();
            Intrinsics.checkNotNull(byteStringCopyFrom);
            return byteStringCopyFrom;
        }
        ByteString byteStringEmpty = ByteString.empty();
        Intrinsics.checkNotNull(byteStringEmpty);
        return byteStringEmpty;
    }
}

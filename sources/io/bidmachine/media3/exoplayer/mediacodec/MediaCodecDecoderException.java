package io.bidmachine.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import io.bidmachine.media3.common.util.Util;
import io.bidmachine.media3.decoder.DecoderException;

/* JADX INFO: loaded from: classes5.dex */
public class MediaCodecDecoderException extends DecoderException {
    public final MediaCodecInfo codecInfo;
    public final String diagnosticInfo;
    public final int errorCode;

    public MediaCodecDecoderException(Throwable th, MediaCodecInfo mediaCodecInfo) {
        int errorCodeFromPlatformDiagnosticsInfo;
        StringBuilder sb = new StringBuilder();
        sb.append("Decoder failed: ");
        sb.append(mediaCodecInfo == null ? null : mediaCodecInfo.name);
        super(sb.toString(), th);
        this.codecInfo = mediaCodecInfo;
        String diagnosticInfo = th instanceof MediaCodec.CodecException ? ((MediaCodec.CodecException) th).getDiagnosticInfo() : null;
        this.diagnosticInfo = diagnosticInfo;
        if (Util.SDK_INT >= 23) {
            errorCodeFromPlatformDiagnosticsInfo = getErrorCodeV23(th);
        } else {
            errorCodeFromPlatformDiagnosticsInfo = Util.getErrorCodeFromPlatformDiagnosticsInfo(diagnosticInfo);
        }
        this.errorCode = errorCodeFromPlatformDiagnosticsInfo;
    }

    public static int getErrorCodeV23(Throwable th) {
        if (th instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) th).getErrorCode();
        }
        return 0;
    }
}

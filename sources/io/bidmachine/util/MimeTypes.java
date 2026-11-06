package io.bidmachine.util;

import com.vungle.ads.internal.protos.Sdk;
import java.io.File;
import java.io.FileInputStream;
import java.util.Arrays;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: MimeTypes.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class MimeTypes {
    public static final MimeTypes INSTANCE = new MimeTypes();

    public final boolean isVideo(String str) {
        return Intrinsics.areEqual("video", getTopLevelType(str));
    }

    public final boolean isImage(String str) {
        return Intrinsics.areEqual("image", getTopLevelType(str));
    }

    public final boolean isVisual(String str) {
        return isVideo(str) || isImage(str);
    }

    public final String getTopLevelType(String str) {
        int iIndexOf$default;
        if (str == null || (iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, '/', 0, false, 6, (Object) null)) == -1) {
            return null;
        }
        String strSubstring = str.substring(0, iIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public final String getMimeTypeFromContent(File file) {
        int i;
        Intrinsics.checkNotNullParameter(file, "file");
        byte[] bArrCopyOf = new byte[16];
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                i = fileInputStream.read(bArrCopyOf);
                CloseableKt.closeFinally(fileInputStream, null);
            } finally {
            }
        } catch (Exception unused) {
            i = -1;
        }
        if (i < 4) {
            return "application/octet-stream";
        }
        if (i < 16) {
            bArrCopyOf = Arrays.copyOf(bArrCopyOf, i);
            Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "copyOf(this, newSize)");
        }
        if (getMimeTypeFromContent$startsWith(bArrCopyOf, 255, Sdk.SDKError.Reason.AD_RESPONSE_INVALID_TEMPLATE_TYPE_VALUE, 255)) {
            return "image/jpeg";
        }
        if (getMimeTypeFromContent$startsWith(bArrCopyOf, Sdk.SDKError.Reason.TPAT_RETRY_FAILED_VALUE, 80, 78, 71)) {
            return "image/png";
        }
        if (getMimeTypeFromContent$startsWith(bArrCopyOf, 71, 73, 70)) {
            return "image/gif";
        }
        if (getMimeTypeFromContent$startsWith(bArrCopyOf, 82, 73, 70, 70) && getMimeTypeFromContent$matchAt(bArrCopyOf, 8, 87, 69, 66, 80)) {
            return "image/webp";
        }
        if (getMimeTypeFromContent$startsWith(bArrCopyOf, 0, 0, 0, 24, 102, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, Sdk.SDKError.Reason.TPAT_ERROR_VALUE, 112, 109, 112, 52) || getMimeTypeFromContent$startsWith(bArrCopyOf, 0, 0, 0, 32, 102, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, Sdk.SDKError.Reason.TPAT_ERROR_VALUE, 112, 109, 112, 52)) {
            return "video/mp4";
        }
        if (getMimeTypeFromContent$startsWith(bArrCopyOf, 26, 69, Sdk.SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 163)) {
            return com.unity3d.services.core.device.MimeTypes.VIDEO_WEBM;
        }
        if (getMimeTypeFromContent$startsWith(bArrCopyOf, 82, 73, 70, 70) && getMimeTypeFromContent$matchAt(bArrCopyOf, 8, 65, 86, 73, 32)) {
            return "video/avi";
        }
        if (getMimeTypeFromContent$startsWith(bArrCopyOf, 73, 68, 51) || getMimeTypeFromContent$startsWith(bArrCopyOf, 255, 251) || getMimeTypeFromContent$startsWith(bArrCopyOf, 255, 243)) {
            return "audio/mpeg";
        }
        if (getMimeTypeFromContent$startsWith(bArrCopyOf, 37, 80, 68, 70)) {
            return "application/pdf";
        }
        if (!getMimeTypeFromContent$startsWith(bArrCopyOf, 80, 75, 3, 4) && !getMimeTypeFromContent$startsWith(bArrCopyOf, 80, 75, 5, 6) && !getMimeTypeFromContent$startsWith(bArrCopyOf, 80, 75, 7, 8)) {
            return "application/octet-stream";
        }
        return "application/zip";
    }

    public static final boolean getMimeTypeFromContent$startsWith(byte[] bArr, int... iArr) {
        if (bArr.length < iArr.length) {
            return false;
        }
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            if ((bArr[i] & 255) != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    public static final boolean getMimeTypeFromContent$matchAt(byte[] bArr, int i, int... iArr) {
        if (i < 0 || bArr.length < iArr.length + i) {
            return false;
        }
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if ((bArr[i + i2] & 255) != iArr[i2]) {
                return false;
            }
        }
        return true;
    }
}

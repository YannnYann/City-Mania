package io.bidmachine.util.file;

import io.bidmachine.util.Utils;
import io.bidmachine.util.UtilsKt;
import java.io.File;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: compiled from: FileUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class FileUtils {
    public static final FileUtils INSTANCE = new FileUtils();

    public static final String generateFileName(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        byte[] bytes = url.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        byte[] bArrApplyMD5 = UtilsKt.applyMD5(bytes);
        if (bArrApplyMD5 == null) {
            return null;
        }
        return new BigInteger(bArrApplyMD5).abs().toString(36);
    }

    public static final boolean deleteFile(File file) {
        return FileUtilsKt.deleteFile(file);
    }

    public static final boolean canUseExternalFilesDir() {
        return Utils.isExternalMemoryAvailable();
    }
}

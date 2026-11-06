package io.bidmachine.rendering.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import io.bidmachine.util.ImageUtilsKt;
import io.bidmachine.util.UtilsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class WatermarkUtils {
    public static final WatermarkUtils INSTANCE = new WatermarkUtils();

    public final Drawable convertToRepeatedDrawable(Context context, String str) {
        byte[] bArrDecodeBase64;
        Bitmap bitmapDecodeBytesToBitmapSafely$default;
        BitmapDrawable bitmapDrawable;
        Intrinsics.checkNotNullParameter(context, "context");
        if (str != null) {
            try {
                String strNotEmptyOrNull = UtilsKt.notEmptyOrNull(str);
                if (strNotEmptyOrNull != null && (bArrDecodeBase64 = UtilsKt.decodeBase64(strNotEmptyOrNull, 0)) != null && (bitmapDecodeBytesToBitmapSafely$default = ImageUtilsKt.decodeBytesToBitmapSafely$default(bArrDecodeBase64, null, 1, null)) != null && (bitmapDrawable = ImageUtilsKt.toBitmapDrawable(bitmapDecodeBytesToBitmapSafely$default, context)) != null) {
                    Shader.TileMode tileMode = Shader.TileMode.REPEAT;
                    bitmapDrawable.setTileModeXY(tileMode, tileMode);
                    return bitmapDrawable;
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }
}

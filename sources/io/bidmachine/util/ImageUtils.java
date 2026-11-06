package io.bidmachine.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ImageUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ImageUtils {
    public static final ImageUtils INSTANCE = new ImageUtils();

    public static final BitmapFactory.Options createDefaultBitmapFactoryOptions() {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        return options;
    }

    public static final Bitmap decodeBytesToBitmapSafely(byte[] byteImage, BitmapFactory.Options bitmapFactoryOptions) {
        Intrinsics.checkNotNullParameter(byteImage, "byteImage");
        Intrinsics.checkNotNullParameter(bitmapFactoryOptions, "bitmapFactoryOptions");
        return ImageUtilsKt.decodeBytesToBitmapSafely(byteImage, bitmapFactoryOptions);
    }
}

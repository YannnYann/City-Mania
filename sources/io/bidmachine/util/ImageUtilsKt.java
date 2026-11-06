package io.bidmachine.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import io.bidmachine.util.file.FileUtilsKt;
import java.io.File;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ImageUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ImageUtilsKt {
    public static final Bitmap decodeToBitmap(File file, BitmapFactory.Options bitmapFactoryOptions) throws Throwable {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(bitmapFactoryOptions, "bitmapFactoryOptions");
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(file.getPath(), bitmapFactoryOptions);
        Intrinsics.checkNotNullExpressionValue(bitmapDecodeFile, "decodeFile(path, bitmapFactoryOptions)");
        return bitmapDecodeFile;
    }

    public static final Bitmap decodeToBitmapSafely(File file, BitmapFactory.Options bitmapFactoryOptions) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(bitmapFactoryOptions, "bitmapFactoryOptions");
        if (!FileUtilsKt.hasContent(file)) {
            return null;
        }
        try {
            return decodeToBitmap(file, bitmapFactoryOptions);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final void recycleSafely(Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        try {
            bitmap.recycle();
            Unit unit = Unit.INSTANCE;
        } catch (Throwable unused) {
        }
    }

    public static final Bitmap createDownscaledBitmapSafely(Bitmap bitmap, double d) {
        Bitmap bitmapCreateScaledBitmap;
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        if (d <= 1.0d) {
            return bitmap;
        }
        try {
            bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) (((double) bitmap.getWidth()) / d), (int) (((double) bitmap.getHeight()) / d), true);
        } catch (Throwable unused) {
            bitmapCreateScaledBitmap = null;
        }
        return bitmapCreateScaledBitmap == null ? bitmap : bitmapCreateScaledBitmap;
    }

    public static final BitmapDrawable toBitmapDrawable(Bitmap bitmap, Context context) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Resources resources = context.getResources();
        Intrinsics.checkNotNullExpressionValue(resources, "context.resources");
        return toBitmapDrawable(bitmap, resources);
    }

    public static final BitmapDrawable toBitmapDrawable(Bitmap bitmap, Resources resources) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Intrinsics.checkNotNullParameter(resources, "resources");
        return new BitmapDrawable(resources, bitmap);
    }

    public static final Bitmap decodeBytesToBitmap(byte[] bArr, BitmapFactory.Options options) throws Throwable {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        return BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
    }

    public static /* synthetic */ Bitmap decodeBytesToBitmapSafely$default(byte[] bArr, BitmapFactory.Options options, int i, Object obj) {
        if ((i & 1) != 0) {
            options = null;
        }
        return decodeBytesToBitmapSafely(bArr, options);
    }

    public static final Bitmap decodeBytesToBitmapSafely(byte[] bArr, BitmapFactory.Options options) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        try {
            return decodeBytesToBitmap(bArr, options);
        } catch (Throwable unused) {
            return null;
        }
    }
}

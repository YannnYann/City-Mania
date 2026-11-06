package io.bidmachine.util.gradient;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.RectF;
import android.graphics.Shader;
import io.bidmachine.util.ColorUtils;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BilinearGradientApi01.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class BilinearGradientApi01 extends BitmapShader {
    public static final Companion Companion = new Companion(null);

    /* JADX WARN: Illegal instructions before constructor call */
    public BilinearGradientApi01(RectF bounds, int[] colors, Bitmap.Config config) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(config, "config");
        Bitmap bitmapCreateBitmap = Companion.createBitmap(bounds, colors, config);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        super(bitmapCreateBitmap, tileMode, tileMode);
    }

    /* JADX INFO: compiled from: BilinearGradientApi01.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        @SuppressLint({"UseKtx"})
        public final Bitmap createBitmap(RectF rectF, int[] iArr, Bitmap.Config config) {
            Bitmap bitmapCreateBitmap;
            try {
                int iWidth = (int) rectF.width();
                int iHeight = (int) rectF.height();
                bitmapCreateBitmap = Bitmap.createBitmap(iWidth, iHeight, config);
                bitmapCreateBitmap.setPixels(BilinearGradientApi01.Companion.bilinearGradient(rectF, iArr, bitmapCreateBitmap.hasAlpha()), 0, iWidth, 0, 0, iWidth, iHeight);
            } catch (Throwable unused) {
                bitmapCreateBitmap = null;
            }
            if (bitmapCreateBitmap != null) {
                return bitmapCreateBitmap;
            }
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(1, 1, config);
            Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap2, "createBitmap(1, 1, config)");
            return bitmapCreateBitmap2;
        }

        public final int[] bilinearGradient(RectF rectF, int[] iArr, boolean z) {
            int iWidth = (int) rectF.width();
            int iHeight = (int) rectF.height();
            int[] iArr2 = new int[iWidth * iHeight];
            for (int i = 0; i < iHeight; i++) {
                float f = iHeight == 1 ? 0.0f : i / (iHeight - 1);
                for (int i2 = 0; i2 < iWidth; i2++) {
                    iArr2[(i * iWidth) + i2] = ColorUtils.INSTANCE.blerp(iArr[0], iArr[1], iArr[2], iArr[3], iWidth == 1 ? 0.0f : i2 / (iWidth - 1), f, z);
                }
            }
            return iArr2;
        }
    }
}

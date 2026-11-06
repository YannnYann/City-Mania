package io.bidmachine.util.gradient;

import android.graphics.Bitmap;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BilinearGradientHolder.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class BilinearGradientHolder implements ShaderHolder {
    public final Shader bitmapShader;
    public final Shader runtimeShader;
    public final boolean useRuntimeInitially;

    public BilinearGradientHolder(RectF bounds, int[] colors, Bitmap.Config bitmapConfig, boolean z) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(bitmapConfig, "bitmapConfig");
        this.useRuntimeInitially = z;
        this.bitmapShader = new BilinearGradientApi01(bounds, colors, bitmapConfig);
        this.runtimeShader = (!z || Build.VERSION.SDK_INT < 33) ? null : new BilinearGradientApi33(bounds, colors);
    }

    public /* synthetic */ BilinearGradientHolder(RectF rectF, int[] iArr, Bitmap.Config config, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(rectF, iArr, (i & 4) != 0 ? Bitmap.Config.ARGB_8888 : config, (i & 8) != 0 ? Build.VERSION.SDK_INT >= 33 : z);
    }

    @Override // io.bidmachine.util.gradient.ShaderHolder
    public Shader getShader(boolean z) {
        Shader shader;
        return (this.useRuntimeInitially && (shader = this.runtimeShader) != null && z) ? shader : this.bitmapShader;
    }
}

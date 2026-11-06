package io.bidmachine.rendering.internal.meanbackground;

import android.graphics.Bitmap;
import android.graphics.Rect;
import io.bidmachine.util.BitmapUtils;
import io.bidmachine.util.ColorUtils;
import io.bidmachine.util.MathUtils;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;

/* JADX INFO: loaded from: classes5.dex */
public final class i {
    public final a a;
    public final m b;

    public static final class a {
        public final int a;
        public final int b;
        public final int c;
        public final int d;
        public final InterfaceC1197a e;

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.meanbackground.i$a$a, reason: collision with other inner class name */
        public interface InterfaceC1197a {

            /* JADX INFO: renamed from: io.bidmachine.rendering.internal.meanbackground.i$a$a$a, reason: collision with other inner class name */
            public static final class C1198a implements InterfaceC1197a {
                public static final C1198a a = new C1198a();

                @Override // io.bidmachine.rendering.internal.meanbackground.i.a.InterfaceC1197a
                public int a(int i, int i2, int i3, int i4, int i5) {
                    return MathKt__MathJVMKt.roundToInt(MathUtils.lerp(i4, i5, (i * i2) / (i3 * i3)));
                }
            }

            int a(int i, int i2, int i3, int i4, int i5);
        }

        public a(int i, int i2, int i3, int i4, InterfaceC1197a samplingStrategy) {
            Intrinsics.checkNotNullParameter(samplingStrategy, "samplingStrategy");
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
            this.e = samplingStrategy;
        }

        public final int a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b == aVar.b && this.c == aVar.c && this.d == aVar.d && Intrinsics.areEqual(this.e, aVar.e);
        }

        public int hashCode() {
            return (((((((Integer.hashCode(this.a) * 31) + Integer.hashCode(this.b)) * 31) + Integer.hashCode(this.c)) * 31) + Integer.hashCode(this.d)) * 31) + this.e.hashCode();
        }

        public String toString() {
            return "Config(defaultColor=" + this.a + ", maxDimensionPx=" + this.b + ", minSampleStepPx=" + this.c + ", maxSampleStepPx=" + this.d + ", samplingStrategy=" + this.e + ')';
        }

        public final int a(Rect rect) {
            Intrinsics.checkNotNullParameter(rect, "rect");
            return this.e.a(rect.width(), rect.height(), this.b, this.c, this.d);
        }
    }

    public i(a config, m pixelsExtractor) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(pixelsExtractor, "pixelsExtractor");
        this.a = config;
        this.b = pixelsExtractor;
    }

    public final int a(Bitmap bitmap, Rect rect) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(rect, "rect");
        Rect rectClampRect = BitmapUtils.INSTANCE.clampRect(bitmap, rect);
        if (rectClampRect == null) {
            return this.a.a();
        }
        return ColorUtils.INSTANCE.avg(this.b.a(bitmap, rectClampRect), bitmap.hasAlpha(), this.a.a(rectClampRect));
    }
}

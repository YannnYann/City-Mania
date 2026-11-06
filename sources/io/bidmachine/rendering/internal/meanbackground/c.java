package io.bidmachine.rendering.internal.meanbackground;

import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.util.ColorUtils;
import io.bidmachine.util.ColorUtilsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class c {
    public final a a;

    public static final class a {
        public final Integer a;
        public final float b;
        public final float c;
        public final float d;

        public a(Integer num, float f, float f2, float f3) {
            this.a = num;
            this.b = f;
            this.c = f2;
            this.d = f3;
        }

        public final float a() {
            return this.b;
        }

        public final Integer b() {
            return this.a;
        }

        public final float c() {
            return this.d;
        }

        public final float d() {
            return this.c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.areEqual(this.a, aVar.a) && Float.compare(this.b, aVar.b) == 0 && Float.compare(this.c, aVar.c) == 0 && Float.compare(this.d, aVar.d) == 0;
        }

        public int hashCode() {
            Integer num = this.a;
            return ((((((num == null ? 0 : num.hashCode()) * 31) + Float.hashCode(this.b)) * 31) + Float.hashCode(this.c)) * 31) + Float.hashCode(this.d);
        }

        public String toString() {
            return "Config(backgroundColor=" + this.a + ", alphaThreshold=" + this.b + ", tolerance=" + this.c + ", brightnessThreshold=" + this.d + ')';
        }
    }

    public c(a config) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.a = config;
    }

    public final boolean a(int i, boolean z) {
        if (z && this.a.b() == null) {
            if (ColorUtilsKt.alphaToRatio$default(i, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1, null) <= this.a.a()) {
                return false;
            }
        } else if (this.a.b() != null) {
            if (ColorUtils.INSTANCE.dist(i, this.a.b().intValue()) <= this.a.d()) {
                return false;
            }
        } else if (ColorUtilsKt.brightness(i) < this.a.c()) {
            return false;
        }
        return true;
    }
}

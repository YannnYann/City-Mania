package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class ak1 {
    public final String a;
    public final List b;
    public final int c;
    public final int d;
    public final int e;
    public final long f;
    public final AdChoicesPlacement g;
    public final boolean h;

    public ak1(String text, List icons, int i, int i2, int i3, long j, AdChoicesPlacement attributionInfoPlacement, boolean z) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(icons, "icons");
        Intrinsics.checkNotNullParameter(attributionInfoPlacement, "attributionInfoPlacement");
        this.a = text;
        this.b = icons;
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = j;
        this.g = attributionInfoPlacement;
        this.h = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ak1)) {
            return false;
        }
        ak1 ak1Var = (ak1) obj;
        return Intrinsics.areEqual(this.a, ak1Var.a) && Intrinsics.areEqual(this.b, ak1Var.b) && this.c == ak1Var.c && this.d == ak1Var.d && this.e == ak1Var.e && Duration.m2875equalsimpl0(this.f, ak1Var.f) && this.g == ak1Var.g && this.h == ak1Var.h;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    public final int hashCode() {
        int iHashCode = (this.g.hashCode() + ((Duration.m2889hashCodeimpl(this.f) + y1.a(this.e, y1.a(this.d, y1.a(this.c, h93.a(this.b, this.a.hashCode() * 31, 31), 31), 31), 31)) * 31)) * 31;
        boolean z = this.h;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode + r1;
    }

    public final String toString() {
        return "InternalAttributionInfo(text=" + this.a + ", icons=" + this.b + ", backgroundColor=" + this.c + ", textColor=" + this.d + ", textSize=" + this.e + ", animationInterval=" + Duration.m2903toStringimpl(this.f) + ", attributionInfoPlacement=" + this.g + ", allowPubRendering=" + this.h + ")";
    }

    public final long a() {
        return this.f;
    }
}

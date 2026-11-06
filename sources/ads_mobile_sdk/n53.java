package ads_mobile_sdk;

import android.graphics.Point;
import android.graphics.Rect;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class n53 {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final boolean e;
    public final gy f;
    public final Rect g;
    public final Pair h;
    public final Pair i;

    public n53(int i, int i2, int i3, int i4, boolean z, gy closeButtonPosition, Rect originalAdPosition, Pair activityWindowDimensions, Pair activityVerticalLimits) {
        Intrinsics.checkNotNullParameter(closeButtonPosition, "closeButtonPosition");
        Intrinsics.checkNotNullParameter(originalAdPosition, "originalAdPosition");
        Intrinsics.checkNotNullParameter(activityWindowDimensions, "activityWindowDimensions");
        Intrinsics.checkNotNullParameter(activityVerticalLimits, "activityVerticalLimits");
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = z;
        this.f = closeButtonPosition;
        this.g = originalAdPosition;
        this.h = activityWindowDimensions;
        this.i = activityVerticalLimits;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n53)) {
            return false;
        }
        n53 n53Var = (n53) obj;
        return this.a == n53Var.a && this.b == n53Var.b && this.c == n53Var.c && this.d == n53Var.d && this.e == n53Var.e && this.f == n53Var.f && Intrinsics.areEqual(this.g, n53Var.g) && Intrinsics.areEqual(this.h, n53Var.h) && Intrinsics.areEqual(this.i, n53Var.i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v4, types: [int] */
    public final int hashCode() {
        int iA = y1.a(this.d, y1.a(this.c, y1.a(this.b, Integer.hashCode(this.a) * 31, 31), 31), 31);
        boolean z = this.e;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        return this.i.hashCode() + ((this.h.hashCode() + ((this.g.hashCode() + ((this.f.hashCode() + ((iA + r2) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ResizeParams(widthDips=" + this.a + ", heightDips=" + this.b + ", offsetXDips=" + this.c + ", offsetYDips=" + this.d + ", allowOffScreen=" + this.e + ", closeButtonPosition=" + this.f + ", originalAdPosition=" + this.g + ", activityWindowDimensions=" + this.h + ", activityVerticalLimits=" + this.i + ")";
    }

    public final Point a() {
        Rect rect = this.g;
        int i = rect.left + this.c;
        int i2 = rect.top + this.d;
        if (!this.e) {
            Pair pair = this.i;
            int iIntValue = ((Number) pair.component1()).intValue();
            int iIntValue2 = ((Number) pair.component2()).intValue();
            int iIntValue3 = ((Number) this.h.component1()).intValue();
            if (i < 0) {
                i = 0;
            } else {
                int i3 = this.a;
                if (i + i3 > iIntValue3) {
                    i = iIntValue3 - i3;
                }
            }
            if (i2 < iIntValue) {
                i2 = iIntValue;
            } else {
                int i4 = this.b;
                if (i2 + i4 > iIntValue2) {
                    i2 = iIntValue2 - i4;
                }
            }
        }
        return new Point(i, i2);
    }
}

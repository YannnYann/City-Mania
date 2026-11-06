package ads_mobile_sdk;

import android.graphics.Rect;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ey3 {
    public final gy3 a;
    public final boolean b;
    public final int c;
    public final Rect d;
    public final boolean e;
    public final Rect f;
    public final Rect g;
    public final boolean h;
    public final Rect i;
    public final boolean j;
    public final Rect k;

    public ey3(gy3 viewabilityUpdateEvent, boolean z, int i, Rect adPosition, boolean z2, Rect screenPosition, Rect globalVisibleBox, boolean z3, Rect localVisibleBox, boolean z4, Rect hitRect) {
        Intrinsics.checkNotNullParameter(viewabilityUpdateEvent, "viewabilityUpdateEvent");
        Intrinsics.checkNotNullParameter(adPosition, "adPosition");
        Intrinsics.checkNotNullParameter(screenPosition, "screenPosition");
        Intrinsics.checkNotNullParameter(globalVisibleBox, "globalVisibleBox");
        Intrinsics.checkNotNullParameter(localVisibleBox, "localVisibleBox");
        Intrinsics.checkNotNullParameter(hitRect, "hitRect");
        this.a = viewabilityUpdateEvent;
        this.b = z;
        this.c = i;
        this.d = adPosition;
        this.e = z2;
        this.f = screenPosition;
        this.g = globalVisibleBox;
        this.h = z3;
        this.i = localVisibleBox;
        this.j = z4;
        this.k = hitRect;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ey3)) {
            return false;
        }
        ey3 ey3Var = (ey3) obj;
        return this.a == ey3Var.a && this.b == ey3Var.b && this.c == ey3Var.c && Intrinsics.areEqual(this.d, ey3Var.d) && this.e == ey3Var.e && Intrinsics.areEqual(this.f, ey3Var.f) && Intrinsics.areEqual(this.g, ey3Var.g) && this.h == ey3Var.h && Intrinsics.areEqual(this.i, ey3Var.i) && this.j == ey3Var.j && Intrinsics.areEqual(this.k, ey3Var.k);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [int] */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v7, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v2 */
    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        boolean z = this.b;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        int iHashCode2 = (this.d.hashCode() + y1.a(this.c, (iHashCode + r2) * 31, 31)) * 31;
        boolean z2 = this.e;
        ?? r0 = z2;
        if (z2) {
            r0 = 1;
        }
        int iHashCode3 = (this.g.hashCode() + ((this.f.hashCode() + ((iHashCode2 + r0) * 31)) * 31)) * 31;
        boolean z3 = this.h;
        ?? r02 = z3;
        if (z3) {
            r02 = 1;
        }
        int iHashCode4 = (this.i.hashCode() + ((iHashCode3 + r02) * 31)) * 31;
        boolean z4 = this.j;
        return this.k.hashCode() + ((iHashCode4 + (z4 ? 1 : z4)) * 31);
    }

    public final String toString() {
        return "ViewabilityEvent(viewabilityUpdateEvent=" + this.a + ", isVisible=" + this.b + ", windowVisibility=" + this.c + ", adPosition=" + this.d + ", isAttachedToWindow=" + this.e + ", screenPosition=" + this.f + ", globalVisibleBox=" + this.g + ", globalVisibleBoxVisible=" + this.h + ", localVisibleBox=" + this.i + ", localVisibleBoxVisible=" + this.j + ", hitRect=" + this.k + ")";
    }
}

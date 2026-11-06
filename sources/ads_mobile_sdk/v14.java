package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class v14 {
    public final u14 a;
    public final int b;
    public final int c;
    public final boolean d;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v14)) {
            return false;
        }
        v14 v14Var = (v14) obj;
        return this.a == v14Var.a && this.b == v14Var.b && this.c == v14Var.c && this.d == v14Var.d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    public final int hashCode() {
        int iA = y1.a(this.c, y1.a(this.b, this.a.hashCode() * 31, 31), 31);
        boolean z = this.d;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iA + r1;
    }

    public final String toString() {
        return "WebViewSize(type=" + this.a + ", widthInPixels=" + this.b + ", heightInPixels=" + this.c + ", isFluidHeight=" + this.d + ")";
    }

    public /* synthetic */ v14(u14 u14Var, int i, int i2, int i3) {
        this(u14Var, (i3 & 2) != 0 ? 0 : i, (i3 & 4) != 0 ? 0 : i2, false);
    }

    public v14(u14 type, int i, int i2, boolean z) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.a = type;
        this.b = i;
        this.c = i2;
        this.d = z;
    }

    public final boolean a() {
        return this.a == u14.a;
    }
}

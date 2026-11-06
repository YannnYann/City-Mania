package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class p2 {
    public final int a;
    public final int b;
    public final boolean c;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p2)) {
            return false;
        }
        p2 p2Var = (p2) obj;
        return this.a == p2Var.a && this.b == p2Var.b && this.c == p2Var.c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    public final int hashCode() {
        int iA = y1.a(this.b, Integer.hashCode(this.a) * 31, 31);
        boolean z = this.c;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iA + r1;
    }

    public final String toString() {
        return "AdDimensions(width=" + this.a + ", height=" + this.b + ", isFluidHeight=" + this.c + ")";
    }

    public p2(int i, int i2, boolean z) {
        this.a = i;
        this.b = i2;
        this.c = z;
    }
}

package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class ha2 {
    public final int a;
    public final int b;
    public final boolean c;
    public final double d;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ha2)) {
            return false;
        }
        ha2 ha2Var = (ha2) obj;
        return this.a == ha2Var.a && this.b == ha2Var.b && this.c == ha2Var.c && Double.compare(this.d, ha2Var.d) == 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [int] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    public final int hashCode() {
        int iA = y1.a(this.b, Integer.hashCode(this.a) * 31, 31);
        boolean z = this.c;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        return Double.hashCode(this.d) + ((iA + r2) * 31);
    }

    public final String toString() {
        return "NetworkPingStrategy(maxAttempts=" + this.a + ", initialBackoffMs=" + this.b + ", bufferAfterMaxAttempts=" + this.c + ", backoffMultiplier=" + this.d + ")";
    }

    public ha2(int i, int i2, boolean z, double d) {
        this.a = i;
        this.b = i2;
        this.c = z;
        this.d = d;
    }
}

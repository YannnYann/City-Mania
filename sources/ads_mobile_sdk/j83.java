package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class j83 {
    public final int a;
    public final int b;
    public final int c;
    public final int d;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j83)) {
            return false;
        }
        j83 j83Var = (j83) obj;
        return this.a == j83Var.a && this.b == j83Var.b && this.c == j83Var.c && this.d == j83Var.d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + y1.a(this.c, y1.a(this.b, Integer.hashCode(this.a) * 31, 31), 31);
    }

    public final String toString() {
        return "RoundedCornerRadii(topLeft=" + this.a + ", topRight=" + this.b + ", bottomRight=" + this.c + ", bottomLeft=" + this.d + ")";
    }

    public j83(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }
}

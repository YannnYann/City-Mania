package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class ey {
    public final int a;
    public final int b;
    public final int c;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ey)) {
            return false;
        }
        ey eyVar = (ey) obj;
        return this.a == eyVar.a && this.b == eyVar.b && this.c == eyVar.c;
    }

    public final int hashCode() {
        return Integer.hashCode(50) + y1.a(this.c, y1.a(0, y1.a(this.b, Integer.hashCode(this.a) * 31, 31), 31), 31);
    }

    public final String toString() {
        return "CloseButtonConfig(paddingLeft=" + this.a + ", paddingRight=" + this.b + ", paddingTop=0, paddingBottom=" + this.c + ", size=50)";
    }

    public ey(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }
}

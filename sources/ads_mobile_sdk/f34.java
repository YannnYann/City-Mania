package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class f34 implements c34 {
    public int a = p30.a(((~1539942439) & 2070175971) | 1100945533, (1539942439 & (-1166483302)) | (-2145608135), 164110942, 67728125) ^ (1143565421 % 981914693);
    public final byte[] b = new byte[8];
    public final h34 c;

    public f34(h34 h34Var) {
        this.c = h34Var;
    }

    @Override // ads_mobile_sdk.c34
    public final byte a(p34 p34Var, int i) {
        int iA = i >>> (p30.a(((~143154913) & 992498304) | 439467622, (143154913 & 1627930754) | 1212551295, -122082883, 1967905751) ^ (2033018190 % 70061690));
        if (iA != this.a) {
            this.c.a(this.b, iA);
            this.a = iA;
        }
        return (byte) (((p34Var.a(i) ^ this.b[i % 8]) << 24) >> 24);
    }

    @Override // ads_mobile_sdk.c34
    public final p34 a(p34 p34Var, int i, int i2) {
        byte[] bArr;
        if (i >= 0 && i <= i2 && i2 <= p34Var.a.length) {
            int i3 = i2 - i;
            byte[] bArr2 = new byte[i3];
            int i4 = 0;
            while (i < i2) {
                bArr2[i4] = a(p34Var, i);
                i++;
                i4++;
            }
            if (i3 == 0) {
                bArr = new byte[0];
            } else {
                bArr = new byte[i3];
                System.arraycopy(bArr2, 0, bArr, 0, i3);
            }
            return new p34(bArr);
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // ads_mobile_sdk.c34
    public final /* bridge */ /* synthetic */ c34 a() {
        return new f34(this.c);
    }
}

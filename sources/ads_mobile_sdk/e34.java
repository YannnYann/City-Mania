package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class e34 implements c34 {
    @Override // ads_mobile_sdk.c34
    public final byte a(p34 p34Var, int i) {
        return p34Var.a(i);
    }

    @Override // ads_mobile_sdk.c34
    public final p34 a(p34 p34Var, int i, int i2) {
        byte[] bArr;
        if (i >= 0 && i <= i2) {
            byte[] bArr2 = p34Var.a;
            if (i2 <= bArr2.length) {
                if (i > i2 || i2 > bArr2.length) {
                    throw new IndexOutOfBoundsException();
                }
                int i3 = i2 - i;
                if (i3 == 0) {
                    bArr = new byte[0];
                } else {
                    byte[] bArr3 = new byte[i3];
                    System.arraycopy(bArr2, i, bArr3, 0, i3);
                    bArr = bArr3;
                }
                return new p34(bArr);
            }
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // ads_mobile_sdk.c34
    public final c34 a() {
        return new e34();
    }
}

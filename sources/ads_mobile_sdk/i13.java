package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
final class i13 implements rw1 {
    private final tw1 a;
    private final String b;
    private final Object[] c;
    private final int d;

    public i13(tw1 tw1Var, String str, Object[] objArr) {
        this.a = tw1Var;
        this.b = str;
        this.c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.d = cCharAt;
            return;
        }
        int i = cCharAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char cCharAt2 = str.charAt(i3);
            if (cCharAt2 < 55296) {
                this.d = i | (cCharAt2 << i2);
                return;
            } else {
                i |= (cCharAt2 & 8191) << i2;
                i2 += 13;
                i3 = i4;
            }
        }
    }

    public String e() {
        return this.b;
    }

    public Object[] d() {
        return this.c;
    }

    @Override // ads_mobile_sdk.rw1
    public tw1 b() {
        return this.a;
    }

    @Override // ads_mobile_sdk.rw1
    public zv2 a() {
        int i = this.d;
        if ((i & 1) != 0) {
            return zv2.PROTO2;
        }
        if ((i & 4) == 4) {
            return zv2.EDITIONS;
        }
        return zv2.PROTO3;
    }

    @Override // ads_mobile_sdk.rw1
    public boolean c() {
        return (this.d & 2) == 2;
    }
}

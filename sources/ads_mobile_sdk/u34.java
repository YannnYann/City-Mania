package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class u34 {
    public int a;
    public p34 b;
    public c34 c;
    public final d34 d;

    public final void a(long j) {
        long[] jArr = {2139842053, 728564241, 750932242, 1403848321, 1892818418, 4558981222L, 1919655804, 1856374729, 899334107};
        long j2 = jArr[0];
        long j3 = jArr[1];
        long j4 = jArr[2];
        long j5 = jArr[3];
        long j6 = jArr[4];
        long j7 = ((((((~j2) & j3) | j4) + ((j2 & j5) | j6)) - jArr[5]) + jArr[6]) ^ (jArr[7] % jArr[8]);
        c(j);
        long j8 = j / j7;
        if (j8 < 0 || j8 > this.b.a.length) {
            throw new t34();
        }
        this.a = (int) j8;
    }

    public final long b() {
        try {
            c34 c34Var = this.c;
            p34 p34Var = this.b;
            this.a = this.a + 1;
            return c34Var.a(p34Var, r2);
        } catch (IndexOutOfBoundsException e) {
            throw new t34(e);
        }
    }

    public final int c() {
        int iA = p30.a(((~413360099) & 1621678468) | 84323740, (413360099 & 1621644360) | 385888249, 1519637107, 6072641) ^ (1609416931 % 1031126087);
        try {
            c34 c34Var = this.c;
            p34 p34Var = this.b;
            int i = this.a;
            this.a = i + 1;
            int iA2 = c34Var.a(p34Var, i) & iA;
            c34 c34Var2 = this.c;
            p34 p34Var2 = this.b;
            int i2 = this.a;
            this.a = i2 + 1;
            int iA3 = iA2 | ((c34Var2.a(p34Var2, i2) & iA) << 8);
            c34 c34Var3 = this.c;
            p34 p34Var3 = this.b;
            int i3 = this.a;
            this.a = i3 + 1;
            int iA4 = ((iA & c34Var3.a(p34Var3, i3)) << 16) | iA3;
            c34 c34Var4 = this.c;
            p34 p34Var4 = this.b;
            int i4 = this.a;
            this.a = i4 + 1;
            return iA4 | (c34Var4.a(p34Var4, i4) << 24);
        } catch (IndexOutOfBoundsException e) {
            throw new t34(e);
        }
    }

    public u34(g34 g34Var) {
        this(p34.b, 0, new e34());
        this.d = g34Var;
    }

    public static final void c(long j) throws s34 {
        long[] jArr = {141540322, 456640674, 1141397064, 993500330, 1614820873, 3337980909L, 410218731, 1716462158, 477127367};
        long j2 = jArr[0];
        long j3 = jArr[1];
        long j4 = jArr[2];
        long j5 = jArr[3];
        long j6 = jArr[4];
        long j7 = jArr[5];
        if (j % (((((((~j2) & j3) | j4) + ((j2 & j5) | j6)) - j7) + jArr[6]) ^ (jArr[7] % jArr[8])) != 0) {
            throw new s34();
        }
    }

    public final p34 b(long j) throws s34, t34 {
        int[] iArr = {1667674495, 1502201381, 1197125461, 478240810, 622476187, -1652496091, 840440151, 1203013321, 774318984};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int iA = p30.a((i2 & (~i)) | i3, (i & i4) | iArr[4], iArr[5], iArr[6]) ^ (iArr[7] % iArr[8]);
        c(a() + j);
        int i5 = this.a;
        long j2 = i5;
        p34 p34Var = this.b;
        long j3 = (j >> iA) + j2;
        if (j3 > p34Var.a.length || j3 < j2) {
            throw new t34();
        }
        try {
            int i6 = (int) j3;
            p34 p34VarA = this.c.a(p34Var, i5, i6);
            this.a = i6;
            return p34VarA;
        } catch (IndexOutOfBoundsException e) {
            throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e);
        }
    }

    public final long d() throws r34, t34 {
        int iA = p30.a(((~1246322141) & 272302173) | 1841378864, (1246322141 & 825937997) | 658822930, -1784934195, 38700438) ^ (1600766768 % 649830540);
        int i = 0;
        long j = 0;
        while (i < iA) {
            try {
                c34 c34Var = this.c;
                p34 p34Var = this.b;
                int i2 = this.a;
                this.a = i2 + 1;
                byte bA = c34Var.a(p34Var, i2);
                j |= ((long) (bA & 127)) << i;
                if (i == 63) {
                    if (bA > 1) {
                        throw new r34();
                    }
                    i = 63;
                }
                if ((bA & 128) == 0) {
                    return (j >>> 1) ^ (-(j & 1));
                }
                i += 7;
            } catch (IndexOutOfBoundsException e) {
                throw new t34(e);
            }
        }
        throw new r34();
    }

    public u34(p34 p34Var, int i, c34 c34Var) {
        this.b = p34Var;
        this.a = i;
        this.c = c34Var;
    }

    public u34(p34 p34Var, int i, c34 c34Var, d34 d34Var) {
        this(p34Var, i, c34Var);
        this.d = d34Var;
    }

    public final long a() {
        long[] jArr = {491705403, 818579170, 1201981453, 810223590, 1243973916, 3701563257L, 554701476, 1889947178, 1780695788};
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = jArr[4];
        long j6 = jArr[5];
        return ((long) this.a) * (((((((~j) & j2) | j3) + ((j & j4) | j5)) - j6) + jArr[6]) ^ (jArr[7] % jArr[8]));
    }
}

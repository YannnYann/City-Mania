package ads_mobile_sdk;

import java.util.HashMap;
import java.util.List;
import java.util.Optional;

/* JADX INFO: loaded from: classes.dex */
public final class lf3 {
    public final iy3 a;
    public final long b;
    public final long c;
    public final String d;

    public final String a(HashMap map) {
        return hi.a(true).encode((byte[]) ((z24) this.a).a(this.b, Optional.of(map)));
    }

    public final void b(HashMap map) throws lp1, my3 {
        ((z24) this.a).a(this.c, Optional.of(map));
    }

    public static lf3 a(iy3 iy3Var, byte[] bArr, boolean z) throws lp1, my3 {
        byte[] bArr2;
        z24 z24Var = (z24) iy3Var;
        z24Var.a();
        g44 g44Var = z24Var.a;
        int length = bArr.length;
        if (length == 0) {
            bArr2 = new byte[0];
        } else {
            byte[] bArr3 = new byte[length];
            System.arraycopy(bArr, 0, bArr3, 0, length);
            bArr2 = bArr3;
        }
        g44Var.c.b = new p34(bArr2);
        List list = (List) z24Var.a(Optional.empty());
        long jLongValue = ((Long) list.get(0)).longValue();
        long jLongValue2 = ((Long) list.get(1)).longValue();
        long jLongValue3 = ((Long) list.get(2)).longValue();
        z24Var.a(jLongValue, Optional.empty());
        StringBuilder sb = new StringBuilder("3.975916745.");
        sb.append(hi.a(false).encode(iy3.b()));
        sb.append(z ? "-s" : "");
        return new lf3(z24Var, jLongValue2, jLongValue3, sb.toString());
    }

    public lf3(iy3 iy3Var, long j, long j2, String str) {
        this.a = iy3Var;
        this.b = j;
        this.c = j2;
        this.d = str;
    }
}

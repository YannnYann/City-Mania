package ads_mobile_sdk;

import java.util.ArrayDeque;
import java.util.Optional;

/* JADX INFO: loaded from: classes.dex */
public final class g44 {
    public final c44 a;
    public final z34 b;
    public final u34 c;

    public g44(a34 a34Var, c44 c44Var, u34 u34Var) {
        int[] iArr = {343945053, 300943123, 276960570, 1098387973, 1376531620, 1545514151, 271059426, 857490000, 454333378};
        int i = iArr[7] % iArr[8];
        this.a = c44Var;
        this.c = u34Var;
        this.b = new z34();
    }

    public final Optional a() {
        wu2 wu2Var;
        try {
            ArrayDeque arrayDeque = this.b.a;
            if (arrayDeque.isEmpty()) {
                throw new y34();
            }
            w34 w34Var = (w34) arrayDeque.pop();
            long j = w34Var.a;
            long j2 = w34Var.b;
            long j3 = w34Var.c;
            c44 c44Var = this.a;
            if (c44Var.b < j2) {
                return Optional.of(wu2.H);
            }
            this.c.a(j);
            if (j3 == 0) {
                while (c44Var.b > j2) {
                    c44Var.a();
                }
            }
            return Optional.empty();
        } catch (a44 unused) {
            wu2Var = wu2.H;
            return Optional.of(wu2Var);
        } catch (s34 e) {
            e = e;
            throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e);
        } catch (t34 e2) {
            e = e2;
            throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e);
        } catch (y34 unused2) {
            wu2Var = wu2.x;
            return Optional.of(wu2Var);
        }
    }
}

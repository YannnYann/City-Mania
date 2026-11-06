package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class m9 {
    public final xh2 a;
    public final xh2 b;
    public final boolean c;
    public final l40 d;
    public final x91 e;

    public m9(l40 l40Var, x91 x91Var, xh2 xh2Var, xh2 xh2Var2, boolean z) {
        this.d = l40Var;
        this.e = x91Var;
        this.a = xh2Var;
        if (xh2Var2 == null) {
            this.b = xh2.d;
        } else {
            this.b = xh2Var2;
        }
        this.c = z;
    }

    public static m9 a(l40 l40Var, x91 x91Var, xh2 xh2Var, xh2 xh2Var2, boolean z) {
        if (l40Var == null) {
            throw new IllegalArgumentException("CreativeType is null");
        }
        if (x91Var == null) {
            throw new IllegalArgumentException("ImpressionType is null");
        }
        if (xh2Var != null) {
            if (xh2Var != xh2.d) {
                if (l40Var == l40.b && xh2Var == xh2.b) {
                    throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
                }
                if (x91Var == x91.b && xh2Var == xh2.b) {
                    throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
                }
                return new m9(l40Var, x91Var, xh2Var, xh2Var2, z);
            }
            throw new IllegalArgumentException("Impression owner is none");
        }
        throw new IllegalArgumentException("Impression owner is null");
    }
}

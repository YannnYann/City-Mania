package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class do0 implements dw2, ks1 {
    public static final Object c = new Object();
    public static final /* synthetic */ boolean d = true;
    public volatile dw2 a;
    public volatile Object b = c;

    public do0(dw2 dw2Var) {
        if (!d && dw2Var == null) {
            throw new AssertionError();
        }
        this.a = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        Object obj;
        Object obj2 = this.b;
        Object obj3 = c;
        if (obj2 != obj3) {
            return obj2;
        }
        synchronized (this) {
            try {
                obj = this.b;
                if (obj == obj3) {
                    obj = this.a.get();
                    Object obj4 = this.b;
                    if (obj4 != obj3 && obj4 != obj) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj4 + " & " + obj + ". This is likely due to a circular dependency.");
                    }
                    this.b = obj;
                    this.a = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    public static ks1 a(dw2 dw2Var) {
        if (dw2Var instanceof ks1) {
            return (ks1) dw2Var;
        }
        dw2Var.getClass();
        return new do0(dw2Var);
    }
}

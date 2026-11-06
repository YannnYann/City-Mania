package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class er0 {
    private static volatile er0 d;
    private static volatile er0 e;
    private byte a = -1;
    private final Map<b, vz0.c<?, ?>> b = Collections.EMPTY_MAP;
    private static volatile a c = a.EAGER;
    static final er0 f = new er0(true);

    public enum a {
        EAGER,
        LAZY_VERIFY_ON_ACCESS
    }

    public static er0 b() {
        er0 er0Var = e;
        if (er0Var != null) {
            return er0Var;
        }
        synchronized (er0.class) {
            try {
                er0 er0Var2 = e;
                if (er0Var2 != null) {
                    return er0Var2;
                }
                er0 er0VarD = gi.b ? d() : cr0.b();
                e = er0VarD;
                return er0VarD;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static er0 d() {
        return tz0.a(er0.class);
    }

    public boolean c() {
        byte b2 = this.a;
        if (b2 == 1) {
            return true;
        }
        return b2 != 0 && c == a.LAZY_VERIFY_ON_ACCESS;
    }

    public <ContainingType extends tw1> vz0.c<ContainingType, ?> a(ContainingType containingtype, int i) {
        dr0.a(this.b.get(new b(containingtype, i)));
        return null;
    }

    public static er0 a() {
        er0 er0VarA;
        if (gi.b) {
            return f;
        }
        er0 er0Var = d;
        if (er0Var != null) {
            return er0Var;
        }
        synchronized (er0.class) {
            try {
                er0VarA = d;
                if (er0VarA == null) {
                    er0VarA = cr0.a();
                    d = er0VarA;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return er0VarA;
    }

    public er0(boolean z) {
    }

    public static final class b {
        private final Object a;
        private final int b;

        public b(Object obj, int i) {
            this.a = obj;
            this.b = i;
        }

        public int hashCode() {
            return (System.identityHashCode(this.a) * 65535) + this.b;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.a == bVar.a && this.b == bVar.b;
        }
    }
}

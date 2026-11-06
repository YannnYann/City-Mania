package ads_mobile_sdk;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes.dex */
final class aw2 {
    private static final aw2 c = new aw2();
    private final ConcurrentMap<Class<?>, la3<?>> b = new ConcurrentHashMap();
    private final fu1 a = new fu1();

    public <T extends vz0<?, ?>> la3<T> b(Class<T> cls) {
        Object obj = this.b.get(cls);
        if (obj == null) {
            return a(cls);
        }
        return (la3) obj;
    }

    private <T extends vz0<?, ?>> la3<T> a(Class<T> cls) {
        la3<T> la3VarA = this.a.a(cls);
        yh1.a(la3VarA, "schema");
        la3<T> la3Var = (la3) this.b.putIfAbsent(cls, la3VarA);
        return la3Var != null ? la3Var : la3VarA;
    }

    private aw2() {
    }

    public <T extends vz0<?, ?>> la3<T> a(T t) {
        return b(t.getClass());
    }

    public static aw2 a() {
        return c;
    }
}

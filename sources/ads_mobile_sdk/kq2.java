package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public abstract class kq2 {
    public static Object b(Object obj) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("Cannot return null from a non- @Provides method");
    }

    public static void a(Object obj, Class cls) {
        if (obj != null) {
            return;
        }
        throw new IllegalStateException(cls.getCanonicalName() + " must be set");
    }

    public static Object a(Object obj) {
        obj.getClass();
        return obj;
    }
}

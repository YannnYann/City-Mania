package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
abstract class cr0 {
    static final Class<?> a = c();

    public static er0 a() {
        er0 er0VarA = a("getEmptyRegistry");
        return er0VarA != null ? er0VarA : er0.f;
    }

    public static er0 b() {
        er0 er0VarA = a("loadGeneratedRegistry");
        if (er0VarA != null) {
            return er0VarA;
        }
        er0 er0VarD = er0.d();
        return er0VarD != null ? er0VarD : a();
    }

    public static Class<?> c() {
        try {
            return Class.forName("com.google.protobuf.ExtensionRegistry");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    private static final er0 a(String str) {
        Class<?> cls = a;
        if (cls == null) {
            return null;
        }
        try {
            return (er0) cls.getDeclaredMethod(str, new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}

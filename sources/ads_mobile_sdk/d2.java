package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class d2 {
    public static e2 a(int i) throws Exception {
        e2 e2Var = (e2) e2.c.get(Integer.valueOf(i));
        if (e2Var != null) {
            return e2Var;
        }
        throw new Exception("Invalid value for enum " + d2.class.getName() + ": " + i);
    }
}

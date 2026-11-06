package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class g2 {
    public static h2 a(int i) throws Exception {
        h2 h2Var = (h2) h2.c.get(Integer.valueOf(i));
        if (h2Var != null) {
            return h2Var;
        }
        throw new Exception("Invalid for value enum " + g2.class.getName() + ": " + i);
    }
}

package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class yc {
    public static zc a(int i) throws Exception {
        zc zcVar = (zc) zc.c.get(Integer.valueOf(i));
        if (zcVar != null) {
            return zcVar;
        }
        throw new Exception("Invalid for value enum " + yc.class.getName() + ": " + i);
    }
}

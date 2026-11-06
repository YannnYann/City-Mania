package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class vh1 implements jr0, ks1 {
    public static final vh1 b = new vh1(null);
    public final Object a;

    public static vh1 a(Object obj) {
        if (obj != null) {
            return new vh1(obj);
        }
        throw new NullPointerException("instance cannot be null");
    }

    public vh1(Object obj) {
        this.a = obj;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return this.a;
    }
}

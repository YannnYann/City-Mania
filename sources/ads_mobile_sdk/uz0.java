package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
class uz0 implements sw1 {
    private static final uz0 a = new uz0();

    public static uz0 a() {
        return a;
    }

    @Override // ads_mobile_sdk.sw1
    public rw1 a(Class<?> cls) {
        if (!vz0.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: " + cls.getName());
        }
        try {
            return (rw1) vz0.a(cls.asSubclass(vz0.class)).d();
        } catch (Exception e) {
            throw new RuntimeException("Unable to get message info for " + cls.getName(), e);
        }
    }

    private uz0() {
    }
}

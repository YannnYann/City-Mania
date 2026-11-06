package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public abstract class ig2 {
    public static void a(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void a() {
        if (!jd2.a.a) {
            throw new IllegalStateException("Method called before OM SDK activation");
        }
    }
}

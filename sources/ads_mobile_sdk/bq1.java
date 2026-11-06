package ads_mobile_sdk;

import com.unity3d.services.UnityAdsConstants;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'e' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:293)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:266)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes.dex */
public final class bq1 {
    public static final bq1 d = new bq1("VOID", 0, Void.class, Void.class, null);
    public static final bq1 e;
    public static final bq1 f;
    public static final bq1 g;
    public static final bq1 h;
    public static final bq1 i;
    public static final bq1 j;
    public static final bq1 k;
    public static final bq1 l;
    public static final bq1 m;
    private static final /* synthetic */ bq1[] n;
    private final Class<?> a;
    private final Class<?> b;
    private final Object c;

    static {
        Class cls = Integer.TYPE;
        e = new bq1("INT", 1, cls, Integer.class, 0);
        f = new bq1("LONG", 2, Long.TYPE, Long.class, 0L);
        g = new bq1("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT));
        h = new bq1("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        i = new bq1("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        j = new bq1("STRING", 6, String.class, String.class, "");
        k = new bq1("BYTE_STRING", 7, du.class, du.class, du.b);
        l = new bq1("ENUM", 8, cls, Integer.class, null);
        m = new bq1("MESSAGE", 9, Object.class, Object.class, null);
        n = d();
    }

    public static bq1[] values() {
        return (bq1[]) n.clone();
    }

    private static /* synthetic */ bq1[] d() {
        return new bq1[]{d, e, f, g, h, i, j, k, l, m};
    }

    private bq1(String str, int i2, Class cls, Class cls2, Object obj) {
        this.a = cls;
        this.b = cls2;
        this.c = obj;
    }

    public Class<?> e() {
        return this.b;
    }
}

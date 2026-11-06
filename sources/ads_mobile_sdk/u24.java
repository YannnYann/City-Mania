package ads_mobile_sdk;

import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: classes.dex */
public abstract class u24 {
    static final int a = a(1, 3);
    static final int b = a(1, 4);
    static final int c = a(2, 0);
    static final int d = a(3, 2);

    public static int a(int i) {
        return i >>> 3;
    }

    public static int a(int i, int i2) {
        return (i << 3) | i2;
    }

    public static int b(int i) {
        return i & 7;
    }

    public enum b {
        INT(0),
        LONG(0L),
        FLOAT(Float.valueOf(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT)),
        DOUBLE(Double.valueOf(0.0d)),
        BOOLEAN(Boolean.FALSE),
        STRING(""),
        BYTE_STRING(du.b),
        ENUM(null),
        MESSAGE(null);

        private final Object a;

        b(Object obj) {
            this.a = obj;
        }
    }

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
    public static class a {
        public static final a c = new a("DOUBLE", 0, b.DOUBLE, 1);
        public static final a d = new a("FLOAT", 1, b.FLOAT, 5);
        public static final a e;
        public static final a f;
        public static final a g;
        public static final a h;
        public static final a i;
        public static final a j;
        public static final a k;
        public static final a l;
        public static final a m;
        public static final a n;
        public static final a o;
        public static final a p;
        public static final a q;
        public static final a r;
        public static final a s;
        public static final a t;
        private static final /* synthetic */ a[] u;
        private final b a;
        private final int b;

        static {
            b bVar = b.LONG;
            e = new a("INT64", 2, bVar, 0);
            f = new a("UINT64", 3, bVar, 0);
            b bVar2 = b.INT;
            g = new a("INT32", 4, bVar2, 0);
            h = new a("FIXED64", 5, bVar, 1);
            i = new a("FIXED32", 6, bVar2, 5);
            j = new a("BOOL", 7, b.BOOLEAN, 0);
            k = new C0000a("STRING", 8, b.STRING, 2);
            b bVar3 = b.MESSAGE;
            l = new b("GROUP", 9, bVar3, 3);
            m = new c("MESSAGE", 10, bVar3, 2);
            n = new d("BYTES", 11, b.BYTE_STRING, 2);
            o = new a("UINT32", 12, bVar2, 0);
            p = new a("ENUM", 13, b.ENUM, 0);
            q = new a("SFIXED32", 14, bVar2, 5);
            r = new a("SFIXED64", 15, bVar, 1);
            s = new a("SINT32", 16, bVar2, 0);
            t = new a("SINT64", 17, bVar, 0);
            u = d();
        }

        public static a[] values() {
            return (a[]) u.clone();
        }

        private static /* synthetic */ a[] d() {
            return new a[]{c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t};
        }

        /* JADX INFO: renamed from: ads_mobile_sdk.u24$a$a, reason: collision with other inner class name */
        public enum C0000a extends a {
            public C0000a(String str, int i, b bVar, int i2) {
                super(str, i, bVar, i2);
            }
        }

        public enum b extends a {
            public b(String str, int i, b bVar, int i2) {
                super(str, i, bVar, i2);
            }
        }

        public enum c extends a {
            public c(String str, int i, b bVar, int i2) {
                super(str, i, bVar, i2);
            }
        }

        public enum d extends a {
            public d(String str, int i, b bVar, int i2) {
                super(str, i, bVar, i2);
            }
        }

        private a(String str, int i2, b bVar, int i3) {
            this.a = bVar;
            this.b = i3;
        }

        public b e() {
            return this.a;
        }

        public int f() {
            return this.b;
        }
    }
}

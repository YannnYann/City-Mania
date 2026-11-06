package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
final class fu1 {
    private final sw1 a;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[zv2.values().length];
            a = iArr;
            try {
                iArr[zv2.PROTO3.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    private static boolean b(Class<?> cls) {
        return gi.b || vz0.class.isAssignableFrom(cls);
    }

    public fu1() {
        this(a());
    }

    public <T> la3<T> a(Class<T> cls) {
        if (b(cls)) {
            rw1 rw1VarA = this.a.a(cls);
            if (rw1VarA.c()) {
                return xw1.a(ma3.a(), hr0.a(), rw1VarA.b());
            }
            return a(cls, rw1VarA);
        }
        throw new IllegalArgumentException("Full runtime messages are not supported by this schema factory: " + cls.getName());
    }

    private fu1(sw1 sw1Var) {
        this.a = (sw1) yh1.a(sw1Var, "messageInfoFactory");
    }

    private static <T> la3<T> a(Class<T> cls, rw1 rw1Var) {
        return ww1.a(cls, rw1Var, gb2.a(), ps1.a(), ma3.a(), a(rw1Var) ? hr0.a() : null, mu1.a());
    }

    private static boolean a(rw1 rw1Var) {
        return a.a[rw1Var.a().ordinal()] != 1;
    }

    private static sw1 a() {
        return uz0.a();
    }
}

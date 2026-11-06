package ads_mobile_sdk;

import java.lang.reflect.Type;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'f' uses external variables
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
public final class rr0 {
    public static final rr0 A;
    public static final rr0 B;
    public static final rr0 C;
    public static final rr0 D;
    public static final rr0 E;
    public static final rr0 F;
    public static final rr0 G;
    public static final rr0 H;
    public static final rr0 I;
    public static final rr0 J;
    public static final rr0 K;
    public static final rr0 L;
    public static final rr0 M;
    public static final rr0 N;
    public static final rr0 O;
    public static final rr0 P;
    public static final rr0 Q;
    public static final rr0 R;
    public static final rr0 S;
    public static final rr0 T;
    public static final rr0 U;
    public static final rr0 V;
    public static final rr0 W;
    public static final rr0 X;
    public static final rr0 Y;
    public static final rr0 Z;
    public static final rr0 a0;
    public static final rr0 b0;
    public static final rr0 c0;
    public static final rr0 d0;
    private static final rr0[] e0;
    public static final rr0 f;
    private static final Type[] f0;
    public static final rr0 g;
    private static final /* synthetic */ rr0[] g0;
    public static final rr0 h;
    public static final rr0 i;
    public static final rr0 j;
    public static final rr0 k;
    public static final rr0 l;
    public static final rr0 m;
    public static final rr0 n;
    public static final rr0 o;
    public static final rr0 p;
    public static final rr0 q;
    public static final rr0 r;
    public static final rr0 s;
    public static final rr0 t;
    public static final rr0 u;
    public static final rr0 v;
    public static final rr0 w;
    public static final rr0 x;
    public static final rr0 y;
    public static final rr0 z;
    private final bq1 a;
    private final int b;
    private final b c;
    private final Class<?> d;
    private final boolean e;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[bq1.values().length];
            b = iArr;
            try {
                iArr[bq1.k.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[bq1.m.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[bq1.j.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[b.values().length];
            a = iArr2;
            try {
                iArr2[b.MAP.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[b.VECTOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[b.SCALAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    static {
        b bVar = b.SCALAR;
        bq1 bq1Var = bq1.h;
        f = new rr0("DOUBLE", 0, 0, bVar, bq1Var);
        bq1 bq1Var2 = bq1.g;
        g = new rr0("FLOAT", 1, 1, bVar, bq1Var2);
        bq1 bq1Var3 = bq1.f;
        h = new rr0("INT64", 2, 2, bVar, bq1Var3);
        i = new rr0("UINT64", 3, 3, bVar, bq1Var3);
        bq1 bq1Var4 = bq1.e;
        j = new rr0("INT32", 4, 4, bVar, bq1Var4);
        k = new rr0("FIXED64", 5, 5, bVar, bq1Var3);
        l = new rr0("FIXED32", 6, 6, bVar, bq1Var4);
        bq1 bq1Var5 = bq1.i;
        m = new rr0("BOOL", 7, 7, bVar, bq1Var5);
        bq1 bq1Var6 = bq1.j;
        n = new rr0("STRING", 8, 8, bVar, bq1Var6);
        bq1 bq1Var7 = bq1.m;
        o = new rr0("MESSAGE", 9, 9, bVar, bq1Var7);
        bq1 bq1Var8 = bq1.k;
        p = new rr0("BYTES", 10, 10, bVar, bq1Var8);
        q = new rr0("UINT32", 11, 11, bVar, bq1Var4);
        bq1 bq1Var9 = bq1.l;
        r = new rr0("ENUM", 12, 12, bVar, bq1Var9);
        s = new rr0("SFIXED32", 13, 13, bVar, bq1Var4);
        t = new rr0("SFIXED64", 14, 14, bVar, bq1Var3);
        u = new rr0("SINT32", 15, 15, bVar, bq1Var4);
        v = new rr0("SINT64", 16, 16, bVar, bq1Var3);
        w = new rr0("GROUP", 17, 17, bVar, bq1Var7);
        b bVar2 = b.VECTOR;
        x = new rr0("DOUBLE_LIST", 18, 18, bVar2, bq1Var);
        y = new rr0("FLOAT_LIST", 19, 19, bVar2, bq1Var2);
        z = new rr0("INT64_LIST", 20, 20, bVar2, bq1Var3);
        A = new rr0("UINT64_LIST", 21, 21, bVar2, bq1Var3);
        B = new rr0("INT32_LIST", 22, 22, bVar2, bq1Var4);
        C = new rr0("FIXED64_LIST", 23, 23, bVar2, bq1Var3);
        D = new rr0("FIXED32_LIST", 24, 24, bVar2, bq1Var4);
        E = new rr0("BOOL_LIST", 25, 25, bVar2, bq1Var5);
        F = new rr0("STRING_LIST", 26, 26, bVar2, bq1Var6);
        G = new rr0("MESSAGE_LIST", 27, 27, bVar2, bq1Var7);
        H = new rr0("BYTES_LIST", 28, 28, bVar2, bq1Var8);
        I = new rr0("UINT32_LIST", 29, 29, bVar2, bq1Var4);
        J = new rr0("ENUM_LIST", 30, 30, bVar2, bq1Var9);
        K = new rr0("SFIXED32_LIST", 31, 31, bVar2, bq1Var4);
        L = new rr0("SFIXED64_LIST", 32, 32, bVar2, bq1Var3);
        M = new rr0("SINT32_LIST", 33, 33, bVar2, bq1Var4);
        N = new rr0("SINT64_LIST", 34, 34, bVar2, bq1Var3);
        b bVar3 = b.PACKED_VECTOR;
        O = new rr0("DOUBLE_LIST_PACKED", 35, 35, bVar3, bq1Var);
        P = new rr0("FLOAT_LIST_PACKED", 36, 36, bVar3, bq1Var2);
        Q = new rr0("INT64_LIST_PACKED", 37, 37, bVar3, bq1Var3);
        R = new rr0("UINT64_LIST_PACKED", 38, 38, bVar3, bq1Var3);
        S = new rr0("INT32_LIST_PACKED", 39, 39, bVar3, bq1Var4);
        T = new rr0("FIXED64_LIST_PACKED", 40, 40, bVar3, bq1Var3);
        U = new rr0("FIXED32_LIST_PACKED", 41, 41, bVar3, bq1Var4);
        V = new rr0("BOOL_LIST_PACKED", 42, 42, bVar3, bq1Var5);
        W = new rr0("UINT32_LIST_PACKED", 43, 43, bVar3, bq1Var4);
        X = new rr0("ENUM_LIST_PACKED", 44, 44, bVar3, bq1Var9);
        Y = new rr0("SFIXED32_LIST_PACKED", 45, 45, bVar3, bq1Var4);
        Z = new rr0("SFIXED64_LIST_PACKED", 46, 46, bVar3, bq1Var3);
        a0 = new rr0("SINT32_LIST_PACKED", 47, 47, bVar3, bq1Var4);
        b0 = new rr0("SINT64_LIST_PACKED", 48, 48, bVar3, bq1Var3);
        c0 = new rr0("GROUP_LIST", 49, 49, bVar2, bq1Var7);
        d0 = new rr0("MAP", 50, 50, b.MAP, bq1.d);
        g0 = d();
        f0 = new Type[0];
        rr0[] rr0VarArrValues = values();
        e0 = new rr0[rr0VarArrValues.length];
        for (rr0 rr0Var : rr0VarArrValues) {
            e0[rr0Var.b] = rr0Var;
        }
    }

    public static rr0[] values() {
        return (rr0[]) g0.clone();
    }

    private static /* synthetic */ rr0[] d() {
        return new rr0[]{f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z, a0, b0, c0, d0};
    }

    private rr0(String str, int i2, int i3, b bVar, bq1 bq1Var) {
        int i4;
        this.b = i3;
        this.c = bVar;
        this.a = bq1Var;
        int i5 = a.a[bVar.ordinal()];
        if (i5 != 1 && i5 != 2) {
            this.d = null;
        } else {
            this.d = bq1Var.e();
        }
        this.e = (bVar != b.SCALAR || (i4 = a.b[bq1Var.ordinal()]) == 1 || i4 == 2 || i4 == 3) ? false : true;
    }

    public int e() {
        return this.b;
    }

    public enum b {
        SCALAR(false),
        VECTOR(true),
        PACKED_VECTOR(true),
        MAP(false);

        private final boolean a;

        b(boolean z) {
            this.a = z;
        }
    }
}

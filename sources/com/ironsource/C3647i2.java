package com.ironsource;

/* JADX INFO: renamed from: com.ironsource.i2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3647i2 {
    public static final C3647i2 a = new C3647i2();
    public static final String b = "trials_fail";
    public static final String c = "parsing";
    public static final String d = "other";
    public static final String e = "disabled";
    public static final String f = "-1";

    private C3647i2() {
    }

    public final String a(boolean z) {
        if (!z) {
            return f;
        }
        return "fallback_" + System.currentTimeMillis();
    }

    public static /* synthetic */ String a(C3647i2 c3647i2, boolean z, Integer num, int i, Object obj) {
        if ((i & 2) != 0) {
            num = null;
        }
        return c3647i2.a(z, num);
    }

    public final String a(boolean z, Integer num) {
        if (!z) {
            return e;
        }
        if (num == null || num.intValue() != 1003) {
            if (num == null || num.intValue() != 1008) {
                if (num == null || num.intValue() != 1002) {
                    if (num == null || num.intValue() != 1006) {
                        if (num == null || num.intValue() != 1001) {
                            return d;
                        }
                        return b;
                    }
                    return b;
                }
                return c;
            }
            return c;
        }
        return c;
    }
}

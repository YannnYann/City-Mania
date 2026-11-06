package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class M1 {
    public static final Map<String, WeakReference<C1930Tb>> A00 = new HashMap();

    public static int A00() {
        return A00.size();
    }

    public static C1930Tb A01(C1643Hi c1643Hi, LA la, int i, YJ yj) {
        C1930Tb c1930Tb = new C1930Tb(c1643Hi, la, c1643Hi.A02().A0A(), i);
        c1930Tb.A0h(yj);
        c1930Tb.A0a();
        A00.put(la.A1r(), new WeakReference<>(c1930Tb));
        return c1930Tb;
    }

    public static C1930Tb A02(String str) {
        WeakReference<C1930Tb> weakReference = A00.get(str);
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public static void A03(LA la, C1930Tb c1930Tb) {
        A00.put(la.A1r(), new WeakReference<>(c1930Tb));
    }

    public static void A04(String str) {
        A00.remove(str);
    }
}

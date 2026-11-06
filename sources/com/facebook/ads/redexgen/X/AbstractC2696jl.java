package com.facebook.ads.redexgen.X;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.jl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2696jl {
    public static final ConcurrentHashMap<String, LA> A00 = new ConcurrentHashMap<>();

    public static LA A00(String str) {
        return A00.remove(str);
    }

    public static void A01(String str) {
        A00.remove(str);
    }

    public static void A02(String str, LA la) {
        A00.put(str, la);
    }
}

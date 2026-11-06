package com.ironsource.adqualitysdk.sdk;

import com.ironsource.adqualitysdk.sdk.i.AbstractC0373;
import com.ironsource.adqualitysdk.sdk.i.AbstractC0658;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class StringFog {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final ConcurrentHashMap f60 = new ConcurrentHashMap();

    public static String decrypt(String str, String str2) {
        ConcurrentHashMap concurrentHashMap = f60;
        ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) concurrentHashMap.get(str);
        if (concurrentHashMap2 == null) {
            concurrentHashMap2 = new ConcurrentHashMap();
            ConcurrentHashMap concurrentHashMap3 = (ConcurrentHashMap) concurrentHashMap.putIfAbsent(str, concurrentHashMap2);
            if (concurrentHashMap3 != null) {
                concurrentHashMap2 = concurrentHashMap3;
            }
        }
        String str3 = (String) concurrentHashMap2.get(str2);
        if (str3 != null) {
            return str3;
        }
        String strM1412 = AbstractC0658.m1412(AbstractC0373.m1260(str), AbstractC0373.m1260(str2));
        concurrentHashMap2.put(str2, strM1412);
        return strM1412;
    }
}

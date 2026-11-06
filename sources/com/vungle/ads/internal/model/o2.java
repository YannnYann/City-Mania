package com.vungle.ads.internal.model;

import java.util.LinkedHashMap;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: loaded from: classes4.dex */
public enum o2 {
    /* JADX INFO: Fake field, exist only in values array */
    ALLOW_ID(0),
    /* JADX INFO: Fake field, exist only in values array */
    DISABLE_ID(1),
    /* JADX INFO: Fake field, exist only in values array */
    LEGACY(2);

    public static final LinkedHashMap b;
    public final int a;

    static {
        o2[] o2VarArrValues = values();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(o2VarArrValues.length), 16));
        for (o2 o2Var : o2VarArrValues) {
            linkedHashMap.put(Integer.valueOf(o2Var.a), o2Var);
        }
        b = linkedHashMap;
    }

    o2(int i) {
        this.a = i;
    }
}

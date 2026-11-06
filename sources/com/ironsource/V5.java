package com.ironsource;

import android.os.Bundle;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: loaded from: classes3.dex */
public final class V5 {
    public static final V5 a = new V5();
    public static final String b = "ext_";

    private V5() {
    }

    public final Map<String, String> a(Bundle bundle) {
        Set<String> setKeySet;
        if (bundle == null || (setKeySet = bundle.keySet()) == null) {
            return MapsKt__MapsKt.emptyMap();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(setKeySet, 10)), 16));
        for (String str : setKeySet) {
            String str2 = b + str;
            Object obj = bundle.get(str);
            Pair pair = TuplesKt.to(str2, obj instanceof Iterable ? CollectionsKt___CollectionsKt.joinToString$default((Iterable) obj, ", ", null, null, 0, null, null, 62, null) : obj == null ? null : obj.toString());
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return linkedHashMap;
    }
}

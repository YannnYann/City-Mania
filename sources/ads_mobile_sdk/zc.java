package ads_mobile_sdk;

import java.util.LinkedHashMap;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.enums.EnumEntriesKt;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class zc {
    public static final yc b;
    public static final LinkedHashMap c;
    public static final zc d;
    public static final zc e;
    public static final zc f;
    public static final zc g;
    public static final /* synthetic */ zc[] h;
    public final int a;

    static {
        zc zcVar = new zc("UNKNOWN", 0, 0);
        d = zcVar;
        zc zcVar2 = new zc("CPM", 1, 1);
        e = zcVar2;
        zc zcVar3 = new zc("CPC", 2, 2);
        f = zcVar3;
        zc zcVar4 = new zc("ONE_PIXEL", 3, 3);
        g = zcVar4;
        zc[] zcVarArr = {zcVar, zcVar2, zcVar3, zcVar4};
        h = zcVarArr;
        EnumEntriesKt.enumEntries(zcVarArr);
        b = new yc();
        zc[] zcVarArrValues = values();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(zcVarArrValues.length), 16));
        for (zc zcVar5 : zcVarArrValues) {
            linkedHashMap.put(Integer.valueOf(zcVar5.a), zcVar5);
        }
        c = linkedHashMap;
    }

    public static zc[] values() {
        return (zc[]) h.clone();
    }

    public zc(String str, int i, int i2) {
        this.a = i2;
    }
}

package ads_mobile_sdk;

import java.util.LinkedHashMap;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.enums.EnumEntriesKt;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class h2 {
    public static final g2 b;
    public static final LinkedHashMap c;
    public static final h2 d;
    public static final h2 e;
    public static final h2 f;
    public static final h2 g;
    public static final /* synthetic */ h2[] h;
    public final int a;

    static {
        h2 h2Var = new h2("FORMAT_DEFAULT", 0, 0);
        d = h2Var;
        h2 h2Var2 = new h2("ON_AD_OPENED", 1, 1);
        e = h2Var2;
        h2 h2Var3 = new h2("ON_AD_SHOW", 2, 2);
        f = h2Var3;
        h2 h2Var4 = new h2("THIRD_PARTY_SDK_CALLBACK", 3, 3);
        g = h2Var4;
        h2[] h2VarArr = {h2Var, h2Var2, h2Var3, h2Var4};
        h = h2VarArr;
        EnumEntriesKt.enumEntries(h2VarArr);
        b = new g2();
        h2[] h2VarArrValues = values();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(h2VarArrValues.length), 16));
        for (h2 h2Var5 : h2VarArrValues) {
            linkedHashMap.put(Integer.valueOf(h2Var5.a), h2Var5);
        }
        c = linkedHashMap;
    }

    public static h2[] values() {
        return (h2[]) h.clone();
    }

    public h2(String str, int i, int i2) {
        this.a = i2;
    }
}

package ads_mobile_sdk;

import java.util.LinkedHashMap;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.enums.EnumEntriesKt;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class e2 {
    public static final d2 b;
    public static final LinkedHashMap c;
    public static final e2 d;
    public static final e2 e;
    public static final e2 f;
    public static final /* synthetic */ e2[] g;
    public final int a;

    static {
        e2 e2Var = new e2("FORMAT_DEFAULT", 0, 0);
        d = e2Var;
        e2 e2Var2 = new e2("ONE_PIXEL", 1, 1);
        e = e2Var2;
        e2 e2Var3 = new e2("AD_LOAD", 2, 2);
        e2 e2Var4 = new e2("NO_IMPRESSION", 3, 3);
        e2 e2Var5 = new e2("THIRD_PARTY_SDK_CALLBACK", 4, 4);
        f = e2Var5;
        e2[] e2VarArr = {e2Var, e2Var2, e2Var3, e2Var4, e2Var5};
        g = e2VarArr;
        EnumEntriesKt.enumEntries(e2VarArr);
        b = new d2();
        e2[] e2VarArrValues = values();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(e2VarArrValues.length), 16));
        for (e2 e2Var6 : e2VarArrValues) {
            linkedHashMap.put(Integer.valueOf(e2Var6.a), e2Var6);
        }
        c = linkedHashMap;
    }

    public static e2[] values() {
        return (e2[]) g.clone();
    }

    public e2(String str, int i, int i2) {
        this.a = i2;
    }
}

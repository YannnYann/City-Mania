package ads_mobile_sdk;

import com.ironsource.C3522b4;
import java.util.LinkedHashMap;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class j53 {
    public static final h53 b;
    public static final LinkedHashMap c;
    public static final j53 d;
    public static final j53 e;
    public static final j53 f;
    public static final j53 g;
    public static final j53 h;
    public static final j53 i;
    public static final j53 j;
    public static final j53 k;
    public static final j53 l;
    public static final /* synthetic */ j53[] m;
    public static final /* synthetic */ EnumEntries n;
    public final String a;

    static {
        j53 j53Var = new j53(0, "UNKNOWN", "");
        d = j53Var;
        j53 j53Var2 = new j53(1, "APP_OPEN", "app_open_ad");
        e = j53Var2;
        j53 j53Var3 = new j53(2, "BANNER", "banner");
        f = j53Var3;
        j53 j53Var4 = new j53(3, "ICON", C3522b4.i.H0);
        g = j53Var4;
        j53 j53Var5 = new j53(4, "INTERSTITIAL", "interstitial");
        h = j53Var5;
        j53 j53Var6 = new j53(5, "NATIVE", "native");
        i = j53Var6;
        j53 j53Var7 = new j53(6, "REWARDED", "rewarded");
        j = j53Var7;
        j53 j53Var8 = new j53(7, "REWARDED_INTERSTITIAL", "rewarded_interstitial");
        k = j53Var8;
        j53 j53Var9 = new j53(8, "SWIPEABLE_INTERSTITIAL", "swipeable_interstitial");
        l = j53Var9;
        j53[] j53VarArr = {j53Var, j53Var2, j53Var3, j53Var4, j53Var5, j53Var6, j53Var7, j53Var8, j53Var9};
        m = j53VarArr;
        EnumEntries enumEntries = EnumEntriesKt.enumEntries(j53VarArr);
        n = enumEntries;
        b = new h53();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(enumEntries, 10)), 16));
        for (Object obj : enumEntries) {
            linkedHashMap.put(((j53) obj).a, obj);
        }
        c = linkedHashMap;
    }

    public static j53[] values() {
        return (j53[]) m.clone();
    }

    public j53(int i2, String str, String str2) {
        this.a = str2;
    }

    public final String d() {
        return this.a;
    }
}

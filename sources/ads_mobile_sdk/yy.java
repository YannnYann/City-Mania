package ads_mobile_sdk;

import java.util.LinkedHashMap;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class yy {
    public static final xy b;
    public static final LinkedHashMap c;
    public static final yy d;
    public static final yy e;
    public static final /* synthetic */ yy[] f;
    public final String a;

    static {
        yy yyVar = new yy(0, "ON_CREATE", "create");
        d = yyVar;
        yy yyVar2 = new yy(1, "ON_VISIBLE", "visible");
        e = yyVar2;
        yy[] yyVarArr = {yyVar, yyVar2};
        f = yyVarArr;
        EnumEntries enumEntries = EnumEntriesKt.enumEntries(yyVarArr);
        b = new xy();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(enumEntries, 10)), 16));
        for (Object obj : enumEntries) {
            linkedHashMap.put(((yy) obj).a, obj);
        }
        c = linkedHashMap;
    }

    public static yy[] values() {
        return (yy[]) f.clone();
    }

    public yy(int i, String str, String str2) {
        this.a = str2;
    }
}

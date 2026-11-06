package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class bc {
    public static final ac a;
    public static final bc b;
    public static final bc c;
    public static final bc d;
    public static final /* synthetic */ bc[] e;

    static {
        bc bcVar = new bc("UNKNOWN", 0);
        b = bcVar;
        bc bcVar2 = new bc("BANNER", 1);
        bc bcVar3 = new bc("INTERSTITIAL", 2);
        bc bcVar4 = new bc("NATIVE", 3);
        c = bcVar4;
        bc bcVar5 = new bc("REWARDED", 4);
        bc bcVar6 = new bc("APP_OPEN", 5);
        d = bcVar6;
        bc[] bcVarArr = {bcVar, bcVar2, bcVar3, bcVar4, bcVar5, bcVar6, new bc("REWARDED_INTERSTITIAL", 6), new bc("SWIPEABLE_INTERSTITIAL", 7)};
        e = bcVarArr;
        EnumEntriesKt.enumEntries(bcVarArr);
        a = new ac();
    }

    public static bc[] values() {
        return (bc[]) e.clone();
    }

    public bc(String str, int i) {
    }
}

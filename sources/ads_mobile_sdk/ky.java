package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class ky {
    public static final ky a;
    public static final ky b;
    public static final ky c;
    public static final /* synthetic */ ky[] d;

    static {
        ky kyVar = new ky("BACK_BUTTON", 0);
        a = kyVar;
        ky kyVar2 = new ky("CLOSE_BUTTON", 1);
        b = kyVar2;
        ky kyVar3 = new ky("CUSTOM", 2);
        c = kyVar3;
        ky[] kyVarArr = {kyVar, kyVar2, kyVar3, new ky("OTHER", 3), new ky("SWIPE_AWAY", 4)};
        d = kyVarArr;
        EnumEntriesKt.enumEntries(kyVarArr);
    }

    public static ky[] values() {
        return (ky[]) d.clone();
    }

    public ky(String str, int i) {
    }
}

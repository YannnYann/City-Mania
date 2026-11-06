package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class ae1 {
    public static final ae1 a;
    public static final ae1 b;
    public static final ae1 c;
    public static final ae1 d;
    public static final /* synthetic */ ae1[] e;

    static {
        ae1 ae1Var = new ae1("UNKNOWN", 0);
        a = ae1Var;
        ae1 ae1Var2 = new ae1("API", 1);
        b = ae1Var2;
        ae1 ae1Var3 = new ae1("GESTURE", 2);
        c = ae1Var3;
        ae1 ae1Var4 = new ae1("DEBUG_MENU", 3);
        d = ae1Var4;
        ae1[] ae1VarArr = {ae1Var, ae1Var2, ae1Var3, ae1Var4};
        e = ae1VarArr;
        EnumEntriesKt.enumEntries(ae1VarArr);
    }

    public static ae1[] values() {
        return (ae1[]) e.clone();
    }

    public ae1(String str, int i) {
    }
}

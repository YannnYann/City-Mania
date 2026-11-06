package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class lg3 {
    public static final lg3 a;
    public static final lg3 b;
    public static final /* synthetic */ lg3[] c;

    static {
        lg3 lg3Var = new lg3("REQUIRED", 0);
        a = lg3Var;
        lg3 lg3Var2 = new lg3("OPTIONAL", 1);
        b = lg3Var2;
        lg3[] lg3VarArr = {lg3Var, lg3Var2};
        c = lg3VarArr;
        EnumEntriesKt.enumEntries(lg3VarArr);
    }

    public static lg3[] values() {
        return (lg3[]) c.clone();
    }

    public lg3(String str, int i) {
    }
}

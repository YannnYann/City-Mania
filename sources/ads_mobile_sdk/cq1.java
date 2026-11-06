package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class cq1 {
    public static final cq1 a;
    public static final cq1 b;
    public static final cq1 c;
    public static final cq1 d;
    public static final /* synthetic */ cq1[] e;

    static {
        cq1 cq1Var = new cq1("ERROR", 0);
        a = cq1Var;
        cq1 cq1Var2 = new cq1("WARNING", 1);
        b = cq1Var2;
        cq1 cq1Var3 = new cq1("DEBUG", 2);
        c = cq1Var3;
        cq1 cq1Var4 = new cq1("INFO", 3);
        d = cq1Var4;
        cq1[] cq1VarArr = {cq1Var, cq1Var2, cq1Var3, cq1Var4};
        e = cq1VarArr;
        EnumEntriesKt.enumEntries(cq1VarArr);
    }

    public static cq1[] values() {
        return (cq1[]) e.clone();
    }

    public cq1(String str, int i) {
    }
}

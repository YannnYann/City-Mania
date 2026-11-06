package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class cg2 {
    public static final cg2 a;
    public static final cg2 b;
    public static final cg2 c;
    public static final /* synthetic */ cg2[] d;

    static {
        cg2 cg2Var = new cg2("VIDEO", 0);
        a = cg2Var;
        cg2 cg2Var2 = new cg2("DISPLAY", 1);
        b = cg2Var2;
        cg2 cg2Var3 = new cg2("UNKNOWN", 2);
        c = cg2Var3;
        cg2[] cg2VarArr = {cg2Var, cg2Var2, cg2Var3};
        d = cg2VarArr;
        EnumEntriesKt.enumEntries(cg2VarArr);
    }

    public static cg2[] values() {
        return (cg2[]) d.clone();
    }

    public cg2(String str, int i) {
    }
}

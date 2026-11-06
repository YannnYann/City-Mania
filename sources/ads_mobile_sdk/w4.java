package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class w4 {
    public static final w4 a;
    public static final w4 b;
    public static final w4 c;
    public static final /* synthetic */ w4[] d;

    static {
        w4 w4Var = new w4("IDLE", 0);
        a = w4Var;
        w4 w4Var2 = new w4("ALLOWED", 1);
        b = w4Var2;
        w4 w4Var3 = new w4("ACTIVE", 2);
        c = w4Var3;
        w4[] w4VarArr = {w4Var, w4Var2, w4Var3};
        d = w4VarArr;
        EnumEntriesKt.enumEntries(w4VarArr);
    }

    public static w4[] values() {
        return (w4[]) d.clone();
    }

    public w4(String str, int i) {
    }
}

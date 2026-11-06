package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class q02 {
    public static final q02 a;
    public static final q02 b;
    public static final /* synthetic */ q02[] c;

    static {
        q02 q02Var = new q02("NATIVE", 0);
        a = q02Var;
        q02 q02Var2 = new q02("CUSTOM_NATIVE", 1);
        b = q02Var2;
        q02[] q02VarArr = {q02Var, q02Var2};
        c = q02VarArr;
        EnumEntriesKt.enumEntries(q02VarArr);
    }

    public static q02[] values() {
        return (q02[]) c.clone();
    }

    public q02(String str, int i) {
    }
}

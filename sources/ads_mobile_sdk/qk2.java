package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class qk2 {
    public static final qk2 a;
    public static final qk2 b;
    public static final qk2 c;
    public static final /* synthetic */ qk2[] d;

    static {
        qk2 qk2Var = new qk2("SUCCESS", 0);
        a = qk2Var;
        qk2 qk2Var2 = new qk2("FAILED", 1);
        b = qk2Var2;
        qk2 qk2Var3 = new qk2("DISABLED", 2);
        c = qk2Var3;
        qk2[] qk2VarArr = {qk2Var, qk2Var2, qk2Var3};
        d = qk2VarArr;
        EnumEntriesKt.enumEntries(qk2VarArr);
    }

    public static qk2[] values() {
        return (qk2[]) d.clone();
    }

    public qk2(String str, int i) {
    }
}

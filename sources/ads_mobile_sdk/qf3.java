package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class qf3 {
    public static final qf3 a;
    public static final qf3 b;
    public static final /* synthetic */ qf3[] c;

    static {
        qf3 qf3Var = new qf3("SEQUENTIAL", 0);
        a = qf3Var;
        qf3 qf3Var2 = new qf3("ASYNC", 1);
        b = qf3Var2;
        qf3[] qf3VarArr = {qf3Var, qf3Var2};
        c = qf3VarArr;
        EnumEntriesKt.enumEntries(qf3VarArr);
    }

    public static qf3[] values() {
        return (qf3[]) c.clone();
    }

    public qf3(String str, int i) {
    }
}

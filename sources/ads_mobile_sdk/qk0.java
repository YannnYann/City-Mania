package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class qk0 {
    public static final qk0 a;
    public static final qk0 b;
    public static final qk0 c;
    public static final qk0 d;
    public static final /* synthetic */ qk0[] e;

    static {
        qk0 qk0Var = new qk0("START", 0);
        a = qk0Var;
        qk0 qk0Var2 = new qk0("HOLDING", 1);
        b = qk0Var2;
        qk0 qk0Var3 = new qk0("COMPLETE", 2);
        c = qk0Var3;
        qk0 qk0Var4 = new qk0("NOT_DEBUG_GESTURE", 3);
        d = qk0Var4;
        qk0[] qk0VarArr = {qk0Var, qk0Var2, qk0Var3, qk0Var4};
        e = qk0VarArr;
        EnumEntriesKt.enumEntries(qk0VarArr);
    }

    public static qk0[] values() {
        return (qk0[]) e.clone();
    }

    public qk0(String str, int i) {
    }
}

package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class gy3 {
    public static final gy3 a;
    public static final gy3 b;
    public static final gy3 c;
    public static final gy3 d;
    public static final /* synthetic */ gy3[] e;

    static {
        gy3 gy3Var = new gy3("LAYOUT", 0);
        a = gy3Var;
        gy3 gy3Var2 = new gy3("VIEW_STATE", 1);
        b = gy3Var2;
        gy3 gy3Var3 = new gy3("SCROLL", 2);
        c = gy3Var3;
        gy3 gy3Var4 = new gy3("APP_STATE", 3);
        d = gy3Var4;
        gy3[] gy3VarArr = {gy3Var, gy3Var2, gy3Var3, gy3Var4};
        e = gy3VarArr;
        EnumEntriesKt.enumEntries(gy3VarArr);
    }

    public static gy3[] values() {
        return (gy3[]) e.clone();
    }

    public gy3(String str, int i) {
    }
}

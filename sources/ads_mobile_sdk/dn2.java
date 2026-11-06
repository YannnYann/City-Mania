package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class dn2 {
    public static final dn2 b;
    public static final dn2 c;
    public static final dn2 d;
    public static final /* synthetic */ dn2[] e;
    public final int a;

    static {
        dn2 dn2Var = new dn2("UNKNOWN", 0, 0);
        b = dn2Var;
        dn2 dn2Var2 = new dn2("PORTRAIT", 1, 1);
        c = dn2Var2;
        dn2 dn2Var3 = new dn2("LANDSCAPE", 2, 2);
        d = dn2Var3;
        dn2[] dn2VarArr = {dn2Var, dn2Var2, dn2Var3};
        e = dn2VarArr;
        EnumEntriesKt.enumEntries(dn2VarArr);
    }

    public static dn2[] values() {
        return (dn2[]) e.clone();
    }

    public dn2(String str, int i, int i2) {
        this.a = i2;
    }
}

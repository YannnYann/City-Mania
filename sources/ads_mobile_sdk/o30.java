package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class o30 {
    public static final o30 b;
    public static final o30 c;
    public static final o30 d;
    public static final /* synthetic */ o30[] e;
    public final int a;

    static {
        o30 o30Var = new o30("UNKNOWN", 0, -1);
        o30 o30Var2 = new o30("STRING", 1, 0);
        b = o30Var2;
        o30 o30Var3 = new o30("NUMBER", 2, 1);
        c = o30Var3;
        o30 o30Var4 = new o30("BOOLEAN", 3, 2);
        d = o30Var4;
        o30[] o30VarArr = {o30Var, o30Var2, o30Var3, o30Var4};
        e = o30VarArr;
        EnumEntriesKt.enumEntries(o30VarArr);
    }

    public static o30[] values() {
        return (o30[]) e.clone();
    }

    public o30(String str, int i, int i2) {
        this.a = i2;
    }
}

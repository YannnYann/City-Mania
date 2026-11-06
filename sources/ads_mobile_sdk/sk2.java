package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class sk2 {
    public static final sk2 a;
    public static final sk2 b;
    public static final sk2 c;
    public static final sk2 d;
    public static final /* synthetic */ sk2[] e;

    static {
        sk2 sk2Var = new sk2("SUCCESS", 0);
        a = sk2Var;
        sk2 sk2Var2 = new sk2("FAILURE", 1);
        b = sk2Var2;
        sk2 sk2Var3 = new sk2("RETRY", 2);
        c = sk2Var3;
        sk2 sk2Var4 = new sk2("CACHE_DISABLED", 3);
        d = sk2Var4;
        sk2[] sk2VarArr = {sk2Var, sk2Var2, sk2Var3, sk2Var4};
        e = sk2VarArr;
        EnumEntriesKt.enumEntries(sk2VarArr);
    }

    public static sk2[] values() {
        return (sk2[]) e.clone();
    }

    public sk2(String str, int i) {
    }
}

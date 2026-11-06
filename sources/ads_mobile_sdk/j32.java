package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class j32 {
    public static final j32 a;
    public static final j32 b;
    public static final j32 c;
    public static final /* synthetic */ j32[] d;

    static {
        j32 j32Var = new j32("UNKNOWN", 0);
        j32 j32Var2 = new j32("STATIC_SIZE", 1);
        a = j32Var2;
        j32 j32Var3 = new j32("MATCH_PARENT", 2);
        b = j32Var3;
        j32 j32Var4 = new j32("WRAP_CONTENT", 3);
        c = j32Var4;
        j32[] j32VarArr = {j32Var, j32Var2, j32Var3, j32Var4};
        d = j32VarArr;
        EnumEntriesKt.enumEntries(j32VarArr);
    }

    public static j32[] values() {
        return (j32[]) d.clone();
    }

    public j32(String str, int i) {
    }
}

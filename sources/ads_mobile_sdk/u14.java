package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class u14 {
    public static final u14 a;
    public static final u14 b;
    public static final u14 c;
    public static final u14 d;
    public static final u14 e;
    public static final /* synthetic */ u14[] f;

    static {
        u14 u14Var = new u14("DEFAULT", 0);
        a = u14Var;
        u14 u14Var2 = new u14("FIXED_RECTANGLE", 1);
        b = u14Var2;
        u14 u14Var3 = new u14("FLUID_RECTANGLE", 2);
        c = u14Var3;
        u14 u14Var4 = new u14("FULLSCREEN", 3);
        d = u14Var4;
        u14 u14Var5 = new u14("VIDEO_RECT", 4);
        e = u14Var5;
        u14[] u14VarArr = {u14Var, u14Var2, u14Var3, u14Var4, u14Var5};
        f = u14VarArr;
        EnumEntriesKt.enumEntries(u14VarArr);
    }

    public static u14[] values() {
        return (u14[]) f.clone();
    }

    public u14(String str, int i) {
    }
}

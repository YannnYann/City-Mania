package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class k41 {
    public static final k41 b;
    public static final k41 c;
    public static final k41 d;
    public static final k41 e;
    public static final /* synthetic */ k41[] f;
    public final int a;

    static {
        k41 k41Var = new k41("UNKNOWN", 0, 0);
        b = k41Var;
        k41 k41Var2 = new k41("PLAYING", 1, 1);
        c = k41Var2;
        k41 k41Var3 = new k41("PAUSED", 2, 2);
        d = k41Var3;
        k41 k41Var4 = new k41("ENDED", 3, 3);
        e = k41Var4;
        k41[] k41VarArr = {k41Var, k41Var2, k41Var3, k41Var4, new k41("READY", 4, 5)};
        f = k41VarArr;
        EnumEntriesKt.enumEntries(k41VarArr);
    }

    public static k41[] values() {
        return (k41[]) f.clone();
    }

    public k41(String str, int i, int i2) {
        this.a = i2;
    }
}

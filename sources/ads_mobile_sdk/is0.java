package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class is0 {
    public static final is0 b;
    public static final is0 c;
    public static final is0 d;
    public static final /* synthetic */ is0[] e;
    public final String a;

    static {
        is0 is0Var = new is0(0, "CLICK", "_ac");
        b = is0Var;
        is0 is0Var2 = new is0(1, "IMPRESSION", "_ai");
        c = is0Var2;
        is0 is0Var3 = new is0(2, "REWARD", "_ar");
        d = is0Var3;
        is0[] is0VarArr = {is0Var, is0Var2, is0Var3};
        e = is0VarArr;
        EnumEntriesKt.enumEntries(is0VarArr);
    }

    public static is0[] values() {
        return (is0[]) e.clone();
    }

    public is0(int i, String str, String str2) {
        this.a = str2;
    }

    public final String d() {
        return this.a;
    }
}

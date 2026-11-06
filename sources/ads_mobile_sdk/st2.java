package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class st2 {
    public static final rt2 a;
    public static final st2 b;
    public static final st2 c;
    public static final st2 d;
    public static final /* synthetic */ st2[] e;

    static {
        st2 st2Var = new st2("UNKNOWN", 0);
        b = st2Var;
        st2 st2Var2 = new st2("FIFO", 1);
        c = st2Var2;
        st2 st2Var3 = new st2("ECPM", 2);
        d = st2Var3;
        st2[] st2VarArr = {st2Var, st2Var2, st2Var3};
        e = st2VarArr;
        EnumEntriesKt.enumEntries(st2VarArr);
        a = new rt2();
    }

    public static st2[] values() {
        return (st2[]) e.clone();
    }

    public st2(String str, int i) {
    }
}

package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class ed1 {
    public static final ed1 a;
    public static final ed1 b;
    public static final ed1 c;
    public static final /* synthetic */ ed1[] d;

    static {
        ed1 ed1Var = new ed1("AD_REQUESTED", 0);
        a = ed1Var;
        ed1 ed1Var2 = new ed1("AD_LOADED", 1);
        b = ed1Var2;
        ed1 ed1Var3 = new ed1("AD_LOAD_FAILED", 2);
        c = ed1Var3;
        ed1[] ed1VarArr = {ed1Var, ed1Var2, ed1Var3};
        d = ed1VarArr;
        EnumEntriesKt.enumEntries(ed1VarArr);
    }

    public static ed1[] values() {
        return (ed1[]) d.clone();
    }

    public ed1(String str, int i) {
    }
}

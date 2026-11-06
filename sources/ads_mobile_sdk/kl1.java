package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class kl1 {
    public static final kl1 a;
    public static final kl1 b;
    public static final kl1 c;
    public static final /* synthetic */ kl1[] d;

    static {
        kl1 kl1Var = new kl1("INITIALIZATION_NOT_STARTED", 0);
        a = kl1Var;
        kl1 kl1Var2 = new kl1("INITIALIZATION_STARTED", 1);
        b = kl1Var2;
        kl1 kl1Var3 = new kl1("INITIALIZATION_COMPLETE", 2);
        c = kl1Var3;
        kl1[] kl1VarArr = {kl1Var, kl1Var2, kl1Var3};
        d = kl1VarArr;
        EnumEntriesKt.enumEntries(kl1VarArr);
    }

    public static kl1[] values() {
        return (kl1[]) d.clone();
    }

    public kl1(String str, int i) {
    }
}

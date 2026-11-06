package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class ph3 {
    public static final ph3 a;
    public static final /* synthetic */ ph3[] b;

    static {
        ph3 ph3Var = new ph3("BACKGROUND", 0);
        a = ph3Var;
        ph3[] ph3VarArr = {ph3Var, new ph3("UI", 1)};
        b = ph3VarArr;
        EnumEntriesKt.enumEntries(ph3VarArr);
    }

    public static ph3[] values() {
        return (ph3[]) b.clone();
    }

    public ph3(String str, int i) {
    }
}

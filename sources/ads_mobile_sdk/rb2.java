package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class rb2 {
    public static final rb2 a;
    public static final /* synthetic */ rb2[] b;

    static {
        rb2 rb2Var = new rb2("PENDING", 0);
        rb2 rb2Var2 = new rb2("READY_TO_PING", 1);
        a = rb2Var2;
        rb2[] rb2VarArr = {rb2Var, rb2Var2};
        b = rb2VarArr;
        EnumEntriesKt.enumEntries(rb2VarArr);
    }

    public static rb2[] values() {
        return (rb2[]) b.clone();
    }

    public rb2(String str, int i) {
    }
}

package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class w51 {
    public static final w51 b;
    public static final w51 c;
    public static final w51 d;
    public static final w51 e;
    public static final /* synthetic */ w51[] f;
    public final String a;

    static {
        w51 w51Var = new w51(0, "UNKNOWN", "unknown");
        b = w51Var;
        w51 w51Var2 = new w51(1, "LEFT", "left");
        c = w51Var2;
        w51 w51Var3 = new w51(2, "RIGHT", "right");
        d = w51Var3;
        w51 w51Var4 = new w51(3, "DEVICE_FLAT", "device_flat");
        e = w51Var4;
        w51[] w51VarArr = {w51Var, w51Var2, w51Var3, w51Var4};
        f = w51VarArr;
        EnumEntriesKt.enumEntries(w51VarArr);
    }

    public static w51[] values() {
        return (w51[]) f.clone();
    }

    public w51(int i, String str, String str2) {
        this.a = str2;
    }
}

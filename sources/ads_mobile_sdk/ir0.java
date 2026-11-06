package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class ir0 {
    public static final ir0 b;
    public static final ir0 c;
    public static final ir0 d;
    public static final ir0 e;
    public static final ir0 f;
    public static final ir0 g;
    public static final /* synthetic */ ir0[] h;
    public final String a;

    static {
        ir0 ir0Var = new ir0(0, "INTERNAL_ERROR", "Internal error.");
        b = ir0Var;
        ir0 ir0Var2 = new ir0(1, "NO_FILL_ERROR", "No fill.");
        c = ir0Var2;
        ir0 ir0Var3 = new ir0(2, "TIMEOUT_ERROR", "Operation timed out.");
        d = ir0Var3;
        ir0 ir0Var4 = new ir0(3, "WEB_VIEW_DESTROYED_ERROR", "The system WebView required for this operation was terminated.");
        e = ir0Var4;
        ir0 ir0Var5 = new ir0(4, "SWIPEABLE_INTERSTITIAL_S2S_TYPE_UNSUPPORTED_ERROR", "Swipeable Interstitial is not supported for ");
        f = ir0Var5;
        ir0 ir0Var6 = new ir0(5, "SWIPEABLE_INTERSTITIAL_MUTUALLY_EXCLUSIVE_CCG_ERROR", "Both SDK and publisher determined Custom Click Gesture are enabled on this request. Pick one to enable and make sure your ad unit is eligible.");
        g = ir0Var6;
        ir0[] ir0VarArr = {ir0Var, ir0Var2, ir0Var3, ir0Var4, ir0Var5, ir0Var6};
        h = ir0VarArr;
        EnumEntriesKt.enumEntries(ir0VarArr);
    }

    public static ir0[] values() {
        return (ir0[]) h.clone();
    }

    public ir0(int i, String str, String str2) {
        this.a = str2;
    }

    public final String d() {
        return this.a;
    }
}

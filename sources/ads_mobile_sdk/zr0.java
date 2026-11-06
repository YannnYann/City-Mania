package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class zr0 {
    public static final yr0 b;
    public static final zr0 c;
    public static final zr0 d;
    public static final zr0 e;
    public static final zr0 f;
    public static final /* synthetic */ zr0[] g;
    public final int a;

    static {
        zr0 zr0Var = new zr0("INVALID", 0, 0);
        c = zr0Var;
        zr0 zr0Var2 = new zr0("HAS_WATERFALL", 1, 1);
        d = zr0Var2;
        zr0 zr0Var3 = new zr0("WATERFALL_FILL", 2, 2);
        e = zr0Var3;
        zr0 zr0Var4 = new zr0("AD_SHOW", 3, 3);
        f = zr0Var4;
        zr0[] zr0VarArr = {zr0Var, zr0Var2, zr0Var3, zr0Var4};
        g = zr0VarArr;
        EnumEntriesKt.enumEntries(zr0VarArr);
        b = new yr0();
    }

    public static zr0[] values() {
        return (zr0[]) g.clone();
    }

    public zr0(String str, int i, int i2) {
        this.a = i2;
    }
}

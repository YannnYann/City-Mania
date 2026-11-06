package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class bs0 {
    public static final as0 b;
    public static final bs0 c;
    public static final bs0 d;
    public static final bs0 e;
    public static final bs0 f;
    public static final bs0 g;
    public static final bs0 h;
    public static final bs0 i;
    public static final bs0 j;
    public static final bs0 k;
    public static final /* synthetic */ bs0[] l;
    public final int a;

    static {
        bs0 bs0Var = new bs0("FILL", 0, 0);
        c = bs0Var;
        bs0 bs0Var2 = new bs0("NO_FILL", 1, 1);
        d = bs0Var2;
        bs0 bs0Var3 = new bs0("TIMEOUT", 2, 2);
        e = bs0Var3;
        bs0 bs0Var4 = new bs0("NOT_FOUND", 3, 3);
        f = bs0Var4;
        bs0 bs0Var5 = new bs0("CANCELLED", 4, 4);
        g = bs0Var5;
        bs0 bs0Var6 = new bs0("EXCEPTION", 5, 5);
        h = bs0Var6;
        bs0 bs0Var7 = new bs0("ERROR", 6, 6);
        i = bs0Var7;
        bs0 bs0Var8 = new bs0("RENDERED_BUT_LOST", 7, 8);
        j = bs0Var8;
        bs0 bs0Var9 = new bs0("INFLIGHT", 8, 9);
        k = bs0Var9;
        bs0[] bs0VarArr = {bs0Var, bs0Var2, bs0Var3, bs0Var4, bs0Var5, bs0Var6, bs0Var7, bs0Var8, bs0Var9};
        l = bs0VarArr;
        EnumEntriesKt.enumEntries(bs0VarArr);
        b = new as0();
    }

    public static bs0[] values() {
        return (bs0[]) l.clone();
    }

    public bs0(String str, int i2, int i3) {
        this.a = i3;
    }

    public final int d() {
        return this.a;
    }
}

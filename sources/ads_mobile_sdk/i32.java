package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class i32 {
    public static final i32 b;
    public static final i32 c;
    public static final i32 d;
    public static final i32 e;
    public static final i32 f;
    public static final i32 g;
    public static final /* synthetic */ i32[] h;
    public final int a;

    static {
        i32 i32Var = new i32("SCROLL_VIEW_TYPE_NONE", 0, 0);
        b = i32Var;
        i32 i32Var2 = new i32("SCROLL_VIEW_TYPE_SCROLL_VIEW", 1, 1);
        c = i32Var2;
        i32 i32Var3 = new i32("SCROLL_VIEW_TYPE_ABS_LIST_VIEW", 2, 2);
        d = i32Var3;
        i32 i32Var4 = new i32("SCROLL_VIEW_TYPE_HORIZONTAL_SCROLL_VIEW", 3, 3);
        e = i32Var4;
        i32 i32Var5 = new i32("SCROLL_VIEW_TYPE_SCROLLING_VIEW", 4, 4);
        f = i32Var5;
        i32 i32Var6 = new i32("SCROLL_VIEW_TYPE_BY_KEYWORD", 5, 5);
        g = i32Var6;
        i32[] i32VarArr = {i32Var, i32Var2, i32Var3, i32Var4, i32Var5, i32Var6};
        h = i32VarArr;
        EnumEntriesKt.enumEntries(i32VarArr);
    }

    public static i32[] values() {
        return (i32[]) h.clone();
    }

    public i32(String str, int i, int i2) {
        this.a = i2;
    }
}

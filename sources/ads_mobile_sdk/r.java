package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class r {
    public static final r b;
    public static final r c;
    public static final r d;
    public static final r e;
    public static final r f;
    public static final r g;
    public static final r h;
    public static final /* synthetic */ r[] i;
    public final int a;

    static {
        r rVar = new r("NONE", 0, -2);
        b = rVar;
        r rVar2 = new r("STOPPED", 1, -1);
        c = rVar2;
        r rVar3 = new r("PAUSED", 2, 0);
        d = rVar3;
        r rVar4 = new r("CREATED", 3, 1);
        e = rVar4;
        r rVar5 = new r("INITIAL", 4, 2);
        f = rVar5;
        r rVar6 = new r("STARTED", 5, 3);
        g = rVar6;
        r rVar7 = new r("RESUMED", 6, 4);
        h = rVar7;
        r[] rVarArr = {rVar, rVar2, rVar3, rVar4, rVar5, rVar6, rVar7};
        i = rVarArr;
        EnumEntriesKt.enumEntries(rVarArr);
    }

    public static r[] values() {
        return (r[]) i.clone();
    }

    public r(String str, int i2, int i3) {
        this.a = i3;
    }
}

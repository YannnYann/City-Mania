package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class aj {
    public static final aj a;
    public static final aj b;
    public static final aj c;
    public static final /* synthetic */ aj[] d;

    static {
        aj ajVar = new aj("NO_ANR", 0);
        a = ajVar;
        aj ajVar2 = new aj("EARLY_ANR", 1);
        b = ajVar2;
        aj ajVar3 = new aj("FULL_ANR", 2);
        c = ajVar3;
        aj[] ajVarArr = {ajVar, ajVar2, ajVar3};
        d = ajVarArr;
        EnumEntriesKt.enumEntries(ajVarArr);
    }

    public static aj[] values() {
        return (aj[]) d.clone();
    }

    public aj(String str, int i) {
    }
}

package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class bu {
    public static final bu a;
    public static final bu b;
    public static final bu c;
    public static final bu d;
    public static final /* synthetic */ bu[] e;

    static {
        bu buVar = new bu("PRODUCTION", 0);
        a = buVar;
        bu buVar2 = new bu("DEVELOPMENT", 1);
        b = buVar2;
        bu buVar3 = new bu("INTEGRATION_TEST", 2);
        c = buVar3;
        bu buVar4 = new bu("ROBOLECTRIC_TEST", 3);
        d = buVar4;
        bu[] buVarArr = {buVar, buVar2, buVar3, buVar4};
        e = buVarArr;
        EnumEntriesKt.enumEntries(buVarArr);
    }

    public static bu[] values() {
        return (bu[]) e.clone();
    }

    public bu(String str, int i) {
    }
}

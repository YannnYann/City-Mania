package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class h32 {
    public static final /* synthetic */ h32[] a;

    static {
        h32[] h32VarArr = {new h32("UNKNOWN", 0), new h32("SMALL", 1), new h32("MEDIUM", 2)};
        a = h32VarArr;
        EnumEntriesKt.enumEntries(h32VarArr);
    }

    public static h32[] values() {
        return (h32[]) a.clone();
    }

    public h32(String str, int i) {
    }
}

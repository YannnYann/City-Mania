package ads_mobile_sdk;

import com.ironsource.C3522b4;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class f2 {
    public static final /* synthetic */ f2[] a;

    static {
        f2[] f2VarArr = {new f2(0, "LANDSCAPE", C3522b4.i.C), new f2(1, "PORTRAIT", C3522b4.i.D), new f2(2, "UNKNOWN", "unknown")};
        a = f2VarArr;
        EnumEntriesKt.enumEntries(f2VarArr);
    }

    public static f2[] values() {
        return (f2[]) a.clone();
    }

    public f2(int i, String str, String str2) {
    }
}

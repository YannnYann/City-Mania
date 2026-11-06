package ads_mobile_sdk;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class pb2 {
    public static final ob2 a;
    public static final pb2 b;
    public static final pb2 c;
    public static final pb2 d;
    public static final /* synthetic */ pb2[] e;

    static {
        pb2 pb2Var = new pb2("UNDEFINED", 0);
        b = pb2Var;
        pb2 pb2Var2 = new pb2("CLICK", 1);
        c = pb2Var2;
        pb2 pb2Var3 = new pb2("NOTIFICATION_CLICK", 2);
        d = pb2Var3;
        pb2[] pb2VarArr = {pb2Var, pb2Var2, pb2Var3};
        e = pb2VarArr;
        EnumEntriesKt.enumEntries(pb2VarArr);
        a = new ob2();
    }

    public static pb2[] values() {
        return (pb2[]) e.clone();
    }

    public pb2(String str, int i) {
    }
}

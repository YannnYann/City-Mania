package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class oc1 {
    public final cw2 a;
    public final boolean b;

    public /* synthetic */ oc1(cw2 cw2Var) {
        this(cw2Var, false);
    }

    public oc1(cw2 initializationTaskProvider, boolean z) {
        Intrinsics.checkNotNullParameter(initializationTaskProvider, "initializationTaskProvider");
        this.a = initializationTaskProvider;
        this.b = z;
    }
}

package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public interface rf {
    w1 a(ec3 ec3Var, i2 i2Var, Object obj);

    void a(ec3 ec3Var, i2 i2Var, jf jfVar, do3 do3Var);

    default void a(x1 adComponent) {
        Intrinsics.checkNotNullParameter(adComponent, "adComponent");
    }
}

package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class mk2 {
    public final hk2 a;

    public final void b() {
        ik2 value = ik2.FILL_DISABLED_REASON_WEB_PROPERTY_DISABLED;
        Intrinsics.checkNotNullParameter(value, "value");
        this.a.a(value);
    }

    public mk2(hk2 hk2Var) {
        this.a = hk2Var;
    }

    public final /* synthetic */ kk2 a() {
        vz0 vz0VarB = this.a.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (kk2) vz0VarB;
    }
}

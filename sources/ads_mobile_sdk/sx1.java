package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class sx1 {
    public final px1 a;

    public sx1(px1 px1Var) {
        this.a = px1Var;
    }

    public final /* synthetic */ qx1 a() {
        vz0 vz0VarB = this.a.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (qx1) vz0VarB;
    }

    public final void a(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.a.a(value);
    }
}

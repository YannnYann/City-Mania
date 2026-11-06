package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class qx {
    public final j80 a;

    public qx(j80 j80Var) {
        this.a = j80Var;
    }

    public final /* synthetic */ k80 a() {
        vz0 vz0VarB = this.a.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (k80) vz0VarB;
    }

    public final void a(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.a.a(value);
    }
}

package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class sx {
    public final z90 a;

    public sx(z90 z90Var) {
        this.a = z90Var;
    }

    public final /* synthetic */ aa0 a() {
        vz0 vz0VarB = this.a.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (aa0) vz0VarB;
    }

    public final void a(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.a.a(value);
    }

    public final void a(boolean z) {
        this.a.a(z);
    }
}

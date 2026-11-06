package ads_mobile_sdk;

import java.util.Map;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class kp2 implements r41 {
    public final r41 a;
    public String b;

    public kp2(i2 adConfiguration, r41 gmsgHandler) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(gmsgHandler, "gmsgHandler");
        this.a = gmsgHandler;
        vc1 vc1Var = adConfiguration.J;
        this.b = vc1Var != null ? vc1Var.e : null;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        return this.a.a(r31Var, map, continuation);
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return this.a.g();
    }

    @Override // ads_mobile_sdk.r41
    public final boolean i() {
        return this.a.i();
    }

    @Override // ads_mobile_sdk.r41
    public final void a(String adKey) {
        Intrinsics.checkNotNullParameter(adKey, "adKey");
        this.b = adKey;
    }

    @Override // ads_mobile_sdk.r41
    public final r41 f() {
        return this.a.f();
    }

    @Override // ads_mobile_sdk.r41
    public final String k() {
        return this.b;
    }
}

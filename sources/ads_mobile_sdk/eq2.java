package ads_mobile_sdk;

import java.util.Map;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class eq2 implements r41 {
    public final i2 a;
    public final r41 b;

    public eq2(i2 adConfiguration, r41 gmsgHandler) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(gmsgHandler, "gmsgHandler");
        this.a = adConfiguration;
        this.b = gmsgHandler;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        return this.b.a(r31Var, map, continuation);
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return this.b.g();
    }

    @Override // ads_mobile_sdk.r41
    public final boolean i() {
        return this.b.i();
    }

    @Override // ads_mobile_sdk.r41
    public final void a(String adKey) {
        Intrinsics.checkNotNullParameter(adKey, "adKey");
        this.b.a(adKey);
    }

    @Override // ads_mobile_sdk.r41
    public final r41 f() {
        return this.b.f();
    }

    @Override // ads_mobile_sdk.r41
    public final String k() {
        vc1 vc1Var = this.a.J;
        if (vc1Var != null) {
            return vc1Var.e;
        }
        return null;
    }
}

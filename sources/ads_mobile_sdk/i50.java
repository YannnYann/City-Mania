package ads_mobile_sdk;

import java.util.Map;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class i50 implements r41 {
    public final r41 a;

    public i50(r41 gmsgHandler) {
        Intrinsics.checkNotNullParameter(gmsgHandler, "gmsgHandler");
        this.a = gmsgHandler;
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
    public final String k() {
        return this.a.k();
    }

    @Override // ads_mobile_sdk.r41
    public final void a(String adKey) {
        Intrinsics.checkNotNullParameter(adKey, "adKey");
        this.a.a(adKey);
    }

    @Override // ads_mobile_sdk.r41
    public final r41 f() {
        return this.a.f();
    }
}

package ads_mobile_sdk;

import java.net.URL;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class s71 implements e01 {
    public final a81 a;
    public uv b;
    public vk0 c;
    public final Lazy d;

    public s71(ex0 flags, a81 httpClientProvider) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(httpClientProvider, "httpClientProvider");
        this.a = httpClientProvider;
        this.d = LazyKt__LazyJVMKt.lazy(new r71(this));
    }

    @Override // ads_mobile_sdk.e01
    public final Object a(sl1 sl1Var) {
        Object objA = ((e01) this.d.getValue()).a(sl1Var);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.e01
    public final Object a(int i, long j, m8 m8Var) {
        Object objA = ((e01) this.d.getValue()).a(i, j, m8Var);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.e01
    public final Object a(String str, Map map, Continuation continuation) {
        Object objA = ((e01) this.d.getValue()).a(str, map, continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.e01
    public final Object a(f81 f81Var, Duration duration, ja2 ja2Var) {
        return ((e01) this.d.getValue()).a(f81Var, duration, ja2Var);
    }

    @Override // ads_mobile_sdk.e01
    public final Object a(URL url, ss0 ss0Var, Continuation continuation) {
        return ((e01) this.d.getValue()).a(url, ss0Var, continuation);
    }

    @Override // ads_mobile_sdk.e01
    public final Object a(URL url, Continuation continuation) {
        return ((e01) this.d.getValue()).a(url, continuation);
    }

    @Override // ads_mobile_sdk.e01
    public final Object a(f81 f81Var, Duration duration, Map map, boolean z, boolean z2, Continuation continuation) {
        return ((e01) this.d.getValue()).a(f81Var, duration, map, z, z2, continuation);
    }

    @Override // ads_mobile_sdk.e01
    public final Object a(URL url, Duration duration, Map map, boolean z, boolean z2, Continuation continuation) {
        return ((e01) this.d.getValue()).a(url, duration, map, z, z2, continuation);
    }

    @Override // ads_mobile_sdk.e01
    public final void a(uv chromeVariationsProvider) {
        Intrinsics.checkNotNullParameter(chromeVariationsProvider, "chromeVariationsProvider");
        this.b = chromeVariationsProvider;
        if (this.d.isInitialized()) {
            e01 e01Var = (e01) this.d.getValue();
            uv uvVar = this.b;
            Intrinsics.checkNotNull(uvVar);
            e01Var.a(uvVar);
        }
    }

    @Override // ads_mobile_sdk.e01
    public final void a(vk0 debugModeProvider) {
        Intrinsics.checkNotNullParameter(debugModeProvider, "debugModeProvider");
        this.c = debugModeProvider;
        if (this.d.isInitialized()) {
            e01 e01Var = (e01) this.d.getValue();
            vk0 vk0Var = this.c;
            Intrinsics.checkNotNull(vk0Var);
            e01Var.a(vk0Var);
        }
    }
}

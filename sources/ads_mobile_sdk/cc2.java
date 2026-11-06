package ads_mobile_sdk;

import java.net.URL;
import java.util.Map;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class cc2 implements e01 {
    public final k70 a;

    public cc2(k70 cronetHttpClient) {
        Intrinsics.checkNotNullParameter(cronetHttpClient, "cronetHttpClient");
        this.a = cronetHttpClient;
    }

    @Override // ads_mobile_sdk.e01
    public final Object a(sl1 sl1Var) {
        return this.a.a(sl1Var);
    }

    @Override // ads_mobile_sdk.e01
    public final Object a(int i, long j, m8 m8Var) {
        return this.a.a(i, j, m8Var);
    }

    @Override // ads_mobile_sdk.e01
    public final Object a(String str, Map map, Continuation continuation) {
        return this.a.a(str, map, continuation);
    }

    @Override // ads_mobile_sdk.e01
    public final Object a(f81 f81Var, Duration duration, ja2 ja2Var) {
        k70 k70Var = this.a;
        k70Var.getClass();
        return e01.a((e01) k70Var, f81Var, duration, true, (Continuation) ja2Var, 20);
    }

    @Override // ads_mobile_sdk.e01
    public final Object a(URL url, ss0 ss0Var, Continuation continuation) {
        return this.a.a(url, ss0Var, continuation);
    }

    @Override // ads_mobile_sdk.e01
    public final Object a(URL url, Continuation continuation) {
        return this.a.a(url, continuation);
    }

    @Override // ads_mobile_sdk.e01
    public final Object a(f81 f81Var, Duration duration, Map map, boolean z, boolean z2, Continuation continuation) {
        return this.a.a(f81Var, duration, map, z, z2, continuation);
    }

    @Override // ads_mobile_sdk.e01
    public final Object a(URL url, Duration duration, Map map, boolean z, boolean z2, Continuation continuation) {
        return this.a.a(url, duration, map, z, z2, continuation);
    }

    @Override // ads_mobile_sdk.e01
    public final void a(uv chromeVariationsProvider) {
        Intrinsics.checkNotNullParameter(chromeVariationsProvider, "chromeVariationsProvider");
    }

    @Override // ads_mobile_sdk.e01
    public final void a(vk0 debugModeProvider) {
        Intrinsics.checkNotNullParameter(debugModeProvider, "debugModeProvider");
    }
}

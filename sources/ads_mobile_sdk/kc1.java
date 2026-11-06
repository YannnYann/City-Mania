package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class kc1 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;

    public kc1(dw2 dw2Var, ol0 ol0Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4) {
        this.a = dw2Var;
        this.b = ol0Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = dw2Var4;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        dx3 userAgentProviderImpl = (dx3) this.a.get();
        CoroutineScope backgroundScope = (CoroutineScope) this.b.get();
        CoroutineScope webViewInitializationScope = (CoroutineScope) this.c.get();
        g83 rootTraceCreator = (g83) this.d.get();
        ex0 flags = (ex0) this.e.get();
        Intrinsics.checkNotNullParameter(userAgentProviderImpl, "userAgentProviderImpl");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(webViewInitializationScope, "webViewInitializationScope");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(flags, "flags");
        return new ta1(userAgentProviderImpl, backgroundScope, webViewInitializationScope, rootTraceCreator, flags);
    }
}

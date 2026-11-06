package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class ta1 implements lm0 {
    public final /* synthetic */ dx3 a;
    public final /* synthetic */ CoroutineScope b;
    public final /* synthetic */ CoroutineScope c;
    public final /* synthetic */ g83 d;
    public final /* synthetic */ ex0 e;

    public ta1(dx3 dx3Var, CoroutineScope coroutineScope, CoroutineScope coroutineScope2, g83 g83Var, ex0 ex0Var) {
        this.a = dx3Var;
        this.b = coroutineScope;
        this.c = coroutineScope2;
        this.d = g83Var;
        this.e = ex0Var;
    }

    @Override // ads_mobile_sdk.lm0
    public final Unit a() {
        dx3 dx3Var = this.a;
        CoroutineScope backgroundScope = this.b;
        CoroutineScope webViewInitializationScope = this.c;
        g83 rootTraceCreator = this.d;
        ex0 flags = this.e;
        dx3Var.getClass();
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(webViewInitializationScope, "webViewInitializationScope");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(flags, "flags");
        dx3Var.d = backgroundScope;
        dx3Var.e = webViewInitializationScope;
        dx3Var.f = rootTraceCreator;
        dx3Var.g = flags;
        return Unit.INSTANCE;
    }
}

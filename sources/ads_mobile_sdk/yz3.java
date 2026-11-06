package ads_mobile_sdk;

import com.ironsource.C3522b4;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt__JobKt;

/* JADX INFO: loaded from: classes.dex */
public final class yz3 extends nc1 {
    public final dz3 c;
    public final sz d;
    public final ex0 e;
    public final CoroutineScope f;
    public final CoroutineScope g;
    public final g83 h;
    public final cw2 i;
    public final zw3 j;
    public final CompletableJob k;
    public final Lazy l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yz3(dz3 webViewCompatWrapper, sz concurrencyObjects, ex0 flags, CoroutineScope backgroundScope, CoroutineScope webViewInitializationScope, g83 rootTraceCreator, dw2 webViewProfileInitializer, zw3 userAgentProvider) {
        super((s11) null, 1);
        Intrinsics.checkNotNullParameter(webViewCompatWrapper, "webViewCompatWrapper");
        Intrinsics.checkNotNullParameter(concurrencyObjects, "concurrencyObjects");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(webViewInitializationScope, "webViewInitializationScope");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(webViewProfileInitializer, "webViewProfileInitializer");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        this.c = webViewCompatWrapper;
        this.d = concurrencyObjects;
        this.e = flags;
        this.f = backgroundScope;
        this.g = webViewInitializationScope;
        this.h = rootTraceCreator;
        this.i = webViewProfileInitializer;
        this.j = userAgentProvider;
        this.k = JobKt__JobKt.Job$default(null, 1, null);
        this.l = LazyKt__LazyJVMKt.lazy(new xz3(this));
    }

    @Override // ads_mobile_sdk.nc1
    public final Object u(Continuation continuation) {
        if (((Boolean) this.l.getValue()).booleanValue()) {
            ex0 ex0Var = this.e;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:webview_initialization_executor:enabled", C3522b4.i.W);
            CoroutineScope coroutineScope = ((Boolean) ex0Var.a("gads:webview_initialization_executor:enabled", Boolean.FALSE, yr.b)).booleanValue() ? this.g : this.f;
            uz3 block = new uz3(this, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        } else {
            this.k.complete();
        }
        return new q01(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.yz3 r13, kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instruction units count: 413
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yz3.a(ads_mobile_sdk.yz3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object a(ContinuationImpl continuationImpl) {
        if (((Boolean) this.l.getValue()).booleanValue()) {
            Object objJoin = this.k.join(continuationImpl);
            return objJoin == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objJoin : Unit.INSTANCE;
        }
        Object objB = this.j.b(continuationImpl);
        return objB == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : Unit.INSTANCE;
    }
}

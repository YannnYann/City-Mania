package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import com.ironsource.C3522b4;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class bd0 extends nc1 implements gj1, li1, ai1 {
    public final zc0 c;
    public final CoroutineScope d;
    public final ex0 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bd0(zc0 customTabsConnection, CoroutineScope backgroundScope, ex0 flags) {
        super((s11) null, 1);
        Intrinsics.checkNotNullParameter(customTabsConnection, "customTabsConnection");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.c = customTabsConnection;
        this.d = backgroundScope;
        this.e = flags;
    }

    @Override // ads_mobile_sdk.gj1
    public final Unit j() {
        ex0 ex0Var = this.e;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:cct_v2_prewarm_on_signal_generated:enabled", C3522b4.i.W);
        if (((Boolean) ex0Var.a("gads:cct_v2_prewarm_on_signal_generated:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
            g();
        }
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.nc1
    public final Object u(Continuation continuation) {
        ex0 ex0Var = this.e;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:cct_v2_prewarm_at_init:enabled", C3522b4.i.W);
        if (((Boolean) ex0Var.a("gads:cct_v2_prewarm_at_init:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
            g();
        }
        return new q01(Unit.INSTANCE);
    }

    @Override // ads_mobile_sdk.li1
    public final Object a(ec3 ec3Var, i2 i2Var, ResponseInfo responseInfo, Continuation continuation) {
        ex0 ex0Var = this.e;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:cct_v2_prewarm_on_ad_loaded:enabled", C3522b4.i.W);
        if (((Boolean) ex0Var.a("gads:cct_v2_prewarm_on_ad_loaded:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
            g();
        }
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object r(Continuation continuation) {
        ex0 ex0Var = this.e;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:cct_v2_prewarm_on_impression:enabled", C3522b4.i.W);
        if (((Boolean) ex0Var.a("gads:cct_v2_prewarm_on_impression:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
            g();
        }
        return Unit.INSTANCE;
    }

    public final void g() {
        CoroutineScope coroutineScope = this.d;
        ad0 block = new ad0(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }
}

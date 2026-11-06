package com.ironsource;

import android.content.Context;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.ads.nativead.AdapterNativeAdData;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinder;
import com.ironsource.mediationsdk.adunit.adapter.listener.NativeAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.logger.IronLog;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.cc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3548cc extends A implements NativeAdListener {
    private AdapterNativeAdData A;
    private AdapterNativeAdViewBinder B;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3548cc(T0 adTools, B instanceData, H adInstancePayload, E listener) {
        super(adTools, instanceData, adInstancePayload, null, listener, 8, null);
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(instanceData, "instanceData");
        Intrinsics.checkNotNullParameter(adInstancePayload, "adInstancePayload");
        Intrinsics.checkNotNullParameter(listener, "listener");
    }

    @Override // com.ironsource.A
    public void D() {
        if (!(g() instanceof AdapterNativeAdInterface)) {
            IronLog.INTERNAL.error(a("adapter not instance of AdapterNativeAdInterface"));
            return;
        }
        AdData adDataI = i();
        if (ContextProvider.getInstance().getCurrentActiveActivity() == null) {
            IronLog.INTERNAL.error(a("activity must not be null"));
            f().f().h().g("activity must not be null");
            return;
        }
        Object objG = g();
        Intrinsics.checkNotNull(objG, "null cannot be cast to non-null type com.ironsource.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface<com.ironsource.mediationsdk.adunit.adapter.listener.NativeAdListener>");
        Context activeContext = ContextProvider.getInstance().getActiveContext();
        Intrinsics.checkNotNullExpressionValue(activeContext, "getActiveContext(...)");
        ((AdapterNativeAdInterface) objG).loadAd(adDataI, activeContext, this);
    }

    public final AdapterNativeAdData L() {
        return this.A;
    }

    public final AdapterNativeAdViewBinder M() {
        return this.B;
    }

    @Override // com.ironsource.A
    public void a(J adInstancePresenter) {
        Intrinsics.checkNotNullParameter(adInstancePresenter, "adInstancePresenter");
        adInstancePresenter.a(this);
    }

    @Override // com.ironsource.A
    public void b() {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(q());
        super.b();
        if (g() == null) {
            ironLog.warning("adapter == null");
        } else {
            a(new Function0() { // from class: com.ironsource.cc$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return C3548cc.a(this.f$0);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.listener.NativeAdListener
    public void onAdLoadSuccess(AdapterNativeAdData adapterNativeAdData, AdapterNativeAdViewBinder nativeAdViewBinder) {
        Intrinsics.checkNotNullParameter(adapterNativeAdData, "adapterNativeAdData");
        Intrinsics.checkNotNullParameter(nativeAdViewBinder, "nativeAdViewBinder");
        this.A = adapterNativeAdData;
        this.B = nativeAdViewBinder;
        super.onAdLoadSuccess();
    }

    public final void a(Vb nativeAdBinder) {
        Intrinsics.checkNotNullParameter(nativeAdBinder, "nativeAdBinder");
        nativeAdBinder.a(this.A);
        nativeAdBinder.a(this.B);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a(final C3548cc c3548cc) {
        try {
            if (c3548cc.g() instanceof AdapterNativeAdInterface) {
                Object objG = c3548cc.g();
                Intrinsics.checkNotNull(objG, "null cannot be cast to non-null type com.ironsource.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface<*>");
                ((AdapterNativeAdInterface) objG).destroyAd(c3548cc.i());
            } else {
                IronLog.INTERNAL.error(c3548cc.a("adapter not instance of AdapterNativeAdInterface"));
            }
        } catch (Throwable th) {
            c3548cc.f().a(new Runnable() { // from class: com.ironsource.cc$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3548cc.a(th, c3548cc);
                }
            });
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Throwable th, C3548cc c3548cc) {
        C3813r4.d().a(th);
        String str = "destroyNativeAd - exception = " + th.getLocalizedMessage();
        IronLog.INTERNAL.error(c3548cc.a(str));
        c3548cc.f().f().h().g(str);
    }
}

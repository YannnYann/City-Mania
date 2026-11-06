package com.ironsource;

import android.view.View;
import android.widget.FrameLayout;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.ISBannerSize;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBannerInterface;
import com.ironsource.mediationsdk.adunit.adapter.listener.BannerAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.mediation.LevelPlayAdInfo;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class I2 extends A implements BannerAdListener {
    private View A;
    private FrameLayout.LayoutParams B;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public I2(T0 adTools, B instanceData, H adInstancePayload, K2 listener) {
        super(adTools, instanceData, adInstancePayload, null, null, 24, null);
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(instanceData, "instanceData");
        Intrinsics.checkNotNullParameter(adInstancePayload, "adInstancePayload");
        Intrinsics.checkNotNullParameter(listener, "listener");
        a(listener);
    }

    private final K2 L() {
        E eS = s();
        if (eS instanceof K2) {
            return (K2) eS;
        }
        return null;
    }

    private final ISBannerSize M() {
        T0 t0F = f();
        AbstractC3919x0 abstractC3919x0J = n().j();
        Intrinsics.checkNotNull(abstractC3919x0J, "null cannot be cast to non-null type com.unity3d.mediation.internal.ads.controllers.adunits.data.BannerAdUnitData");
        return t0F.a(((T2) abstractC3919x0J).b().i());
    }

    private final void N() {
        C3729md c3729mdJ = j();
        if (c3729mdJ != null) {
            f().f().a().f(c3729mdJ.c());
        }
        K2 k2L = L();
        if (k2L != null) {
            k2L.a(this);
        }
    }

    private final void O() {
        C3729md c3729mdJ = j();
        if (c3729mdJ != null) {
            f().f().a().c(c3729mdJ.c());
        }
        K2 k2L = L();
        if (k2L != null) {
            k2L.b(this);
        }
    }

    private final void P() {
        C3729md c3729mdJ = j();
        if (c3729mdJ != null) {
            f().f().a().h(c3729mdJ.c());
        }
        K2 k2L = L();
        if (k2L != null) {
            k2L.c(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(I2 i2) {
        i2.O();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(I2 i2) {
        String strC;
        N nA = i2.f().f().a();
        C3729md c3729mdJ = i2.j();
        if (c3729mdJ == null || (strC = c3729mdJ.c()) == null) {
            strC = "";
        }
        nA.j(strC);
    }

    @Override // com.ironsource.A
    public void D() {
        if (!(g() instanceof AdapterBannerInterface)) {
            IronLog.INTERNAL.error(a("adapter not instance of AdapterBannerInterface"));
            return;
        }
        AdData adDataI = i();
        ISBannerSize iSBannerSizeM = M();
        Map<String, Object> adUnitData = adDataI.getAdUnitData();
        Intrinsics.checkNotNullExpressionValue(adUnitData, "getAdUnitData(...)");
        adUnitData.put(R2.t, new com.ironsource.mediationsdk.o(ContextProvider.getInstance().getApplicationContext(), iSBannerSizeM));
        Object objG = g();
        Intrinsics.checkNotNull(objG, "null cannot be cast to non-null type com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBannerInterface<com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener>");
        ((AdapterBannerInterface) objG).loadAd(adDataI, ContextProvider.getInstance().getCurrentActiveActivity(), iSBannerSizeM, this);
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
        C3948yb.a(f(), new Runnable() { // from class: com.ironsource.I2$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                I2.a(this.f$0);
            }
        }, 0L, 2, null);
        if (g() == null) {
            ironLog.warning("adapter == null");
        } else {
            c();
            super.b();
        }
    }

    @Override // com.ironsource.A
    public void c() {
        a(new Function0() { // from class: com.ironsource.I2$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return I2.b(this.f$0);
            }
        });
    }

    @Override // com.ironsource.A
    public LevelPlayAdInfo e() {
        String string = n().j().b().b().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        String strC = n().j().b().c();
        String string2 = n().i().toString();
        Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
        C3939y2 c3939y2O = n().o();
        AbstractC3919x0 abstractC3919x0J = n().j();
        Intrinsics.checkNotNull(abstractC3919x0J, "null cannot be cast to non-null type com.unity3d.mediation.internal.ads.controllers.adunits.data.BannerAdUnitData");
        return new LevelPlayAdInfo(string, strC, string2, c3939y2O, ((T2) abstractC3919x0J).b().i(), n().j().m(), MapsKt__MapsKt.toMap(l()));
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    public void onAdLeftApplication() {
        f().a(new Runnable() { // from class: com.ironsource.I2$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                I2.c(this.f$0);
            }
        });
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    public void onAdLoadSuccess(View adView, FrameLayout.LayoutParams frameLayoutParams) {
        Intrinsics.checkNotNullParameter(adView, "adView");
        Intrinsics.checkNotNullParameter(frameLayoutParams, "frameLayoutParams");
        onAdLoadSuccess(adView, frameLayoutParams, new LinkedHashMap());
    }

    @Override // com.ironsource.A, com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdOpened(final Map<String, Object> extraData) {
        Intrinsics.checkNotNullParameter(extraData, "extraData");
        f().a(new Runnable() { // from class: com.ironsource.I2$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                I2.a(this.f$0, extraData);
            }
        });
        super.onAdOpened(extraData);
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    public void onAdScreenDismissed() {
        f().a(new Runnable() { // from class: com.ironsource.I2$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                I2.d(this.f$0);
            }
        });
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    public void onAdScreenPresented() {
        f().a(new Runnable() { // from class: com.ironsource.I2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                I2.e(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(I2 i2) {
        i2.N();
    }

    public final void a(final Bg viewBinder) {
        Intrinsics.checkNotNullParameter(viewBinder, "viewBinder");
        C3948yb.a(f(), new Runnable() { // from class: com.ironsource.I2$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                I2.a(this.f$0, viewBinder);
            }
        }, 0L, 2, null);
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    public void onAdLoadSuccess(final View adView, final FrameLayout.LayoutParams frameLayoutParams, Map<String, Object> extraData) {
        Intrinsics.checkNotNullParameter(adView, "adView");
        Intrinsics.checkNotNullParameter(frameLayoutParams, "frameLayoutParams");
        Intrinsics.checkNotNullParameter(extraData, "extraData");
        C3948yb.a(f(), new Runnable() { // from class: com.ironsource.I2$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                I2.a(this.f$0, adView, frameLayoutParams);
            }
        }, 0L, 2, null);
        super.onAdLoadSuccess(extraData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(final I2 i2, Bg bg) {
        FrameLayout.LayoutParams layoutParams;
        View view = i2.A;
        if (view == null || (layoutParams = i2.B) == null) {
            return;
        }
        bg.a(view, layoutParams, i2.f());
        IronLog.INTERNAL.verbose(C3770p0.a(i2.f(), "Bind banner view", (String) null, 2, (Object) null));
        i2.f().a(new Runnable() { // from class: com.ironsource.I2$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                I2.f(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(I2 i2) {
        i2.A = null;
        i2.B = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Throwable th, I2 i2) {
        C3813r4.d().a(th);
        String str = "destroyBanner - exception = " + th.getLocalizedMessage();
        IronLog.INTERNAL.error(i2.a(str));
        i2.f().f().h().g(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(I2 i2) {
        i2.P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(I2 i2, View view, FrameLayout.LayoutParams layoutParams) {
        i2.A = view;
        i2.B = layoutParams;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b(final I2 i2) {
        try {
            if (i2.g() instanceof AdapterBannerInterface) {
                Object objG = i2.g();
                Intrinsics.checkNotNull(objG, "null cannot be cast to non-null type com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBannerInterface<*>");
                ((AdapterBannerInterface) objG).destroyAd(i2.i());
            } else {
                IronLog.INTERNAL.error(i2.a("adapter not instance of AdapterBannerInterface"));
            }
        } catch (Throwable th) {
            i2.f().a(new Runnable() { // from class: com.ironsource.I2$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    I2.a(th, i2);
                }
            });
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(I2 i2, Map map) {
        i2.l().putAll(map);
    }
}

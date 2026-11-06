package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdInfo;
import kotlin.NotImplementedError;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public final class Yb extends AbstractC3715m implements InterfaceC3728mc, L0, InterfaceC3955z0 {
    private final InterfaceC3530bc b;
    private final C3770p0 c;
    private final C3657ic d;
    private C3692kc e;
    private LevelPlayAdInfo f;

    public Yb(InterfaceC3530bc listener, C3770p0 adTools, C3657ic nativeAdProperties) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(nativeAdProperties, "nativeAdProperties");
        this.b = listener;
        this.c = adTools;
        this.d = nativeAdProperties;
        this.f = m();
    }

    private final LevelPlayAdInfo m() {
        String string = this.d.b().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        String strC = this.d.c();
        String string2 = this.d.a().toString();
        Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
        return new LevelPlayAdInfo(string, strC, string2, null, null, null, null, 120, null);
    }

    public final void a(Vb nativeAdBinder) {
        Intrinsics.checkNotNullParameter(nativeAdBinder, "nativeAdBinder");
        C3692kc c3692kc = this.e;
        if (c3692kc == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nativeAdUnit");
            c3692kc = null;
        }
        c3692kc.a(new C3567dc(nativeAdBinder), this);
    }

    @Override // com.ironsource.L0
    public void b(IronSourceError ironSourceError) {
        this.b.onNativeAdLoadFailed(ironSourceError);
    }

    @Override // com.ironsource.InterfaceC3955z0
    public void c(IronSourceError ironSourceError) {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.ironsource.J0
    public void e() {
        this.b.b(this.f);
    }

    public final void n() {
        this.f = m();
        C3692kc c3692kc = this.e;
        if (c3692kc == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nativeAdUnit");
            c3692kc = null;
        }
        c3692kc.a(true);
    }

    public final void o() {
        C3692kc c3692kcA = a(this.c, this.d);
        this.e = c3692kcA;
        if (c3692kcA == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nativeAdUnit");
            c3692kcA = null;
        }
        c3692kcA.a((L0) this);
    }

    private final C3692kc a(C3770p0 c3770p0, C3657ic c3657ic) {
        IronLog.INTERNAL.verbose();
        return new C3692kc(c3770p0, C3710lc.z.a(c3657ic, l().a()), this);
    }

    @Override // com.ironsource.L0
    public void a(C3865u0 adUnitCallback) {
        Intrinsics.checkNotNullParameter(adUnitCallback, "adUnitCallback");
        LevelPlayAdInfo levelPlayAdInfoC = adUnitCallback.c();
        if (levelPlayAdInfoC != null) {
            this.f = levelPlayAdInfoC;
            this.b.a(levelPlayAdInfoC);
        }
    }

    @Override // com.ironsource.InterfaceC3955z0
    public void a(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }
}

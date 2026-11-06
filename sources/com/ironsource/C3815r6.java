package com.ironsource;

import android.app.Activity;
import com.ironsource.C3704l6;
import com.ironsource.InterfaceC3680k0;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.r6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3815r6 implements InterfaceC3853t6 {
    private final C3547cb a;
    private final LevelPlayAdInfo b;

    public C3815r6(C3547cb adInternal, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInternal, "adInternal");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a = adInternal;
        this.b = adInfo;
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void a(Activity activity, String str) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        String string = this.a.e().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        this.a.a(new LevelPlayAdError(string, this.a.h(), LevelPlayAdError.ERROR_CODE_SHOW_WHILE_SHOW, "Ad is already showing"), this.b);
    }

    @Override // com.ironsource.InterfaceC3853t6
    public LevelPlayAdInfo b() {
        return this.b;
    }

    @Override // com.ironsource.InterfaceC3853t6
    public InterfaceC3680k0 c() {
        return new InterfaceC3680k0.a("ad is showing");
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void loadAd() {
        String string = this.a.e().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        C3547cb.a(this.a, new LevelPlayAdError(string, this.a.h(), LevelPlayAdError.ERROR_CODE_LOAD_WHILE_SHOW, "Load is called while ad is showing"), 0L, 2, null);
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void onAdClicked() {
        this.a.b("onAdClicked on showing state");
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void onAdClosed() {
        this.a.b("onAdClosed on showing state");
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void onAdDisplayed(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        C3770p0 c3770p0F = this.a.f();
        final LevelPlayAdInfo levelPlayAdInfo = new LevelPlayAdInfo(adInfo, this.b.getPlacementName());
        IronLog.INTERNAL.verbose(C3770p0.a(c3770p0F, "onAdDisplayed adInfo: " + levelPlayAdInfo, (String) null, 2, (Object) null));
        c3770p0F.f().h().c();
        C3547cb c3547cb = this.a;
        c3547cb.a(new C3833s6(c3547cb, levelPlayAdInfo));
        c3770p0F.b(new Runnable() { // from class: com.ironsource.r6$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3815r6.a(this.f$0, levelPlayAdInfo);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void onAdInfoChanged(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.b("onAdInfoChanged on showing state");
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void onAdLoadFailed(LevelPlayAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.b("onAdLoadFailed on showing state with error: " + error.getErrorMessage());
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void onAdLoaded(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.b("onAdLoaded on showing state");
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void a(LevelPlayAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.a(a(error, this.b));
        this.a.a(error, this.b);
    }

    private final InterfaceC3853t6 a(LevelPlayAdError levelPlayAdError, LevelPlayAdInfo levelPlayAdInfo) {
        if (C3596f5.a.a(C3534bg.a.a(levelPlayAdError))) {
            C3547cb c3547cb = this.a;
            return new C3776p6(c3547cb, levelPlayAdInfo, c3547cb.j());
        }
        return new C3704l6(this.a, C3704l6.a.d);
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void a() {
        this.a.b("onAdExpired on showing state");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3815r6 c3815r6, LevelPlayAdInfo levelPlayAdInfo) {
        InterfaceC3566db interfaceC3566dbK = c3815r6.a.k();
        if (interfaceC3566dbK != null) {
            interfaceC3566dbK.onAdDisplayed(levelPlayAdInfo);
        }
    }
}

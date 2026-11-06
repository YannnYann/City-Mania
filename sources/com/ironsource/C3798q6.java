package com.ironsource;

import android.app.Activity;
import com.ironsource.C3704l6;
import com.ironsource.InterfaceC3680k0;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.q6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3798q6 implements InterfaceC3853t6 {
    private final C3547cb a;
    private final InterfaceC3851t4 b;
    private final long c;
    private final LevelPlayAdInfo d;

    public C3798q6(C3547cb adInternal, InterfaceC3851t4 currentTimeProvider) {
        Intrinsics.checkNotNullParameter(adInternal, "adInternal");
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        this.a = adInternal;
        this.b = currentTimeProvider;
        this.c = currentTimeProvider.a();
        String string = adInternal.e().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        this.d = new LevelPlayAdInfo(string, adInternal.h(), adInternal.d().toString(), null, null, null, null, 120, null);
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void a(Activity activity, String str) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        String string = this.a.e().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        this.a.a(new LevelPlayAdError(string, this.a.h(), LevelPlayAdError.ERROR_CODE_SHOW_BEFORE_LOAD_SUCCESS_CALLBACK, "Show is called while loading ad"), this.d);
    }

    @Override // com.ironsource.InterfaceC3853t6
    public LevelPlayAdInfo b() {
        return this.d;
    }

    @Override // com.ironsource.InterfaceC3853t6
    public InterfaceC3680k0 c() {
        return new InterfaceC3680k0.a("Ad is loading");
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void loadAd() {
        String string = this.a.e().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        this.a.a(new LevelPlayAdError(string, this.a.h(), LevelPlayAdError.ERROR_CODE_LOAD_FAILED_ALREADY_CALLED, "Load is already called"), this.b.a() - this.c);
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void onAdClicked() {
        this.a.b("onAdClicked on loading state");
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void onAdClosed() {
        this.a.b("onAdClosed on loading state");
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void onAdDisplayed(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.b("onAdDisplayed on loading state");
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void onAdInfoChanged(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.b("onAdInfoChanged on loading state");
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void onAdLoadFailed(LevelPlayAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.a(error, this.b.a() - this.c);
        this.a.a(C3704l6.a.e);
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void onAdLoaded(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        C3547cb c3547cb = this.a;
        c3547cb.a(new C3776p6(c3547cb, adInfo, this.b));
        this.a.a(adInfo);
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void a() {
        this.a.b("onAdExpired on loading state");
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void a(LevelPlayAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.b("onAdDisplayFailed on loading state with error: " + error.getErrorMessage());
    }
}

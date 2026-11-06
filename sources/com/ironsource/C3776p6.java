package com.ironsource;

import android.app.Activity;
import com.ironsource.C3704l6;
import com.ironsource.InterfaceC3680k0;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.p6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3776p6 implements InterfaceC3853t6 {
    private final C3547cb a;
    private LevelPlayAdInfo b;
    private final InterfaceC3851t4 c;
    private final long d;

    public C3776p6(C3547cb adInternal, LevelPlayAdInfo adInfo, InterfaceC3851t4 currentTimeProvider) {
        Intrinsics.checkNotNullParameter(adInternal, "adInternal");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        this.a = adInternal;
        this.b = adInfo;
        this.c = currentTimeProvider;
        this.d = currentTimeProvider.a();
    }

    private final long d() {
        return this.c.a() - this.d;
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void a(Activity activity, String str) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        C3729md c3729mdA = this.a.f().a(this.a.d(), str);
        LevelPlayAdInfo levelPlayAdInfo = new LevelPlayAdInfo(this.b, str);
        this.b = levelPlayAdInfo;
        C3547cb c3547cb = this.a;
        c3547cb.a(new C3815r6(c3547cb, levelPlayAdInfo));
        this.a.c().a(activity, c3729mdA);
    }

    @Override // com.ironsource.InterfaceC3853t6
    public LevelPlayAdInfo b() {
        return this.b;
    }

    @Override // com.ironsource.InterfaceC3853t6
    public InterfaceC3680k0 c() {
        L3 l3A = this.a.l().g().a(this.a.h());
        return l3A.d() ? InterfaceC3680k0.a.c.a(l3A.e()) : InterfaceC3680k0.b.a;
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void loadAd() {
        this.a.f().f().h().a(Long.valueOf(d()));
        this.a.a(this.b);
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void onAdClicked() {
        this.a.b("onAdClicked on loaded state");
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void onAdClosed() {
        this.a.b("onAdClosed on loaded state");
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void onAdDisplayed(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.b("onAdDisplayed on loaded state");
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void onAdInfoChanged(final LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        C3770p0 c3770p0F = this.a.f();
        IronLog.INTERNAL.verbose(C3770p0.a(c3770p0F, "onAdInfoChanged adInfo: " + adInfo, (String) null, 2, (Object) null));
        c3770p0F.f().h().a(this.b, adInfo);
        this.b = adInfo;
        c3770p0F.b(new Runnable() { // from class: com.ironsource.p6$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3776p6.a(this.f$0, adInfo);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void onAdLoadFailed(LevelPlayAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.b("onAdLoadFailed on loaded state with error: " + error.getErrorMessage());
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void onAdLoaded(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.b("onAdLoaded on loaded state");
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void a() {
        IronLog.INTERNAL.verbose(C3770p0.a(this.a.f(), "onAdExpired", (String) null, 2, (Object) null));
        this.a.a(C3704l6.a.c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3776p6 c3776p6, LevelPlayAdInfo levelPlayAdInfo) {
        InterfaceC3566db interfaceC3566dbK = c3776p6.a.k();
        if (interfaceC3566dbK != null) {
            interfaceC3566dbK.onAdInfoChanged(levelPlayAdInfo);
        }
    }

    @Override // com.ironsource.InterfaceC3853t6
    public void a(LevelPlayAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.b("onAdDisplayFailed on loaded state with error: " + error.getErrorMessage());
    }
}

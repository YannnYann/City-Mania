package com.ironsource;

import android.app.Activity;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;

/* JADX INFO: renamed from: com.ironsource.t6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public interface InterfaceC3853t6 {
    @InterfaceC3930xb
    void a();

    @InterfaceC3930xb
    void a(Activity activity, String str);

    @InterfaceC3930xb
    void a(LevelPlayAdError levelPlayAdError);

    LevelPlayAdInfo b();

    InterfaceC3680k0 c();

    @InterfaceC3930xb
    void loadAd();

    @InterfaceC3930xb
    void onAdClicked();

    @InterfaceC3930xb
    void onAdClosed();

    @InterfaceC3930xb
    void onAdDisplayed(LevelPlayAdInfo levelPlayAdInfo);

    @InterfaceC3930xb
    void onAdInfoChanged(LevelPlayAdInfo levelPlayAdInfo);

    @InterfaceC3930xb
    void onAdLoadFailed(LevelPlayAdError levelPlayAdError);

    @InterfaceC3930xb
    void onAdLoaded(LevelPlayAdInfo levelPlayAdInfo);
}

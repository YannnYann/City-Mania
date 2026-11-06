package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ٽ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0327 extends AppOpenAd.AppOpenAdLoadCallback implements InterfaceC0445 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0302 f1910;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0875 f1911;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AppOpenAd.AppOpenAdLoadCallback f1912;

    public C0327(C0302 c0302, AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback, C0875 c0875) {
        this.f1910 = c0302;
        this.f1912 = appOpenAdLoadCallback;
        this.f1911 = c0875;
    }

    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.f1910.m1187(this, this.f1911, StringFog.decrypt("OAyRQvp57+cdMI5s7l/gyhUegG7hMu7IOBinbONw5MItE61i63g=\n", "eXzhDYocgaY=\n"), loadAdError);
        AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback = this.f1912;
        if (appOpenAdLoadCallback != null) {
            appOpenAdLoadCallback.onAdFailedToLoad(loadAdError);
        }
    }

    public final void onAdLoaded(Object obj) {
        AppOpenAd appOpenAd = (AppOpenAd) obj;
        this.f1910.m1187(this, this.f1911, StringFog.decrypt("gfEKCTgdxsykzRUnLDvJ4azjGyUjVsfjgeU2KSkczek=\n", "wIF6Rkh4qI0=\n"), appOpenAd);
        AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback = this.f1912;
        if (appOpenAdLoadCallback != null) {
            appOpenAdLoadCallback.onAdLoaded(appOpenAd);
        }
    }

    public final void onAppOpenAdFailedToLoad(int i) {
        this.f1910.m1187(this, this.f1911, StringFog.decrypt("BvZ2LD1GG+ojymkCKWAUxyvkZwAmDRrFBvZ2LD1GG+ojwGcKIUYR/yjKaQIp\n", "R4YGY00jdas=\n"), Integer.valueOf(i));
        AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback = this.f1912;
        if (appOpenAdLoadCallback != null) {
            appOpenAdLoadCallback.onAppOpenAdFailedToLoad(i);
        }
    }

    public final void onAppOpenAdLoaded(AppOpenAd appOpenAd) {
        this.f1910.m1187(this, this.f1911, StringFog.decrypt("HmYTB/6fbmk7Wgwp6rlhRDN0Aivl1G9GHmYTB/6fbmk7Wgwp6p9k\n", "XxZjSI76ACg=\n"), appOpenAd);
        AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback = this.f1912;
        if (appOpenAdLoadCallback != null) {
            appOpenAdLoadCallback.onAppOpenAdLoaded(appOpenAd);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0445
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1025() {
        return this.f1912;
    }

    public final void onAppOpenAdFailedToLoad(LoadAdError loadAdError) {
        this.f1910.m1187(this, this.f1911, StringFog.decrypt("UY9+yRhF20B0s2HnDGPUbXydb+UDDtpvUY9+yRhF20B0uW/vBEXRVX+zYecMd9x1eLp89AdS\n", "EP8OhmggtQE=\n"), loadAdError);
        AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback = this.f1912;
        if (appOpenAdLoadCallback != null) {
            appOpenAdLoadCallback.onAppOpenAdFailedToLoad(loadAdError);
        }
    }
}

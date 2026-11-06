package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.پ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0328 extends AdListener implements InterfaceC0445 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0302 f1913;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0875 f1914;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AdListener f1915;

    public C0328(C0302 c0302, AdListener adListener, C0875 c0875) {
        this.f1913 = c0302;
        this.f1915 = adListener;
        this.f1914 = c0875;
    }

    public final void onAdClosed() {
        this.f1913.m1187(this, this.f1914, StringFog.decrypt("z7aGcZ43B9ProOR3gwIG/uK9uX2J\n", "jtLKGO1DYr0=\n"), new Object[0]);
        AdListener adListener = this.f1915;
        if (adListener != null) {
            adListener.onAdClosed();
        }
    }

    public final void onAdFailedToLoad(int i) {
        this.f1913.m1187(this, this.f1914, StringFog.decrypt("MKGTqnbKdyMUt/Gsa/92CxCss6Zh6n0BHqS7\n", "ccXfwwW+Ek0=\n"), Integer.valueOf(i));
        AdListener adListener = this.f1915;
        if (adListener != null) {
            adListener.onAdFailedToLoad(i);
        }
    }

    public final void onAdImpression() {
        this.f1913.m1187(this, this.f1914, StringFog.decrypt("NpsdRoEsC+QSjX9AnBkKwxqPI0qBKwflGQ==\n", "d/9RL/JYboo=\n"), new Object[0]);
        AdListener adListener = this.f1915;
        if (adListener != null) {
            adListener.onAdImpression();
        }
    }

    public final void onAdLeftApplication() {
        this.f1913.m1187(this, this.f1914, StringFog.decrypt("S4LEnwSc2UJvlKaZGanYYG+A/LcHmNBFaYf8nxiG\n", "CuaI9nfovCw=\n"), new Object[0]);
        AdListener adListener = this.f1915;
        if (adListener != null) {
            adListener.onAdLeftApplication();
        }
    }

    public final void onAdLoaded() {
        this.f1913.m1187(this, this.f1914, StringFog.decrypt("Yx8taOCfQH9HCU9u/apBXU0aBWT3\n", "InthAZPrJRE=\n"), new Object[0]);
        AdListener adListener = this.f1915;
        if (adListener != null) {
            adListener.onAdLoaded();
        }
    }

    public final void onAdOpened() {
        this.f1913.m1187(this, this.f1914, StringFog.decrypt("OkFxIEapKiEeVxMmW5wrAAtAUyxR\n", "eyU9STXdT08=\n"), new Object[0]);
        AdListener adListener = this.f1915;
        if (adListener != null) {
            adListener.onAdOpened();
        }
    }

    public final void onAdSwipeGestureClicked() {
        this.f1913.m1187(this, this.f1914, StringFog.decrypt("0fSkF0mzefH14sYRVIZ4zOf5mBt9om/r5eKNPVauf/T19A==\n", "kJDofjrHHJ8=\n"), new Object[0]);
        AdListener adListener = this.f1915;
        if (adListener != null) {
            adListener.onAdSwipeGestureClicked();
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0445
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1025() {
        return this.f1915;
    }

    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.f1913.m1187(this, this.f1914, StringFog.decrypt("hFmdlg1QRaygT/+QEGVEhKRUvZoacE+Oqly1qBdQSIOheKONEVY=\n", "xT3R/34kIMI=\n"), loadAdError);
        AdListener adListener = this.f1915;
        if (adListener != null) {
            adListener.onAdFailedToLoad(loadAdError);
        }
    }
}

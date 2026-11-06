package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ث, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0310 extends FullScreenContentCallback implements InterfaceC0445 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0302 f1834;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0875 f1835;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final FullScreenContentCallback f1836;

    public C0310(C0302 c0302, FullScreenContentCallback fullScreenContentCallback, C0875 c0875) {
        this.f1834 = c0302;
        this.f1836 = fullScreenContentCallback;
        this.f1835 = c0875;
    }

    public final void onAdClicked() {
        this.f1834.m1187(this, this.f1835, StringFog.decrypt("da/5SyawigVWtNZIG6edDkeZ9EsZsZkDWPT6STS3uwxauf5CEQ==\n", "M9qVJ3XT+GA=\n"), new Object[0]);
        FullScreenContentCallback fullScreenContentCallback = this.f1836;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdClicked();
        }
    }

    public final void onAdDismissedFullScreenContent() {
        this.f1834.m1187(this, this.f1835, StringFog.decrypt("WSDH5LOp+yV6O+jnjr7sLmsWyuSMqOgjdHvE5qGuzSlsOML7k6/tBmo5x9uDuOwlcRbE5pSv5zQ=\n", "H1WriODKiUA=\n"), new Object[0]);
        FullScreenContentCallback fullScreenContentCallback = this.f1836;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdDismissedFullScreenContent();
        }
    }

    public final void onAdFailedToShowFullScreenContent(AdError adError) {
        this.f1834.m1187(this, this.f1835, StringFog.decrypt("q/9JK1oXvwKI5GYoZwCoCZnJRCtlFqwEhqRKKUgQiwaE5kAjXRueD4L9YzJlGJ4En+9AKUoboxOI\n5FE=\n", "7YolRwl0zWc=\n"), adError);
        FullScreenContentCallback fullScreenContentCallback = this.f1836;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdFailedToShowFullScreenContent(adError);
        }
    }

    public final void onAdImpression() {
        this.f1834.m1187(this, this.f1835, StringFog.decrypt("uEdIMloelAKbXGcxZwmDCYpxRTJlH4cElRxLMEgZrwqOQEEtehSJCQ==\n", "/jIkXgl95mc=\n"), new Object[0]);
        FullScreenContentCallback fullScreenContentCallback = this.f1836;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdImpression();
        }
    }

    public final void onAdShowedFullScreenContent() {
        this.f1834.m1187(this, this.f1835, StringFog.decrypt("qy7BMAgu3DaINe4zNTnLPZkYzDA3L88whnXCMhop/TuCLMg4HTjCP7443zk+I+08gy/IMi8=\n", "7VutXFtNrlM=\n"), new Object[0]);
        FullScreenContentCallback fullScreenContentCallback = this.f1836;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdShowedFullScreenContent();
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0445
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1025() {
        return this.f1836;
    }
}

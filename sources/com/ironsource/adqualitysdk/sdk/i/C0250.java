package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialAd;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ҭ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0250 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0229 f1563;

    public C0250(C0229 c0229) {
        this.f1563 = c0229;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        this.f1563.getClass();
        return ((InterstitialAd) AbstractC0925.m1545(arrayList, 0, InterstitialAd.class)).getResponseInfo();
    }
}

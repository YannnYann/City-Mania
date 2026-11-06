package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.libraries.ads.mobile.sdk.banner.AdView;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ո, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0274 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0229 f1612;

    public C0274(C0229 c0229) {
        this.f1612 = c0229;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        this.f1612.getClass();
        return ((AdView) AbstractC0925.m1545(arrayList, 0, AdView.class)).getBannerAd();
    }
}

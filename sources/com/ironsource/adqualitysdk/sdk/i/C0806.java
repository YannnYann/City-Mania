package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.doubleclick.PublisherAdView;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ↄ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0806 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0302 f3152;

    public C0806(C0302 c0302) {
        this.f3152 = c0302;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        this.f3152.getClass();
        return ((PublisherAdView) AbstractC0925.m1545(arrayList, 0, PublisherAdView.class)).getAdListener();
    }
}

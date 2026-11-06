package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ⅽ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0799 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0302 f3140;

    public C0799(C0302 c0302) {
        this.f3140 = c0302;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        this.f3140.getClass();
        PublisherAdView publisherAdView = (PublisherAdView) AbstractC0925.m1545(arrayList, 0, PublisherAdView.class);
        this.f3140.getClass();
        publisherAdView.setAdListener((AdListener) AbstractC0925.m1545(arrayList, 1, AdListener.class));
        return null;
    }
}

package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdView;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ۅ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0353 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0302 f1958;

    public C0353(C0302 c0302) {
        this.f1958 = c0302;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        this.f1958.getClass();
        AdView adView = (AdView) AbstractC0925.m1545(arrayList, 0, AdView.class);
        this.f1958.getClass();
        adView.setAdListener((AdListener) AbstractC0925.m1545(arrayList, 1, AdListener.class));
        return null;
    }
}

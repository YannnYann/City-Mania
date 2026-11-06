package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.formats.NativeAppInstallAdView;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ḟ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0710 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0302 f2899;

    public C0710(C0302 c0302) {
        this.f2899 = c0302;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        this.f2899.getClass();
        return ((NativeAppInstallAdView) AbstractC0925.m1545(arrayList, 0, NativeAppInstallAdView.class)).getStarRatingView();
    }
}

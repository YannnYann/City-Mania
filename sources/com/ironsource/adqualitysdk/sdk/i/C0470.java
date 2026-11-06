package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.appopen.AppOpenAd;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᐱ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0470 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0302 f2241;

    public C0470(C0302 c0302) {
        this.f2241 = c0302;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        this.f2241.getClass();
        return ((AppOpenAd) AbstractC0925.m1545(arrayList, 0, AppOpenAd.class)).getResponseInfo();
    }
}

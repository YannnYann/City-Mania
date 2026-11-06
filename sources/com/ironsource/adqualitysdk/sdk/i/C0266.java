package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardedAd;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ԇ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0266 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0229 f1600;

    public C0266(C0229 c0229) {
        this.f1600 = c0229;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        this.f1600.getClass();
        return ((RewardedAd) AbstractC0925.m1545(arrayList, 0, RewardedAd.class)).getRewardItem();
    }
}

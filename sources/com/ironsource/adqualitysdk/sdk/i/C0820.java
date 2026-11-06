package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.AdListener;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ゥ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0820 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0302 f3169;

    public C0820(C0302 c0302) {
        this.f3169 = c0302;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0302 c0302 = this.f3169;
        c0302.getClass();
        return new C0328(c0302, (AdListener) AbstractC0925.m1545(arrayList, 0, AdListener.class), c0875);
    }
}

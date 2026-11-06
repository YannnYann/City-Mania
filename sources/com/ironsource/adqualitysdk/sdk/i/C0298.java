package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ץ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0298 implements InterfaceC0282 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0129 f1669;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ List f1670;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0048 f1671;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0915 f1672;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0946 f1673;

    public C0298(C0129 c0129, C0946 c0946, C0915 c0915, C0048 c0048, List list) {
        this.f1669 = c0129;
        this.f1673 = c0946;
        this.f1672 = c0915;
        this.f1671 = c0048;
        this.f1670 = list;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0282
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1189(ViewOnClickListenerC0188 viewOnClickListenerC0188, View view) {
        C0946 c0946 = this.f1673;
        C0915 c0915 = this.f1672;
        C0048 c0048 = this.f1671;
        ArrayList arrayListM1121 = C0129.m1121(this.f1669, this.f1670, new Object[]{this, viewOnClickListenerC0188, view});
        c0946.getClass();
        c0946.m1558(c0915, c0915.f3495, c0048, arrayListM1121);
    }
}

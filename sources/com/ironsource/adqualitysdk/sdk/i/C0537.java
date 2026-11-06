package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᓱ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0537 implements InterfaceC0717 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ List f2433;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0048 f2434;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0915 f2435;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0305 f2436;

    public C0537(C0305 c0305, C0915 c0915, C0048 c0048, List list) {
        this.f2436 = c0305;
        this.f2435 = c0915;
        this.f2434 = c0048;
        this.f2433 = list;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0717
    /* JADX INFO: renamed from: ﾒ */
    public final boolean mo1040(InterfaceC0724 interfaceC0724) {
        C0531 c0531 = this.f2436.f1822;
        C0915 c0915 = this.f2435;
        C0048 c0048 = this.f2434;
        List list = this.f2433;
        AbstractC0586 abstractC0586 = c0531.f2428;
        if (abstractC0586 != null && !abstractC0586.mo1299(interfaceC0724)) {
            return false;
        }
        if (c0531.f2427 == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList(list);
        arrayList.add(0, interfaceC0724);
        C0946 c0946 = c0531.f2427;
        c0946.getClass();
        return c0946.m1558(c0915, c0915.f3495, c0048, arrayList).m1144();
    }
}

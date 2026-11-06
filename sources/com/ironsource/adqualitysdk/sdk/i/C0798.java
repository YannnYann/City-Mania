package com.ironsource.adqualitysdk.sdk.i;

import java.util.Calendar;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ⅼ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0798 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0773 f3137;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ String f3138;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f3139;

    public C0798(C0773 c0773, String str, String str2) {
        this.f3137 = c0773;
        this.f3139 = str;
        this.f3138 = str2;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0773 c0773 = this.f3137;
        String str = this.f3139;
        c0773.m1449(str, this.f3138);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        String strM1456 = AbstractC0829.m1456("EvGq2S0W0iNd6a4=\n", "PJ3Lqlljokc=\n", sb);
        String str2 = AbstractC0061.f813;
        c0773.m1449(strM1456, Long.toString(Calendar.getInstance().getTimeInMillis()));
        this.f3137.getClass();
    }
}

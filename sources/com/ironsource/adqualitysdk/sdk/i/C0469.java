package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᐯ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0469 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final /* synthetic */ C0324 f2233;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final /* synthetic */ C0475 f2234;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0248 f2235;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ String f2236;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ String f2237;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0208 f2238;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ String f2239;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Context f2240;

    public C0469(C0324 c0324, Context context, String str, AbstractC0208 abstractC0208, String str2, String str3, AbstractC0248 abstractC0248, C0475 c0475) {
        this.f2233 = c0324;
        this.f2240 = context;
        this.f2239 = str;
        this.f2238 = abstractC0208;
        this.f2237 = str2;
        this.f2236 = str3;
        this.f2235 = abstractC0248;
        this.f2234 = c0475;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0324 c0324 = this.f2233;
        Context context = this.f2240;
        String str = this.f2239;
        AbstractC0208 abstractC0208 = this.f2238;
        c0324.getClass();
        C0937 c0937 = TextUtils.isEmpty(str) ? null : new C0937(context, new C0525(str, c0324.f1900), c0324.f1894, c0324.f1901, abstractC0208);
        if (c0937 == null) {
            AbstractC0272.m1214(this.f2234);
            return;
        }
        C0324 c03242 = this.f2233;
        Context context2 = this.f2240;
        String str2 = this.f2237;
        String str3 = this.f2236;
        AbstractC0248 abstractC0248 = this.f2235;
        AbstractC0208 abstractC02082 = this.f2238;
        C0475 c0475 = this.f2234;
        c03242.getClass();
        AbstractC0272.m1214(new C0402(c03242, c0937, abstractC0248, str3, true, c0475, str2, abstractC02082, context2));
    }
}

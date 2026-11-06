package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᐴ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0472 implements InterfaceC0054 {

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final /* synthetic */ C0324 f2243;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final /* synthetic */ C0475 f2244;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0248 f2245;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ String f2246;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0208 f2247;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ Context f2248;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f2249;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ boolean f2250;

    public C0472(C0324 c0324, boolean z, String str, Context context, AbstractC0208 abstractC0208, String str2, AbstractC0248 abstractC0248, C0475 c0475) {
        this.f2243 = c0324;
        this.f2250 = z;
        this.f2249 = str;
        this.f2248 = context;
        this.f2247 = abstractC0208;
        this.f2246 = str2;
        this.f2245 = abstractC0248;
        this.f2244 = c0475;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0054
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1068(String str) {
        C0235 c0235;
        if (TextUtils.isEmpty(str)) {
            if (this.f2250 || (c0235 = this.f2243.f1898) == null) {
                return;
            }
            AbstractC0272.m1210(new C0277(c0235, this.f2249, EnumC0307.f1827));
            return;
        }
        C0324 c0324 = this.f2243;
        Context context = this.f2248;
        AbstractC0208 abstractC0208 = this.f2247;
        c0324.getClass();
        C0937 c0937 = TextUtils.isEmpty(str) ? null : new C0937(context, new C0525(str, c0324.f1900), c0324.f1894, c0324.f1901, abstractC0208);
        C0324 c03242 = this.f2243;
        Context context2 = this.f2248;
        String str2 = this.f2246;
        String str3 = this.f2249;
        AbstractC0248 abstractC0248 = this.f2245;
        AbstractC0208 abstractC02082 = this.f2247;
        C0475 c0475 = this.f2244;
        c03242.getClass();
        AbstractC0272.m1214(new C0402(c03242, c0937, abstractC0248, str3, false, c0475, str2, abstractC02082, context2));
    }
}

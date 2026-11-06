package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ٲ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0321 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0252 f1886;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0348 f1887;

    public C0321(Context context, String str, String str2) {
        Context applicationContext = context.getApplicationContext();
        this.f1886 = new C0252(applicationContext, str);
        this.f1887 = new C0348(AbstractC0283.f1626, applicationContext.getPackageName(), AbstractC0251.m1205(applicationContext), str2);
    }
}

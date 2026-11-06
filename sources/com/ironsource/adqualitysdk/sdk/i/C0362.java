package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.content.Intent;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ܖ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0362 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0341 f1977;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ Intent f1978;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Context f1979;

    public C0362(C0341 c0341, Context context, Intent intent) {
        this.f1977 = c0341;
        this.f1979 = context;
        this.f1978 = intent;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0341 c0341 = this.f1977;
        C0946 c0946 = c0341.f1937;
        C0915 c0915 = c0341.f1936;
        C0048 c0048 = c0341.f1935;
        ArrayList arrayListM1121 = C0129.m1121(c0341.f1933, c0341.f1934, new Object[]{c0341, this.f1979, this.f1978});
        c0946.getClass();
        c0946.m1558(c0915, c0915.f3495, c0048, arrayListM1121);
    }
}

package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import java.util.Collections;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺩ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0945 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0940 f3577;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ Activity f3578;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f3579;

    public C0945(C0940 c0940, String str, Activity activity) {
        this.f3577 = c0940;
        this.f3579 = str;
        this.f3578 = activity;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0048.m1057(this.f3577.f3549, this.f3579, false, false, Collections.singletonList(this.f3578));
    }
}

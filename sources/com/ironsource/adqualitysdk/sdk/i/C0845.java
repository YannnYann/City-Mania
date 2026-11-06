package com.ironsource.adqualitysdk.sdk.i;

import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.爫, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0845 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0825 f3263;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0311 f3264;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f3265;

    public C0845(C0825 c0825, JSONObject jSONObject, C0311 c0311) {
        this.f3263 = c0825;
        this.f3265 = jSONObject;
        this.f3264 = c0311;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        String strM1455 = C0825.m1455(this.f3263, this.f3265);
        B0 b0 = (B0) this.f3263.f3176.get(strM1455);
        if (b0 == null) {
            b0 = new B0(this.f3265);
            this.f3263.f3176.put(strM1455, b0);
        } else {
            b0.m976(this.f3265);
        }
        b0.f3173 = this.f3264;
    }
}

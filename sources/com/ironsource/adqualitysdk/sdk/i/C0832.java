package com.ironsource.adqualitysdk.sdk.i;

import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.丫, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0832 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0825 f3185;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0301 f3186;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0589 f3187;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f3188;

    public C0832(C0825 c0825, JSONObject jSONObject, C0589 c0589, C0301 c0301) {
        this.f3185 = c0825;
        this.f3188 = jSONObject;
        this.f3187 = c0589;
        this.f3186 = c0301;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        String strM1455 = C0825.m1455(this.f3185, this.f3188);
        B b = (B) this.f3185.f3175.get(strM1455);
        if (b == null) {
            b = new B(this.f3188, this.f3187);
            this.f3185.f3175.put(strM1455, b);
        } else {
            JSONObject jSONObject = this.f3188;
            C0589 c0589 = this.f3187;
            b.f81 = new A(jSONObject);
            b.f87 = c0589;
        }
        b.f3173 = this.f3186;
    }
}

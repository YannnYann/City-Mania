package com.ironsource.adqualitysdk.sdk.i;

import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᘅ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0615 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0610 f2602;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f2603;

    public C0615(C0610 c0610, JSONObject jSONObject) {
        this.f2602 = c0610;
        this.f2603 = jSONObject;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0730 c0730 = this.f2602.f2586;
        JSONObject jSONObject = this.f2603;
        c0730.f3014.f2625.m1608(jSONObject);
        C0622 c0622 = c0730.f3014;
        C0732 c0732 = new C0732(c0730);
        synchronized (c0622.f2634) {
        }
        c0622.m1405(jSONObject);
        c0622.f2634.getClass();
        C1000 c1000 = new C1000(jSONObject);
        C0619 c0619 = new C0619(c1000);
        C0601 c0601M1400 = c0622.m1400();
        c0619.m1386(c0601M1400.m1364(), c0601M1400.m1366());
        c0622.f2634.m1548(c1000, c0732);
        c0622.m1398(c0619.m1384());
    }
}

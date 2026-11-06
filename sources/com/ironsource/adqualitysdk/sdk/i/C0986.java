package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｕ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0986 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0960 f3702;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ int f3703;

    public C0986(C0960 c0960, int i) {
        this.f3702 = c0960;
        this.f3703 = i;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        int iOptInt;
        JSONObject jSONObject;
        C0623 c0623 = this.f3702.f3631;
        if (this.f3703 >= c0623.f2638.m1400().m1365()) {
            iOptInt = 0;
        } else {
            C0622 c0622 = c0623.f2638;
            if (c0622.m1400() == null || ((C0893) AbstractC0885.m1491()).f3410) {
                iOptInt = 100;
            } else {
                C0601 c0601M1400 = c0622.m1400();
                synchronized (c0601M1400) {
                    jSONObject = c0601M1400.f2612;
                }
                iOptInt = jSONObject.optInt(StringFog.decrypt("rxJ/\n", "ymELskbtt/8=\n"), c0601M1400.f2567);
            }
        }
        C0622 c06222 = c0623.f2638;
        c06222.f2632.removeCallbacksAndMessages(null);
        c06222.f2632.postDelayed(new C0821(c06222), iOptInt);
    }
}

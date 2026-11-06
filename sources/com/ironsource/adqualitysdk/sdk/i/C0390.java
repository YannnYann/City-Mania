package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.os.Handler;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ব, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0390 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0324 f2016;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Context f2017;

    public C0390(C0324 c0324, Context context) {
        this.f2016 = c0324;
        this.f2017 = context;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        JSONObject jSONObject;
        C0235 c0235 = this.f2016.f1898;
        if (c0235 != null) {
            Context context = this.f2017;
            if (c0235.f1539 != null) {
                return;
            }
            c0235.f1539 = new C0967(new C0255(c0235), new C0254(c0235), new C0249(context.getApplicationContext()));
            AbstractC0885 abstractC0885M1491 = AbstractC0885.m1491();
            C0967 c0967 = c0235.f1539;
            C0893 c0893 = (C0893) abstractC0885M1491;
            long jM1362 = c0893.f3419.m1362();
            C0601 c0601 = c0893.f3419;
            synchronized (c0601) {
                jSONObject = c0601.f2612;
            }
            int iOptInt = jSONObject.optInt(C0601.f2561, 0);
            boolean zMo1501 = abstractC0885M1491.mo1501();
            int iMo1505 = abstractC0885M1491.mo1505();
            boolean zMo1492 = abstractC0885M1491.mo1492();
            if (c0967.f3661) {
                return;
            }
            c0967.f3661 = true;
            c0967.f3658 = jM1362;
            c0967.f3657 = iOptInt;
            c0967.f3654 = zMo1501;
            c0967.f3653 = iMo1505;
            c0967.f3652 = zMo1492;
            if (zMo1501) {
                Handler handler = c0967.f3662;
                if (handler != null) {
                    handler.removeCallbacksAndMessages(null);
                }
                Handler handler2 = c0967.f3662;
                if (handler2 == null) {
                    return;
                }
                handler2.postDelayed(new C0992(c0967), c0967.f3653);
            }
        }
    }
}

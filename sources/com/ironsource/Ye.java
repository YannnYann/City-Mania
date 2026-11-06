package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class Ye {
    private C3579e6 a;

    public final class a extends Xe {
        public a() {
        }

        @Override // com.ironsource.Xe, java.lang.Runnable
        public void run() {
            JSONObject jSONObjectB = IronSourceUtils.b(false);
            try {
                jSONObjectB.put("duration", a());
            } catch (JSONException e) {
                C3813r4.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
            C3675jd.P.a(new C5(D5.g, jSONObjectB));
        }
    }

    public final void a(InterfaceC3759o7 applicationLifecycleService) {
        Intrinsics.checkNotNullParameter(applicationLifecycleService, "applicationLifecycleService");
        this.a = new C3579e6(applicationLifecycleService, new a());
    }
}

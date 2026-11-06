package com.ironsource;

import android.content.Context;
import com.ironsource.C3522b4;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class T5 implements Sc {
    private boolean a = true;
    private String b = U5.j;

    public static final class a implements InterfaceC3652i7 {
        @Override // com.ironsource.InterfaceC3652i7
        public void a(boolean z) {
            if (z) {
                return;
            }
            IronLog.API.error("failed to send impression data");
        }
    }

    private final JSONObject b() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(C3529bb.o, "android");
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        if (applicationContext != null) {
            jSONObject.put("deviceType", IronSourceUtils.b(applicationContext));
            X9 x9D = IronSourceUtils.d(applicationContext);
            if (x9D != null) {
                jSONObject.put("advId", x9D.c());
                jSONObject.put("advIdType", x9D.d());
            }
        }
        String strH = com.ironsource.mediationsdk.p.g().h();
        if (strH != null) {
            jSONObject.put(C3522b4.j.g, strH);
        }
        return jSONObject;
    }

    @Override // com.ironsource.Sc
    public void a() {
    }

    public final void a(String dataSource, JSONObject impressionData) {
        Intrinsics.checkNotNullParameter(dataSource, "dataSource");
        Intrinsics.checkNotNullParameter(impressionData, "impressionData");
        if (!this.a) {
            IronLog.INTERNAL.verbose("disabled from server");
            return;
        }
        try {
            JSONObject jSONObjectB = b();
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("externalMediationSource", dataSource);
            jSONObject.putOpt("externalMediationData", impressionData);
            jSONObject.putOpt("clientParams", jSONObjectB);
            IronLog.API.info("impressionData: " + jSONObject);
            C3634h7.a(this.b, jSONObject.toString(), new a());
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.API.error("exception " + e.getMessage() + " sending impression data");
        }
    }

    @Override // com.ironsource.Sc
    public void g(String str) {
    }

    @Override // com.ironsource.Sc
    public void a(List<IronSource.a> list, boolean z, S3 s3) {
        if (s3 != null) {
            K1 k1B = s3.b();
            U1 u1F = k1B != null ? k1B.f() : null;
            Intrinsics.checkNotNull(u1F);
            this.a = u1F.m();
            this.b = s3.b().f().d();
        }
    }
}

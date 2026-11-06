package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.ISAdQualityInitError;
import com.ironsource.adqualitysdk.sdk.ISAdQualityInitListener;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.კ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0440 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0402 f2190;

    public C0440(C0402 c0402) {
        this.f2190 = c0402;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0235 c0235;
        boolean zMo1075;
        if (C0324.m1223(this.f2190.f2129).containsKey(this.f2190.f2136.f3544.f2381) || (c0235 = this.f2190.f2129.f1898) == null) {
            return;
        }
        AbstractC0272.m1210(new C0277(c0235, this.f2190.f2136.f3544.f2381, EnumC0307.f1831));
        C0402 c0402 = this.f2190;
        JSONObject jSONObjectM1227 = C0324.m1227(c0402.f2129, c0402.f2136);
        try {
            jSONObjectM1227.put(StringFog.decrypt("wfGD\n", "oIfwIzYyyxg=\n"), false);
        } catch (JSONException unused) {
        }
        C0324.m1226(this.f2190.f2129).put(this.f2190.f2136.f3544.f2381, jSONObjectM1227);
        C0286 c0286M1195 = c0235.m1195(this.f2190.f2136.f3544.f2381);
        String strM1217 = c0286M1195 != null ? c0286M1195.m1217(c0286M1195.f1637) : null;
        C0324.m1223(this.f2190.f2129).put(this.f2190.f2136.f3544.f2381, strM1217);
        C0937 c0937 = this.f2190.f2136;
        synchronized (c0937) {
            zMo1075 = c0937.f3541.mo1075();
        }
        if (zMo1075) {
            ISAdQualityInitListener iSAdQualityInitListenerM1236 = this.f2190.f2129.m1236();
            ISAdQualityInitError iSAdQualityInitError = ISAdQualityInitError.AD_NETWORK_SDK_REQUIRES_NEWER_AD_QUALITY_SDK;
            StringBuilder sb = new StringBuilder();
            sb.append(this.f2190.f2136.f3544.f2380);
            sb.append(StringFog.decrypt("DlK7l9UOzIRdSLCS1Q==\n", "LiHf/PV4qfY=\n"));
            sb.append(this.f2190.f2136.f3541.m1185());
            sb.append(StringFog.decrypt("9ZsP3GrcI0OmyTnCcNg9R/WaDsY/wzRUpoAFwz8=\n", "1elqrR+1USY=\n"));
            sb.append(this.f2190.f2136.m1552());
            ((C0406) iSAdQualityInitListenerM1236).adQualitySdkInitFailed(iSAdQualityInitError, AbstractC0829.m1456("AAPcJ3VUt2RS\n", "IGyuBxsxwAE=\n", sb));
        }
        AbstractC1003.m1593(StringFog.decrypt("TYPNTa/6l2x8ocJNq/6GcQ==\n", "DuyjI8qZ4wM=\n"), strM1217, null, true, true, false);
    }
}

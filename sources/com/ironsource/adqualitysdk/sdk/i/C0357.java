package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.os.SystemClock;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;
import java.util.HashSet;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ە, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0357 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0344 f1966;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ boolean f1967;

    public C0357(C0344 c0344, boolean z) {
        this.f1966 = c0344;
        this.f1967 = z;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        String strDecrypt;
        HashMap map;
        C0622 c0622 = this.f1966.f1941.f1940.f1917.f1878.f1353;
        String strDecrypt2 = StringFog.decrypt("YPlwvdY1tA==\n", "FIkv1LhcwHs=\n");
        C0318 c0318 = this.f1966.f1941.f1940.f1917;
        if (c0318.f1881) {
            strDecrypt = c0318.f1880;
            if (strDecrypt == null) {
                strDecrypt = StringFog.decrypt("aOScIA==\n", "BpHwTC2VeF8=\n");
            }
        } else {
            strDecrypt = null;
        }
        C0324 c0324 = this.f1966.f1941.f1940.f1917.f1878.f1356;
        new C0970(this.f1966.f1941.f1940.f1917.f1878.f1358);
        C0204 c0204 = this.f1966.f1941.f1940.f1917.f1878;
        Context context = c0204.f1358;
        boolean z = this.f1967;
        r rVarM1168 = C0204.m1168(c0204);
        String str = AbstractC0177.f1183;
        JSONObject jSONObject = new JSONObject();
        if (z) {
            try {
                jSONObject.put(StringFog.decrypt("0H8=\n", "tgzyP+Wu55c=\n"), true);
            } catch (JSONException e) {
                String str2 = AbstractC0177.f1183;
                AbstractC0182.m1156(str2, str2, StringFog.decrypt("Dp3ulBenMtEujuiSC+Bx1y6D+YsK9SWDIoH1j0XNAuwF\n", "S++c+2WHUaM=\n"), e, null, false);
            }
        }
        if (rVarM1168.f370) {
            jSONObject.put(StringFog.decrypt("WdL++xs=\n", "OKeKkn9Ci90=\n"), true);
        }
        jSONObject.put(StringFog.decrypt("5OdFoQ==\n", "lJIsxXzR2Rw=\n"), strDecrypt);
        long j = ((C0893) AbstractC0885.m1491()).f3406;
        if (j > 0) {
            String strDecrypt3 = StringFog.decrypt("F/lo\n", "fosM1Ezel70=\n");
            String str3 = AbstractC0061.f813;
            jSONObject.put(strDecrypt3, SystemClock.elapsedRealtime() - j);
        }
        AbstractC0962.m1575(jSONObject, c0324.m1234(), false);
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            synchronized (c0324) {
                map = c0324.f1902;
            }
            for (String str4 : new HashSet(map.keySet())) {
                jSONObject3.put(str4, (String) c0324.m1235().get(str4));
            }
            jSONObject2.put(StringFog.decrypt("vBIt6w==\n", "2WBfmJxiDNU=\n"), jSONObject3);
        } catch (JSONException e2) {
            String str5 = C0324.f1893;
            AbstractC0182.m1156(str5, str5, StringFog.decrypt("KB0/IRGLuxEJBiMpQ8i1GwMKLjoM2foQHx0iPBA=\n", "bW9NTmOr2nU=\n"), e2, null, false);
        }
        AbstractC0962.m1575(jSONObject, jSONObject2, false);
        c0622.m1403(strDecrypt2, jSONObject);
        C0318 c03182 = this.f1966.f1941.f1940.f1917;
        if (c03182.f1879) {
            C0622 c06222 = c03182.f1878.f1353;
            c06222.getClass();
            AbstractC0272.m1211(new C0738(c06222));
        }
    }
}

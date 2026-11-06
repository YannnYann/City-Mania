package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒦ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0495 implements InterfaceC0074 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0361 f2305;

    public C0495(C0361 c0361) {
        this.f2305 = c0361;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0074
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1077() {
        String strM1465;
        AbstractC0885 abstractC0885M1491 = AbstractC0885.m1491();
        C0872 c0872 = this.f2305.f1971.f1351;
        C0975 c0975 = ((C0893) abstractC0885M1491).f2611;
        c0975.getClass();
        String strDecrypt = StringFog.decrypt("a2p3lR3PQ0F0\n", "HxgW9nitIiI=\n");
        String strDecrypt2 = StringFog.decrypt("TrCU\n", "eZ6kj3AD2ZU=\n");
        C1015 c1015 = new C1015(c0975);
        c0872.getClass();
        C0833 c0833 = new C0833(strDecrypt, strDecrypt2);
        if (((C0893) AbstractC0885.m1491()).f3418.m1221()) {
            String strM1222 = ((C0893) AbstractC0885.m1491()).f3418.m1222(strDecrypt);
            if (TextUtils.isEmpty(strM1222)) {
                strM1465 = null;
            } else {
                c0833 = new C0800(strDecrypt, strDecrypt2, strM1222);
                strM1465 = c0872.m1465(c0833, c1015);
            }
        } else {
            strM1465 = c0872.m1465(c0833, c1015);
        }
        if (TextUtils.isEmpty(strM1465)) {
            return;
        }
        try {
            c0975.f3676 = new JSONObject(strM1465);
        } catch (JSONException unused) {
        }
    }
}

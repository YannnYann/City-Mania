package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺌ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0930 extends AbstractC0963 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final HashMap f3523 = new HashMap();

    public C0930(HashMap map) {
        for (String str : map.keySet()) {
            this.f3523.put(AbstractC0668.m1416(str), (AbstractC0963) map.get(str));
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        HashMap map = this.f3523;
        HashMap map2 = ((C0930) obj).f3523;
        return map != null ? map.equals(map2) : map2 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final int hashCode() {
        HashMap map = this.f3523;
        if (map != null) {
            return map.hashCode();
        }
        return 0;
    }

    public final String toString() {
        if (this.f3523.isEmpty()) {
            return StringFog.decrypt("n0k=\n", "5DTCn21sSgE=\n");
        }
        StringBuilder sb = new StringBuilder();
        sb.append(StringFog.decrypt("7zw=\n", "lByYROjLPv0=\n"));
        boolean z = true;
        for (String str : this.f3523.keySet()) {
            if (!z) {
                sb.append(StringFog.decrypt("Tiw=\n", "YgxD0MlstXQ=\n"));
            }
            sb.append(StringFog.decrypt("Ug==\n", "cLzaSh+OP/A=\n"));
            sb.append(str);
            sb.append(StringFog.decrypt("V2qm\n", "dVCGHIFIkPI=\n"));
            sb.append(this.f3523.get(str));
            z = false;
        }
        sb.append(StringFog.decrypt("l20=\n", "txAxN71KOHE=\n"));
        return sb.toString();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    /* JADX INFO: renamed from: ﾒ */
    public final C0180 mo1030(C0915 c0915, C0048 c0048) {
        JSONObject jSONObject = new JSONObject();
        for (String str : this.f3523.keySet()) {
            C0180 c0180M1577 = ((AbstractC0963) this.f3523.get(str)).m1577(c0915, c0048);
            try {
                jSONObject.put(str, c0180M1577.f1192);
            } catch (JSONException e) {
                StringBuilder sb = new StringBuilder();
                sb.append(StringFog.decrypt("BMfMb3LGd3s1wdduZ8ZubS7bnnZhinF7YQ==\n", "QbW+AADmBB4=\n"));
                sb.append(c0180M1577.f1192);
                throw new C0480(c0048, c0915, AbstractC0202.m1159("0Jol97mpjebQ\n", "8PxKhZnC6J8=\n", sb, str), e);
            }
        }
        return new C0180(jSONObject);
    }
}

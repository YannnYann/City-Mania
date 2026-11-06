package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒽ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0518 extends AbstractC0559 {
    public C0518(AbstractC0963 abstractC0963, AbstractC0963 abstractC09632) {
        super(abstractC0963, abstractC09632);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    /* JADX INFO: renamed from: ﾒ */
    public final C0180 mo1030(C0915 c0915, C0048 c0048) {
        C0180 c0180M1577 = this.f2503.m1577(c0915, c0048);
        Object obj = this.f2504.m1577(c0915, c0048).f1192;
        if (obj instanceof JSONObject) {
            return new C0180(((JSONObject) obj).opt((String) c0180M1577.f1192));
        }
        if (obj instanceof JSONArray) {
            return new C0180(((JSONArray) obj).opt(c0180M1577.m1143().intValue()));
        }
        if (obj instanceof Map) {
            return new C0180(((Map) obj).get(c0180M1577.f1192));
        }
        if (obj instanceof List) {
            return new C0180(((List) obj).get(c0180M1577.m1143().intValue()));
        }
        if (obj.getClass().isArray()) {
            return new C0180(((Object[]) obj)[c0180M1577.m1143().intValue()]);
        }
        throw new C0480(c0048, c0915, StringFog.decrypt("2U6uyvv2WYz9UKnE/b9SnbxPqcf6tU6T7Ej8wuyiHJ/kTK7A+qVVlfIc+w==\n", "nDzcpYnWPPo=\n") + this + StringFog.decrypt("+q11sGypVoe6tyGrPqVMjP3MCORxvh+Is7cgqm2lT5my5SGhevBQi7fyNrA+\n", "3ZdVxB7QP+k=\n") + obj, null);
    }
}

package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᐪ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0468 extends AbstractC0559 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final AbstractC0963 f2232;

    public C0468(AbstractC0963 abstractC0963, AbstractC0963 abstractC09632, AbstractC0963 abstractC09633) {
        super(abstractC0963, abstractC09632);
        this.f2232 = abstractC09633;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0559, com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        AbstractC0963 abstractC0963 = this.f2232;
        AbstractC0963 abstractC09632 = ((C0468) obj).f2232;
        return abstractC0963 != null ? abstractC0963.equals(abstractC09632) : abstractC09632 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0559, com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final int hashCode() {
        int iHashCode = super.hashCode() * 31;
        AbstractC0963 abstractC0963 = this.f2232;
        return iHashCode + (abstractC0963 != null ? abstractC0963.hashCode() : 0);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0559
    public final String toString() {
        return super.toString() + StringFog.decrypt("d7Ur\n", "V4gLx88vndo=\n") + this.f2232.toString();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    /* JADX INFO: renamed from: ﾒ */
    public final C0180 mo1030(C0915 c0915, C0048 c0048) {
        C0180 c0180M1577 = this.f2503.m1577(c0915, c0048);
        C0180 c0180M15772 = this.f2232.m1577(c0915, c0048);
        try {
            Object obj = this.f2504.m1577(c0915, c0048).f1192;
            if (obj instanceof JSONObject) {
                ((JSONObject) obj).put((String) c0180M1577.f1192, c0180M15772.f1192);
                return c0180M15772;
            }
            if (obj instanceof JSONArray) {
                ((JSONArray) obj).put(c0180M1577.m1143().intValue(), c0180M15772.f1192);
                return c0180M15772;
            }
            if (obj instanceof Map) {
                ((Map) obj).put(c0180M1577.f1192, c0180M15772.f1192);
                return c0180M15772;
            }
            if (obj instanceof List) {
                ((List) obj).set(c0180M1577.m1143().intValue(), c0180M15772.f1192);
                return c0180M15772;
            }
            if (obj.getClass().isArray()) {
                ((Object[]) obj)[c0180M1577.m1143().intValue()] = c0180M15772.f1192;
                return c0180M15772;
            }
            throw new C0480(c0048, c0915, StringFog.decrypt("xGywcZXP+lzgcrd/k4bxTaFtt3yUjO1D8WribpKbv0/5brB7lJz2Re8+5Q==\n", "gR7CHufvnyo=\n") + this + StringFog.decrypt("gX0J2xeC2EDBZ13ARY7CS4YcdI8KlZFPyGdcwRaOwV7JNV3KAdveTMwiSttF\n", "pkcpr2X7sS4=\n") + obj, null);
        } catch (JSONException e) {
            StringBuilder sb = new StringBuilder();
            sb.append(StringFog.decrypt("/GnpmCQfztfYd+6WIlbFxplo7pUlXNnIyW+7hyNLi8TBa+mSJUzCztc7vA==\n", "uRub91Y/q6E=\n"));
            sb.append(this);
            throw new C0480(c0048, c0915, AbstractC0829.m1456("Lw==\n", "CAhgZP8KrY8=\n", sb), e);
        }
    }
}

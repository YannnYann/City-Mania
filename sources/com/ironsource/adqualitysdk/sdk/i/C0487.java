package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒎ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0487 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0485 f2289;

    public C0487(C0485 c0485) {
        this.f2289 = c0485;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0937 c0937 = this.f2289.f2285;
        C0525 c0525 = c0937.f3544;
        if (c0525.f2375 == null) {
            c0525.f2375 = new C3486h0(c0525.f2383.optJSONObject(C0525.f2371));
        }
        C3486h0 c3486h0 = c0525.f2375;
        if (c3486h0 != null) {
            synchronized (c0937) {
                c0937.f3538 = c3486h0;
            }
            if (c0937.f3541.mo1078()) {
                C3492k0.f283 = c3486h0;
            }
        }
        c0937.f3544.m1298().m1541(StringFog.decrypt("HCNQMpUJdZ0bJkM+\n", "ckIkW+NsN+8=\n"), c0937.f3541);
        Iterator it = c0937.f3544.m1297().keySet().iterator();
        while (it.hasNext()) {
            C0663 c0663 = (C0663) c0937.f3544.m1297().get((String) it.next());
            if (!c0663.f2707) {
                c0937.f3539.add(new C0048(c0937, c0937.f3542, c0937.f3541, c0937.m1554(c0663), c0937.f3544.m1298()));
            }
        }
        c0937.m1555();
        Iterator it2 = c0937.m1553().iterator();
        while (it2.hasNext()) {
            ((C0048) it2.next()).m1059();
        }
        C0235 c0235 = this.f2289.f2282.f1898;
        if (c0235 != null) {
            AbstractC0272.m1210(new C0265(c0235, this.f2289.f2284, EnumC0299.f1677));
        }
        AbstractC0182.m1154(StringFog.decrypt("HTFI7iIM9UgsE0fuJgjkVQ==\n", "Xl4mgEdvgSc=\n"), this.f2289.f2285.f3544.f2380 + StringFog.decrypt("wy6rhXNTv5OMP+SYaFW/gpA+op5xWqXHiiOtn3RXsI6ZKKA=\n", "403E6x023Oc=\n"));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1287(Throwable th) {
        try {
            ((JSONObject) C0324.m1226(this.f2289.f2282).get(this.f2289.f2285.f3544.f2381)).put(StringFog.decrypt("16MJyA==\n", "vs1gvAXFxkk=\n"), false);
        } catch (JSONException e) {
            String strDecrypt = StringFog.decrypt("Ib9Fn4KMDegQnUqfhogc9Q==\n", "YtAr8efveYc=\n");
            AbstractC0182.m1156(strDecrypt, strDecrypt, StringFog.decrypt("HfQeo7QOrxAs8gWioQ61GzHyTLipDr8aNugJr7JBrlUu4x6/r0GyVTL1A6I=\n", "WIZszMYu3HU=\n"), e, null, false);
        }
        C0235 c0235 = this.f2289.f2282.f1898;
        if (c0235 != null) {
            AbstractC0272.m1210(new C0277(c0235, this.f2289.f2284, EnumC0307.f1829));
        }
        String strDecrypt2 = StringFog.decrypt("v5XOZqng/5uOt8FmreTuhg==\n", "/PqgCMyDi/Q=\n");
        StringBuilder sb = new StringBuilder();
        sb.append(StringFog.decrypt("A8EdBCgPUMEvxwYKNkZDxijUTw==\n", "RrNva1ovOa8=\n"));
        sb.append(this.f2289.f2285.f3544.f2380);
        AbstractC1003.m1593(strDecrypt2, AbstractC0829.m1456("Pt7C+cHvmL1xzw==\n", "Hr2tl6+K+8k=\n", sb), th, true, true, true);
        AbstractC0182.m1149(StringFog.decrypt("C6/ZDIv3M9QzmMwy\n", "SsuIeeqbWqA=\n"), StringFog.decrypt("lRD1t9MYwcj0Ebax1Bjc37BeorrIBsuavRC8psgLwtOuF7u1gSP9+7AvoLPNA9rD9C2RmYE=\n", "1H7V0qFqrro=\n") + this.f2289.f2285.f3544.f2380 + StringFog.decrypt("iP9tByG+e0bH7iw=\n", "qJwCaU/bGDI=\n"));
    }
}

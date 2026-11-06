package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ڒ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0339 implements InterfaceC0074 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0332 f1931;

    public C0339(C0332 c0332) {
        this.f1931 = c0332;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0074
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1077() {
        HashMap map;
        C0465.f2217 = AbstractC0885.m1491().mo1499();
        AbstractC0727.f2977 = AbstractC0885.m1491().mo1500();
        this.f1931.f1919.f1899 = AbstractC0885.m1491().mo1506();
        AbstractC0182.m1154(StringFog.decrypt("8Qp++pqwrFDAKHH6nrS9TQ==\n", "smUQlP/T2D8=\n"), StringFog.decrypt("41iKaB0VjQfAEZBnFg2NCMtYg2wbWYcGyV+cagsWlho=\n", "pzH5CX955Gk=\n"));
        C0324 c0324 = this.f1931.f1919;
        c0324.getClass();
        ArrayList<C0937> arrayList = new ArrayList();
        for (C0937 c0937 : c0324.f1905 != null ? new ArrayList(c0324.f1905) : new ArrayList()) {
            if (c0324.m1241(c0937.f3544.f2381)) {
                arrayList.add(c0937);
            }
        }
        for (C0937 c09372 : arrayList) {
            String str = C0324.f1893;
            StringBuilder sb = new StringBuilder();
            sb.append(StringFog.decrypt("V4CKEsI2wHZ0yQ==\n", "E+n5c6BaqRg=\n"));
            sb.append(c09372.f3544.f2380);
            AbstractC0182.m1157(str, str, AbstractC0829.m1456("jhgDAdBe0zHBCQ==\n", "rntsb747sEU=\n", sb), true);
            String str2 = c09372.f3544.f2381;
            synchronized (c0324) {
                map = c0324.f1903;
            }
            c0324.m1240(str2, (JSONObject) map.get(str2));
            AbstractC0272.m1214(new C0396(c09372));
            ((ArrayList) c0324.m1233()).remove(c09372);
        }
    }
}

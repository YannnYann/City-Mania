package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.ISAdQualityInitError;
import com.ironsource.adqualitysdk.sdk.ISAdQualityInitListener;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ٵ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0324 {

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public final C0964 f1894;

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public final C0872 f1895;

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public final C0406 f1896;

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public final String f1897;

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public volatile C0235 f1898;

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public static final String f1893 = StringFog.decrypt("xcKRuQDAro/04J65BMS/kg==\n", "hq3/12Wj2uA=\n");

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public static final String f1892 = StringFog.decrypt("L0HXuc5XzQ==\n", "ag+W+4ISibU=\n");

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AtomicBoolean f1907 = new AtomicBoolean(false);

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public boolean f1906 = false;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public volatile ArrayList f1905 = new ArrayList();

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final ArrayList f1904 = new ArrayList();

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final HashMap f1903 = new HashMap();

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final HashMap f1902 = new HashMap();

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final C0691 f1901 = new C0691();

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public C0915 f1900 = C0915.m1537();

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public HashMap f1899 = new HashMap();

    static {
        StringFog.decrypt("4dmKNUAxw6Q=\n", "pZDZdAJ9huA=\n");
    }

    public C0324(C0872 c0872, C0622 c0622, String str, C0235 c0235, C0406 c0406) {
        this.f1895 = c0872;
        C0964 c0964 = new C0964(AbstractC0272.f1609, c0622);
        this.f1894 = c0964;
        AbstractC1003.f3805 = new WeakReference(c0964);
        c0964.f3643.add(new C0393(this));
        this.f1897 = str;
        this.f1898 = c0235;
        this.f1896 = c0406;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static HashMap m1223(C0324 c0324) {
        HashMap map;
        synchronized (c0324) {
            map = c0324.f1902;
        }
        return map;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static List m1224(C0324 c0324) {
        ArrayList arrayList;
        synchronized (c0324) {
            arrayList = c0324.f1905;
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static ArrayList m1225(C0324 c0324) {
        ArrayList arrayList;
        synchronized (c0324) {
            arrayList = c0324.f1904;
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static HashMap m1226(C0324 c0324) {
        HashMap map;
        synchronized (c0324) {
            map = c0324.f1903;
        }
        return map;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1229(C0324 c0324) {
        synchronized (c0324) {
            try {
                C0465.m1273();
                C0235 c0235 = c0324.f1898;
                if (c0235 == null) {
                    return;
                }
                if (c0235.m1197(c0324.m1232())) {
                    ((C0406) c0324.m1236()).adQualitySdkInitSuccess();
                } else {
                    ((C0406) c0324.m1236()).adQualitySdkInitFailed(ISAdQualityInitError.CONNECTOR_LOAD_TIMEOUT, StringFog.decrypt("8K5yqHZOdBLdtT25agBtEsykcqd2QX4S2uEhvnpDfwTNpyendVk=\n", "vsFSyxkgGnc=\n"));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final synchronized boolean m1230() {
        return AbstractC0885.m1491().mo1492();
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final synchronized void m1231() {
        try {
            if (this.f1907.getAndSet(true)) {
                return;
            }
            C0235 c0235 = this.f1898;
            AbstractC0272.m1214(new C0374(this));
            if (c0235 != null) {
                AbstractC0272.m1210(new C0257(c0235));
            }
            this.f1898 = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0015  */
    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized boolean m1232() {
        /*
            r1 = this;
            monitor-enter(r1)
            com.ironsource.adqualitysdk.sdk.i.ﭩ r0 = com.ironsource.adqualitysdk.sdk.i.AbstractC0885.m1491()     // Catch: java.lang.Throwable -> L13
            boolean r0 = r0.mo1494()     // Catch: java.lang.Throwable -> L13
            if (r0 == 0) goto L15
            boolean r0 = r1.m1230()     // Catch: java.lang.Throwable -> L13
            if (r0 == 0) goto L15
            r0 = 1
            goto L16
        L13:
            r0 = move-exception
            goto L18
        L15:
            r0 = 0
        L16:
            monitor-exit(r1)
            return r0
        L18:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L13
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.C0324.m1232():boolean");
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final synchronized List m1233() {
        return this.f1905;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final JSONObject m1234() {
        HashMap map;
        try {
            synchronized (this) {
                map = this.f1903;
            }
            return m1228(map);
        } catch (JSONException e) {
            String str = f1893;
            AbstractC0182.m1156(str, str, StringFog.decrypt("1RMxhoo1ecn0CC2O2HZ3w/4EIJ2XZzjb9RMwgJd7aw==\n", "kGFD6fgVGK0=\n"), e, null, false);
            return new JSONObject();
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized HashMap m1235() {
        return this.f1902;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static JSONObject m1227(C0324 c0324, C0937 c0937) {
        c0324.getClass();
        String strM1185 = c0937.f3541.m1185();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AbstractC0047.f583, strM1185);
        } catch (JSONException e) {
            String str = f1893;
            AbstractC0182.m1156(str, str, StringFog.decrypt("CNBqKkozGh0ow2wsVnRZDCLMdiBbZxYdbdR9N0t6FgFtyGsqVg==\n", "TaIYRTgTeW8=\n"), e, null, false);
        }
        try {
            jSONObject.put(AbstractC0047.f584, c0937.f3544.f2379);
        } catch (JSONException e2) {
            String str2 = f1893;
            AbstractC0182.m1156(str2, str2, StringFog.decrypt("NI4MxXL5uOgUnQrDbr77+R6SEM9jrbToUYob2HOwtPRRlg3Fbg==\n", "cfx+qgDZ25o=\n"), e2, null, false);
        }
        return jSONObject;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1238(Context context, LinkedHashMap linkedHashMap, C0342 c0342) {
        boolean zMo1492;
        if (linkedHashMap.size() > 0) {
            String str = (String) linkedHashMap.keySet().iterator().next();
            List list = (List) linkedHashMap.remove(str);
            String strMo1011 = (list == null || list.isEmpty() || list.get(0) == null) ? null : ((AbstractC0248) list.get(0)).mo1011();
            if (strMo1011 != null) {
                C0235 c0235 = this.f1898;
                if (c0235 != null) {
                    c0235.f1540.put(strMo1011, new C0286(strMo1011));
                }
                AbstractC0272.m1212(new C0503(this, strMo1011, context, str, list, linkedHashMap, c0342));
                synchronized (this) {
                    zMo1492 = AbstractC0885.m1491().mo1492();
                }
                if (zMo1492) {
                    return;
                }
                m1238(context, linkedHashMap, c0342);
                return;
            }
            m1238(context, linkedHashMap, c0342);
            return;
        }
        AbstractC0272.m1214(new C0501(c0342));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1240(String str, JSONObject jSONObject) {
        C0235 c0235 = this.f1898;
        if (c0235 != null) {
            AbstractC0272.m1210(new C0265(c0235, str, EnumC0299.f1676));
        }
        if (jSONObject != null) {
            try {
                jSONObject.put(StringFog.decrypt("8Gii\n", "lAvRnZ3r2Ks=\n"), true);
            } catch (JSONException unused) {
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1237(Context context, String str, String str2, AbstractC0248 abstractC0248, AbstractRunnableC0689 abstractRunnableC0689) {
        HashMap map;
        int iMo1509;
        long j;
        AbstractC0703 c0795 = null;
        C0475 c0475 = abstractRunnableC0689 == null ? null : new C0475(new AtomicBoolean(false), abstractRunnableC0689);
        abstractC0248.getClass();
        String strMo1510 = AbstractC0885.m1491().mo1510();
        if (((C0893) AbstractC0885.m1491()).f3418.m1221()) {
            String strM1222 = ((C0893) AbstractC0885.m1491()).f3418.m1222(abstractC0248.mo1193());
            if (!TextUtils.isEmpty(strM1222)) {
                c0795 = new C0788(StringFog.decrypt("VvUmJIg3J95H6Wc=\n", "NZpISu1UU7E=\n") + abstractC0248.mo1193(), strMo1510, strM1222);
            }
        } else {
            c0795 = new C0795(StringFog.decrypt("HNJS9Iah0TgNzhM=\n", "f708muPCpVc=\n") + abstractC0248.mo1193(), strMo1510);
        }
        AbstractC0703 abstractC0703 = c0795;
        if (abstractC0703 != null) {
            AbstractC0208 abstractC0208Mo1010 = abstractC0248.mo1010();
            String strM1185 = abstractC0208Mo1010.m1185();
            synchronized (this) {
                map = this.f1903;
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(AbstractC0047.f583, strM1185);
            } catch (JSONException e) {
                String str3 = f1893;
                AbstractC0182.m1156(str3, str3, StringFog.decrypt("CNBqKkozGh0ow2wsVnRZDCLMdiBbZxYdbdR9N0t6FgFtyGsqVg==\n", "TaIYRTgTeW8=\n"), e, null, false);
            }
            map.put(str2, jSONObject);
            C0235 c0235 = this.f1898;
            if (c0235 != null) {
                AbstractC0272.m1210(new C0265(c0235, str2, EnumC0299.f1679));
            }
            C0872 c0872 = this.f1895;
            c0872.getClass();
            C0469 c0469 = new C0469(this, context, this.f1895.m1465(abstractC0703, new C0472(this, c0872.f3349.m1448(C0872.m1462(abstractC0703).mo1425().replace(StringFog.decrypt("yw==\n", "5Nfc4POVeY0=\n"), StringFog.decrypt("GQ==\n", "N9KS+cTCU2o=\n"))) != null, str2, context, abstractC0208Mo1010, str, abstractC0248, c0475)), abstractC0208Mo1010, str, str2, abstractC0248, c0475);
            if (AbstractC0885.m1491().mo1495()) {
                iMo1509 = AbstractC0885.m1491().mo1509();
            } else {
                C0872 c08722 = this.f1895;
                c08722.getClass();
                if (c08722.f3349.m1448(C0872.m1462(abstractC0703).mo1425().replace(StringFog.decrypt("yw==\n", "5Nfc4POVeY0=\n"), StringFog.decrypt("GQ==\n", "N9KS+cTCU2o=\n"))) == null) {
                    iMo1509 = AbstractC0885.m1491().mo1509();
                } else {
                    j = 0;
                    AbstractC0272.m1215(c0469, j);
                    return;
                }
            }
            j = iMo1509;
            AbstractC0272.m1215(c0469, j);
            return;
        }
        AbstractC0272.m1214(c0475);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final boolean m1241(String str) {
        return this.f1899.containsKey(str) && ((C0512) this.f1899.get(str)).m1294(this.f1897);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static JSONObject m1228(HashMap map) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (String str : new HashSet(map.keySet())) {
            jSONObject2.put(str.toLowerCase(), (JSONObject) map.get(str));
        }
        jSONObject.put(StringFog.decrypt("+1KdVg==\n", "jSHzJfrqZrk=\n"), jSONObject2);
        return jSONObject;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1239(String str, List list) {
        ArrayList arrayList;
        if (this.f1907.get()) {
            return;
        }
        if (this.f1905 != null) {
            arrayList = new ArrayList(this.f1905);
        } else {
            arrayList = new ArrayList();
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            for (C0048 c0048 : ((C0937) it.next()).m1553()) {
                c0048.getClass();
                String str2 = C0048.f639 + str;
                AbstractC0272.m1211(new C0804(c0048, str2, list));
                AbstractC0272.m1210(new C0683(c0048, str2, list));
                try {
                    AbstractC0272.m1212(new C0632(new C0659(c0048, str2, list)));
                } catch (Throwable unused) {
                }
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized ISAdQualityInitListener m1236() {
        return this.f1896;
    }
}

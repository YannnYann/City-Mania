package com.ironsource.adqualitysdk.sdk.i;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ь, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0235 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final C0427 f1538;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public C0967 f1539;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final HashMap f1540 = new HashMap();

    public C0235(C0427 c0427) {
        this.f1538 = c0427;
        new Handler(Looper.getMainLooper());
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x004a, code lost:
    
        r4 = r3.f1540;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004c, code lost:
    
        if (r4 == null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0052, code lost:
    
        if (r4.isEmpty() == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0055, code lost:
    
        r4 = r4.keySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0061, code lost:
    
        if (r4.hasNext() == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0063, code lost:
    
        r1 = (java.lang.String) r4.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006d, code lost:
    
        if (r0.contains(r1) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0070, code lost:
    
        r1 = m1195(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0074, code lost:
    
        if (r1 == null) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007a, code lost:
    
        if (r1.f1638 != com.ironsource.adqualitysdk.sdk.i.EnumC0299.f1677) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007c, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007e, code lost:
    
        r4 = false;
     */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized boolean m1197(boolean r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L22
            r0.<init>()     // Catch: java.lang.Throwable -> L22
            if (r4 == 0) goto L24
            java.util.List r4 = com.ironsource.adqualitysdk.sdk.i.AbstractC0856.f3314     // Catch: java.lang.Throwable -> L22
            java.util.Iterator r4 = r4.iterator()     // Catch: java.lang.Throwable -> L22
        Le:
            boolean r1 = r4.hasNext()     // Catch: java.lang.Throwable -> L22
            if (r1 == 0) goto L2d
            java.lang.Object r1 = r4.next()     // Catch: java.lang.Throwable -> L22
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L22
            java.lang.String r1 = r1.toLowerCase()     // Catch: java.lang.Throwable -> L22
            r0.add(r1)     // Catch: java.lang.Throwable -> L22
            goto Le
        L22:
            r4 = move-exception
            goto L81
        L24:
            java.lang.String r4 = com.ironsource.adqualitysdk.sdk.i.AbstractC0856.f3315     // Catch: java.lang.Throwable -> L22
            java.lang.String r4 = r4.toLowerCase()     // Catch: java.lang.Throwable -> L22
            r0.add(r4)     // Catch: java.lang.Throwable -> L22
        L2d:
            java.util.Iterator r4 = r0.iterator()     // Catch: java.lang.Throwable -> L22
        L31:
            boolean r1 = r4.hasNext()     // Catch: java.lang.Throwable -> L22
            if (r1 == 0) goto L4a
            java.lang.Object r1 = r4.next()     // Catch: java.lang.Throwable -> L22
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L22
            com.ironsource.adqualitysdk.sdk.i.ח r1 = r3.m1195(r1)     // Catch: java.lang.Throwable -> L22
            if (r1 == 0) goto L7e
            com.ironsource.adqualitysdk.sdk.i.צ r1 = r1.f1638     // Catch: java.lang.Throwable -> L22
            com.ironsource.adqualitysdk.sdk.i.צ r2 = com.ironsource.adqualitysdk.sdk.i.EnumC0299.f1677     // Catch: java.lang.Throwable -> L22
            if (r1 == r2) goto L31
            goto L7e
        L4a:
            java.util.HashMap r4 = r3.f1540     // Catch: java.lang.Throwable -> L22
            if (r4 == 0) goto L7e
            boolean r1 = r4.isEmpty()     // Catch: java.lang.Throwable -> L22
            if (r1 == 0) goto L55
            goto L7e
        L55:
            java.util.Set r4 = r4.keySet()     // Catch: java.lang.Throwable -> L22
            java.util.Iterator r4 = r4.iterator()     // Catch: java.lang.Throwable -> L22
        L5d:
            boolean r1 = r4.hasNext()     // Catch: java.lang.Throwable -> L22
            if (r1 == 0) goto L7e
            java.lang.Object r1 = r4.next()     // Catch: java.lang.Throwable -> L22
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L22
            boolean r2 = r0.contains(r1)     // Catch: java.lang.Throwable -> L22
            if (r2 == 0) goto L70
            goto L5d
        L70:
            com.ironsource.adqualitysdk.sdk.i.ח r1 = r3.m1195(r1)     // Catch: java.lang.Throwable -> L22
            if (r1 == 0) goto L5d
            com.ironsource.adqualitysdk.sdk.i.צ r1 = r1.f1638     // Catch: java.lang.Throwable -> L22
            com.ironsource.adqualitysdk.sdk.i.צ r2 = com.ironsource.adqualitysdk.sdk.i.EnumC0299.f1677     // Catch: java.lang.Throwable -> L22
            if (r1 != r2) goto L5d
            r4 = 1
            goto L7f
        L7e:
            r4 = 0
        L7f:
            monitor-exit(r3)
            return r4
        L81:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L22
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.C0235.m1197(boolean):boolean");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1194(C0235 c0235, C0286 c0286) {
        EnumC0299 enumC0299;
        ArrayList arrayList;
        C0967 c0967 = c0235.f1539;
        if (c0967 == null || (enumC0299 = c0286.f1638) == EnumC0299.f1679 || enumC0299 == EnumC0299.f1678 || enumC0299 == EnumC0299.f1680 || c0967.f3660) {
            return;
        }
        String str = AbstractC0061.f813;
        c0967.f3656 = SystemClock.elapsedRealtime();
        c0967.f3655 = AbstractC0077.m1082(c0967.f3663.f1562);
        if (c0967.f3654 && !c0967.f3652) {
            Handler handler = c0967.f3662;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            Handler handler2 = c0967.f3662;
            if (handler2 != null) {
                handler2.postDelayed(new C0992(c0967), c0967.f3653);
            }
        }
        if (c0967.f3659) {
            HashMap map = c0967.f3665.f1572.f1540;
            if (map != null && !map.isEmpty()) {
                arrayList = new ArrayList(map.values());
            } else {
                arrayList = new ArrayList();
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                EnumC0299 enumC02992 = ((C0286) it.next()).f1638;
                if (enumC02992 == EnumC0299.f1679 || enumC02992 == EnumC0299.f1678 || enumC02992 == EnumC0299.f1680) {
                    return;
                }
            }
            c0967.m1580(false);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final JSONObject m1196() throws JSONException {
        ArrayList<C0286> arrayList;
        JSONObject jSONObject = new JSONObject();
        HashMap map = this.f1540;
        if (map != null && !map.isEmpty()) {
            arrayList = new ArrayList(map.values());
        } else {
            arrayList = new ArrayList();
        }
        for (C0286 c0286 : arrayList) {
            String str = c0286.f1645;
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put(AbstractC0047.f584, c0286.f1643);
                if (c0286.f1636) {
                    jSONObject2.put(StringFog.decrypt("fAoVoX25\n", "H2t2yRjdsrg=\n"), true);
                }
                jSONObject2.put(StringFog.decrypt("7H2YZyXo\n", "nwn5E1CbIUA=\n"), c0286.f1638.name());
                if (c0286.f1637 != EnumC0307.f1832) {
                    jSONObject2.put(StringFog.decrypt("oYwVmx8=\n", "xP5n9G2iGoA=\n"), c0286.f1638 == EnumC0299.f1675 ? c0286.f1637.name() : null);
                    EnumC0307 enumC0307 = c0286.f1637;
                    if (enumC0307 == EnumC0307.f1830 || enumC0307 == EnumC0307.f1831) {
                        jSONObject2.put(AbstractC0047.f583, c0286.f1642);
                        if (c0286.f1637 == EnumC0307.f1831) {
                            jSONObject2.put(StringFog.decrypt("Inxmi5pp0Hw=\n", "UBkX/+oftQ4=\n"), c0286.f1639);
                        }
                    }
                }
                if (c0286.f1634 > 0 && !c0286.f1636) {
                    jSONObject2.put(StringFog.decrypt("JAA=\n", "QnSlQX3WIX4=\n"), c0286.f1634 - c0286.f1635);
                }
                if (c0286.f1633 > 0) {
                    jSONObject2.put(StringFog.decrypt("mD4=\n", "8UoWrGYc1X8=\n"), c0286.f1633 - c0286.f1634);
                }
            } catch (JSONException unused) {
            }
            jSONObject.put(str, jSONObject2);
        }
        return jSONObject;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0286 m1195(String str) {
        HashMap map = this.f1540;
        if (map != null) {
            return (C0286) map.get(str);
        }
        return null;
    }
}

package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᘦ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0622 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public final C0448 f2621;

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public final String f2622;

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public C0514 f2623;

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public final C1032 f2625;

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public C0650 f2626;

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public final Context f2627;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public boolean f2630;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public boolean f2631;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final Handler f2632;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final C0606 f2633;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final C0931 f2634;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final C0785 f2635;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public boolean f2636;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0143 f2637;

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f2620 = StringFog.decrypt("4D+ieNLfQMXS\n", "oVHDFKurKaY=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f2619 = StringFog.decrypt("smH3dxHxumOtPf1iWve5Lqd993gN57JjtQ==\n", "xhOWFHST2wA=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f2618 = StringFog.decrypt("QSfw4gR2tE5XK+3qHDqtXFwp8/YcfvpO\n", "Mkifj2gXmT0=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f2617 = StringFog.decrypt("JR1fL8xSLe4FFw==\n", "THMrAb83Xp0=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f2616 = StringFog.decrypt("lzAwqZNzmy2LKy+snEHcOg==\n", "5ERCwP0UtV4=\n");

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final ArrayList f2629 = new ArrayList();

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public final ArrayList f2628 = new ArrayList();

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public final Thread.UncaughtExceptionHandler f2624 = Thread.getDefaultUncaughtExceptionHandler();

    public C0622(Context context, r rVar, C0143 c0143, boolean z, String str, C0448 c0448) {
        this.f2621 = c0448;
        Thread.setDefaultUncaughtExceptionHandler(new C0746(this));
        this.f2637 = c0143;
        this.f2627 = context;
        C0773 c0773 = new C0773(context, StringFog.decrypt("SxnlOZ72sq5URe8s1fCx414F5TaC4LquTA==\n", "P2uEWvuU080=\n"), StringFog.decrypt("1Vx5ZvbjodjDUGRu7q+4yshSenLu6+/Y\n", "pjMWC5qCjKs=\n"));
        this.f2634 = new C0931(c0773, StringFog.decrypt("8DfL1yq1EWA=\n", "uGCOoU/bZRM=\n"), StringFog.decrypt("sdMkVH+r\n", "1KVBOguFAKg=\n"));
        String str2 = f2617;
        String strM1448 = c0773.m1448(str2);
        int i = !TextUtils.isEmpty(strM1448) ? Integer.parseInt(strM1448) + 1 : 1;
        c0773.m1449(str2, "" + i);
        String str3 = f2616;
        String strM14482 = c0773.m1448(str3);
        if (TextUtils.isEmpty(strM14482)) {
            strM14482 = UUID.randomUUID().toString();
            c0773.m1449(str3, strM14482);
        }
        String strM14483 = ((C0893) AbstractC0885.m1491()).f3423.m1448(C0893.f3400);
        this.f2633 = new C0606(context, rVar, i, strM14482, !TextUtils.isEmpty(strM14483) ? Long.parseLong(strM14483) : 0L);
        this.f2635 = new C0785(context);
        this.f2636 = false;
        HandlerThread handlerThread = new HandlerThread(StringFog.decrypt("RaczbV7kfxBloyN2VMY=\n", "BsZQBTu0DX8=\n"));
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        this.f2632 = handler;
        this.f2625 = new C1032(i);
        this.f2631 = !z;
        this.f2622 = str;
        synchronized (this) {
            handler.removeCallbacksAndMessages(null);
            handler.postDelayed(new C0821(this), 0);
        }
        m1394();
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m1388(C0622 c0622) {
        synchronized (c0622) {
            c0622.f2630 = false;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1389(C0622 c0622) {
        synchronized (c0622) {
            if (c0622.m1397() && !TextUtils.isEmpty(c0622.f2633.f1195.m1028()) && !c0622.m1399()) {
                c0622.m1393();
                AbstractC0182.m1154(f2620, StringFog.decrypt("+FeQTJXtrDPORJtGiPDrddldkwif4qh7zg==\n", "qzL+KPyDyxM=\n"));
                C0931 c0931 = c0622.f2634;
                int iM1365 = c0622.m1400().m1365();
                C0811 c0811 = new C0811(c0622);
                c0931.getClass();
                C0773.m1446().post(new C0988(c0931, iM1365, c0811));
            }
        }
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final void m1391() {
        C0650 c0650 = this.f2626;
        if (c0650 != null) {
            C0767 c0767 = this.f2635.f3122;
            synchronized (c0767) {
                c0767.f3096.remove(c0650);
            }
        }
        this.f2623.m1295();
        this.f2623 = null;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final synchronized void m1392() {
        try {
            this.f2636 = false;
            Handler handler = this.f2632;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            C0785 c0785 = this.f2635;
            C0767 c0767 = c0785.f3122;
            c0767.f3098.unregisterReceiver(c0767);
            c0785.f3121 = true;
            m1391();
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final synchronized void m1393() {
        this.f2630 = true;
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final void m1394() {
        C0650 c0650 = new C0650(this);
        this.f2626 = c0650;
        C0767 c0767 = this.f2635.f3122;
        synchronized (c0767) {
            c0767.f3096.add(c0650);
        }
        this.f2623 = new C0514(new C0641(this));
        AbstractC1013.m1594().m1596(new C0639(this));
        AbstractC0885 abstractC0885M1491 = AbstractC0885.m1491();
        C0631 c0631 = new C0631(this);
        C0893 c0893 = (C0893) abstractC0885M1491;
        Handler handler = c0893.f3421;
        if (handler != null) {
            handler.post(new C0902(c0893, c0631));
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final void m1395() {
        synchronized (this) {
            try {
                Handler handler = this.f2632;
                if (handler != null) {
                    handler.removeCallbacksAndMessages(null);
                }
                m1406(true);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m1396() {
        try {
            this.f2631 = true;
            AbstractC0272.m1211(new C0739(this));
            m1395();
        } catch (Exception e) {
            AbstractC1003.m1592(f2620, StringFog.decrypt("pKXIWoCykUvBuNR0guKsSqO22V6V4JdQj7M=\n", "4de6NfKS+CU=\n"), (Throwable) e, false);
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final synchronized boolean m1397() {
        return this.f2636;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized boolean m1399() {
        return this.f2630;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m1398(JSONObject jSONObject) {
        ArrayList arrayList;
        if (C0204.m1165().m1176()) {
            synchronized (this) {
                arrayList = new ArrayList(this.f2629);
            }
            AbstractC0272.m1210(new C0749(arrayList, jSONObject));
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1390(C0622 c0622, ArrayList arrayList, C0817 c0817) {
        JSONObject jSONObject;
        c0622.getClass();
        JSONArray jSONArray = new JSONArray();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            C0619 c0619 = (C0619) it.next();
            synchronized (c0619) {
                jSONObject = c0619.f2613.f3802;
            }
            if (!jSONObject.has(StringFog.decrypt("g2AO\n", "5xR9pn43a98=\n"))) {
                try {
                    jSONObject.put(StringFog.decrypt("buGK\n", "CpX5WjU+T9s=\n"), jSONObject.optLong(AbstractC0047.f625));
                } catch (JSONException unused) {
                }
            }
            if (c0622.f2625.m1608(jSONObject)) {
                c0622.f2634.m1548(c0619.f2613, null);
            }
            jSONArray.put(jSONObject);
        }
        C0606 c0606 = c0622.f2633;
        c0606.f2573.post(new C0607(c0606, c0622.f2635.f3122.m1445(), jSONArray, new C0764(c0622, jSONArray, arrayList, c0817)));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m1402(C0446 c0446) {
        this.f2629.add(c0446);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m1401(C0432 c0432) {
        this.f2628.add(c0432);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1403(String str, JSONObject jSONObject) {
        m1404(str, jSONObject, null, null);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1404(String str, JSONObject jSONObject, JSONObject jSONObject2, C0977 c0977) {
        boolean z;
        String str2 = f2620;
        AbstractC0182.m1155(str2, str2, AbstractC0829.m1456("5ZMtqM1tf6axliX8zCN8sf8=\n", "xeRE3KVNGt4=\n", AbstractC0594.m1349("TYDjdpFKkCl20ul6kUmQOG+X9GvFDQ==\n", "GfKaH/8tsF0=\n", new StringBuilder(), str)), jSONObject, true);
        try {
            if (m1400().m1367().contains(str)) {
                AbstractC0182.m1154(str2, StringFog.decrypt("DaDUaBXujMsqocdoA/2HwTfv1yES48LBIqLFckY=\n", "Q8+gSGaL4q8=\n") + str + StringFog.decrypt("Carl1g7L9DBM5qDMFIfyMVv05dxE\n", "KYKArm2ngVQ=\n"));
                return;
            }
            AbstractC0182.m1154(str2, StringFog.decrypt("8rFqegB63AHJ42B2AHncENCmfWdOapUBzuN9cgN4xlU=\n", "psMTE24d/HU=\n") + str);
            C0606 c0606 = this.f2633;
            C0767 c0767 = this.f2635.f3122;
            synchronized (c0767) {
                z = c0767.f3097;
            }
            c0606.m1369(str, jSONObject, jSONObject2, z, new C0730(this, c0977));
        } catch (Exception e) {
            AbstractC1003.m1593(f2620, StringFog.decrypt("KhFAzH8eectPEFfNaXtmwAEX\n", "b2Myow0+EKU=\n"), e, false, false, true);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized C0601 m1400() {
        return ((C0893) AbstractC0885.m1491()).f3419;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m1406(boolean z) {
        try {
            if (z) {
                this.f2632.removeCallbacksAndMessages(null);
                this.f2632.postDelayed(new C0821(this), 0);
            } else {
                C0931 c0931 = this.f2634;
                C0623 c0623 = new C0623(this);
                c0931.getClass();
                C0773.m1446().post(new C0960(c0931, c0623));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1405(JSONObject jSONObject) {
        JSONObject jSONObject2;
        C0601 c0601M1400 = m1400();
        C0975 c0975 = c0601M1400.f2611;
        JSONObject jSONObject3 = c0975.f3676;
        String str = c0975.f3678;
        List arrayList = new ArrayList();
        String str2 = AbstractC0962.f3633;
        JSONArray jSONArrayOptJSONArray = jSONObject3.optJSONArray(str);
        if (jSONArrayOptJSONArray != null) {
            arrayList = AbstractC0962.m1571(jSONArrayOptJSONArray);
        }
        synchronized (c0601M1400) {
            jSONObject2 = c0601M1400.f2612;
        }
        String strDecrypt = StringFog.decrypt("y50z\n", "relLpGWAsw4=\n");
        List arrayList2 = new ArrayList();
        JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray(strDecrypt);
        if (jSONArrayOptJSONArray2 != null) {
            arrayList2 = AbstractC0962.m1571(jSONArrayOptJSONArray2);
        }
        arrayList.addAll(arrayList2);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            jSONObject.remove((String) it.next());
        }
    }
}

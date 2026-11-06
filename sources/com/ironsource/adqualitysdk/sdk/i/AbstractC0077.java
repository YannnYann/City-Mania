package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.net.TrafficStats;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ƒ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0077 {

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static volatile long f821;

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static volatile JSONObject f822;

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static JSONObject f823;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final String f850 = StringFog.decrypt("xF2/FnINZUTpVLo=\n", "gDjJfxFoMDA=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final String f849 = StringFog.decrypt("HxQOSw==\n", "cWN9O/1vjqo=\n");

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f848 = StringFog.decrypt("lggT4A==\n", "+H9hmKavvh8=\n");

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String f847 = StringFog.decrypt("oBY5Og==\n", "zXtYTB8UB68=\n");

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static final String f846 = StringFog.decrypt("UV5Juw==\n", "PDM902kAcD0=\n");

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static final String f845 = StringFog.decrypt("RuQ1Hw==\n", "K4lZaNQGNKo=\n");

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final String f844 = StringFog.decrypt("HX8uZA==\n", "cBJaEIsw0WM=\n");

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static final String f843 = StringFog.decrypt("fw==\n", "CHqULkGNk8Y=\n");

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public static final String f842 = StringFog.decrypt("wg==\n", "qvmGoNAElzY=\n");

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public static final String f841 = StringFog.decrypt("j/bUTw==\n", "/J+uKjdK1PY=\n");

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public static final String f840 = StringFog.decrypt("tbbSMg==\n", "wtChRowijio=\n");

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public static final String f839 = StringFog.decrypt("Qak1aw==\n", "Ns9HGOOs/aw=\n");

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public static final String f838 = StringFog.decrypt("xkE5QA==\n", "sSdKMM3RJhc=\n");

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public static final String f837 = StringFog.decrypt("Lx9nbQ==\n", "WHkTHtGvKSI=\n");

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public static final String f836 = StringFog.decrypt("P0vd1g==\n", "UimuorsNVUM=\n");

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public static final String f835 = StringFog.decrypt("9VhyG/Q=\n", "mDoGa51RhSw=\n");

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f834 = StringFog.decrypt("QNsdQQ==\n", "LblpMR6rsMs=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f833 = StringFog.decrypt("3smiWRQ=\n", "s6vRKX1ZxC4=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f832 = StringFog.decrypt("oj1DnA==\n", "z18w7NJ1UbA=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f831 = StringFog.decrypt("+cpvIg==\n", "lKgBTWBf+PI=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f830 = StringFog.decrypt("MRF1xQ==\n", "XHMaq6ezBQI=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f829 = StringFog.decrypt("DTEj8g==\n", "YFNAkXGql8A=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f828 = StringFog.decrypt("rWAGnA==\n", "wAJ185P1jIc=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f827 = StringFog.decrypt("mYmdOg==\n", "9OvuVOi+8GM=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f826 = StringFog.decrypt("R9uMUw==\n", "Ja/8P0Zmr9w=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f825 = StringFog.decrypt("vBnU5g==\n", "3m24kNlpgew=\n");

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static JSONObject f824 = null;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static synchronized void m1079(Context context) {
        WindowManager windowManager;
        DisplayMetrics displayMetrics;
        if (context != null) {
            try {
                windowManager = (WindowManager) context.getSystemService(StringFog.decrypt("Wdik1QIz\n", "LrHKsW1EIM4=\n"));
            } finally {
                String str = f850;
                AbstractC0182.m1156(str, str, StringFog.decrypt("7h/Y2jPFsZGLCs/BNYy2mIspw8YxibmG5gjexyiGq9/NH8XYYYa3kd8I0sE=\n", "q22qtUHl2P8=\n"), th, null, false);
            }
            if (windowManager != null && Build.VERSION.SDK_INT >= 30) {
                try {
                    Rect bounds = windowManager.getCurrentWindowMetrics().getBounds();
                    if (bounds != null) {
                        m1084(bounds.height(), bounds.width());
                        return;
                    }
                } catch (Throwable th) {
                    String str2 = f850;
                    AbstractC0182.m1156(str2, str2, StringFog.decrypt("KGBoavwRfxdNdX9x+lh4Hk1lc2vqXmE0CGZobO1CNh8ffXcl+Vh4HQJlV2TgVnML\n", "bRIaBY4xFnk=\n"), th, null, false);
                }
                String str3 = f850;
                AbstractC0182.m1156(str3, str3, StringFog.decrypt("7h/Y2jPFsZGLCs/BNYy2mIspw8YxibmG5gjexyiGq9/NH8XYYYa3kd8I0sE=\n", "q22qtUHl2P8=\n"), th, null, false);
            }
            Resources resources = context.getResources();
            if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
                m1084(displayMetrics.heightPixels, displayMetrics.widthPixels);
            }
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m1081(JSONObject jSONObject) {
        try {
            long totalRxBytes = TrafficStats.getTotalRxBytes();
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            if (totalRxBytes != -1) {
                long totalRxBytes2 = TrafficStats.getTotalRxBytes();
                jSONObject.put(f849, Math.round((1000.0f / (jCurrentTimeMillis2 - jCurrentTimeMillis)) * (totalRxBytes2 - totalRxBytes)));
                jSONObject.put(f848, totalRxBytes2);
            }
        } catch (Throwable th) {
            String str = f850;
            AbstractC0182.m1156(str, str, StringFog.decrypt("6aOEhmQwlfvYpZ+HcTCR7tnxl4dyMJz72KaZm30wh+3NtpM=\n", "rNH26RYQ8p4=\n"), th, null, false);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static synchronized JSONObject m1083() {
        if (f824 == null) {
            JSONObject jSONObject = new JSONObject();
            f824 = jSONObject;
            try {
                jSONObject.put(f843, -1);
                f824.put(f842, -1);
            } catch (JSONException unused) {
            }
        }
        return f824;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static synchronized void m1085(Activity activity) {
        if (activity != null) {
            m1079(activity.getApplicationContext());
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1084(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        try {
            JSONObject jSONObjectM1083 = m1083();
            jSONObjectM1083.put(f843, i2);
            jSONObjectM1083.put(f842, i);
        } catch (Throwable th) {
            String str = f850;
            AbstractC0182.m1156(str, str, StringFog.decrypt("M4tKS+3CSr8CjVFK+MJKuQScXUq/kVCgEw==\n", "dvk4JJ/iOdo=\n"), th, null, false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002a  */
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static org.json.JSONObject m1080(android.content.Context r6) throws org.json.JSONException {
        /*
            org.json.JSONObject r0 = com.ironsource.adqualitysdk.sdk.i.AbstractC0077.f822
            r1 = 0
            if (r0 != 0) goto L6
            goto L2a
        L6:
            com.ironsource.adqualitysdk.sdk.i.ﭩ r0 = com.ironsource.adqualitysdk.sdk.i.AbstractC0885.m1491()
            com.ironsource.adqualitysdk.sdk.i.ﮇ r0 = (com.ironsource.adqualitysdk.sdk.i.C0893) r0
            monitor-enter(r0)
            org.json.JSONObject r2 = r0.f2612     // Catch: java.lang.Throwable -> L7e
            monitor-exit(r0)
            if (r2 != 0) goto L14
            r0 = r1
            goto L1e
        L14:
            java.lang.String r0 = r0.f3436
            int r0 = r2.optInt(r0, r1)
            int r0 = java.lang.Math.max(r1, r0)
        L1e:
            long r2 = android.os.SystemClock.elapsedRealtime()
            long r4 = com.ironsource.adqualitysdk.sdk.i.AbstractC0077.f821
            long r2 = r2 - r4
            long r4 = (long) r0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 < 0) goto L77
        L2a:
            java.lang.String r0 = "wFVmpg==\n"
            java.lang.String r2 = "tzwAz0pAtGk=\n"
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.StringFog.decrypt(r0, r2)
            java.lang.Object r6 = r6.getSystemService(r0)
            android.net.wifi.WifiManager r6 = (android.net.wifi.WifiManager) r6
            android.net.wifi.WifiInfo r6 = r6.getConnectionInfo()
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>()
            java.lang.String r2 = com.ironsource.adqualitysdk.sdk.i.AbstractC0077.f837
            long r3 = java.lang.System.currentTimeMillis()
            r0.put(r2, r3)
            if (r6 == 0) goto L6f
            java.lang.String r2 = com.ironsource.adqualitysdk.sdk.i.AbstractC0077.f840
            android.net.wifi.SupplicantState r3 = r6.getSupplicantState()
            r0.put(r2, r3)
            android.net.wifi.SupplicantState r2 = r6.getSupplicantState()
            android.net.wifi.SupplicantState r3 = android.net.wifi.SupplicantState.COMPLETED
            if (r2 != r3) goto L6f
            java.lang.String r2 = com.ironsource.adqualitysdk.sdk.i.AbstractC0077.f839
            int r3 = r6.getRssi()
            r0.put(r2, r3)
            java.lang.String r2 = com.ironsource.adqualitysdk.sdk.i.AbstractC0077.f838
            int r6 = r6.getLinkSpeed()
            r0.put(r2, r6)
        L6f:
            com.ironsource.adqualitysdk.sdk.i.AbstractC0077.f822 = r0
            long r2 = android.os.SystemClock.elapsedRealtime()
            com.ironsource.adqualitysdk.sdk.i.AbstractC0077.f821 = r2
        L77:
            org.json.JSONObject r6 = com.ironsource.adqualitysdk.sdk.i.AbstractC0077.f822
            org.json.JSONObject r6 = com.ironsource.adqualitysdk.sdk.i.AbstractC0962.m1573(r6, r1)
            return r6
        L7e:
            r6 = move-exception
            monitor-exit(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.AbstractC0077.m1080(android.content.Context):org.json.JSONObject");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1086(Context context, JSONObject jSONObject) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(StringFog.decrypt("hG8i00tt3NU=\n", "5QxWuj0EqKw=\n"));
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            jSONObject.put(f847, memoryInfo.availMem / 1048576);
            jSONObject.put(f846, memoryInfo.threshold / 1048576);
            boolean z = memoryInfo.lowMemory;
            if (z) {
                jSONObject.put(f845, z);
            }
            jSONObject.put(f844, memoryInfo.totalMem / 1048576);
        } catch (Throwable th) {
            AbstractC0182.m1147(f850, StringFog.decrypt("sh/sahuIKsSDGfdrDoggxJoC7HxJ3T7AkAikJQ==\n", "922eBWmoTaE=\n") + th.getLocalizedMessage());
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static int m1082(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(StringFog.decrypt("hG8i00tt3NU=\n", "5QxWuj0EqKw=\n"));
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return (int) (memoryInfo.availMem / 1048576);
        } catch (Throwable th) {
            AbstractC0182.m1147(f850, StringFog.decrypt("sqr2scPoSVSDrO2w1uhPR5ax6L/TpEsRmr3pscOxFBE=\n", "99iE3rHILjE=\n") + th.getLocalizedMessage());
            return 0;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1087(JSONObject jSONObject) {
        JSONObject jSONObject2;
        synchronized (AbstractC0077.class) {
            jSONObject2 = f823;
        }
        AbstractC0962.m1575(jSONObject, AbstractC0962.m1573(jSONObject2, false), false);
    }
}

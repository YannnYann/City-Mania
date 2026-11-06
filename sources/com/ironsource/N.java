package com.ironsource;

import android.app.Activity;
import android.text.TextUtils;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class N {
    private final E0 a;

    public N(E0 e0) {
        this.a = e0;
    }

    public void a(Activity activity, String str) {
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            map.put("placement", str);
        }
        if (activity != null) {
            map.put(IronSourceConstants.EVENTS_EXT1, IronSourceConstants.EVENTS_INIT_CONTEXT_FLOW);
        }
        this.a.a(B0.SHOW_AD, map);
    }

    public void b(String str) {
        a(str, (String) null);
    }

    public void c(String str) {
        HashMap map = new HashMap();
        map.put("placement", str);
        this.a.a(B0.AD_DISMISS_SCREEN, map);
    }

    public void d(String str) {
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            map.put("placement", str);
        }
        this.a.a(B0.AD_ENDED, map);
    }

    public void e(String str) {
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            map.put("placement", str);
        }
        this.a.a(B0.AD_INFO_CHANGED, map);
    }

    public void f(String str) {
        HashMap map = new HashMap();
        map.put("placement", str);
        this.a.a(B0.AD_LEFT_APPLICATION, map);
    }

    public void g(String str) {
        a(str, false);
    }

    public void h(String str) {
        HashMap map = new HashMap();
        map.put("placement", str);
        this.a.a(B0.AD_PRESENT_SCREEN, map);
    }

    public void i(String str) {
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            map.put("placement", str);
        }
        this.a.a(B0.AD_STARTED, map);
    }

    public void j(String str) {
        HashMap map = new HashMap();
        map.put("placement", str);
        this.a.a(B0.AD_VIEW_BOUND, map);
    }

    public void k(String str) {
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            map.put("placement", str);
        }
        this.a.a(B0.AD_VISIBLE, map);
    }

    public void b(String str, String str2) {
        HashMap map = new HashMap();
        map.put("placement", str);
        if (!TextUtils.isEmpty(str2)) {
            map.put("reason", str2);
        }
        this.a.a(B0.PLACEMENT_CAPPED, map);
    }

    public void a(boolean z) {
        HashMap map = new HashMap();
        map.put("status", z ? "true" : "false");
        this.a.a(B0.SHOW_AD_CHANCE, map);
    }

    public void a(String str, int i, String str2, Pd pd) {
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            map.put("placement", str);
        }
        map.put("errorCode", Integer.valueOf(i));
        map.put("reason", str2);
        String strA = a(pd);
        if (strA != null) {
            map.put(IronSourceConstants.EVENTS_EXT1, strA);
        }
        this.a.a(B0.SHOW_AD_FAILED, map);
    }

    public void a(String str, boolean z) {
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            map.put("placement", str);
        }
        if (z) {
            map.put(IronSourceConstants.EVENTS_EXT1, IronSourceConstants.EVENTS_EXT1_RECOVERED);
        }
        this.a.a(B0.AD_OPENED, map);
    }

    public void a(String str) {
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            map.put("placement", str);
        }
        this.a.a(B0.AD_CLICKED, map);
    }

    public void a(String str, String str2) {
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            map.put("placement", str);
        }
        if (!TextUtils.isEmpty(str2)) {
            map.put(IronSourceConstants.EVENTS_EXT1, str2);
        }
        this.a.a(B0.AD_CLOSED, map);
    }

    public void a(String str, String str2, int i, long j, String str3, long j2, Map<String, Object> map, String str4) {
        HashMap map2 = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            map2.put("placement", str);
        }
        map2.put(IronSourceConstants.EVENTS_REWARD_NAME, str2);
        map2.put(IronSourceConstants.EVENTS_REWARD_AMOUNT, Integer.valueOf(i));
        map2.put(IronSourceConstants.EVENTS_TRANS_ID, str3);
        if (j2 != 0) {
            map2.put("duration", Long.valueOf(j2));
        }
        if (map != null) {
            map2.putAll(map);
        }
        if (!TextUtils.isEmpty(str4)) {
            map2.put(IronSourceConstants.EVENTS_DYNAMIC_USER_ID, str4);
        }
        this.a.a(B0.AD_REWARDED, map2, j);
    }

    public void a(String str, String str2, boolean z) {
        HashMap map = new HashMap();
        map.put("isMultipleAdUnits", 1);
        map.put("placement", str);
        if (!TextUtils.isEmpty(str2)) {
            map.put("reason", str2);
        }
        map.put(IronSourceConstants.EVENTS_EXT1, z ? "true" : "false");
        map.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
        this.a.a(B0.CHECK_PLACEMENT_CAPPED, map);
    }

    public void a() {
        this.a.a(B0.SESSION_CAPPED, null);
    }

    private static String a(Pd pd) {
        if (pd != Pd.c && pd != Pd.d) {
            return null;
        }
        return "recover show failed: " + pd.c();
    }
}

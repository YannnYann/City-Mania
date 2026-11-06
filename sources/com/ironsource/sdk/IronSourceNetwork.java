package com.ironsource.sdk;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.ironsource.A8;
import com.ironsource.B8;
import com.ironsource.C3601fa;
import com.ironsource.C3813r4;
import com.ironsource.C3873u8;
import com.ironsource.C8;
import com.ironsource.I5;
import com.ironsource.InterfaceC3546ca;
import com.ironsource.R9;
import com.ironsource.Tc;
import com.ironsource.W9;
import com.ironsource.sdk.controller.e;
import com.ironsource.sdk.utils.Logger;
import com.ironsource.sdk.utils.SDKUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class IronSourceNetwork {
    static final String a = "IronSourceNetwork";
    private static InterfaceC3546ca b;
    private static List<Tc> c = new ArrayList();
    private static C3601fa d;

    private static void a(Context context, JSONObject jSONObject, String str, String str2, String str3, Map<String, String> map) throws Exception {
        if (jSONObject != null) {
            I5 i5A = B8.a(jSONObject);
            if (i5A.a()) {
                A8.a(i5A, B8.a(context, str, str2, str3, map));
            }
        }
    }

    public static synchronized void addInitListener(Tc tc) {
        C3601fa c3601fa = d;
        if (c3601fa == null) {
            c.add(tc);
        } else if (c3601fa.b()) {
            tc.onSuccess();
        } else {
            tc.onFail(d.a());
        }
    }

    public static synchronized void destroyAd(R9 r9) throws Exception {
        a();
        b.b(r9);
    }

    public static synchronized e getControllerManager() {
        return b.a();
    }

    public static String getVersion() {
        return SDKUtils.getSDKVersion();
    }

    public static synchronized void initSDK(Context context, String str, String str2, Map<String, String> map) {
        Context context2;
        String str3;
        String str4;
        if (TextUtils.isEmpty(str)) {
            Logger.e(a, "applicationKey is NULL");
            return;
        }
        if (b == null) {
            SDKUtils.setInitSDKParams(map);
            try {
                context2 = context;
                str3 = str;
                str4 = str2;
            } catch (Exception e) {
                e = e;
                context2 = context;
                str3 = str;
                str4 = str2;
            }
            try {
                a(context2, SDKUtils.getNetworkConfiguration().optJSONObject("events"), str4, str3, C8.a(), map);
            } catch (Exception e2) {
                e = e2;
                Exception exc = e;
                C3813r4.d().a(exc);
                Logger.e(a, "Failed to init event tracker: " + exc.getMessage());
            }
            b = W9.a(context2, str3, str4);
        }
    }

    public static synchronized boolean isAdAvailableForInstance(R9 r9) {
        InterfaceC3546ca interfaceC3546ca = b;
        if (interfaceC3546ca == null) {
            return false;
        }
        return interfaceC3546ca.a(r9);
    }

    public static synchronized void loadAd(R9 r9, Map<String, String> map) throws Exception {
        a();
        b.a(r9, map);
    }

    public static synchronized void loadAdView(Activity activity, R9 r9, Map<String, String> map) throws Exception {
        a();
        b.b(activity, r9, map);
    }

    public static void onPause(Activity activity) {
        InterfaceC3546ca interfaceC3546ca = b;
        if (interfaceC3546ca == null) {
            return;
        }
        interfaceC3546ca.b(activity);
    }

    public static void onResume(Activity activity) {
        InterfaceC3546ca interfaceC3546ca = b;
        if (interfaceC3546ca == null) {
            return;
        }
        interfaceC3546ca.a(activity);
    }

    public static synchronized void release(Activity activity) {
        InterfaceC3546ca interfaceC3546ca = b;
        if (interfaceC3546ca == null) {
            return;
        }
        interfaceC3546ca.c(activity);
    }

    public static synchronized void showAd(Activity activity, R9 r9, Map<String, String> map) throws Exception {
        a();
        b.a(activity, r9, map);
    }

    public static synchronized void updateInitFailed(C3873u8 c3873u8) {
        try {
            d = new C3601fa(c3873u8);
            Iterator<Tc> it = c.iterator();
            while (it.hasNext()) {
                it.next().onFail(c3873u8);
            }
            c.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized void updateInitSucceeded() {
        try {
            d = new C3601fa();
            Iterator<Tc> it = c.iterator();
            while (it.hasNext()) {
                it.next().onSuccess();
            }
            c.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    private static synchronized void a() throws Exception {
        if (b == null) {
            throw new NullPointerException("Call initSDK first");
        }
    }
}

package com.ironsource;

import android.content.Context;
import android.text.TextUtils;
import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.adquality.AdQualityBridge;
import com.ironsource.mediationsdk.config.ConfigFile;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.KotlinVersion;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class S6 {
    private final B7 a;
    private final ConcurrentHashMap<String, Object> b;
    private final AtomicBoolean c;
    private final AtomicBoolean d;

    public class a implements Runnable {
        final /* synthetic */ Context a;

        public a(Context context) {
            this.a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                S6.this.e(this.a);
            } catch (Exception e) {
                C3813r4.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
            S6.this.c.set(false);
        }
    }

    public static class b {
        static volatile S6 a = new S6();

        private b() {
        }
    }

    private S6() {
        this.c = new AtomicBoolean(false);
        this.d = new AtomicBoolean(false);
        this.a = Pb.k0().a();
        this.b = new ConcurrentHashMap<>();
    }

    public static S6 b() {
        return b.a;
    }

    private void d(Context context) {
        if (context == null || this.d.getAndSet(true)) {
            return;
        }
        a("auid", this.a.e(context));
        a(R6.B, this.a.l());
        a(R6.t, this.a.q());
        a(R6.F, this.a.f());
        a(R6.p, this.a.L(context));
        String adQualitySdkVersion = AdQualityBridge.getAdQualitySdkVersion();
        if (!TextUtils.isEmpty(adQualitySdkVersion)) {
            a(R6.C1, adQualitySdkVersion);
        }
        String strI = this.a.i();
        if (strI != null) {
            a(R6.G, strI.replaceAll("[^0-9/.]", ""));
            a(R6.J, strI);
        }
        a(R6.a, String.valueOf(this.a.e()));
        String strV = this.a.v(context);
        if (!TextUtils.isEmpty(strV)) {
            a(R6.R0, strV);
        }
        String strE = M1.e(context);
        if (!TextUtils.isEmpty(strE)) {
            a(R6.o, strE);
        }
        String strS = this.a.s(context);
        if (!TextUtils.isEmpty(strS)) {
            a(R6.w0, strS);
        }
        a(R6.f, context.getPackageName());
        a("mem", String.valueOf(this.a.r(context)));
        a(R6.b0, R6.k0);
        a(R6.c0, Long.valueOf(M1.f(context)));
        a(R6.a0, Long.valueOf(M1.d(context)));
        a(R6.d, M1.b(context));
        a(R6.O, Integer.valueOf(X3.f(context)));
        a(R6.Y, X3.g(context));
        a(R6.H, "android");
        a(R6.z, this.a.t());
        a("mThreshold", this.a.a(this.a.o(context)));
        a(R6.h0, KotlinVersion.CURRENT.toString());
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(Context context) {
        if (context == null) {
            return;
        }
        try {
            String strI = this.a.I(context);
            if (!TextUtils.isEmpty(strI)) {
                a(R6.X0, strI);
            }
            String strC = this.a.c(context);
            if (TextUtils.isEmpty(strC)) {
                return;
            }
            a(R6.s, Boolean.valueOf(Boolean.parseBoolean(strC)));
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private void f(Context context) {
        if (context == null) {
            return;
        }
        a(context);
        String strZ = this.a.z(context);
        if (!TextUtils.isEmpty(strZ)) {
            a(R6.M0, strZ);
        } else if (a(R6.M0)) {
            b(R6.M0);
        }
        a(R6.P0, this.a.j(context));
        String strD = this.a.d(context);
        if (!TextUtils.isEmpty(strD)) {
            a(R6.q, strD.toUpperCase(Locale.getDefault()));
        }
        a(R6.r, this.a.B(context));
        String strD2 = this.a.d();
        if (!TextUtils.isEmpty(strD2)) {
            a("tz", strD2);
        }
        String strB = Y3.b(context);
        if (!TextUtils.isEmpty(strB) && !strB.equals("none")) {
            a(R6.j, strB);
        }
        String strD3 = Y3.d(context);
        if (!TextUtils.isEmpty(strD3)) {
            a(R6.k, strD3);
        }
        a("vpn", Boolean.valueOf(Y3.e(context)));
        String strH = this.a.H(context);
        if (!TextUtils.isEmpty(strH)) {
            a("icc", strH);
        }
        int iT = this.a.t(context);
        if (iT >= 0) {
            a(R6.k1, Integer.valueOf(iT));
        }
        a(R6.l1, this.a.w(context));
        a(R6.m1, this.a.G(context));
        a(R6.i0, Float.valueOf(this.a.F(context)));
        a(R6.m, String.valueOf(this.a.h()));
        a(R6.R, Integer.valueOf(this.a.k()));
        a(R6.Q, Integer.valueOf(this.a.c()));
        a(R6.Z0, String.valueOf(this.a.a()));
        a(R6.h1, String.valueOf(this.a.m()));
        a("mcc", Integer.valueOf(X3.b(context)));
        a("mnc", Integer.valueOf(X3.c(context)));
        a(R6.T, Boolean.valueOf(this.a.j()));
        a(R6.g, Boolean.valueOf(this.a.D(context)));
        a(R6.h, Integer.valueOf(this.a.E(context)));
        a(R6.b, Boolean.valueOf(this.a.f(context)));
        a(R6.K, Boolean.valueOf(this.a.i(context)));
        a("rt", Boolean.valueOf(this.a.p()));
        a(R6.Z, String.valueOf(this.a.r()));
        a(R6.e, Integer.valueOf(this.a.l(context)));
        a(R6.a1, Boolean.valueOf(this.a.J(context)));
        a(R6.c, this.a.n(context));
        a(R6.d0, this.a.s());
        C3954z c3954z = new C3954z(Pb.k0().s());
        HashMap map = new HashMap();
        c3954z.a(map);
        a(R6.F0, map);
        a(R6.L, ConfigFile.getConfigFile().getPluginType());
        a(R6.M, ConfigFile.getConfigFile().getPluginVersion());
        a(R6.N, ConfigFile.getConfigFile().getPluginFrameworkVersion());
    }

    public void a(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        try {
            for (String str : map.keySet()) {
                if (map.containsKey(str)) {
                    a(str, map.get(str));
                }
            }
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    public void c(Context context) {
        try {
            d(context);
            f(context);
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    public void b(String str, Object obj) {
        a(str, obj);
    }

    public void b(String str) {
        if (str == null) {
            return;
        }
        try {
            this.b.remove(str);
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    public JSONObject b(Context context) throws JSONException {
        f(context);
        return new JSONObject(U6.a(this.b));
    }

    public void a(String str, JSONArray jSONArray) {
        if (jSONArray == null) {
            return;
        }
        try {
            Object obj = this.b.get(str);
            if (!(obj instanceof JSONArray)) {
                a(str, (Object) jSONArray);
                return;
            }
            JSONArray jSONArray2 = (JSONArray) obj;
            for (int i = 0; i < jSONArray.length(); i++) {
                jSONArray2.put(jSONArray.get(i));
            }
            a(str, (Object) jSONArray2);
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    public void a(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            Object obj = this.b.get(str);
            if (!(obj instanceof JSONObject)) {
                a(str, (Object) jSONObject);
                return;
            }
            JSONObject jSONObject2 = (JSONObject) obj;
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObject2.putOpt(next, jSONObject.opt(next));
            }
            a(str, (Object) jSONObject2);
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private void a(String str, Object obj) {
        if (str == null || obj == null) {
            return;
        }
        try {
            if (obj instanceof Boolean) {
                obj = Integer.valueOf(((Boolean) obj).booleanValue() ? 1 : 0);
            }
            this.b.put(str, obj);
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private boolean a(String str) {
        return str != null && this.b.containsKey(str);
    }

    private void a(Context context) {
        if (this.c.get()) {
            return;
        }
        try {
            this.c.set(true);
            IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(new a(context));
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            this.c.set(false);
        }
    }

    public void a() {
        HashMap map = new HashMap(C3592f1.a());
        String strA = C3843sg.a.a();
        if (strA != null) {
            HashMap map2 = new HashMap();
            Map map3 = (Map) map.get(R6.H1);
            if (map3 != null) {
                map2.putAll(map3);
            }
            map2.put("sdk", strA);
            map.put(R6.H1, map2);
        }
        if (map.isEmpty()) {
            return;
        }
        b(R6.E1, map);
    }
}

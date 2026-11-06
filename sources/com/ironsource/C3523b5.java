package com.ironsource;

import android.content.Context;
import android.text.TextUtils;
import com.ironsource.C3522b4;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.sdk.utils.IronSourceStorageUtils;
import com.ironsource.sdk.utils.Logger;
import com.ironsource.sdk.utils.SDKUtils;
import java.util.Locale;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.b5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3523b5 {
    private static final String a = "b5";

    public static JSONObject a(Context context) {
        SDKUtils.loadGoogleAdvertiserInfo(context);
        String advertiserId = SDKUtils.getAdvertiserId();
        String limitAdTracking = SDKUtils.getLimitAdTracking();
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(advertiserId)) {
                Logger.i(a, "add AID");
                jSONObject.put("deviceIds" + C3522b4.j.d + C3522b4.j.L + C3522b4.j.e, SDKUtils.encodeString(advertiserId));
            }
            if (!TextUtils.isEmpty(limitAdTracking)) {
                Logger.i(a, "add LAT");
                jSONObject.put(C3522b4.j.M, Boolean.parseBoolean(limitAdTracking));
                return jSONObject;
            }
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        return jSONObject;
    }

    public static JSONObject b(Context context) {
        JSONObject jSONObject = new JSONObject();
        a(jSONObject);
        d(context, jSONObject);
        c(jSONObject);
        b(context, jSONObject);
        g(context, jSONObject);
        e(context, jSONObject);
        b(jSONObject);
        f(context, jSONObject);
        c(context, jSONObject);
        a(context, jSONObject);
        h(context, jSONObject);
        return jSONObject;
    }

    private static void c(JSONObject jSONObject) {
        try {
            jSONObject.put(SDKUtils.encodeString(C3522b4.j.y), SDKUtils.encodeString(String.valueOf(Pb.k0().a().h())));
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private static void d(Context context, JSONObject jSONObject) {
        try {
            String strB = Y3.b(context);
            String strD = Y3.d(context);
            if (!TextUtils.isEmpty(strD)) {
                jSONObject.put(SDKUtils.encodeString("rawConnectionType"), SDKUtils.encodeString(strD));
            }
            if (!TextUtils.isEmpty(strB) && !strB.equals("none")) {
                jSONObject.put(SDKUtils.encodeString("connectionType"), SDKUtils.encodeString(strB));
            }
            jSONObject.put(SDKUtils.encodeString(C3522b4.j.v), Y3.e(context));
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private static void e(Context context, JSONObject jSONObject) {
        try {
            jSONObject.put(SDKUtils.encodeString(C3522b4.j.P), C3541c5.b(context).a(context));
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private static void f(Context context, JSONObject jSONObject) {
        B7 b7A = Pb.k0().a();
        try {
            if (a(C3522b4.j.k0)) {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.k0), b7A.D(context));
            }
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private static void g(Context context, JSONObject jSONObject) {
        try {
            jSONObject.put(SDKUtils.encodeString(R6.a1), Pb.k0().a().J(context));
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private static void h(Context context, JSONObject jSONObject) {
        B7 b7A = Pb.k0().a();
        try {
            if (a(C3522b4.j.n0)) {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.n0), b7A.i(context));
            }
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private static void b(Context context, JSONObject jSONObject) {
        try {
            jSONObject.put(SDKUtils.encodeString(C3522b4.j.Y), Pb.k0().a().l(context));
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private static void c(Context context, JSONObject jSONObject) {
        B7 b7A = Pb.k0().a();
        try {
            if (a(C3522b4.j.l0)) {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.l0), b7A.E(context));
            }
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private static void b(JSONObject jSONObject) {
        B7 b7A = Pb.k0().a();
        try {
            if (a(C3522b4.j.i0)) {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.i0), b7A.j());
            }
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    public static JSONObject c(Context context) {
        B7 b7A = Pb.k0().a();
        C3541c5 c3541c5B = C3541c5.b(context);
        JSONObject jSONObject = new JSONObject();
        try {
            String strD = c3541c5B.d();
            if (strD != null) {
                jSONObject.put(SDKUtils.encodeString("deviceOEM"), SDKUtils.encodeString(strD));
            }
            String strC = c3541c5B.c();
            if (strC != null) {
                jSONObject.put(SDKUtils.encodeString("deviceModel"), SDKUtils.encodeString(strC));
            }
            String strE = c3541c5B.e();
            if (strE != null) {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.m), SDKUtils.encodeString(strE));
            }
            String strF = c3541c5B.f();
            if (strF != null) {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.n), strF.replaceAll("[^0-9/.]", ""));
            }
            String strF2 = c3541c5B.f();
            if (strF2 != null) {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.o), SDKUtils.encodeString(strF2));
            }
            jSONObject.put(SDKUtils.encodeString(C3522b4.j.p), String.valueOf(c3541c5B.a()));
            jSONObject.put(SDKUtils.encodeString(C3522b4.j.q), SDKUtils.encodeString(SDKUtils.getSDKVersion()));
            if (c3541c5B.b() != null && c3541c5B.b().length() > 0) {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.r), SDKUtils.encodeString(c3541c5B.b()));
            }
            String language = context.getResources().getConfiguration().locale.getLanguage();
            if (!TextUtils.isEmpty(language)) {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.x), SDKUtils.encodeString(language.toUpperCase(Locale.getDefault())));
            }
            if (a(C3522b4.j.j0)) {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.j0), SDKUtils.encodeString(String.valueOf(b7A.r(context))));
            }
            String strG = M1.g(context);
            if (!TextUtils.isEmpty(strG)) {
                jSONObject.put(SDKUtils.encodeString("bundleId"), SDKUtils.encodeString(strG));
            }
            String strValueOf = String.valueOf(b7A.r());
            if (!TextUtils.isEmpty(strValueOf)) {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.K), SDKUtils.encodeString(strValueOf));
            }
            String strValueOf2 = String.valueOf(b7A.p());
            if (!TextUtils.isEmpty(strValueOf2)) {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.O), SDKUtils.encodeString(strValueOf2));
            }
            jSONObject.put("mcc", X3.b(context));
            jSONObject.put("mnc", X3.c(context));
            jSONObject.put(SDKUtils.encodeString(C3522b4.j.S), X3.f(context));
            jSONObject.put(SDKUtils.encodeString(C3522b4.j.R), SDKUtils.encodeString(X3.g(context)));
            jSONObject.put(SDKUtils.encodeString(C3522b4.j.V), M1.f(context));
            jSONObject.put(SDKUtils.encodeString(C3522b4.j.X), M1.d(context));
            jSONObject.put(SDKUtils.encodeString(C3522b4.j.W), SDKUtils.encodeString(M1.b(context)));
            String strE2 = M1.e(context);
            if (!TextUtils.isEmpty(strE2)) {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.c0), SDKUtils.encodeString(strE2));
            }
            jSONObject.put(C3522b4.j.d0, SDKUtils.encodeString(String.valueOf(b7A.a())));
            jSONObject.put(C3522b4.j.e0, SDKUtils.encodeString(String.valueOf(b7A.m())));
            String strH = b7A.H(context);
            if (!TextUtils.isEmpty(strH)) {
                jSONObject.put("icc", strH);
            }
            String strD2 = b7A.d();
            if (!TextUtils.isEmpty(strD2)) {
                jSONObject.put("tz", SDKUtils.encodeString(strD2));
            }
            jSONObject.put("uxt", IronSourceStorageUtils.isUxt());
            return jSONObject;
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return jSONObject;
        }
    }

    private static void a(JSONObject jSONObject, String str, String str2) {
        try {
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            jSONObject.put(str, SDKUtils.encodeString(str2));
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private static boolean a(String str) {
        return SDKUtils.getControllerConfigAsJSONObject().optBoolean(str);
    }

    private static void a(JSONObject jSONObject) {
        B7 b7A = Pb.k0().a();
        try {
            a(jSONObject, C3522b4.j.H, String.valueOf(b7A.k()));
            a(jSONObject, C3522b4.j.I, String.valueOf(b7A.c()));
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private static void a(Context context, JSONObject jSONObject) {
        B7 b7A = Pb.k0().a();
        try {
            if (a(C3522b4.j.m0)) {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.m0), b7A.f(context));
            }
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }
}

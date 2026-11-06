package com.ironsource.mediationsdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.text.TextUtils;
import android.util.Pair;
import com.ironsource.B7;
import com.ironsource.C3468ab;
import com.ironsource.C3775p5;
import com.ironsource.C3801q9;
import com.ironsource.C3813r4;
import com.ironsource.L1;
import com.ironsource.O6;
import com.ironsource.Pb;
import com.ironsource.Q9;
import com.ironsource.X3;
import com.ironsource.X9;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.logger.c;
import com.ironsource.mediationsdk.p;
import com.unity3d.mediation.LevelPlay;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class IronSourceUtils {
    private static int A = 1;
    private static AtomicBoolean B = new AtomicBoolean(false);
    private static String C = null;
    private static Boolean D = null;
    private static IronSourceUtils E = new IronSourceUtils();
    private static final String a = "default_is_events_formatter_type";
    private static final String b = "default_is_events_url";
    private static final String c = "default_is_non_connectivity_events";
    private static final String d = "default_is_opt_in_events";
    private static final String e = "default_is_opt_out_events";
    private static final String f = "default_is_trigger_events";
    private static final String g = "default_rv_events_formatter_type";
    private static final String h = "default_rv_events_url";
    private static final String i = "default_rv_non_connectivity_events";
    private static final String j = "default_rv_opt_in_events";
    private static final String k = "default_rv_opt_out_events";
    private static final String l = "default_rv_trigger_events";
    private static final String m = "default_pxl_events_url";
    private static final String n = "default_pxl_trigger_events";
    private static final String o = "default_app_opt_in_events";
    private static final String p = "default_app_opt_out_events";
    private static final String q = "default_app_events_url";
    private static final String r = "default_app_trigger_events";
    private static final String s = "default_app_events_formatter_type";
    private static final String t = "default_app_non_connectivity_events";
    private static final String u = "general_properties";
    private static final String v = "last_response";
    private static final String w = "firstSessionTimestamp";
    private static final String x = "providerPriority";
    private static final String y = "9.6.1";
    private static final String z = "Mediation_Shared_Preferences";

    public static String a(long j2, String str) {
        return h(String.format("%s%s%s", Long.valueOf(j2), p.g().h(), str));
    }

    public static IronSourceUtils b() {
        return E;
    }

    private static String c(String str) {
        return IronSourceConstants.INTERSTITIAL_EVENT_TYPE.equals(str) ? a : (IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE.equals(str) || IronSourceConstants.PIXEL_EVENT_TYPE.equals(str)) ? g : IronSourceConstants.APP_EVENT_TYPE.equals(str) ? s : "";
    }

    private static String d(String str) {
        return IronSourceConstants.INTERSTITIAL_EVENT_TYPE.equals(str) ? c : IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE.equals(str) ? i : IronSourceConstants.APP_EVENT_TYPE.equals(str) ? t : "";
    }

    private static String e(String str) {
        return IronSourceConstants.INTERSTITIAL_EVENT_TYPE.equals(str) ? d : IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE.equals(str) ? j : IronSourceConstants.APP_EVENT_TYPE.equals(str) ? o : "";
    }

    private static String f(String str) {
        return IronSourceConstants.INTERSTITIAL_EVENT_TYPE.equals(str) ? e : IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE.equals(str) ? k : IronSourceConstants.APP_EVENT_TYPE.equals(str) ? p : "";
    }

    public static boolean g() {
        return A == 1;
    }

    private static Map<LevelPlay.AdFormat, Map<String, JSONObject>> getAdUnitIds() {
        HashMap map = new HashMap();
        try {
            C3468ab c3468abA = Pb.k0().f().a();
            if (c3468abA != null) {
                for (LevelPlay.AdFormat adFormat : LevelPlay.AdFormat.values()) {
                    HashMap map2 = new HashMap();
                    map.put(adFormat, map2);
                    for (String str : c3468abA.a(adFormat)) {
                        if (!str.equals(L1.e)) {
                            map2.put(str, new JSONObject());
                        }
                    }
                }
            }
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            IronLog.INTERNAL.error("failed to get ad unit ids - exception = " + e2);
        }
        return map;
    }

    @Deprecated
    public static String getSDKVersion() {
        return "9.6.1";
    }

    public static String h(String str) {
        try {
            return String.format("%064x", new BigInteger(1, MessageDigest.getInstance("SHA-256").digest(str.getBytes())));
        } catch (NoSuchAlgorithmException e2) {
            C3813r4.d().a(e2);
            if (str == null) {
                IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getSHA256(input:null)", e2);
                return "";
            }
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getSHA256(input:" + str + ")", e2);
            return "";
        }
    }

    public static synchronized void i(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "automation_log:" + Long.toString(System.currentTimeMillis()) + " text: " + str, 0);
    }

    private static void setSerr(int i2) {
        A = i2;
    }

    private static String b(String str) {
        return IronSourceConstants.INTERSTITIAL_EVENT_TYPE.equals(str) ? b : IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE.equals(str) ? h : IronSourceConstants.PIXEL_EVENT_TYPE.equals(str) ? m : IronSourceConstants.APP_EVENT_TYPE.equals(str) ? q : "";
    }

    private static String g(String str) {
        return IronSourceConstants.INTERSTITIAL_EVENT_TYPE.equals(str) ? f : IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE.equals(str) ? l : IronSourceConstants.PIXEL_EVENT_TYPE.equals(str) ? n : IronSourceConstants.APP_EVENT_TYPE.equals(str) ? r : "";
    }

    public static String a(Context context) {
        ConnectivityManager connectivityManager;
        if (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return "none";
        }
        try {
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
            if (networkCapabilities == null) {
                return "none";
            }
            if (networkCapabilities.hasTransport(1)) {
                return X3.b;
            }
            return networkCapabilities.hasTransport(0) ? X3.g : "none";
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            IronLog.NATIVE.error("failed to connection type - exception = " + e2);
            return "none";
        }
    }

    public static synchronized void d(Context context, String str, int[] iArr) {
        String string;
        try {
            try {
                SharedPreferences.Editor editorEdit = context.getSharedPreferences(z, 0).edit();
                if (iArr != null) {
                    StringBuilder sb = new StringBuilder();
                    for (int i2 : iArr) {
                        sb.append(i2);
                        sb.append(",");
                    }
                    string = sb.toString();
                } else {
                    string = null;
                }
                editorEdit.putString(g(str), string);
                editorEdit.apply();
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:saveDefaultTriggerEvents(eventType: " + str + ", triggerEvents:" + iArr + ")", e2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized void e(Context context, String str, String str2) {
        try {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences(z, 0).edit();
            editorEdit.putString(b(str), str2);
            editorEdit.apply();
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:saveDefaultEventsURL(eventType: " + str + ", eventsUrl:" + str2 + ")", e2);
        }
    }

    public static boolean f(Context context) {
        ConnectivityManager connectivityManager;
        if (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return false;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return false;
            }
            return activeNetworkInfo.isConnected();
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            IronLog.NATIVE.error("failed to check if network is connected - exception = " + e2);
            return false;
        }
    }

    public static synchronized void c(Context context, String str, int[] iArr) {
        String string;
        try {
            try {
                SharedPreferences.Editor editorEdit = context.getSharedPreferences(z, 0).edit();
                if (iArr != null) {
                    StringBuilder sb = new StringBuilder();
                    for (int i2 : iArr) {
                        sb.append(i2);
                        sb.append(",");
                    }
                    string = sb.toString();
                } else {
                    string = null;
                }
                editorEdit.putString(f(str), string);
                editorEdit.apply();
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:saveDefaultOptOutEvents(eventType: " + str + ", optOutEvents:" + iArr + ")", e2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized void b(Context context, String str, int[] iArr) {
        String string;
        try {
            try {
                SharedPreferences.Editor editorEdit = context.getSharedPreferences(z, 0).edit();
                if (iArr != null) {
                    StringBuilder sb = new StringBuilder();
                    for (int i2 : iArr) {
                        sb.append(i2);
                        sb.append(",");
                    }
                    string = sb.toString();
                } else {
                    string = null;
                }
                editorEdit.putString(e(str), string);
                editorEdit.apply();
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:saveDefaultOptInEvents(eventType: " + str + ", optInEvents:" + iArr + ")", e2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized void e(Context context, String str) {
        try {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences(z, 0).edit();
            try {
                String strE = Q9.e(C3775p5.b().c(), str);
                if (!TextUtils.isEmpty(strE)) {
                    editorEdit.putString(v, strE);
                } else {
                    IronLog.INTERNAL.verbose("saveLastResponse: empty encrypted value, skipping cache write");
                }
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                IronLog.INTERNAL.error("saveLastResponse: encryption failed, skipping cache write", e2);
            }
            editorEdit.apply();
        } catch (Throwable th) {
            throw th;
        }
    }

    public static void f(Context context, String str, String str2) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(z, 0).edit();
        editorEdit.putString(str, str2);
        editorEdit.apply();
    }

    public static String f() {
        String strA = O6.a().a("userId");
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        return strA;
    }

    public static synchronized void d(Context context, String str, String str2) {
        try {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences(z, 0).edit();
            editorEdit.putString(c(str), str2);
            editorEdit.apply();
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:saveDefaultEventsFormatterType(eventType: " + str + ", formatterType:" + str2 + ")", e2);
        }
    }

    public static synchronized int[] c(Context context, String str) {
        int[] iArr;
        iArr = null;
        try {
            try {
                String string = context.getSharedPreferences(z, 0).getString(f(str), null);
                if (!TextUtils.isEmpty(string)) {
                    StringTokenizer stringTokenizer = new StringTokenizer(string, ",");
                    ArrayList arrayList = new ArrayList();
                    while (stringTokenizer.hasMoreTokens()) {
                        arrayList.add(Integer.valueOf(Integer.parseInt(stringTokenizer.nextToken())));
                    }
                    int size = arrayList.size();
                    iArr = new int[size];
                    for (int i2 = 0; i2 < size; i2++) {
                        iArr[i2] = ((Integer) arrayList.get(i2)).intValue();
                    }
                }
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:getDefaultOptOutEvents(eventType: " + str + ")", e2);
            }
        } catch (Throwable th) {
            throw th;
        }
        return iArr;
    }

    public static synchronized String b(Context context, String str, String str2) {
        try {
            str2 = context.getSharedPreferences(z, 0).getString(b(str), str2);
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:getDefaultEventsURL(eventType: " + str + ", defaultEventsURL:" + str2 + ")", e2);
        }
        return str2;
    }

    public static String e(Context context) {
        String string = context.getSharedPreferences(z, 0).getString(v, "");
        if (string != null && !string.isEmpty()) {
            try {
                String strB = Q9.b(C3775p5.b().c(), string);
                if (strB != null) {
                    if (!strB.isEmpty()) {
                        return strB;
                    }
                }
            } catch (Exception unused) {
            }
            try {
                new JSONObject(string);
                return string;
            } catch (JSONException unused2) {
            }
        }
        return "";
    }

    public static synchronized int[] d(Context context, String str) {
        int[] iArr;
        iArr = null;
        try {
            try {
                String string = context.getSharedPreferences(z, 0).getString(g(str), null);
                if (!TextUtils.isEmpty(string)) {
                    StringTokenizer stringTokenizer = new StringTokenizer(string, ",");
                    ArrayList arrayList = new ArrayList();
                    while (stringTokenizer.hasMoreTokens()) {
                        arrayList.add(Integer.valueOf(Integer.parseInt(stringTokenizer.nextToken())));
                    }
                    int size = arrayList.size();
                    iArr = new int[size];
                    for (int i2 = 0; i2 < size; i2++) {
                        iArr[i2] = ((Integer) arrayList.get(i2)).intValue();
                    }
                }
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:getDefaultTriggerEvents(eventType: " + str + ")", e2);
            }
        } catch (Throwable th) {
            throw th;
        }
        return iArr;
    }

    public static synchronized int[] b(Context context, String str) {
        int[] iArr;
        iArr = null;
        try {
            try {
                String string = context.getSharedPreferences(z, 0).getString(e(str), null);
                if (!TextUtils.isEmpty(string)) {
                    StringTokenizer stringTokenizer = new StringTokenizer(string, ",");
                    ArrayList arrayList = new ArrayList();
                    while (stringTokenizer.hasMoreTokens()) {
                        arrayList.add(Integer.valueOf(Integer.parseInt(stringTokenizer.nextToken())));
                    }
                    int size = arrayList.size();
                    iArr = new int[size];
                    for (int i2 = 0; i2 < size; i2++) {
                        iArr[i2] = ((Integer) arrayList.get(i2)).intValue();
                    }
                }
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:getDefaultOptInEvents(eventType: " + str + ")", e2);
            }
        } catch (Throwable th) {
            throw th;
        }
        return iArr;
    }

    public static void a(Runnable runnable, String str) {
        Thread thread = new Thread(runnable, str);
        thread.setUncaughtExceptionHandler(new c());
        thread.start();
    }

    public static synchronized void a(Context context, String str, int[] iArr) {
        String string;
        try {
            try {
                SharedPreferences.Editor editorEdit = context.getSharedPreferences(z, 0).edit();
                if (iArr != null) {
                    StringBuilder sb = new StringBuilder();
                    for (int i2 : iArr) {
                        sb.append(i2);
                        sb.append(",");
                    }
                    string = sb.toString();
                } else {
                    string = null;
                }
                editorEdit.putString(d(str), string);
                editorEdit.apply();
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:saveDefaultNonConnectivityEvents(eventType: " + str + ", nonConnectivityEvents:" + iArr + ")", e2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static String c(Context context, String str, String str2) {
        return context.getSharedPreferences(z, 0).getString(str, str2);
    }

    public static boolean c(Context context) {
        if (D == null) {
            D = Boolean.valueOf(!C3801q9.a(context));
        }
        return D.booleanValue();
    }

    public static long e() {
        return System.currentTimeMillis();
    }

    public static String c() {
        return O6.a().a("userId");
    }

    public static JSONObject b(boolean z2) {
        return a(z2, false, 1);
    }

    public static void b(Context context, String str, boolean z2) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(z, 0).edit();
        editorEdit.putBoolean(str, z2);
        editorEdit.apply();
    }

    public static synchronized String d() {
        try {
            if (B.compareAndSet(false, true)) {
                C = UUID.randomUUID().toString();
            }
        } catch (Throwable th) {
            throw th;
        }
        return C;
    }

    public static void b(Context context, String str, int i2) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(z, 0).edit();
        editorEdit.putInt(str, i2);
        editorEdit.apply();
    }

    public static X9 d(Context context) {
        String str;
        B7 b7A = Pb.k0().a();
        if (context == null) {
            return null;
        }
        String strB = p.g().b(context);
        if (!TextUtils.isEmpty(strB)) {
            str = IronSourceConstants.TYPE_GAID;
        } else {
            strB = b7A.a(context);
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "using custom identifier", 0);
            str = IronSourceConstants.TYPE_UUID;
        }
        return new X9(strB, str);
    }

    public static synchronized String a(Context context, String str, String str2) {
        try {
            str2 = context.getSharedPreferences(z, 0).getString(c(str), str2);
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:getDefaultEventsFormatterType(eventType: " + str + ", defaultFormatterType:" + str2 + ")", e2);
        }
        return str2;
    }

    public static void b(Context context, String str, long j2) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(z, 0).edit();
        editorEdit.putLong(str, j2);
        editorEdit.apply();
    }

    public static JSONObject b(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
        } catch (JSONException e2) {
            C3813r4.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
        if (jSONObject == null && jSONObject2 == null) {
            return new JSONObject();
        }
        if (jSONObject == null) {
            return jSONObject2;
        }
        if (jSONObject2 == null) {
            return jSONObject;
        }
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!jSONObject.has(next)) {
                jSONObject.put(next, jSONObject2.get(next));
            }
        }
        return jSONObject;
    }

    public static synchronized int[] a(Context context, String str) {
        int[] iArr;
        iArr = null;
        try {
            try {
                String string = context.getSharedPreferences(z, 0).getString(d(str), null);
                if (!TextUtils.isEmpty(string)) {
                    StringTokenizer stringTokenizer = new StringTokenizer(string, ",");
                    ArrayList arrayList = new ArrayList();
                    while (stringTokenizer.hasMoreTokens()) {
                        arrayList.add(Integer.valueOf(Integer.parseInt(stringTokenizer.nextToken())));
                    }
                    int size = arrayList.size();
                    iArr = new int[size];
                    for (int i2 = 0; i2 < size; i2++) {
                        iArr[i2] = ((Integer) arrayList.get(i2)).intValue();
                    }
                }
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:getDefaultNonConnectivityEvents(eventType: " + str + ")", e2);
            }
        } catch (Throwable th) {
            throw th;
        }
        return iArr;
    }

    public static Map<String, String> b(JSONObject jSONObject) {
        HashMap map = new HashMap();
        try {
            if (jSONObject != JSONObject.NULL) {
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (!jSONObject.get(next).toString().isEmpty()) {
                        map.put(next, jSONObject.get(next).toString());
                    }
                }
            }
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
        return map;
    }

    public static String b(Context context) {
        if (Pb.k0().a().b(context)) {
            return "Tablet";
        }
        return "Phone";
    }

    public static JSONObject a(boolean z2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
            if (z2) {
                jSONObject.put(IronSourceConstants.EVENTS_EXT1, "dynamic");
                return jSONObject;
            }
        } catch (JSONException e2) {
            C3813r4.d().a(e2);
        }
        return jSONObject;
    }

    public static JSONObject a(String str, List<String> list, List<String> list2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            for (int i3 = 0; i2 < list.size() && i3 < list2.size(); i3++) {
                String str2 = list.get(i2);
                String str3 = list2.get(i3);
                if (!TextUtils.isEmpty(str3) && !str2.equals(str3)) {
                    str2 = str2 + ";" + str3;
                }
                arrayList.add(str2);
                i2++;
            }
            jSONObject.put(IronSourceConstants.EVENTS_EXT1, str + ";" + TextUtils.join(",", arrayList));
            return jSONObject;
        } catch (JSONException e2) {
            C3813r4.d().a(e2);
            return jSONObject;
        }
    }

    public static JSONObject a(boolean z2, boolean z3, int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
            if (z2) {
                jSONObject.put(IronSourceConstants.EVENTS_DEMAND_ONLY, 1);
            }
            if (z3 && i2 != -1) {
                jSONObject.put(IronSourceConstants.EVENTS_PROGRAMMATIC, i2);
                return jSONObject;
            }
        } catch (JSONException e2) {
            C3813r4.d().a(e2);
        }
        return jSONObject;
    }

    public static boolean a(Context context, String str, boolean z2) {
        return context.getSharedPreferences(z, 0).getBoolean(str, z2);
    }

    public static int a(Context context, String str, int i2) {
        return context.getSharedPreferences(z, 0).getInt(str, i2);
    }

    public static long a(Context context, String str, long j2) {
        return context.getSharedPreferences(z, 0).getLong(str, j2);
    }

    public static JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        JSONObject jSONObject3 = new JSONObject(jSONObject.toString());
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object obj = jSONObject2.get(next);
            if ((obj instanceof JSONObject) && jSONObject3.optJSONObject(next) != null) {
                jSONObject3.put(next, a(jSONObject3.getJSONObject(next), (JSONObject) obj));
            } else {
                jSONObject3.put(next, obj);
            }
        }
        return jSONObject3;
    }

    public static List<Pair<String, String>> a(JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList();
        try {
            if (jSONObject != JSONObject.NULL) {
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (!jSONObject.get(next).toString().isEmpty()) {
                        arrayList.add(new Pair(next, jSONObject.get(next).toString()));
                    }
                }
            }
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
        return arrayList;
    }

    public static boolean a(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String a() {
        try {
            return new Throwable().getStackTrace()[1].getMethodName();
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            return "";
        }
    }
}

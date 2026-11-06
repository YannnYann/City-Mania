package com.ironsource;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.ironsource.C3522b4;
import com.ironsource.mediationsdk.config.ConfigFile;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.unity3d.mediation.LevelPlay;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes3.dex */
public class P6 implements Runnable {
    public static final String M = "sdkVersion";
    public static final String N = "AdvIdOptOutReason";
    private static final int O = 15;
    private static final int P = 840;
    private static final int Q = -720;
    private Context K;
    private final String a = getClass().getSimpleName();
    private final String b = "bundleId";
    private final String c = "advertisingId";
    private final String d = C3522b4.j.M;
    private final String e = "appKey";
    private final String f = C3529bb.o;
    private final String g = "osVersion";
    private final String h = "connectionType";
    private final String i = "rawConnectionType";
    private final String j = "language";
    private final String k = "deviceOEM";
    private final String l = "deviceModel";
    private final String m = C3522b4.j.r;
    private final String n = C3529bb.r;
    private final String o = C3529bb.s;
    private final String p = "battery";
    private final String q = "gmtMinutesOffset";
    private final String r = C3522b4.j.W;
    private final String s = "sessionId";
    private final String t = "pluginType";
    private final String u = "pluginVersion";
    private final String v = "plugin_fw_v";
    private final String w = C3529bb.u;
    private final String x = C3529bb.t;
    private final String y = R6.b1;
    private final String z = C3529bb.w;
    private final String A = "mcc";
    private final String B = "mnc";
    private final String C = "icc";
    private final String D = "tz";
    private final String E = "auid";
    private final String F = "userLat";
    private final String G = "publisherAPI";
    private final String H = "missingDependencies";
    private final String I = "missingManifest";
    private final String J = C3647i2.d;
    private final B7 L = Pb.k0().a();

    private P6() {
    }

    private Map<String, Object> a() {
        boolean z;
        String str;
        HashMap map = new HashMap();
        map.put("sessionId", IronSourceUtils.d());
        String strE = e();
        if (!TextUtils.isEmpty(strE)) {
            map.put("bundleId", strE);
            String strB = M1.b(this.K, strE);
            if (!TextUtils.isEmpty(strB)) {
                map.put(C3522b4.j.W, strB);
            }
        }
        map.put("appKey", c());
        String strI = this.L.I(this.K);
        String strC = this.L.c(this.K);
        boolean z2 = false;
        if (TextUtils.isEmpty(strI)) {
            strI = this.L.a(this.K);
            z = true;
            str = !TextUtils.isEmpty(strI) ? IronSourceConstants.TYPE_UUID : "";
        } else {
            str = IronSourceConstants.TYPE_GAID;
            z = false;
        }
        if (!TextUtils.isEmpty(strI)) {
            map.put("advertisingId", strI);
            map.put(C3529bb.t, str);
        }
        if (!TextUtils.isEmpty(strC)) {
            z2 = Boolean.parseBoolean(strC);
            map.put(C3522b4.j.M, Boolean.valueOf(z2));
        }
        if (z || z2) {
            map.put(N, a(strC));
        }
        map.put(C3529bb.o, h());
        if (!TextUtils.isEmpty(b())) {
            map.put("osVersion", b());
        }
        String strA = IronSourceUtils.a(this.K);
        if (!TextUtils.isEmpty(strA)) {
            map.put("connectionType", strA);
        }
        String strD = Y3.d(this.K);
        if (!TextUtils.isEmpty(strD)) {
            map.put("rawConnectionType", strD);
        }
        map.put("sdkVersion", r());
        String strL = l();
        if (!TextUtils.isEmpty(strL)) {
            map.put("language", strL);
        }
        String strG = g();
        if (!TextUtils.isEmpty(strG)) {
            map.put("deviceOEM", strG);
        }
        String strF = f();
        if (!TextUtils.isEmpty(strF)) {
            map.put("deviceModel", strF);
        }
        String strN = n();
        if (!TextUtils.isEmpty(strN)) {
            map.put(C3522b4.j.r, strN);
        }
        map.put(C3529bb.s, Long.valueOf(k()));
        map.put(C3529bb.r, Long.valueOf(i()));
        map.put("battery", Integer.valueOf(d()));
        int iJ = j();
        if (a(iJ)) {
            map.put("gmtMinutesOffset", Integer.valueOf(iJ));
        }
        String strP = p();
        if (!TextUtils.isEmpty(strP)) {
            map.put("pluginType", strP);
        }
        String strQ = q();
        if (!TextUtils.isEmpty(strQ)) {
            map.put("pluginVersion", strQ);
        }
        String strO = o();
        if (!TextUtils.isEmpty(strO)) {
            map.put("plugin_fw_v", strO);
        }
        String strValueOf = String.valueOf(this.L.p());
        if (!TextUtils.isEmpty(strValueOf)) {
            map.put(C3529bb.u, strValueOf);
        }
        String strM = m();
        if (!TextUtils.isEmpty(strM)) {
            map.put(R6.b1, strM);
        }
        String strValueOf2 = String.valueOf(IronSourceUtils.c(this.K));
        if (!TextUtils.isEmpty(strValueOf2)) {
            map.put(C3529bb.w, strValueOf2);
        }
        String strE2 = this.L.e(this.K);
        if (!TextUtils.isEmpty(strE2)) {
            map.put("auid", strE2);
        }
        map.put("mcc", Integer.valueOf(X3.b(this.K)));
        map.put("mnc", Integer.valueOf(X3.c(this.K)));
        String strH = this.L.H(this.K);
        if (!TextUtils.isEmpty(strH)) {
            map.put("icc", strH);
        }
        String strD2 = this.L.d();
        if (!TextUtils.isEmpty(strD2)) {
            map.put("tz", strD2);
        }
        IronLog.INTERNAL.verbose("collecting data for events: " + map);
        return map;
    }

    private String b() {
        try {
            String str = Build.VERSION.RELEASE;
            return "" + Build.VERSION.SDK_INT + "(" + str + ")";
        } catch (Exception e) {
            C3813r4.d().a(e);
            return "";
        }
    }

    private String c() {
        return com.ironsource.mediationsdk.p.g().h();
    }

    private int d() {
        try {
            Intent intentRegisterReceiver = this.K.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            int intExtra = intentRegisterReceiver != null ? intentRegisterReceiver.getIntExtra("level", -1) : 0;
            int intExtra2 = intentRegisterReceiver != null ? intentRegisterReceiver.getIntExtra("scale", -1) : 0;
            if (intExtra != -1 && intExtra2 != -1) {
                return (int) ((intExtra / intExtra2) * 100.0f);
            }
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, this.a + ":getBatteryLevel()", e);
        }
        return -1;
    }

    private String e() {
        try {
            return this.K.getPackageName();
        } catch (Exception e) {
            C3813r4.d().a(e);
            return "";
        }
    }

    private String f() {
        try {
            return Build.MODEL;
        } catch (Exception e) {
            C3813r4.d().a(e);
            return "";
        }
    }

    private String g() {
        try {
            return Build.MANUFACTURER;
        } catch (Exception e) {
            C3813r4.d().a(e);
            return "";
        }
    }

    private String h() {
        return C3522b4.d;
    }

    private long i() {
        if (!s()) {
            return -1L;
        }
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return (((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize())) / 1048576;
    }

    private int j() {
        try {
            TimeZone timeZone = TimeZone.getDefault();
            return Math.round(((timeZone.getOffset(Calendar.getInstance(timeZone).getTimeInMillis()) / 1000) / 60) / 15) * 15;
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, this.a + ":getGmtMinutesOffset()", e);
            return 0;
        }
    }

    private long k() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return (((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize())) / 1048576;
        } catch (Exception e) {
            C3813r4.d().a(e);
            return -1L;
        }
    }

    private String l() {
        try {
            return Locale.getDefault().getLanguage();
        } catch (Exception e) {
            C3813r4.d().a(e);
            return "";
        }
    }

    private String m() {
        return com.ironsource.mediationsdk.p.g().j();
    }

    private String n() {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) this.K.getSystemService("phone");
            if (telephonyManager != null) {
                String networkOperatorName = telephonyManager.getNetworkOperatorName();
                if (!networkOperatorName.equals("")) {
                    return networkOperatorName;
                }
            }
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, this.a + ":getMobileCarrier()", e);
        }
        return "";
    }

    private String r() {
        return LevelPlay.getSdkVersion();
    }

    private boolean s() {
        try {
            return Environment.getExternalStorageState().equals("mounted");
        } catch (Exception e) {
            C3813r4.d().a(e);
            return false;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            O6.a().a(a());
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "Thread name = " + getClass().getSimpleName(), e);
        }
    }

    private String o() {
        try {
            return ConfigFile.getConfigFile().getPluginFrameworkVersion();
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getPluginFrameworkVersion()", e);
            return "";
        }
    }

    private String p() {
        try {
            return ConfigFile.getConfigFile().getPluginType();
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getPluginType()", e);
            return "";
        }
    }

    private String q() {
        try {
            return ConfigFile.getConfigFile().getPluginVersion();
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getPluginVersion()", e);
            return "";
        }
    }

    public P6(Context context) {
        this.K = context.getApplicationContext();
    }

    private boolean a(int i) {
        return i <= P && i >= Q && i % 15 == 0;
    }

    private String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "missingDependencies";
        }
        if (!C3462a5.a.b()) {
            return "publisherAPI";
        }
        if (this.L.h(this.K)) {
            return Boolean.parseBoolean(str) ? "userLat" : C3647i2.d;
        }
        return "missingManifest";
    }
}

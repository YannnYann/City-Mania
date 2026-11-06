package com.ironsource;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.media.AudioManager;
import android.os.Build;
import android.os.Environment;
import android.os.PowerManager;
import android.os.StatFs;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.webkit.WebSettings;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.tasks.OnSuccessListener;
import com.ironsource.B7;
import com.ironsource.C3522b4;
import com.ironsource.InterfaceC3851t4;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import com.unity3d.services.core.device.MimeTypes;
import java.io.File;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;

/* JADX INFO: renamed from: com.ironsource.d5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3559d5 implements B7, B7.a {
    private static final String A = "browser_user_agent";
    private static final String B = "browser_user_agent_time";
    private static final String C = "IABTCF_gdprApplies";
    private static final String D = "IABTCF_TCString";
    private static final String E = "IABTCF_AddtlConsent";
    private static final String j = "android";
    private static final String k = "com.google.android.gms.permission.AD_ID";
    private static final String l = "com.google.android.gms.ads.identifier.AdvertisingIdClient";
    private static final String m = "com.google.android.gms.appset.AppSet";
    private static final String n = "com.google.android.gms.tasks.OnSuccessListener";
    private static final String o = "getAdvertisingIdInfo";
    private static final String p = "getClient";
    private static final String q = "getAppSetIdInfo";
    private static final String r = "addOnSuccessListener";
    private static final String s = "getId";
    private static final String t = "isLimitAdTrackingEnabled";
    private static final String u = "Mediation_Shared_Preferences";
    private static final String v = "supersonic_shared_preferen";
    private static final String w = "cachedUUID";
    private static final String x = "auid";
    private static final String y = "unityads-installinfo";
    private static final String z = "unityads-idfi";
    private String b = null;
    private String c = null;
    private String d = null;
    private String e = "";
    private boolean f = false;
    private String g = "";
    private volatile String h;
    private volatile String i;

    /* JADX INFO: renamed from: com.ironsource.d5$a */
    public class a implements InvocationHandler {
        public a() {
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            Object obj2;
            if (objArr != null) {
                try {
                    if (objArr.length > 0 && (obj2 = objArr[0]) != null) {
                        String string = obj2.getClass().getMethod(C3559d5.s, null).invoke(objArr[0], null).toString();
                        if (!TextUtils.isEmpty(string)) {
                            C3559d5.this.g = string;
                        }
                    }
                } catch (Exception e) {
                    C3813r4.d().a(e);
                }
            }
            return null;
        }
    }

    private String N(Context context) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        Object objP = P(context);
        return objP.getClass().getMethod(s, null).invoke(objP, null).toString();
    }

    private Object P(Context context) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        int i = AdvertisingIdClient.$r8$clinit;
        return AdvertisingIdClient.class.getMethod(o, Context.class).invoke(AdvertisingIdClient.class, context);
    }

    private String Q(Context context) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        Object objP = P(context);
        return String.valueOf(((Boolean) objP.getClass().getMethod("isLimitAdTrackingEnabled", null).invoke(objP, null)).booleanValue());
    }

    private String R(Context context) {
        try {
            return C3708la.a(context, u, A, "");
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return "";
        }
    }

    private long S(Context context) {
        try {
            return Long.parseLong(C3708la.a(context, u, B, String.valueOf(-1L)));
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return -1L;
        }
    }

    @Override // com.ironsource.B7
    public int A(Context context) {
        return context.getResources().getConfiguration().orientation;
    }

    @Override // com.ironsource.B7
    public String B(Context context) {
        return context.getResources().getConfiguration().locale.getCountry();
    }

    @Override // com.ironsource.B7
    public File C(Context context) {
        return context.getCacheDir();
    }

    @Override // com.ironsource.B7
    public boolean D(Context context) {
        Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        int intExtra = intentRegisterReceiver != null ? intentRegisterReceiver.getIntExtra("status", -1) : -1;
        return intExtra == 2 || intExtra == 5;
    }

    @Override // com.ironsource.B7
    public int E(Context context) {
        Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver != null) {
            return intentRegisterReceiver.getIntExtra("plugged", -1);
        }
        return -1;
    }

    @Override // com.ironsource.B7
    public float F(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        try {
            return audioManager.getStreamVolume(3) / audioManager.getStreamMaxVolume(3);
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return -1.0f;
        }
    }

    @Override // com.ironsource.B7
    public String G(Context context) {
        try {
            return C3708la.a(context, E, (String) null);
        } catch (Exception e) {
            C3813r4.d().a(e);
            return null;
        }
    }

    @Override // com.ironsource.B7
    public String H(Context context) {
        TelephonyManager telephonyManager;
        return (context == null || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null) ? "" : telephonyManager.getNetworkCountryIso();
    }

    @Override // com.ironsource.B7
    public String I(Context context) {
        C3462a5 c3462a5 = C3462a5.a;
        if (c3462a5.b()) {
            try {
                if (!c3462a5.a()) {
                    return N(context);
                }
                if (this.i != null) {
                    return this.i;
                }
                String strN = N(context);
                if (TextUtils.isEmpty(strN)) {
                    return strN;
                }
                this.i = strN;
                return strN;
            } catch (Exception e) {
                C3813r4.d().a(e);
            }
        }
        return null;
    }

    @Override // com.ironsource.B7
    public int K(Context context) {
        return ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
    }

    @Override // com.ironsource.B7
    public String L(Context context) {
        try {
            ResolveInfo resolveInfoResolveActivity = context.getPackageManager().resolveActivity(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME"), 65536);
            if (resolveInfoResolveActivity != null) {
                return resolveInfoResolveActivity.activityInfo.packageName;
            }
            return null;
        } catch (Throwable th) {
            C3813r4.d().a(th);
            return null;
        }
    }

    @Override // com.ironsource.B7
    public int M(Context context) {
        if (context instanceof Activity) {
            return ((Activity) context).getRequestedOrientation();
        }
        return -1;
    }

    @Override // com.ironsource.B7
    public long a() {
        return Calendar.getInstance(TimeZone.getDefault()).getTime().getTime();
    }

    @Override // com.ironsource.B7
    public boolean b(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            if (displayMetrics.widthPixels / displayMetrics.density >= 600.0f) {
                return true;
            }
        }
        return false;
    }

    @Override // com.ironsource.B7
    public Long c(ActivityManager.MemoryInfo memoryInfo) {
        if (memoryInfo == null) {
            return null;
        }
        return Long.valueOf(memoryInfo.availMem);
    }

    @Override // com.ironsource.B7
    public String d() {
        String id = TimeZone.getDefault().getID();
        return id != null ? id : "";
    }

    @Override // com.ironsource.B7
    public int e() {
        return Build.VERSION.SDK_INT;
    }

    @Override // com.ironsource.B7
    public boolean f(Context context) {
        try {
            return Settings.Global.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0;
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return false;
        }
    }

    @Override // com.ironsource.B7
    public File g(Context context) {
        return context.getExternalFilesDir(null);
    }

    @Override // com.ironsource.B7
    public long h() {
        return a(Environment.getDataDirectory());
    }

    @Override // com.ironsource.B7
    public boolean i(Context context) {
        try {
            return Settings.Global.getInt(context.getContentResolver(), "stay_on_while_plugged_in", 0) != 0;
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return false;
        }
    }

    @Override // com.ironsource.B7
    public boolean j() {
        try {
            if ("mounted".equals(Environment.getExternalStorageState())) {
                if (Environment.isExternalStorageRemovable()) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            C3813r4.d().a(e);
            return false;
        }
    }

    @Override // com.ironsource.B7
    public int k() {
        return Resources.getSystem().getDisplayMetrics().widthPixels;
    }

    @Override // com.ironsource.B7
    public String l() {
        return Build.MODEL;
    }

    @Override // com.ironsource.B7
    public int m() {
        return -(TimeZone.getDefault().getOffset(a()) / 60000);
    }

    @Override // com.ironsource.B7
    public String n(Context context) {
        if (context == null) {
            return "";
        }
        int iM = M(context);
        if (iM == 0) {
            return C3522b4.i.C;
        }
        if (iM == 1) {
            return C3522b4.i.D;
        }
        if (iM == 11) {
            return C3522b4.i.C;
        }
        if (iM == 12) {
            return C3522b4.i.D;
        }
        switch (iM) {
            case 6:
            case 8:
                return C3522b4.i.C;
            case 7:
            case 9:
                return C3522b4.i.D;
            default:
                return "none";
        }
    }

    @Override // com.ironsource.B7
    public ActivityManager.MemoryInfo o(Context context) {
        if (context == null || !Pb.k0().h().d()) {
            return null;
        }
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        if (activityManager == null) {
            return null;
        }
        activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo;
    }

    @Override // com.ironsource.B7
    public boolean p() {
        return b(AndroidStaticDeviceInfoDataSource.BINARY_SU);
    }

    @Override // com.ironsource.B7
    public String q() {
        return Build.MANUFACTURER;
    }

    @Override // com.ironsource.B7
    public long r(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        if (activityManager == null) {
            return -1L;
        }
        activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo.totalMem;
    }

    @Override // com.ironsource.B7
    public String s(Context context) {
        return b(context) ? "Tablet" : "Phone";
    }

    @Override // com.ironsource.B7
    public String t() {
        try {
            return System.getProperty("os.arch");
        } catch (SecurityException e) {
            IronLog.INTERNAL.error(e.getMessage());
            return null;
        }
    }

    @Override // com.ironsource.B7
    public int u(Context context) {
        if (context != null) {
            return Settings.System.getInt(context.getContentResolver(), "screen_brightness", -1);
        }
        return -1;
    }

    @Override // com.ironsource.B7
    public String v(Context context) {
        TelephonyManager telephonyManager;
        return (context == null || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null) ? "" : telephonyManager.getNetworkOperatorName();
    }

    @Override // com.ironsource.B7
    public String w(Context context) {
        try {
            return C3708la.a(context, "IABTCF_TCString", (String) null);
        } catch (Exception e) {
            C3813r4.d().a(e);
            return null;
        }
    }

    @Override // com.ironsource.B7
    public boolean x(Context context) {
        return Settings.System.getInt(context.getContentResolver(), "accelerometer_rotation", 0) != 1;
    }

    @Override // com.ironsource.B7
    public String y(Context context) {
        return Locale.getDefault().toString();
    }

    @Override // com.ironsource.B7
    public boolean J(Context context) {
        try {
            return ((PowerManager) context.getSystemService("power")).isPowerSaveMode();
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return false;
        }
    }

    @Override // com.ironsource.B7
    public int c() {
        return Resources.getSystem().getDisplayMetrics().heightPixels;
    }

    @Override // com.ironsource.B7
    public synchronized String e(Context context) {
        if (!TextUtils.isEmpty(this.c)) {
            return this.c;
        }
        if (context == null) {
            return "";
        }
        String strA = C3708la.a(context, "supersonic_shared_preferen", "auid", "");
        this.c = strA;
        if (TextUtils.isEmpty(strA)) {
            String string = UUID.randomUUID().toString();
            this.c = string;
            C3708la.b(context, "supersonic_shared_preferen", "auid", string);
        }
        return this.c;
    }

    @Override // com.ironsource.B7
    public long g() {
        if (j()) {
            return a(Environment.getExternalStorageDirectory());
        }
        return 0L;
    }

    @Override // com.ironsource.B7
    public int l(Context context) {
        try {
            Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            int intExtra = intentRegisterReceiver != null ? intentRegisterReceiver.getIntExtra("level", -1) : 0;
            int intExtra2 = intentRegisterReceiver != null ? intentRegisterReceiver.getIntExtra("scale", -1) : 0;
            if (intExtra != -1 && intExtra2 != -1) {
                return (int) ((intExtra / intExtra2) * 100.0f);
            }
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        return -1;
    }

    @Override // com.ironsource.B7
    public File m(Context context) {
        return context.getExternalCacheDir();
    }

    @Override // com.ironsource.B7
    public int p(Context context) {
        int iK = K(context);
        int iA = A(context);
        return (((iK == 0 || iK == 2) && iA == 2) || ((iK == 1 || iK == 3) && iA == 1)) ? 2 : 1;
    }

    @Override // com.ironsource.B7
    public boolean q(Context context) {
        return context.getResources().getConfiguration().getLayoutDirection() == 1;
    }

    @Override // com.ironsource.B7
    public String d(Context context) {
        return context.getResources().getConfiguration().locale.getLanguage();
    }

    @Override // com.ironsource.B7
    public boolean h(Context context) {
        try {
            for (String str : context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions) {
                if (str.equalsIgnoreCase(k)) {
                    return true;
                }
            }
        } catch (Exception e) {
            C3813r4.d().a(e);
        }
        return false;
    }

    @Override // com.ironsource.B7
    public File k(Context context) {
        return context.getFilesDir();
    }

    @Override // com.ironsource.B7
    public String z(Context context) {
        if (!C3462a5.a.c()) {
            return "";
        }
        try {
            O(context);
            return !TextUtils.isEmpty(this.g) ? this.g : "";
        } catch (Exception e) {
            C3813r4.d().a(e);
            return "";
        }
    }

    private void O(Context context) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        Object objInvoke = AppSet.class.getMethod(p, Context.class).invoke(AppSet.class, context);
        Object objInvoke2 = objInvoke.getClass().getMethod(q, null).invoke(objInvoke, null);
        objInvoke2.getClass().getMethod(r, OnSuccessListener.class).invoke(objInvoke2, Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{OnSuccessListener.class}, new a()));
    }

    @Override // com.ironsource.B7
    public String c(Context context) {
        try {
            if (C3462a5.a.a()) {
                if (this.h == null) {
                    String strQ = Q(context);
                    if (TextUtils.isEmpty(strQ)) {
                        return strQ;
                    }
                    this.h = strQ;
                    return strQ;
                }
                return this.h;
            }
            return Q(context);
        } catch (Exception e) {
            C3813r4.d().a(e);
            return null;
        }
    }

    @Override // com.ironsource.B7
    public int t(Context context) {
        try {
            return C3708la.a(context, C, -1);
        } catch (Exception e) {
            C3813r4.d().a(e);
            return -1;
        }
    }

    private long a(File file) {
        StatFs statFs = new StatFs(file.getPath());
        return (statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong()) / 1048576;
    }

    @Override // com.ironsource.B7
    public Boolean b(ActivityManager.MemoryInfo memoryInfo) {
        if (memoryInfo == null) {
            return null;
        }
        return Boolean.valueOf(memoryInfo.lowMemory);
    }

    @Override // com.ironsource.B7
    public String f() {
        return "android";
    }

    @Override // com.ironsource.B7
    public float r() {
        return Resources.getSystem().getDisplayMetrics().density;
    }

    private boolean b(String str) {
        try {
            String[] strArr = {"/sbin/", "/system/bin/", "/system/xbin/", "/data/local/xbin/", "/data/local/bin/", "/system/sd/xbin/", "/system/bin/failsafe/", "/data/local/"};
            for (int i = 0; i < 8; i++) {
                if (new File(strArr[i] + str).exists()) {
                    return true;
                }
            }
        } catch (Exception e) {
            C3813r4.d().a(e);
        }
        return false;
    }

    @Override // com.ironsource.B7
    public int o() {
        return k();
    }

    @Override // com.ironsource.B7
    public String s() {
        try {
            if (this.e.isEmpty()) {
                return R(ContextProvider.getInstance().getApplicationContext());
            }
            return this.e;
        } catch (Exception e) {
            C3813r4.d().a(e);
            return "";
        }
    }

    @Override // com.ironsource.B7
    public String i() {
        return Build.VERSION.RELEASE;
    }

    @Override // com.ironsource.B7
    public String j(Context context) {
        if (!TextUtils.isEmpty(this.d)) {
            return this.d;
        }
        if (context == null) {
            return null;
        }
        String strA = C3708la.a(context, "unityads-installinfo", "unityads-idfi", (String) null);
        this.d = strA;
        return strA;
    }

    @Override // com.ironsource.B7
    public Long a(ActivityManager.MemoryInfo memoryInfo) {
        if (memoryInfo == null) {
            return null;
        }
        return Long.valueOf(memoryInfo.threshold);
    }

    @Override // com.ironsource.B7
    public long a(String str) {
        return a(new File(str));
    }

    @Override // com.ironsource.B7
    public boolean a(Activity activity) {
        int systemUiVisibility = activity.getWindow().getDecorView().getSystemUiVisibility();
        return (systemUiVisibility | 4096) == systemUiVisibility || (systemUiVisibility | com.ironsource.mediationsdk.metadata.a.o) == systemUiVisibility;
    }

    @Override // com.ironsource.B7
    public synchronized String a(Context context) {
        if (!TextUtils.isEmpty(this.b)) {
            return this.b;
        }
        if (C3708la.a(context, u, B7.a, true)) {
            String strA = C3708la.a(context, u, w, "");
            if (TextUtils.isEmpty(strA)) {
                String string = UUID.randomUUID().toString();
                this.b = string;
                C3708la.b(context, u, w, string);
            } else {
                this.b = strA;
            }
        }
        return this.b;
    }

    @Override // com.ironsource.B7
    public boolean n() {
        return this.f;
    }

    @Override // com.ironsource.B7
    public int b() {
        return c();
    }

    private void b(Context context, long j2) {
        try {
            C3708la.b(context, u, B, String.valueOf(j2));
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    @Override // com.ironsource.B7.a
    public void a(Context context, long j2) {
        if (context != null) {
            if (!new C3881ug(new InterfaceC3851t4.a()).a(S(context), j2)) {
                this.e = R(context);
                this.f = !r0.isEmpty();
            }
            if (this.e.isEmpty()) {
                try {
                    String defaultUserAgent = WebSettings.getDefaultUserAgent(context);
                    this.e = defaultUserAgent;
                    a(context, defaultUserAgent);
                    if (j2 > 0) {
                        b(context, System.currentTimeMillis());
                    }
                } catch (Exception e) {
                    C3813r4.d().a(e);
                    IronLog.INTERNAL.error(e.toString());
                }
            }
        }
    }

    private void a(Context context, String str) {
        try {
            C3708la.b(context, u, A, str);
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }
}

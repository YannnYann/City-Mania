package com.ironsource;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Log;
import com.ironsource.environment.StringUtils;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseAdapter;
import com.vungle.ads.internal.protos.Sdk;

/* JADX INFO: renamed from: com.ironsource.z9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
class C3964z9 {
    private static final String a = "IntegrationHelper";
    private static final String b = "getNetworkSDKVersion";
    private static final String c = "getAdapterSDKVersion";
    private static final String d = "getAdapterVersion";
    private static final String e = "getVersion";

    /* JADX INFO: renamed from: com.ironsource.z9$a */
    public class a extends Thread {
        final /* synthetic */ Context a;

        public a(Context context) {
            this.a = context;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                Log.w(C3964z9.a, "--------------- Google Play Services --------------");
                if (!this.a.getPackageManager().getApplicationInfo(this.a.getPackageName(), Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE).metaData.containsKey("com.google.android.gms.version")) {
                    Log.e(C3964z9.a, "Google Play Services - MISSING");
                    return;
                }
                Log.i(C3964z9.a, "Google Play Services - VERIFIED");
                String strB = com.ironsource.mediationsdk.p.g().b(this.a);
                if (TextUtils.isEmpty(strB)) {
                    return;
                }
                Log.i(C3964z9.a, "GAID is: " + strB + " (use this for test devices)");
            } catch (Exception e) {
                C3813r4.d().a(e);
                Log.e(C3964z9.a, "Google Play Services - MISSING");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean a(android.content.Context r6, java.lang.String r7) {
        /*
            Method dump skipped, instruction units count: 243
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.C3964z9.a(android.content.Context, java.lang.String):boolean");
    }

    public static void b(Context context) {
        Log.i(a, "Verifying Integration:");
        c(context);
        for (String str : C3946y9.a()) {
            if (a(context, str)) {
                String lowerCase = StringUtils.toLowerCase(str);
                lowerCase.getClass();
                switch (lowerCase) {
                    case "vungle":
                        Log.i(a, ">>>> Liftoff Monetization - VERIFIED");
                        break;
                    case "admob":
                        Log.i(a, ">>>> Google (AdMob and Ad Manager) - VERIFIED");
                        break;
                    case "facebook":
                        Log.i(a, ">>>> Meta - VERIFIED");
                        break;
                    default:
                        Log.i(a, ">>>> " + str + " - VERIFIED");
                        break;
                }
            } else {
                String lowerCase2 = StringUtils.toLowerCase(str);
                lowerCase2.getClass();
                switch (lowerCase2) {
                    case "vungle":
                        Log.i(a, ">>>> Liftoff Monetization - NOT VERIFIED");
                        break;
                    case "admob":
                        Log.i(a, ">>>> Google (AdMob and Ad Manager) - NOT VERIFIED");
                        break;
                    case "facebook":
                        Log.i(a, ">>>> Meta - NOT VERIFIED");
                        break;
                    default:
                        Log.e(a, ">>>> " + str + " - NOT VERIFIED");
                        break;
                }
            }
        }
        a(context);
    }

    private static void c(Context context) {
        Log.i(a, "*** Permissions ***");
        PackageManager packageManager = context.getPackageManager();
        if (packageManager.checkPermission("android.permission.INTERNET", context.getPackageName()) == 0) {
            Log.i(a, "android.permission.INTERNET - VERIFIED");
        } else {
            Log.e(a, "android.permission.INTERNET - MISSING");
        }
        if (packageManager.checkPermission("android.permission.ACCESS_NETWORK_STATE", context.getPackageName()) == 0) {
            Log.i(a, "android.permission.ACCESS_NETWORK_STATE - VERIFIED");
        } else {
            Log.e(a, "android.permission.ACCESS_NETWORK_STATE - MISSING");
        }
    }

    private static void b(Object obj) {
        String str;
        try {
            Class<?> cls = obj.getClass();
            if (obj instanceof LevelPlayBaseAdapter) {
                str = b;
            } else {
                str = c;
            }
            Log.i(a, "SDK Version - " + ((String) cls.getMethod(str, null).invoke(obj, null)));
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            Log.w(a, "Unable to get SDK version");
        }
    }

    private static void a(Context context) {
        new a(context).start();
    }

    private static void a(Object obj) {
        try {
            Log.i(a, "Adapter Version - " + ((String) obj.getClass().getMethod(obj instanceof LevelPlayBaseAdapter ? d : "getVersion", null).invoke(obj, null)));
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            Log.w(a, "Unable to get adapter version");
        }
    }
}

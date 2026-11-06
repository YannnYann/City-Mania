package ads_mobile_sdk;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.content.SharedPreferences;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class hr implements xw0 {
    public final Context b;
    public final jw0 c;
    public final xb0 d;
    public final cb3 e;
    public final mm f;
    public final AtomicBoolean g;
    public final AtomicBoolean h;
    public final Mutex i;
    public JsonObject j;
    public final AtomicReference k;
    public final AtomicReference l;
    public final AtomicReference m;
    public final AtomicReference n;
    public final AtomicBoolean o;
    public boolean p;
    public boolean q;
    public boolean r;

    public hr(Context applicationContext, jw0 flagDataStore, xb0 csrbDataStore, cb3 sdkCoreDataStore, mm appSettingsDataStore) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(flagDataStore, "flagDataStore");
        Intrinsics.checkNotNullParameter(csrbDataStore, "csrbDataStore");
        Intrinsics.checkNotNullParameter(sdkCoreDataStore, "sdkCoreDataStore");
        Intrinsics.checkNotNullParameter(appSettingsDataStore, "appSettingsDataStore");
        this.b = applicationContext;
        this.c = flagDataStore;
        this.d = csrbDataStore;
        this.e = sdkCoreDataStore;
        this.f = appSettingsDataStore;
        this.g = new AtomicBoolean(false);
        this.h = new AtomicBoolean(false);
        this.i = MutexKt.Mutex$default(false, 1, null);
        j30 j30VarD = k30.D();
        Intrinsics.checkNotNullExpressionValue(j30VarD, "newBuilder(...)");
        this.k = new AtomicReference(l30.a(j30VarD).a());
        gj2 gj2VarY = hj2.y();
        Intrinsics.checkNotNullExpressionValue(gj2VarY, "newBuilder(...)");
        this.l = new AtomicReference(ij2.a(gj2VarY).a());
        xp2 xp2VarY = yp2.y();
        Intrinsics.checkNotNullExpressionValue(xp2VarY, "newBuilder(...)");
        this.m = new AtomicReference(zp2.a(xp2VarY).a());
        this.n = new AtomicReference(MapsKt__MapsKt.emptyMap());
        this.o = new AtomicBoolean(false);
    }

    public final Object b(String key, Function1 converter) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(converter, "converter");
        try {
            JsonObject jsonObject = this.j;
            if (jsonObject == null) {
                Intrinsics.throwUninitializedPropertyAccessException("flagJson");
                jsonObject = null;
            }
            JsonElement jsonElement = jsonObject.get(key);
            if (jsonElement == null) {
                return null;
            }
            return converter.invoke(jsonElement);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00de, code lost:
    
        if (r11 != r1) goto L44;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0099 A[PHI: r10
      0x0099: PHI (r10v3 ads_mobile_sdk.hr) = (r10v2 ads_mobile_sdk.hr), (r10v11 ads_mobile_sdk.hr) binds: [B:29:0x0096, B:19:0x004c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a9 A[PHI: r10
      0x00a9: PHI (r10v4 ads_mobile_sdk.hr) = (r10v3 ads_mobile_sdk.hr), (r10v12 ads_mobile_sdk.hr) binds: [B:32:0x00a6, B:18:0x0046] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.hr r10, kotlin.coroutines.Continuation r11) {
        /*
            Method dump skipped, instruction units count: 240
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.hr.a(ads_mobile_sdk.hr, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final boolean a(hr hrVar, ActivityManager activityManager, JsonObject jsonObject) {
        hrVar.getClass();
        double dMax = Math.max(1.0d, Math.min(((Number) a(jsonObject, "gads:previous_exit_reason_reset_threshold", Double.valueOf(2.0d), wq.a)).doubleValue(), 10.0d));
        int iMax = Math.max(1, Math.min(Math.max(((int) dMax) * 2, ((Number) a(jsonObject, "gads:previous_exit_reasons_to_scan", 10, yq.a)).intValue()), 20));
        xw0.a.getClass();
        JsonObject jsonObject2 = (JsonObject) a(jsonObject, "gads:previous_exit_reason_values", ww0.b, xq.a);
        double dMin = Math.min(1.0d, ((Number) a(jsonObject, "gads:unspecified_exit_reason_value", Double.valueOf(0.25d), zq.a)).doubleValue());
        List historicalProcessExitReasons = activityManager.getHistoricalProcessExitReasons(hrVar.b.getPackageName(), 0, iMax);
        Intrinsics.checkNotNullExpressionValue(historicalProcessExitReasons, "getHistoricalProcessExitReasons(...)");
        Iterator it = historicalProcessExitReasons.iterator();
        double d = 0.0d;
        while (it.hasNext()) {
            ApplicationExitInfo applicationExitInfoM = hr$$ExternalSyntheticApiModelOutline1.m(it.next());
            if (Intrinsics.areEqual(applicationExitInfoM.getProcessName(), hrVar.b.getPackageName())) {
                ds1 ds1Var = ds1.a;
                double dA = ds1.a(jsonObject2, String.valueOf(applicationExitInfoM.getReason()), dMin);
                d += dA;
                if (dA < 0.0d) {
                    break;
                }
                if (d >= dMax) {
                    return true;
                }
            }
        }
        return false;
    }

    public final Object a(String key, Function1 converter) {
        ur3 ur3Var;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(converter, "converter");
        if (!this.g.get()) {
            Intrinsics.checkNotNullParameter("Flags have not been initialized!", "message");
            f01.b("Flags have not been initialized!", null);
            IllegalStateException illegalStateException = new IllegalStateException("Flags have not been initialized!");
            illegalStateException.printStackTrace();
            bu buVar = au.a;
            if (buVar != bu.b && buVar != bu.c) {
                if (buVar == bu.a && (ur3Var = sr3.a) != null) {
                    ((as3) ur3Var).a("Flags have not been initialized!", (Throwable) illegalStateException);
                }
            } else {
                throw illegalStateException;
            }
        }
        return b(key, converter);
    }

    public static Object a(JsonObject jsonObject, String str, Object obj, Function1 function1) {
        try {
            JsonElement jsonElement = jsonObject.get(str);
            Intrinsics.checkNotNullExpressionValue(jsonElement, "get(...)");
            return function1.invoke(jsonElement);
        } catch (Exception unused) {
            return obj;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00b9 A[Catch: all -> 0x0070, TRY_LEAVE, TryCatch #0 {all -> 0x0070, blocks: (B:38:0x0096, B:40:0x00a0, B:42:0x00aa, B:44:0x00b9, B:47:0x00df, B:51:0x00ee, B:54:0x00fb, B:58:0x0109, B:60:0x010f, B:62:0x0115, B:64:0x011b, B:65:0x0163, B:67:0x0169, B:68:0x0188, B:25:0x0064, B:32:0x0078), top: B:75:0x0064 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0169 A[Catch: all -> 0x0070, LOOP:0: B:65:0x0163->B:67:0x0169, LOOP_END, TryCatch #0 {all -> 0x0070, blocks: (B:38:0x0096, B:40:0x00a0, B:42:0x00aa, B:44:0x00b9, B:47:0x00df, B:51:0x00ee, B:54:0x00fb, B:58:0x0109, B:60:0x010f, B:62:0x0115, B:64:0x011b, B:65:0x0163, B:67:0x0169, B:68:0x0188, B:25:0x0064, B:32:0x0078), top: B:75:0x0064 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.qb0 r9, kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instruction units count: 412
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.hr.a(ads_mobile_sdk.qb0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void a() {
        SharedPreferences sharedPreferences = this.b.getSharedPreferences("GoogleMobileAds", 0);
        if (Intrinsics.areEqual(b("gads:initialize_webview_before_dagger", er.a), Boolean.TRUE)) {
            Intrinsics.checkNotNull(sharedPreferences);
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            Integer num = (Integer) b("gads:initialize_webview_before_dagger:count", fr.a);
            editorEdit.putInt("early_webview_init_count", num != null ? num.intValue() : 5);
            editorEdit.apply();
            String str = (String) b("gads:initialize_webview_before_dagger:profiles", gr.a);
            if (str == null) {
                str = "";
            }
            if (StringsKt__StringsKt.isBlank(str)) {
                return;
            }
            SharedPreferences.Editor editorEdit2 = sharedPreferences.edit();
            editorEdit2.putString("early_webview_init_profiles", str);
            editorEdit2.apply();
            return;
        }
        Intrinsics.checkNotNull(sharedPreferences);
        SharedPreferences.Editor editorEdit3 = sharedPreferences.edit();
        editorEdit3.remove("early_webview_init_count");
        editorEdit3.remove("early_webview_init_profiles");
        editorEdit3.apply();
    }
}

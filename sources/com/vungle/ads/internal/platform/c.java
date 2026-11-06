package com.vungle.ads.internal.platform;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.media.AudioManager;
import android.os.Build;
import android.os.Environment;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import androidx.core.util.Consumer;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.iab.omid.library.vungle.internal.l;
import com.unity3d.services.UnityAdsConstants;
import com.unity3d.services.core.device.MimeTypes;
import com.vungle.ads.internal.executor.j;
import com.vungle.ads.internal.model.j0;
import com.vungle.ads.internal.network.w;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements f {
    public final Context a;
    public final j b;
    public final PowerManager c;
    public final AudioManager d;
    public Long e;
    public String f;
    public Integer g;
    public j0 h;
    public String i;

    public c(Context context, j uaExecutor, PowerManager powerManager, AudioManager audioManager) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uaExecutor, "uaExecutor");
        Intrinsics.checkNotNullParameter(powerManager, "powerManager");
        Intrinsics.checkNotNullParameter(audioManager, "audioManager");
        this.a = context;
        this.b = uaExecutor;
        this.c = powerManager;
        this.d = audioManager;
        p();
    }

    public final void a(final w consumer) {
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        this.b.execute(new Runnable() { // from class: com.vungle.ads.internal.platform.c$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                c.a(this.f$0, consumer);
            }
        });
    }

    public final String b() {
        return this.f;
    }

    public final Integer c() {
        return this.g;
    }

    public final long d() {
        return Build.TIME;
    }

    public final String e() {
        return a.a(this.a);
    }

    public final String f() {
        String str = this.i;
        if (str != null) {
            return str;
        }
        try {
            String str2 = (Build.VERSION.SDK_INT >= 33 ? this.a.getPackageManager().getPackageInfo("com.android.vending", PackageManager.PackageInfoFlags.of(0L)) : this.a.getPackageManager().getPackageInfo("com.android.vending", 0)).versionName;
            this.i = str2;
            return str2;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public final long g() {
        return System.currentTimeMillis() - SystemClock.elapsedRealtime();
    }

    public final long h() {
        Object objM2760constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(Long.valueOf((Build.VERSION.SDK_INT >= 33 ? this.a.getPackageManager().getPackageInfo("android", PackageManager.PackageInfoFlags.of(0L)) : this.a.getPackageManager().getPackageInfo("android", 0)).firstInstallTime));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
        if (thM2763exceptionOrNullimpl != null) {
            if (thM2763exceptionOrNullimpl instanceof PackageManager.NameNotFoundException) {
                boolean z = v.a;
                StringBuilder sbA = l.a("Error getting OS installation time: ");
                sbA.append(((PackageManager.NameNotFoundException) thM2763exceptionOrNullimpl).getLocalizedMessage());
                u.b("AndroidPlatform", sbA.toString());
            }
            objM2760constructorimpl = -1L;
        }
        return ((Number) objM2760constructorimpl).longValue();
    }

    public final long i() {
        Lazy lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new b(this.a));
        Long l = this.e;
        if (l != null) {
            return l.longValue();
        }
        long jA = ((FilePreferences) lazy.getValue()).a("sit", 0L);
        if (jA == 0) {
            jA = System.currentTimeMillis();
            ((FilePreferences) lazy.getValue()).b("sit", jA).b();
        }
        this.e = Long.valueOf(jA);
        return jA;
    }

    public final String j() {
        return System.getProperty("http.agent");
    }

    public final float k() {
        try {
            float streamVolume = this.d.getStreamVolume(3) / this.d.getStreamMaxVolume(3);
            if (!Float.isNaN(streamVolume)) {
                if (!Float.isInfinite(streamVolume) && streamVolume >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                    if (streamVolume > 1.0f) {
                        return 1.0f;
                    }
                    return streamVolume;
                }
            }
        } catch (Exception unused) {
        }
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public final boolean l() {
        return this.c.isPowerSaveMode();
    }

    public final boolean m() {
        try {
            return Intrinsics.areEqual(Environment.getExternalStorageState(), "mounted");
        } catch (Exception e) {
            boolean z = v.a;
            u.a("AndroidPlatform", "Acquiring external storage state failed", e);
            return false;
        }
    }

    public final boolean n() {
        try {
            if (this.d.getRingerMode() != 0) {
                if (this.d.getRingerMode() != 1) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public final boolean o() {
        try {
            return this.d.getStreamVolume(3) > 0;
        } catch (Exception unused) {
            return true;
        }
    }

    public final void p() {
        String str = this.f;
        if (str == null || str.length() == 0) {
            try {
                AppSetIdClient client = AppSet.getClient(this.a);
                Intrinsics.checkNotNullExpressionValue(client, "getClient(context)");
                Task<AppSetIdInfo> appSetIdInfo = client.getAppSetIdInfo();
                Intrinsics.checkNotNullExpressionValue(appSetIdInfo, "client.appSetIdInfo");
                appSetIdInfo.addOnSuccessListener(new OnSuccessListener() { // from class: com.vungle.ads.internal.platform.c$$ExternalSyntheticLambda0
                    @Override // com.google.android.gms.tasks.OnSuccessListener
                    public final void onSuccess(Object obj) {
                        c.a(this.f$0, (AppSetIdInfo) obj);
                    }
                });
            } catch (Exception e) {
                boolean z = v.a;
                StringBuilder sbA = l.a("Error getting AppSetID: ");
                sbA.append(e.getLocalizedMessage());
                u.b("AndroidPlatform", sbA.toString());
            } catch (NoClassDefFoundError e2) {
                boolean z2 = v.a;
                StringBuilder sbA2 = l.a("Required libs to get AppSetID Not available: ");
                sbA2.append(e2.getLocalizedMessage());
                u.b("AndroidPlatform", sbA2.toString());
            }
        }
    }

    public static final void a(c this$0, Consumer consumer) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(consumer, "$consumer");
        g.a(this$0.a, consumer);
    }

    public final j0 a() {
        j0 j0Var;
        String strA;
        j0 j0Var2 = this.h;
        if (j0Var2 != null && (strA = j0Var2.a()) != null && strA.length() != 0) {
            return j0Var2;
        }
        boolean z = true;
        if (StringsKt__StringsJVMKt.equals(Build.MANUFACTURER, "Amazon", true)) {
            j0Var = new j0();
            try {
                ContentResolver contentResolver = this.a.getContentResolver();
                if (Settings.Secure.getInt(contentResolver, "limit_ad_tracking") != 1) {
                    z = false;
                }
                j0Var.b = z;
                j0Var.a = Settings.Secure.getString(contentResolver, "advertising_id");
            } catch (Settings.SettingNotFoundException e) {
                boolean z2 = v.a;
                u.a("AndroidPlatform", "Error getting Amazon advertising info: Setting not found.", e);
            } catch (Exception e2) {
                boolean z3 = v.a;
                u.a("AndroidPlatform", "Error getting Amazon advertising info", e2);
            }
        } else {
            j0 j0Var3 = new j0();
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.a);
                Intrinsics.checkNotNullExpressionValue(advertisingIdInfo, "getAdvertisingIdInfo(context)");
                j0Var3.a(advertisingIdInfo.getId());
                j0Var3.a(advertisingIdInfo.isLimitAdTrackingEnabled());
            } catch (GooglePlayServicesNotAvailableException e3) {
                boolean z4 = v.a;
                StringBuilder sbA = l.a("Play services Not available: ");
                sbA.append(e3.getLocalizedMessage());
                u.b("AndroidPlatform", sbA.toString());
            } catch (Exception e4) {
                boolean z5 = v.a;
                StringBuilder sbA2 = l.a("Error getting Google advertising info: ");
                sbA2.append(e4.getLocalizedMessage());
                u.b("AndroidPlatform", sbA2.toString());
            } catch (NoClassDefFoundError e5) {
                boolean z6 = v.a;
                StringBuilder sbA3 = l.a("Play services Not available: ");
                sbA3.append(e5.getLocalizedMessage());
                u.b("AndroidPlatform", sbA3.toString());
                j0Var3.a(Settings.Secure.getString(this.a.getContentResolver(), "advertising_id"));
            }
            j0Var = j0Var3;
        }
        this.h = j0Var;
        return j0Var;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ c(Context context, j jVar) {
        Object systemService = context.getSystemService("power");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        Object systemService2 = context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        Intrinsics.checkNotNull(systemService2, "null cannot be cast to non-null type android.media.AudioManager");
        this(context, jVar, (PowerManager) systemService, (AudioManager) systemService2);
    }

    public static final void a(c this$0, AppSetIdInfo appSetIdInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (appSetIdInfo != null) {
            this$0.f = appSetIdInfo.getId();
            this$0.g = Integer.valueOf(appSetIdInfo.getScope());
        }
    }
}

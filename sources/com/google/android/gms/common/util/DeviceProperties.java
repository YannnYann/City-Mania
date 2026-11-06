package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import com.google.android.apps.common.proguard.SideEffectFree;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.InternalClientFlagRegistry;
import com.google.android.gms.common.internal.ShowFirstParty;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
public final class DeviceProperties {
    private static Boolean zza;
    private static Boolean zzb;
    private static Boolean zzc;
    private static Boolean zzd;
    private static Boolean zze;
    private static Boolean zzf;
    private static Boolean zzg;
    private static Boolean zzh;
    private static Boolean zzi;
    private static Boolean zzj;
    private static Boolean zzk;
    private static Boolean zzl;
    private static Boolean zzm;
    private static Boolean zzn;
    private static Boolean zzo;
    private static Boolean zzp;
    private static Boolean zzq;
    private static Boolean zzr;

    private DeviceProperties() {
    }

    @SideEffectFree
    @KeepForSdk
    public static boolean isAuto(Context context) {
        return zzg(context.getPackageManager());
    }

    @SideEffectFree
    @KeepForSdk
    public static boolean isBstar(Context context) {
        if (zzo == null) {
            boolean z = false;
            if (PlatformVersion.isAtLeastR() && context.getPackageManager().hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE")) {
                z = true;
            }
            zzo = Boolean.valueOf(z);
        }
        return zzo.booleanValue();
    }

    @KeepForSdk
    public static boolean isFoldable(Context context) {
        if (zzd == null) {
            boolean z = false;
            if (PlatformVersion.isAtLeastR() && context.getPackageManager().hasSystemFeature("android.hardware.sensor.hinge_angle")) {
                z = true;
            }
            zzd = Boolean.valueOf(z);
        }
        return zzd.booleanValue();
    }

    @KeepForSdk
    public static boolean isLatchsky(Context context) {
        if (zzh == null) {
            PackageManager packageManager = context.getPackageManager();
            boolean z = false;
            if (packageManager.hasSystemFeature("com.google.android.feature.services_updater") && packageManager.hasSystemFeature("cn.google.services")) {
                z = true;
            }
            zzh = Boolean.valueOf(z);
        }
        return zzh.booleanValue();
    }

    @KeepForSdk
    public static boolean isPhone(Context context) {
        if (zza == null) {
            if (InternalClientFlagRegistry.getClientFlags().isPhoneRefinedFoldableAndTabletLogic()) {
                boolean z = isWearable(context) || zze(context) || zzf(context) || isAuto(context) || isTv(context) || isBstar(context) || isXr(context) || zzk(context) || zzc(context.getPackageManager());
                if (isTablet(context)) {
                    zza = Boolean.valueOf(isFoldable(context) && !z);
                } else {
                    zza = Boolean.valueOf(!z);
                }
            } else {
                if (!isFoldable(context) && (isTablet(context) || isWearable(context) || zze(context) || zzf(context) || isAuto(context) || isTv(context) || zzj(context.getPackageManager()) || isBstar(context) || isXr(context) || zzk(context) || zzc(context.getPackageManager()))) {
                    z = false;
                }
                zza = Boolean.valueOf(z);
            }
        }
        return zza.booleanValue();
    }

    @KeepForSdk
    public static boolean isPhoneGo(Context context) {
        ActivityManager activityManager;
        boolean z = false;
        if (context == null) {
            return false;
        }
        if (zzb == null) {
            if (isPhone(context)) {
                if (zzi == null && (activityManager = (ActivityManager) context.getSystemService("activity")) != null) {
                    zzi = Boolean.valueOf(activityManager.isLowRamDevice());
                }
                if (Objects.equals(zzi, Boolean.TRUE) && Build.VERSION.SDK_INT >= 27) {
                    z = true;
                }
            }
            zzb = Boolean.valueOf(z);
        }
        return zzb.booleanValue();
    }

    @KeepForSdk
    public static boolean isSevenInchTablet(Context context) {
        return zza(context.getResources());
    }

    @KeepForSdk
    public static boolean isSidewinder(Context context) {
        return zzd(context);
    }

    @KeepForSdk
    public static boolean isTablet(Context context) {
        return isTablet(context.getResources());
    }

    @SideEffectFree
    @KeepForSdk
    public static boolean isTv(Context context) {
        return zzh(context.getPackageManager());
    }

    @KeepForSdk
    public static boolean isUserBuild() {
        int i = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
        return "user".equals(Build.TYPE);
    }

    @SideEffectFree
    @KeepForSdk
    public static boolean isWearable(Context context) {
        return zzb(context.getPackageManager());
    }

    @KeepForSdk
    @TargetApi(26)
    public static boolean isWearableWithoutPlayStore(Context context) {
        if (zzd(context)) {
            return !PlatformVersion.isAtLeastO() || PlatformVersion.isAtLeastR();
        }
        return false;
    }

    @SideEffectFree
    @KeepForSdk
    public static boolean isXr(Context context) {
        return zzi(context.getPackageManager());
    }

    public static boolean zza(Resources resources) {
        boolean z = false;
        if (resources == null) {
            return false;
        }
        if (zze == null) {
            Configuration configuration = resources.getConfiguration();
            if ((configuration.screenLayout & 15) <= 3 && configuration.smallestScreenWidthDp >= 600) {
                z = true;
            }
            zze = Boolean.valueOf(z);
        }
        return zze.booleanValue();
    }

    @SideEffectFree
    public static boolean zzb(PackageManager packageManager) {
        if (zzf == null) {
            zzf = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        return zzf.booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean zzc(android.content.pm.PackageManager r4) {
        /*
            java.lang.Boolean r0 = com.google.android.gms.common.util.DeviceProperties.zzr
            if (r0 != 0) goto L35
            boolean r0 = com.google.android.gms.common.util.PlatformVersion.isAtLeastV()
            r1 = 0
            if (r0 != 0) goto Lc
            goto L2f
        Lc:
            int r0 = android.os.Build.VERSION.SDK_INT
            r2 = 36
            if (r0 < r2) goto L13
            goto L26
        L13:
            java.lang.String r0 = android.os.Build.VERSION.CODENAME
            char r2 = r0.charAt(r1)
            r3 = 66
            if (r2 < r3) goto L2f
            char r0 = r0.charAt(r1)
            r2 = 67
            if (r0 <= r2) goto L26
            goto L2f
        L26:
            java.lang.String r0 = "android.hardware.type.xr_peripheral"
            boolean r4 = r4.hasSystemFeature(r0)
            if (r4 == 0) goto L2f
            r1 = 1
        L2f:
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r1)
            com.google.android.gms.common.util.DeviceProperties.zzr = r4
        L35:
            java.lang.Boolean r4 = com.google.android.gms.common.util.DeviceProperties.zzr
            boolean r4 = r4.booleanValue()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.DeviceProperties.zzc(android.content.pm.PackageManager):boolean");
    }

    public static boolean zzd(Context context) {
        if (zzg == null) {
            zzg = Boolean.valueOf(context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return zzg.booleanValue();
    }

    public static boolean zze(Context context) {
        if (zzj == null) {
            zzj = Boolean.valueOf(PlatformVersion.isAtLeastO() ? context.getPackageManager().hasSystemFeature("android.hardware.type.embedded") : context.getPackageManager().hasSystemFeature("android.hardware.type.iot"));
        }
        return zzj.booleanValue();
    }

    @ShowFirstParty
    public static boolean zzf(Context context) {
        if (zzk == null) {
            zzk = Boolean.valueOf(context.getPackageManager().hasSystemFeature("org.chromium.arc"));
        }
        return zzk.booleanValue();
    }

    @SideEffectFree
    public static boolean zzg(PackageManager packageManager) {
        if (zzl == null) {
            boolean z = false;
            if (PlatformVersion.isAtLeastO() && packageManager.hasSystemFeature("android.hardware.type.automotive")) {
                z = true;
            }
            zzl = Boolean.valueOf(z);
        }
        return zzl.booleanValue();
    }

    @SideEffectFree
    public static boolean zzh(PackageManager packageManager) {
        if (zzm == null) {
            boolean z = true;
            if (!packageManager.hasSystemFeature("com.google.android.tv") && !packageManager.hasSystemFeature("android.hardware.type.television") && !packageManager.hasSystemFeature("android.software.leanback") && !zzj(packageManager)) {
                z = false;
            }
            zzm = Boolean.valueOf(z);
        }
        return zzm.booleanValue();
    }

    @SideEffectFree
    public static boolean zzi(PackageManager packageManager) {
        if (zzp == null) {
            zzp = Boolean.valueOf(packageManager.hasSystemFeature("android.software.xr.api.spatial"));
        }
        return zzp.booleanValue();
    }

    public static boolean zzj(PackageManager packageManager) {
        if (zzn == null) {
            zzn = Boolean.valueOf(packageManager.hasSystemFeature("com.google.android.feature.AMATI_EXPERIENCE"));
        }
        return zzn.booleanValue();
    }

    @ShowFirstParty
    public static boolean zzk(Context context) {
        if (zzq == null) {
            zzq = Boolean.valueOf(context.getPackageManager().hasSystemFeature("com.google.desktop.gms"));
        }
        return zzq.booleanValue();
    }

    @KeepForSdk
    public static boolean isTablet(Resources resources) {
        if (resources == null) {
            return false;
        }
        if (zzc == null) {
            zzc = Boolean.valueOf((resources.getConfiguration().screenLayout & 15) > 3 || zza(resources));
        }
        return zzc.booleanValue();
    }
}

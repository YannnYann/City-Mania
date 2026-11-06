package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.facebook.ads.internal.util.activity.ActivityUtils;
import com.facebook.ads.internal.util.activity.AdActivityIntent;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.pK, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3032pK {
    public static byte[] A00;
    public static String[] A01 = {"HfGv3264Bq2TQ34NqRtE4P30TXR", "AZVpgJ8fi5FDz5AiC", "FCmmf0GU", "NGZF99o8OEHjBvmOxlLxN", "MEp80XUn5zKurDhCJ73", "hVp2plT6ulDLwck", "CErebgOhZelO8plRL7vU3", "v0a34uu5Y8rm3tpqkSr554RtUBdvL4ru"};

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 60);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A09() {
        A00 = new byte[]{-49, -36, -19, -44, -48, -62, -49, -19, -31, -45, -47, -29, -32, -45, -19, -30, -35, -39, -45, -36, -20, -7, 10, -14, -5, -2, 10, -20, -17, 10, -18, -6, -7, -1, -16, -7, -1, -56, -58, -47, -47, -54, -41, -28, -55, -44, -46, -58, -50, -45, -6, 24, 37, -34, 43, -41, 42, 43, 24, 41, 43, -41, -8, 44, 27, 32, 28, 37, 26, 28, 5, 28, 43, 46, 38, 41, 34, -8, 26, 43, 32, 45, 32, 43, 48, -27, -41, 4, 24, 34, 28, -41, 42, 44, 41, 28, -41, 43, 31, 24, 43, -41, 32, 43, -34, 42, -41, 32, 37, -41, 48, 38, 44, 41, -41, -8, 37, 27, 41, 38, 32, 27, 4, 24, 37, 32, 29, 28, 42, 43, -27, 47, 36, 35, -41, 29, 32, 35, 28, -27, -88, -69, -73, -75, -92, -62, -72, -75, -81, -60, -64, -65, -13, -30, -25, -29, -20, -31, -29, -52, -29, -14, -11, -19, -16, -23, -30, -76, -84, -71, -86, -84, -82, -65, -76, -63, -76, -65, -60, -58, -45, -55, -41, -44, -50, -55, -49, -36, -46, -32, -35, -41, -46, -100, -41, -36, -30, -45, -36, -30, -100, -49, -47, -30, -41, -35, -36, -100, -60, -73, -77, -59, -32, -19, -29, -15, -18, -24, -29, -83, -24, -19, -13, -28, -19, -13, -83, -30, -32, -13, -28, -26, -18, -15, -8, -83, -63, -47, -50, -42, -46, -64, -63, -53, -60, -90, -77, -77, -80, -17, -1, -4, 4, 0, -14, -1, -30, -33, -39, -76, -60, -63, -55, -59, -73, -60, -79, -58, -53, -62, -73, -78, -80, -69, -69, -76, -63, -104, -77, -39, -41, -30, -30, -37, -24, -54, -17, -26, -37, -72, -72, -55, -76, -55, -50, -59, -70, -77, -68, -71, -75, -66, -60, -92, -65, -69, -75, -66, -66, -54, -56, -119, -68, -55, -65, -51, -54, -60, -65, -119, -67, -51, -54, -46, -50, -64, -51, -119, -68, -53, -53, -57, -60, -66, -68, -49, -60, -54, -55, -70, -60, -65, 24, 36, 34, -29, 22, 35, 25, 39, 36, 30, 25, -29, 43, 26, 35, 25, 30, 35, 28, -7, 5, 3, -60, -4, -9, -7, -5, -8, 5, 5, 1, -60, -3, 5, 5, -3, 2, -5, 6, 2, -9, 15, 9, 10, 5, 8, -5, -9, 4, -60, -35, 5, 5, -3, 2, -5, -26, 2, -9, 15, -23, 10, 5, 8, -5, -41, -28, -27, 12, -5, 8, 2, -9, 15, -37, 14, 10, -5, 8, 4, -9, 2, -41, -7, 10, -1, 12, -1, 10, 15, -88, -76, -78, 115, -85, -90, -88, -86, -89, -76, -76, -80, 115, -80, -90, -71, -90, -77, -90, -22, -10, -11, -19, -16, -18, -26, -6, -4, -9, -9, -10, -7, -5, -6, -44, -4, -13, -5, -16, -34, -16, -11, -21, -10, -2, -76, -64, -65, -73, -70, -72, -80, -60, -58, -63, -63, -64, -61, -59, -60, -92, -63, -67, -70, -59, -92, -76, -61, -74, -74, -65, -98, -58, -67, -59, -70, -88, -70, -65, -75, -64, -56, -25, -10, -23, -27, -8, -23, -29, -14, -23, -5, -29, -8, -27, -26, -29, -33, 12, 15, 18, 26, 11, 24, 11, 10, 5, 9, 18, 15, 9, 17, 5, 10, 11, 18, 7, 31, 5, 19, 25, -5, -12, 1, -9, -1, -8, 5, -25, -4, 0, -8, -53, -41, -41, -45, -75, -63, -63, -67, -121, 124, 124, -67, -71, -82, -58, 123, -76, -68, -68, -76, -71, -78, 123, -80, -68, -70, 124, -64, -63, -68, -65, -78, 124, -82, -67, -67, -64, 124, -7, 5, 5, 1, 4, -1, 11, 11, 7, 10, -47, -58, -58, 7, 3, -8, 16, -59, -2, 6, 6, -2, 3, -4, -59, -6, 6, 4, -58, -5, -42, -80, -85, -60, -55, -50, -49, -68, -55, -49, -70, -62, -68, -56, -64, -50, -63, -53, -73, -69, -71, -69, -73, -66, -63, -60, -52, -67, -54, -73, -69, -60, -63, -69, -61, -53, -73, -57, -58, -73, -69, -52, -71, 35, 45, 25, 29, 44, 31, 27, 46, 35, 48, 31, 25, 27, 45, 25, 29, 46, 27, 25, 48, -20, -81, -71, -91, -68, 120, -91, -86, -85, -71, -81, -83, -76, -66, -78, -61, -68, -74, -59, 6, 13, -4, 9, 3, -8, 16, -59, -63, -74, -50, -125, -68, -60, -60, -68, -63, -70, -125, -72, -60, -62, -39, -37, -40, -42, -40, -56, -52, -40, -51, -50, -55, -53, -56, -58, -56, -72, -68, -56, -67, -66, -72, -69, -53, -70, -57, -67, -72, -62, -68, -56, -57, -72, -50, -53, -59, 23, 25, 22, 20, 22, 6, 10, 22, 11, 12, 6, 9, 25, 8, 21, 11, 6, 21, 8, 20, 12, -67, -65, -68, -70, -68, -84, -80, -68, -79, -78, -84, -71, -82, -81, -78, -71, -84, -64, -62, -81, -63, -74, -63, -71, -78, -83, -81, -84, -86, -84, -100, -96, -84, -95, -94, -100, -87, -98, -97, -94, -87, -100, -79, -90, -79, -87, -94, -13, -26, -12, -22, -5, -26, -50, -16, -27, -26, -16, -23, -28, -20, -16, -32, -60, -33, 23, 10, 6, 24, -11, 26, 17, 6};
    }

    static {
        A09();
    }

    private int A00(C1643Hi c1643Hi) {
        PackageInfo packageInfo;
        try {
            PackageManager packageManager = c1643Hi.getPackageManager();
            if (packageManager != null && (packageInfo = packageManager.getPackageInfo(A07(432, 19, 9), 0)) != null && !TextUtils.isEmpty(packageInfo.versionName)) {
                return Integer.parseInt(packageInfo.versionName.split(A07(166, 2, 74), 2)[0]);
            }
            return -1;
        } catch (PackageManager.NameNotFoundException | NumberFormatException unused) {
            return -1;
        }
    }

    public static Intent A01(Uri uri) {
        Intent intent = new Intent(A07(186, 26, 50), uri);
        intent.setComponent(null);
        intent.setSelector(null);
        return intent;
    }

    public static Intent A02(C1643Hi c1643Hi, Uri uri) {
        Intent intentA01 = A01(uri);
        intentA01.addCategory(A07(212, 33, 67));
        intentA01.addFlags(268435456);
        intentA01.putExtra(A07(Sdk.SDKError.Reason.AD_WIN_NOTIFICATION_ERROR_VALUE, 34, 31), c1643Hi.getPackageName());
        intentA01.putExtra(A07(EventTypeExtended.EVENT_TYPE_EXTENDED_IMPRESSION_OPPORTUNITY_VALUE, 14, 72), false);
        if (C2888mv.A24(c1643Hi)) {
            if (A07(528, 2, 65).equals(uri.getScheme())) {
                intentA01.setPackage(A07(432, 19, 9));
            }
        }
        return intentA01;
    }

    public static Intent A03(C1643Hi c1643Hi, Uri uri) {
        Intent intentA01 = A01(uri);
        intentA01.setPackage(A07(342, 19, Sdk.SDKError.Reason.TPAT_ERROR_VALUE));
        intentA01.putExtra(A07(271, 8, 19), c1643Hi.getPackageName());
        intentA01.putExtra(A07(714, 7, 91), true);
        return intentA01;
    }

    public static Uri A04(C1643Hi c1643Hi, Uri uri) {
        boolean zEquals = A07(IronSourceError.ERROR_NT_INSTANCE_LOAD_TIMEOUT, 6, 21).equals(uri.getScheme());
        String strA07 = A07(607, 26, 91);
        if (zEquals) {
            return AbstractC3036pP.A00(strA07 + uri.getEncodedQuery());
        }
        if (uri.toString().startsWith(strA07)) {
            return uri;
        }
        c1643Hi.A0F().AC4(5);
        return null;
    }

    private final EnumC2383ec A05(C1643Hi c1643Hi, Uri uri, String str, Map<String, String> extraData) throws C3020p6 {
        if (AbstractC3074q1.A03(c1643Hi, uri)) {
            return EnumC2383ec.A09;
        }
        boolean zA05 = AbstractC2889mw.A05(c1643Hi);
        boolean isInAppBrowserEnabled = A0G(uri);
        if (isInAppBrowserEnabled && zA05) {
            A0C(c1643Hi, uri, str, extraData);
            return EnumC2383ec.A07;
        }
        c1643Hi.A0F().AAb(zA05);
        A0A(c1643Hi, uri);
        return EnumC2383ec.A06;
    }

    public static EnumC2383ec A06(C3032pK c3032pK, C1643Hi c1643Hi, Uri uri, String str, Map<String, String> extraData) throws C3020p6 {
        boolean z = A0G(uri) && A07(721, 15, 25).equals(uri.getHost());
        boolean isGooglePlayWebLink = A07(IronSourceError.ERROR_NT_INSTANCE_LOAD_TIMEOUT, 6, 21).equals(uri.getScheme());
        if (!isGooglePlayWebLink && !z) {
            return c3032pK.A05(c1643Hi, uri, str, extraData);
        }
        try {
            c3032pK.A0B(c1643Hi, uri, str);
            return EnumC2383ec.A02;
        } catch (C3030pI unused) {
            return c3032pK.A05(c1643Hi, uri, str, extraData);
        }
    }

    private String A08(String str) {
        return Base64.encodeToString(str.getBytes(), 0);
    }

    private void A0A(C1643Hi c1643Hi, Uri uri) throws C3020p6 {
        C3022p8.A0F(c1643Hi, A02(c1643Hi, uri));
    }

    private final void A0B(C1643Hi c1643Hi, Uri uri, String str) throws C3020p6, C3030pI {
        if (A0I(c1643Hi)) {
            if (C2888mv.A1I(c1643Hi)) {
                String queryParameter = uri.getQueryParameter(A07(633, 2, 11));
                if (!TextUtils.isEmpty(queryParameter)) {
                    String strA07 = A07(635, 13, 31);
                    String packageName = uri.toString();
                    AbstractC2498gU.A03(queryParameter, strA07, packageName);
                }
            }
            boolean z = (c1643Hi.A0H().A01() && C2888mv.A1g(c1643Hi)) || (C2888mv.A25(c1643Hi) && A0J(c1643Hi));
            if (!z) {
                boolean shouldTryToOpenSplitScreen = C2888mv.A2T(c1643Hi);
                if (shouldTryToOpenSplitScreen) {
                    boolean shouldTryToOpenSplitScreen2 = C3022p8.A0G(c1643Hi, A03(c1643Hi, uri));
                    if (shouldTryToOpenSplitScreen2) {
                        return;
                    }
                }
            }
            boolean shouldTryToOpenSplitScreen3 = A0N(c1643Hi, uri, str);
            if (shouldTryToOpenSplitScreen3) {
                return;
            }
            boolean shouldTryToOpenSplitScreen4 = A0L(c1643Hi, uri);
            if (shouldTryToOpenSplitScreen4) {
                return;
            }
            Intent intentA02 = A02(c1643Hi, uri);
            intentA02.setPackage(A07(342, 19, Sdk.SDKError.Reason.TPAT_ERROR_VALUE));
            String[] strArr = A01;
            if (strArr[1].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[1] = "oySe08AdloN619CTf";
            strArr2[4] = "wfeca9V2a8KiRHzYJ69";
            if (Build.VERSION.SDK_INT >= 24 && z) {
                intentA02.addFlags(268472320);
            }
            C3022p8.A0F(c1643Hi, intentA02);
            if (A01[2].length() != 8) {
                throw new RuntimeException();
            }
            A01[5] = "qFbJT162g8rKXFE";
            return;
        }
        throw new C3030pI();
    }

    private void A0C(C1643Hi c1643Hi, Uri uri, String str, Map<String, String> map) {
        AdActivityIntent adActivityIntentA06 = C3022p8.A06(c1643Hi);
        if (!ProcessUtils.isRemoteRenderingProcess()) {
            adActivityIntentA06.addFlags(268435456);
        }
        adActivityIntentA06.putExtra(A07(857, 8, 101), EnumC2980oR.A04);
        adActivityIntentA06.putExtra(A07(249, 10, 81), uri.toString());
        adActivityIntentA06.putExtra(A07(297, 11, 20), str);
        adActivityIntentA06.putExtra(A07(553, 11, 87), System.currentTimeMillis());
        if (map != null) {
            String strA07 = A07(279, 10, 58);
            adActivityIntentA06.putExtra(strA07, map.get(strA07));
            String strA072 = A07(675, 21, Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE);
            adActivityIntentA06.putExtra(strA072, map.get(strA072));
            String strA073 = A07(648, 27, 28);
            adActivityIntentA06.putExtra(strA073, map.get(strA073));
            String strA074 = A07(IronSourceError.ERROR_AD_UNIT_CAPPED, 23, 106);
            adActivityIntentA06.putExtra(strA074, map.get(strA074));
            String strA075 = A07(259, 12, 22);
            adActivityIntentA06.putExtra(strA075, map.get(strA075));
            String strA076 = A07(289, 8, 25);
            adActivityIntentA06.putExtra(strA076, map.get(strA076));
            String strA077 = A07(849, 8, 63);
            String str2 = map.get(strA077);
            if (str2 != null) {
                adActivityIntentA06.putExtra(strA077, str2);
            }
            if (A01[5].length() != 15) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[1] = "uZm3VU4116rBIdka1";
            strArr[4] = "BeLmzDhDkOndpTZoDRc";
            String strA078 = A07(696, 12, 10);
            String str3 = map.get(strA078);
            if (str3 != null) {
                adActivityIntentA06.putExtra(strA078, Boolean.valueOf(str3));
            }
            A0F(map, adActivityIntentA06, A07(736, 10, 45));
            A0F(map, adActivityIntentA06, A07(817, 22, 1));
            A0F(map, adActivityIntentA06, A07(792, 25, 17));
            A0F(map, adActivityIntentA06, A07(771, 21, 107));
            A0F(map, adActivityIntentA06, A07(746, 25, 29));
        }
        try {
            C3022p8.A0D(c1643Hi, adActivityIntentA06);
        } catch (C3020p6 e) {
            Throwable cause = e.getCause();
            C3020p6 cause2 = e;
            if (cause != null) {
                cause2 = e.getCause();
            }
            c1643Hi.A08().ABz(A07(168, 11, 15), AbstractC2811lf.A0D, new C2812lg(cause2));
            Log.e(A07(149, 17, 66), A07(50, 90, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE), cause2);
        }
    }

    public static void A0D(C3032pK c3032pK, C1643Hi c1643Hi, Uri uri, String str) {
        c3032pK.A0O(c1643Hi, uri, str);
    }

    public static void A0E(C3032pK c3032pK, C1643Hi c1643Hi, Uri uri, String str) throws C3020p6 {
        A06(c3032pK, c1643Hi, uri, str, null);
    }

    public static void A0F(Map<String, String> map, Intent intent, String str) {
        String value = map.get(str);
        if (value != null) {
            intent.putExtra(str, value);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean A0G(android.net.Uri r5) {
        /*
            int r1 = android.os.Build.VERSION.SDK_INT
            r0 = 24
            r4 = 0
            if (r1 < r0) goto L38
            android.security.NetworkSecurityPolicy r0 = android.security.NetworkSecurityPolicy.getInstance()
            boolean r3 = r0.isCleartextTrafficPermitted()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C3032pK.A01
            r0 = 1
            r1 = r2[r0]
            r0 = 4
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L61
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C3032pK.A01
            java.lang.String r1 = "9DaYNTGnU6m41BFJKxw5hEDOoLHVmNBK"
            r0 = 7
            r2[r0] = r1
            if (r3 != 0) goto L38
            android.security.NetworkSecurityPolicy r1 = android.security.NetworkSecurityPolicy.getInstance()
            java.lang.String r0 = r5.getHost()
            boolean r0 = r1.isCleartextTrafficPermitted(r0)
            if (r0 == 0) goto L5f
        L38:
            r0 = 1
        L39:
            java.lang.String r3 = r5.getScheme()
            if (r0 == 0) goto L4e
            r2 = 564(0x234, float:7.9E-43)
            r1 = 4
            r0 = 39
            java.lang.String r0 = A07(r2, r1, r0)
            boolean r0 = r0.equalsIgnoreCase(r3)
            if (r0 != 0) goto L5d
        L4e:
            r2 = 602(0x25a, float:8.44E-43)
            r1 = 5
            r0 = 85
            java.lang.String r0 = A07(r2, r1, r0)
            boolean r0 = r0.equalsIgnoreCase(r3)
            if (r0 == 0) goto L5e
        L5d:
            r4 = 1
        L5e:
            return r4
        L5f:
            r0 = 0
            goto L39
        L61:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3032pK.A0G(android.net.Uri):boolean");
    }

    private boolean A0H(C1643Hi c1643Hi) {
        if (!C2888mv.A1E(c1643Hi)) {
            return false;
        }
        int iA0C = C2888mv.A0C(c1643Hi);
        if (A01[7].charAt(2) != 'a') {
            throw new RuntimeException();
        }
        A01[2] = "JMUKVK1n";
        int iA00 = A00(c1643Hi);
        return iA0C != -1 && iA00 != -1 && iA0C <= iA00 && Build.VERSION.SDK_INT >= 28;
    }

    private boolean A0I(C1643Hi c1643Hi) {
        Intent playStoreIntent = new Intent(A07(186, 26, 50), AbstractC3036pP.A00(A07(568, 34, 17)));
        PackageManager packageManager = c1643Hi.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(playStoreIntent, 0)) {
            if (resolveInfo.activityInfo != null && resolveInfo.activityInfo.applicationInfo != null) {
                if (A07(342, 19, Sdk.SDKError.Reason.TPAT_ERROR_VALUE).equals(resolveInfo.activityInfo.applicationInfo.packageName)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean A0J(C1643Hi c1643Hi) {
        boolean onAndAboveNOS = Build.VERSION.SDK_INT >= 24;
        boolean zA0K = A0K(c1643Hi);
        boolean z = onAndAboveNOS && zA0K;
        boolean supportsSplitScreenMultiWindow = true;
        boolean appResizingSupported = true;
        boolean zA0C = true;
        boolean onAndAboveNOS2 = C2888mv.A2F(c1643Hi);
        if (onAndAboveNOS2) {
            Resources system = Resources.getSystem();
            String strA07 = A07(451, 26, 75);
            String strA072 = A07(245, 4, 8);
            String strA073 = A07(179, 7, 41);
            int identifier = system.getIdentifier(strA07, strA072, strA073);
            if (identifier != 0) {
                supportsSplitScreenMultiWindow = Resources.getSystem().getBoolean(identifier);
            }
            String[] strArr = A01;
            if (strArr[6].length() == strArr[3].length()) {
                A01[5] = "0rfBgNygkjU7mub";
                int identifier2 = system.getIdentifier(A07(477, 37, 21), strA072, strA073);
                if (identifier2 != 0) {
                    appResizingSupported = Resources.getSystem().getBoolean(identifier2);
                }
                zA0C = AbstractC3045pY.A0C(c1643Hi);
                z &= supportsSplitScreenMultiWindow && appResizingSupported && zA0C;
                String[] strArr2 = A01;
                if (strArr2[6].length() == strArr2[3].length()) {
                    A01[5] = "kny6086MT0ulmqJ";
                }
            }
            throw new RuntimeException();
        }
        c1643Hi.A0F().ACw(zA0K, z, supportsSplitScreenMultiWindow, appResizingSupported, zA0C);
        return z;
    }

    public static boolean A0K(C1643Hi c1643Hi) {
        ActivityInfo activityInfo;
        try {
            Activity activityA0E = c1643Hi.A0E();
            PackageManager packageManager = c1643Hi.getPackageManager();
            if (activityA0E == null || packageManager == null) {
                return false;
            }
            if (Build.VERSION.SDK_INT > 32) {
                activityInfo = packageManager.getActivityInfo(activityA0E.getComponentName(), PackageManager.ComponentInfoFlags.of(0L));
            } else {
                activityInfo = packageManager.getActivityInfo(activityA0E.getComponentName(), Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
            }
            Field declaredField = ActivityInfo.class.getDeclaredField(A07(839, 10, 69));
            declaredField.setAccessible(true);
            Object obj = declaredField.get(activityInfo);
            if (obj instanceof Integer) {
                return ((Integer) obj).intValue() != 0;
            }
        } catch (PackageManager.NameNotFoundException | IllegalAccessException | NoSuchFieldException e) {
            c1643Hi.A0F().ACv(e.getMessage());
        }
        return false;
    }

    public static boolean A0L(C1643Hi c1643Hi, Uri uri) {
        String strA07 = A07(342, 19, Sdk.SDKError.Reason.TPAT_ERROR_VALUE);
        if (!C2888mv.A1G(c1643Hi)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 23) {
            c1643Hi.A0F().AC4(1);
            return false;
        }
        PackageManager packageManager = c1643Hi.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(strA07, 0);
            if (packageInfo != null && !TextUtils.isEmpty(packageInfo.versionName)) {
                String[] strArrSplit = packageInfo.versionName.split(A07(166, 2, 74), 2);
                if (strArrSplit.length < 1) {
                    c1643Hi.A0F().AC4(2);
                    return false;
                }
                if (Integer.parseInt(strArrSplit[0]) < C2888mv.A0E(c1643Hi)) {
                    c1643Hi.A0F().AC4(3);
                    return false;
                }
            }
            Intent intent = new Intent(A07(186, 26, 50));
            String packageName = c1643Hi.getPackageName();
            intent.setPackage(strA07);
            Uri hsdpUri = A04(c1643Hi, uri);
            if (hsdpUri == null) {
                return false;
            }
            intent.setData(hsdpUri);
            intent.putExtra(A07(271, 8, 19), packageName);
            if (intent.resolveActivity(packageManager) != null) {
                Activity activityA0E = c1643Hi.A0E();
                if (activityA0E == null) {
                    activityA0E = ActivityUtils.A00();
                }
                if (activityA0E != null) {
                    activityA0E.startActivityForResult(intent, 945321098);
                    c1643Hi.A0F().AC4(0);
                    return true;
                }
                c1643Hi.A0F().AC4(7);
                return false;
            }
            c1643Hi.A0F().AC4(6);
            return false;
        } catch (PackageManager.NameNotFoundException | NumberFormatException unused) {
            c1643Hi.A0F().AC4(4);
            return false;
        }
    }

    private boolean A0M(C1643Hi c1643Hi, Uri uri, String str) throws C3020p6 {
        try {
            Activity activityA0E = c1643Hi.A0E();
            String string = uri.toString();
            if (activityA0E != null && !TextUtils.isEmpty(string)) {
                Intent fbIntent = new Intent();
                if (C2888mv.A1F(c1643Hi)) {
                    String strA05 = LA.A05(str);
                    if (TextUtils.isEmpty(strA05)) {
                        return false;
                    }
                    fbIntent.putExtra(A07(0, 20, 82), A08(strA05));
                }
                fbIntent.setComponent(new ComponentName(A07(432, 19, 9), A07(361, 71, 90)));
                fbIntent.putExtra(A07(140, 9, 39), string);
                fbIntent.putExtra(A07(37, 13, 73), A08(A07(20, 17, 111)));
                if (!C3022p8.A0G(c1643Hi, fbIntent)) {
                    activityA0E.startActivityForResult(fbIntent, 2);
                    return true;
                }
                return true;
            }
            return false;
        } catch (ActivityNotFoundException | IllegalStateException e) {
            c1643Hi.A0F().AC3(e.getMessage());
            return false;
        }
    }

    private boolean A0N(C1643Hi c1643Hi, Uri uri, String str) throws C3020p6 {
        return A0H(c1643Hi) && A0M(c1643Hi, uri, str);
    }

    private final boolean A0O(C1643Hi c1643Hi, Uri uri, String str) {
        return C3022p8.A0I(c1643Hi, uri, str);
    }

    public static boolean A0P(C3032pK c3032pK, C1643Hi c1643Hi, Uri uri, String str) {
        try {
            A0E(c3032pK, c1643Hi, uri, str);
            return true;
        } catch (C3020p6 e) {
            Throwable cause = e.getCause();
            C3020p6 cause2 = e;
            if (cause != null) {
                cause2 = e.getCause();
            }
            c1643Hi.A08().ABz(A07(168, 11, 15), AbstractC2811lf.A05, new C2812lg(cause2));
            return false;
        }
    }
}

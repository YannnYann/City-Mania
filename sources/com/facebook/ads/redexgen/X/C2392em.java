package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.facebook.ads.internal.action.UserReturnTracker$UserReturnListener;
import com.facebook.ads.redexgen.X.C2392em;
import com.unity3d.ads.core.domain.WebViewScreenCapture;
import com.vungle.ads.internal.protos.Sdk;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.em, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2392em {
    public static byte[] A09;
    public static String[] A0A = {"jY95Z4e8SjES", "FWAQk0vwFzOT3H3ejUps9E7fwyQUHgqv", "R9UUrzGy7cjs1hDg6byYlCYbXfp8nW0w", "dKAdSxu4tDkfYe86wdSSQ2n2Du5", "FgFVZj7d091u9rUO", "kSt0PMlvWs2DEAK3GKEU98UDJan6EgWc", "nGXCIrfUxBd8PJB10o2gs7oQf", com.ironsource.G5.q};
    public static final String A0B;
    public Application A02;
    public InterfaceC2385ee A04;
    public UserReturnTracker$UserReturnListener A05;
    public final InterfaceC2909nG A08;
    public long A01 = 0;
    public long A00 = 0;
    public String A06 = null;
    public EnumC2383ec A03 = null;
    public boolean A07 = false;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 108);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A09 = new byte[]{27, 32, 47, 44, 34, 43, 110, 58, 33, 110, 2, 33, 41, 110, 27, 61, 43, 60, 110, 28, 43, 58, 59, 60, 32, 110, 57, 38, 43, 32, 110, 58, 33, 37, 43, 32, 110, 39, 61, 110, 32, 59, 34, 34, 96, 6, 5, 7, 15, 59, 16, 13, 9, 1, 9, 0, 4, 19, 0, 58, 17, 12, 8, 0, 62, 36, 37, 50, 62, 60, 52, 101, 114, 103, 120, 101, 99, 126, 121, 112};
    }

    static {
        A03();
        A0B = C2392em.class.getSimpleName();
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.facebook.ads.internal.action.UserReturnTracker$UserReturnListener] */
    public C2392em(InterfaceC2909nG interfaceC2909nG, final Activity activity, int i) {
        this.A08 = interfaceC2909nG;
        this.A02 = activity.getApplication();
        this.A05 = new Application.ActivityLifecycleCallbacks(activity, this) { // from class: com.facebook.ads.internal.action.UserReturnTracker$UserReturnListener
            public C2392em A00;
            public final WeakReference<Activity> A01;

            {
                this.A01 = new WeakReference<>(activity);
                this.A00 = this;
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityCreated(Activity activity2, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityDestroyed(Activity activity2) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityPaused(Activity activity2) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityResumed(Activity activity2) {
                if (this.A00 == null) {
                    return;
                }
                Activity trackedActivity = this.A01.get();
                if (trackedActivity == null || (trackedActivity != null && activity2.equals(trackedActivity))) {
                    this.A00.A05();
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivitySaveInstanceState(Activity activity2, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityStarted(Activity activity2) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityStopped(Activity activity2) {
            }
        };
    }

    public static C2392em A00(InterfaceC2909nG interfaceC2909nG, Activity activity) {
        return A01(interfaceC2909nG, activity, Build.VERSION.SDK_INT);
    }

    public static C2392em A01(InterfaceC2909nG interfaceC2909nG, Activity activity, int i) {
        if (activity != null && i >= 14) {
            return new C2392em(interfaceC2909nG, activity, i);
        }
        return null;
    }

    private void A04(String str, long j, long j2, EnumC2383ec enumC2383ec) {
        HashMap map = new HashMap();
        map.put(A02(54, 10, 9), Long.toString(j));
        map.put(A02(45, 9, 8), Long.toString(j2));
        if (enumC2383ec != null) {
            map.put(A02(64, 7, 61), enumC2383ec.name());
        }
        this.A08.ACz(str, map);
    }

    public final void A05() {
        this.A00 = System.currentTimeMillis();
        if (this.A00 - this.A01 < WebViewScreenCapture.CACHE_TTL_MS && this.A04 != null) {
            this.A04.AGh();
        }
        if (this.A06 != null) {
            A04(this.A06, this.A01, this.A00, this.A03);
        } else {
            Application application = this.A02;
            String strA02 = A02(0, 45, 34);
            if (application != null) {
                Application application2 = this.A02;
                String[] strArr = A0A;
                if (strArr[4].length() == strArr[0].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0A;
                strArr2[7] = "R";
                strArr2[3] = "uDbcWZDwGd0CyBour5pMpKFIjJJ";
                if (application2.getBaseContext() instanceof C1643Hi) {
                    ((C1643Hi) this.A02.getBaseContext()).A08().ABz(A02(71, 9, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE), AbstractC2811lf.A22, new C2812lg(strA02));
                }
            }
            Log.w(A0B, strA02);
        }
        if (this.A02 != null && this.A05 != null) {
            this.A02.unregisterActivityLifecycleCallbacks(this.A05);
            this.A07 = false;
        }
    }

    public final void A06(EnumC2383ec enumC2383ec) {
        this.A03 = enumC2383ec;
    }

    public final void A07(InterfaceC2385ee interfaceC2385ee) {
        this.A04 = interfaceC2385ee;
    }

    public final void A08(String str) {
        this.A06 = str;
        this.A01 = System.currentTimeMillis();
        if (this.A05 == null || this.A02 == null || this.A07) {
            A04(str, -1L, -1L, EnumC2383ec.A04);
        } else {
            if (A0A[6].length() == 8) {
                throw new RuntimeException();
            }
            A0A[2] = "hmmgXQelZ1oxTn8xtWXCDJO1aYxf7Xnb";
            this.A07 = true;
            this.A02.registerActivityLifecycleCallbacks(this.A05);
        }
    }
}

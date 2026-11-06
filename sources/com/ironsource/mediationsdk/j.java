package com.ironsource.mediationsdk;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.ironsource.B3;
import com.ironsource.C3701l3;
import com.ironsource.C3813r4;
import com.ironsource.C5;
import com.ironsource.D5;
import com.ironsource.N9;
import com.ironsource.Y7;
import com.ironsource.environment.ContextProvider;
import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseAdapter;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class j {
    public static final String a = "BANNER";
    public static final String b = "LARGE";
    public static final String c = "RECTANGLE";
    public static final String d = "LEADERBOARD";
    public static final String e = "SMART";
    public static final String f = "CUSTOM";
    public static final String g = "MEDIUM_RECTANGLE";
    public static final String h = "bannerAdSize";
    public static final int i = 0;
    public static final int j = 1;
    public static final int k = 2;
    public static final int l = 3;
    public static final int m = 4;
    public static final int n = 5;
    public static final int o = 6;
    public static final int p = -1;
    public static final String q = "Adaptive=true";

    public interface a {
        void a(Map<String, Object> map, List<String> list, StringBuilder sb);
    }

    public interface b {
        void a();

        void a(String str);
    }

    public static void a(o oVar, C3701l3 c3701l3, b bVar) {
        String str;
        if (c(oVar)) {
            str = null;
        } else {
            str = String.format("can't load banner - %s", oVar == null ? "banner is null" : "banner is destroyed");
        }
        if (c3701l3 == null || TextUtils.isEmpty(c3701l3.c())) {
            str = String.format("can't load banner - %s", c3701l3 == null ? "placement is null" : "placement name is empty");
        }
        if (TextUtils.isEmpty(str)) {
            bVar.a();
        } else {
            IronLog.INTERNAL.error(str);
            bVar.a(str);
        }
    }

    public static ISBannerSize b() {
        if (AdapterUtils.isLargeScreen(ContextProvider.getInstance().getApplicationContext())) {
            a("SMART", 728, 90);
        }
        return a("SMART", 320, 50);
    }

    public static boolean c(o oVar) {
        return (oVar == null || oVar.b()) ? false : true;
    }

    public static int b(int i2) {
        if (!p.g().F()) {
            IronLog.API.error("The mediation must be successfully initiated before calling this API");
            return -1;
        }
        return a(i2);
    }

    public static void b(o oVar) {
        ISBannerSize size;
        if (oVar == null || (size = oVar.getSize()) == null || !size.isSmart()) {
            return;
        }
        ISBannerSize iSBannerSizeB = b();
        m.a.a(iSBannerSizeB, size.e);
        iSBannerSizeB.setAdaptive(size.isAdaptive());
        oVar.setBannerSize(iSBannerSizeB);
    }

    public static void a(o oVar, b bVar) {
        if (oVar != null && !oVar.b()) {
            bVar.a();
        } else {
            bVar.a(String.format("can't destroy banner - %s", oVar == null ? "banner is null" : "banner is destroyed"));
        }
    }

    public static long a(long j2, long j3) {
        return j3 - (new Date().getTime() - j2);
    }

    public static ISBannerSize a(String str, int i2, int i3) {
        return new ISBannerSize(str, i2, i3);
    }

    public static ISBannerSize a() {
        return new ISBannerSize("LEADERBOARD", 728, 90);
    }

    public static void a(o oVar) {
        if (oVar != null) {
            oVar.a();
        }
    }

    public static void a(final o oVar, final View view, final FrameLayout.LayoutParams layoutParams, final B3 b3) {
        if (oVar == null || view == null || layoutParams == null) {
            return;
        }
        final Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        final ISBannerSize size = oVar.getSize();
        IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new Runnable() { // from class: com.ironsource.mediationsdk.j$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                j.a(oVar, view, size, applicationContext, layoutParams, b3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(o oVar, View view, ISBannerSize iSBannerSize, Context context, FrameLayout.LayoutParams layoutParams, B3 b3) {
        try {
            oVar.removeAllViews();
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view);
            }
            if (iSBannerSize != null) {
                if (iSBannerSize.isAdaptive()) {
                    a(oVar, view, context, iSBannerSize);
                } else {
                    oVar.addView(view, 0, layoutParams);
                }
            }
            if (b3 != null) {
                b3.a();
            }
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            IronLog.INTERNAL.error("Error while binding a banner - " + Log.getStackTraceString(e2));
        }
    }

    public static void a(o oVar, View view, FrameLayout.LayoutParams layoutParams) {
        a(oVar, view, layoutParams, (B3) null);
    }

    private static void a(o oVar, View view, Context context, ISBannerSize iSBannerSize) {
        int iDpToPixels = AdapterUtils.dpToPixels(context, iSBannerSize.e.d());
        int iDpToPixels2 = AdapterUtils.dpToPixels(context, iSBannerSize.e.c());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDpToPixels, iDpToPixels2);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setLayoutParams(layoutParams);
        relativeLayout.setGravity(17);
        relativeLayout.addView(view, 0);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) oVar.getLayoutParams();
        if (layoutParams2 == null) {
            layoutParams2 = new FrameLayout.LayoutParams(iDpToPixels, iDpToPixels2);
        }
        layoutParams2.height = iDpToPixels2;
        layoutParams2.width = iDpToPixels;
        layoutParams2.gravity = 17;
        oVar.setLayoutParams(layoutParams2);
        IronLog.INTERNAL.verbose("containerParams height - " + iSBannerSize.e.c() + " width - " + iSBannerSize.e.d());
        oVar.addView(relativeLayout, 0, layoutParams2);
    }

    public static int a(int i2) {
        int iA = -1;
        try {
            iA = a(a(c.c()), i2);
            a(i2, iA);
            IronLog.API.verbose("Maximal height - " + iA + " for width - " + i2);
            return iA;
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            IronLog.INTERNAL.error("Failed to get adaptive height: " + e2.getMessage());
            return iA;
        }
    }

    private static Map<String, Object> a(c cVar) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        concurrentHashMap.putAll(cVar.a());
        concurrentHashMap.putAll(cVar.d());
        return concurrentHashMap;
    }

    private static int a(Map<String, Object> map, int i2) {
        int iMax = -1;
        for (Object obj : map.values()) {
            try {
                iMax = Math.max(iMax, a(obj, i2));
            } catch (Throwable th) {
                a(obj, th);
            }
        }
        return iMax;
    }

    private static int a(Object obj, int i2) {
        if (obj instanceof AbstractAdapter) {
            return ((AbstractAdapter) obj).getAdaptiveHeight(i2);
        }
        if (obj instanceof LevelPlayBaseAdapter) {
            return ((LevelPlayBaseAdapter) obj).getAdaptiveHeight(i2);
        }
        return -1;
    }

    private static void a(Object obj, Throwable th) {
        String simpleName = obj != null ? obj.getClass().getSimpleName() : "unknown";
        C3813r4.d().a(th);
        IronLog.INTERNAL.error("Exception while calling getAdaptiveHeight for adapter - " + simpleName + ": " + th.getMessage());
    }

    private static void a(int i2, int i3) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
            if (i3 == -1) {
                jSONObject.put("errorCode", 2);
                jSONObject.put("reason", "No networks found supporting adaptive banners");
            } else {
                jSONObject.put(IronSourceConstants.EVENTS_EXT1, "w:" + i2 + ",h:" + i3);
            }
            N9.i().a(new C5(D5.y2, jSONObject));
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(java.util.Map<java.lang.String, java.lang.Object> r8, com.ironsource.mediationsdk.ISBannerSize r9) {
        /*
            Method dump skipped, instruction units count: 270
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.j.a(java.util.Map, com.ironsource.mediationsdk.ISBannerSize):void");
    }

    public static String a(ISBannerSize iSBannerSize) {
        return "Adaptive=true, size: " + iSBannerSize.e.d() + "x" + iSBannerSize.e.c() + "; fallback: " + iSBannerSize.getDescription() + ", size: " + iSBannerSize.getWidth() + "x" + iSBannerSize.getHeight() + ";";
    }

    public static boolean a(Y7 y7, int i2, int i3) {
        if (y7 != null && y7.d() > 0 && y7.c() > 0) {
            if (y7.d() >= i2 && y7.c() >= i3) {
                return true;
            }
            IronLog.API.warning("Container size too small: Banner may not display correctly.");
            return true;
        }
        IronLog.API.warning("Container size is invalid: Default banner size will be used.");
        return false;
    }
}

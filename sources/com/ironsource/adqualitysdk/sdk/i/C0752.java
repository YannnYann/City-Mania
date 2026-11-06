package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.TextView;
import com.ironsource.adqualitysdk.sdk.StringFog;
import com.unity3d.services.UnityAdsConstants;
import java.util.WeakHashMap;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ἲ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0752 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static C0752 f3068;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String f3069 = StringFog.decrypt("aAdaSBa6SJxaCF1mHqVolkEOR3kSpGqaTA4=\n", "L2s1KnfWHPM=\n");

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public C0834 f3072;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final WeakHashMap f3071 = new WeakHashMap();

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public C0163 f3070 = new C0163(-1, -1, -1, -1);

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1437(C0752 c0752, ViewGroup viewGroup, ViewOnLayoutChangeListenerC0808 viewOnLayoutChangeListenerC0808) {
        JSONObject jSONObject;
        c0752.getClass();
        if (viewGroup != null) {
            try {
                if (viewGroup.getChildCount() != 0) {
                    for (int i = 0; i < viewGroup.getChildCount(); i++) {
                        if (viewGroup.getChildAt(i) instanceof TextView) {
                        }
                    }
                    return;
                }
            } catch (Throwable th) {
                String str = f3069;
                AbstractC0182.m1156(str, str, StringFog.decrypt("7ZMi2nSwwH/NgjvcaPeDfs7BBtxj5+Rlx5QglWX/zWPJiD7GJv/Ne9HBBNB+5PV+zZYj\n", "qOFQtQaQoxc=\n"), th, null, false);
            }
            C0893 c0893 = (C0893) AbstractC0885.m1491();
            synchronized (c0893) {
                jSONObject = c0893.f2612;
            }
            if (jSONObject.optBoolean(StringFog.decrypt("nF7Z\n", "7zGun0NoEFI=\n"), false)) {
                ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
                if (layoutParams instanceof WindowManager.LayoutParams) {
                    WindowManager.LayoutParams layoutParams2 = (WindowManager.LayoutParams) layoutParams;
                    int i2 = layoutParams2.type;
                    if ((layoutParams2.flags & 16) != 0 || i2 == 2005 || i2 == 2003 || i2 == 2038) {
                        return;
                    }
                }
            }
            Activity activityM978 = C.m978(viewGroup);
            if (C0164.m1136().m1139(activityM978)) {
                if (viewGroup.findViewById(160766228) == null) {
                    c0752.m1441(viewGroup, viewOnLayoutChangeListenerC0808);
                }
            } else if (C0164.m1136().m1137(activityM978)) {
                new Handler(Looper.getMainLooper()).post(new C0754(c0752, viewGroup, new C0755(c0752), viewOnLayoutChangeListenerC0808));
            }
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final synchronized void m1438() {
        try {
            if (this.f3072 != null) {
                for (ViewGroup viewGroup : this.f3071.keySet()) {
                    ViewParent parent = viewGroup.getParent();
                    if (parent instanceof ViewGroup) {
                        ((ViewGroup) parent).removeView(viewGroup);
                    }
                }
                this.f3071.clear();
                C0665.m1413().m1414(this.f3072);
                this.f3072 = null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final synchronized void m1439() {
        if (this.f3072 == null) {
            this.f3072 = new C0834(this);
            C0665.m1413().m1415(this.f3072);
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized C0163 m1440() {
        return this.f3070;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1436(C0752 c0752, MotionEvent motionEvent) {
        c0752.getClass();
        try {
            AbstractC0272.m1211(new C0753(c0752, MotionEvent.obtain(motionEvent)));
        } catch (Throwable th) {
            AbstractC1003.m1592(f3069, StringFog.decrypt("dccRKbErsS1EwQoopCuiJ0XWC2axaqEQENoRZrFqoRE=\n", "MLVjRsML1kg=\n"), th, false);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static synchronized C0752 m1435() {
        try {
            if (f3068 == null) {
                f3068 = new C0752();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f3068;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1441(ViewGroup viewGroup, ViewOnLayoutChangeListenerC0808 viewOnLayoutChangeListenerC0808) {
        C0789 c0789 = new C0789(this, viewGroup.getContext(), AbstractC0885.m1491().mo1496());
        c0789.setAlpha(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        synchronized (this) {
            this.f3071.put(c0789, new Object());
        }
        c0789.setId(160766228);
        new Handler(Looper.getMainLooper()).post(new C0774(viewGroup, c0789, viewOnLayoutChangeListenerC0808));
    }
}

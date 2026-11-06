package com.ironsource.adqualitysdk.sdk.i;

import android.R;
import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class D extends AbstractC0925 {
    static {
        StringFog.decrypt("mTZVyaFpc6OoOkT/g0x5rL8wVeGzV2K4\n", "/lMhiMU+FsE=\n");
        StringFog.decrypt("cUF+Rfi+N/5rW0pA+A==\n", "GDIoLJ3JYZc=\n");
        StringFog.decrypt("qLdghavHpw==\n", "z9IU08Ki0Mo=\n");
        StringFog.decrypt("Vc0KQ462WSxc3ChphK8=\n", "Mqh+AOHYLUk=\n");
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static boolean m999(ArrayList arrayList) {
        View view = (View) AbstractC0925.m1545(arrayList, 0, View.class);
        Rect rect = C.f93;
        view.getHitRect(rect);
        return view.getGlobalVisibleRect(rect);
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static View m1000(ArrayList arrayList) {
        View view = (View) AbstractC0925.m1545(arrayList, 0, View.class);
        Class cls = (Class) AbstractC0925.m1545(arrayList, 1, Class.class);
        boolean zBooleanValue = ((Boolean) AbstractC0925.m1545(arrayList, 2, Boolean.class)).booleanValue();
        Rect rect = C.f93;
        ArrayList arrayList2 = new ArrayList();
        C.m977(view, cls, null, true, zBooleanValue, null, null, arrayList2);
        if (arrayList2.isEmpty()) {
            return null;
        }
        return (View) arrayList2.get(0);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static View m1001(ArrayList arrayList) {
        Activity activity = (Activity) AbstractC0925.m1545(arrayList, 0, Activity.class);
        Rect rect = C.f93;
        return activity.findViewById(R.id.content);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0061  */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.webkit.WebView m1002(java.util.ArrayList r12) {
        /*
            java.lang.Class<android.app.Activity> r0 = android.app.Activity.class
            r1 = 0
            java.lang.Object r0 = com.ironsource.adqualitysdk.sdk.i.AbstractC0925.m1545(r12, r1, r0)
            r2 = r0
            android.app.Activity r2 = (android.app.Activity) r2
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            int r3 = r12.size()
            r11 = 0
            r4 = 1
            if (r3 <= r4) goto L4a
            java.lang.Class<java.lang.Integer> r3 = java.lang.Integer.class
            java.lang.Object r3 = com.ironsource.adqualitysdk.sdk.i.AbstractC0925.m1545(r12, r4, r3)
            java.lang.Integer r3 = (java.lang.Integer) r3
            int r3 = r3.intValue()
            int r4 = r12.size()
            r5 = 2
            if (r4 <= r5) goto L46
            java.lang.Class<java.lang.String> r4 = java.lang.String.class
            java.lang.Object r4 = com.ironsource.adqualitysdk.sdk.i.AbstractC0925.m1545(r12, r5, r4)
            java.lang.String r4 = (java.lang.String) r4
            int r5 = r12.size()
            r6 = 3
            if (r5 <= r6) goto L42
            java.lang.Class<java.util.List> r0 = java.util.List.class
            java.lang.Object r12 = com.ironsource.adqualitysdk.sdk.i.AbstractC0925.m1545(r12, r6, r0)
            r0 = r12
            java.util.List r0 = (java.util.List) r0
        L42:
            r9 = r0
            r5 = r4
            r4 = r3
            goto L4c
        L46:
            r9 = r0
            r4 = r3
            r5 = r11
            goto L4c
        L4a:
            r3 = -1
            goto L46
        L4c:
            android.graphics.Rect r12 = com.ironsource.adqualitysdk.sdk.i.C.f93
            java.util.ArrayList r10 = new java.util.ArrayList
            r10.<init>()
            r7 = 0
            r8 = 0
            java.lang.Class<android.webkit.WebView> r3 = android.webkit.WebView.class
            r6 = 1
            com.ironsource.adqualitysdk.sdk.i.C.m980(r2, r3, r4, r5, r6, r7, r8, r9, r10)
            int r12 = r10.size()
            if (r12 <= 0) goto L68
            java.lang.Object r12 = r10.get(r1)
            r11 = r12
            android.view.View r11 = (android.view.View) r11
        L68:
            android.webkit.WebView r11 = (android.webkit.WebView) r11
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.D.m1002(java.util.ArrayList):android.webkit.WebView");
    }
}

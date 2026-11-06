package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.view.View;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.WeakHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class B extends AbstractC0822 {

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public static final String f79 = StringFog.decrypt("ewoHcnGmH8NMDQZpVbA=\n", "LWNiBTDCbIs=\n");

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public A f81;

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public Class f82;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final C3510w f85;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public C0589 f87;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final WeakHashMap f88 = new WeakHashMap();

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final WeakHashMap f84 = new WeakHashMap();

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final WeakHashMap f83 = new WeakHashMap();

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public final ArrayList f80 = new ArrayList();

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final ViewOnLayoutChangeListenerC3509v f86 = new ViewOnLayoutChangeListenerC3509v(this);

    public B(JSONObject jSONObject, C0589 c0589) {
        this.f81 = new A();
        this.f81 = new A(jSONObject);
        this.f87 = c0589;
        C3510w c3510w = new C3510w(this);
        this.f85 = c3510w;
        C0665.m1413().m1415(c3510w);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0158 A[SYNTHETIC] */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void m964(com.ironsource.adqualitysdk.sdk.i.B r12, java.util.ArrayList r13) {
        /*
            Method dump skipped, instruction units count: 349
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.B.m964(com.ironsource.adqualitysdk.sdk.i.B, java.util.ArrayList):void");
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m965(View view) {
        Activity activityM978;
        try {
            if (this.f82 == null) {
                this.f82 = Class.forName(this.f81.f75);
            }
            Activity activityMo1052 = AbstractC1013.m1594().mo1052();
            if (activityMo1052 == null) {
                return;
            }
            if (this.f81.f63.isEmpty() || (activityM978 = C.m978(view)) == null || !this.f81.f63.contains(activityM978.getClass().getName())) {
                AbstractC0272.m1214(new C3512y(this, activityMo1052, view));
            }
        } catch (Throwable th) {
            AbstractC0182.m1147(f79, StringFog.decrypt("nRB6yWnYsGmsFmHIfNi0YLkRe4Y=\n", "2GIIphv41ww=\n") + this.f81.f75 + StringFog.decrypt("arCw\n", "Sp2Qk3fm888=\n") + th.getLocalizedMessage());
            m967();
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0822
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* bridge */ /* synthetic */ String mo966(Object obj) {
        return null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m967() {
        this.f3173 = null;
        C0665.m1413().m1414(this.f85);
        HashSet hashSet = new HashSet(this.f83.keySet());
        this.f83.clear();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((View) it.next()).removeOnLayoutChangeListener(this.f86);
        }
    }
}

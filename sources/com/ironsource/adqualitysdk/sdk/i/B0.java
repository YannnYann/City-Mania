package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.WeakHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class B0 extends AbstractC0238 implements z0, View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public static final String f89 = StringFog.decrypt("mlWG1Ny8dteoS6nU+6pO2qFZmg==\n", "zTzosLPLIL4=\n");

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public A0 f90;

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final WeakHashMap f91;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public Class f92;

    public B0(JSONObject jSONObject) {
        super(null);
        this.f91 = new WeakHashMap();
        this.f90 = new A0();
        m976(jSONObject);
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        try {
            View viewM968 = m968(view, this.f92);
            if (viewM968 != null) {
                if (!this.f91.containsKey(viewM968)) {
                    this.f91.put(viewM968, Boolean.TRUE);
                    m1204(new JSONObject(), (Object) viewM968, Integer.toHexString(viewM968.hashCode()));
                }
                view.removeOnLayoutChangeListener(this);
            }
        } catch (Throwable th) {
            AbstractC1003.m1592(f89, StringFog.decrypt("tEghermU+/zRVT1Zqs3954V5O3Sl0/c=\n", "8TpTFcu0kpI=\n"), th, false);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0238
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void mo973(Object obj, ArrayList arrayList) {
        View view = (View) obj;
        A0 a0 = this.f90;
        C.m977(view, WebView.class, a0.f77, true, false, null, a0.f1582, arrayList);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0238
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final InterfaceC0454 mo974() {
        return this;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m976(JSONObject jSONObject) {
        A0 a0 = new A0(jSONObject);
        this.f1542 = a0;
        this.f90 = a0;
        try {
            this.f92 = Class.forName(a0.f78);
            C0665.m1413().m1415(this);
        } catch (ClassNotFoundException e) {
            AbstractC0182.m1148(f89, StringFog.decrypt("5Ubmw50Y14TTQPHChlbczdRbtMmZXdWZ0xTy3oBVmw==\n", "oDSUrO84u+0=\n") + a0.f78 + StringFog.decrypt("QTY=\n", "exYdKr5hjjA=\n") + e.getLocalizedMessage());
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0238
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final View mo970(Object obj) {
        return (View) obj;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0238
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final AbstractViewOnLayoutChangeListenerC3474b0 mo971() {
        return new C3478d0();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.z0
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void mo972(View view) {
        View viewM968 = m968(view, this.f92);
        if (viewM968 == null || this.f91.remove(viewM968) == null) {
            return;
        }
        m1201(view);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.z0
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void mo975(View view) {
        View viewM969;
        View viewM968 = m968(view, this.f92);
        if (viewM968 != null) {
            if (this.f91.containsKey(viewM968)) {
                return;
            }
            this.f91.put(viewM968, Boolean.TRUE);
            m1204(new JSONObject(), (Object) viewM968, Integer.toHexString(viewM968.hashCode()));
            return;
        }
        if (TextUtils.isEmpty(this.f90.f76) || (viewM969 = m969(view, this.f90.f76)) == null) {
            return;
        }
        viewM969.addOnLayoutChangeListener(this);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static View m968(View view, Class cls) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (cls.isAssignableFrom(childAt.getClass())) {
                return childAt;
            }
            View viewM968 = m968(childAt, cls);
            if (viewM968 != null) {
                return viewM968;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static View m969(View view, String str) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt.getClass().getName().startsWith(str)) {
                return childAt;
            }
            View viewM969 = m969(childAt, str);
            if (viewM969 != null) {
                return viewM969;
            }
        }
        return null;
    }
}

package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.є, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0238 extends AbstractC0822 {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public C0624 f1543;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public AbstractViewOnLayoutChangeListenerC3474b0 f1544;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final WeakHashMap f1545 = new WeakHashMap();

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public C0263 f1542 = new C0263();

    static {
        StringFog.decrypt("AlYXbGwwLhAhTTpkVzIyEShGCQ==\n", "RCN7AB9TXHU=\n");
    }

    public AbstractC0238(C0624 c0624) {
        this.f1543 = c0624;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m1201(Object obj) {
        JSONObject jSONObject = new JSONObject();
        C3498n0 c3498n0 = m1202(obj).f249;
        mo990(jSONObject, c3498n0 != null ? (WebView) c3498n0.f364.f267.get() : null, obj);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0822, com.ironsource.adqualitysdk.sdk.i.InterfaceC0454
    /* JADX INFO: renamed from: ｋ */
    public final void mo987(JSONObject jSONObject, View view, Object obj) {
        mo985(jSONObject, (WebView) view, obj);
    }

    /* JADX INFO: renamed from: ﾇ */
    public abstract View mo970(Object obj);

    /* JADX INFO: renamed from: ﾇ */
    public abstract AbstractViewOnLayoutChangeListenerC3474b0 mo971();

    /* JADX INFO: renamed from: ﾇ */
    public abstract void mo973(Object obj, ArrayList arrayList);

    /* JADX INFO: renamed from: ﾒ */
    public abstract InterfaceC0454 mo974();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1204(JSONObject jSONObject, Object obj, String str) {
        C0263 c0263 = this.f1542;
        boolean z = c0263.f1589 && !TextUtils.isEmpty(c0263.f1592);
        AbstractViewOnLayoutChangeListenerC3474b0 abstractViewOnLayoutChangeListenerC3474b0M1202 = m1202(obj);
        if (abstractViewOnLayoutChangeListenerC3474b0M1202 == null) {
            abstractViewOnLayoutChangeListenerC3474b0M1202 = mo971();
            if (this.f1542.f1584) {
                this.f1545.put(obj, abstractViewOnLayoutChangeListenerC3474b0M1202);
            } else {
                this.f1544 = abstractViewOnLayoutChangeListenerC3474b0M1202;
            }
            abstractViewOnLayoutChangeListenerC3474b0M1202.f3173 = mo974();
        }
        for (WebView webView : abstractViewOnLayoutChangeListenerC3474b0M1202.f248.keySet()) {
            webView.removeOnLayoutChangeListener(abstractViewOnLayoutChangeListenerC3474b0M1202);
            C3498n0 c3498n0 = (C3498n0) abstractViewOnLayoutChangeListenerC3474b0M1202.f248.get(webView);
            Iterator it = abstractViewOnLayoutChangeListenerC3474b0M1202.f246.iterator();
            while (it.hasNext()) {
                c3498n0.f363.remove((InterfaceC0245) it.next());
            }
        }
        abstractViewOnLayoutChangeListenerC3474b0M1202.f246.clear();
        abstractViewOnLayoutChangeListenerC3474b0M1202.f249 = null;
        abstractViewOnLayoutChangeListenerC3474b0M1202.f248.clear();
        C0263 c02632 = this.f1542;
        String str2 = c02632.f1592;
        List list = c02632.f1591;
        boolean z2 = c02632.f1586;
        boolean z3 = c02632.f1585;
        abstractViewOnLayoutChangeListenerC3474b0M1202.f251 = z;
        abstractViewOnLayoutChangeListenerC3474b0M1202.f247 = new C3492k0(str2, z3);
        abstractViewOnLayoutChangeListenerC3474b0M1202.f250 = z2;
        abstractViewOnLayoutChangeListenerC3474b0M1202.f253 = list;
        abstractViewOnLayoutChangeListenerC3474b0M1202.f252 = str;
        if (!this.f1542.f1587) {
            super.mo987(jSONObject, null, obj);
            return;
        }
        ArrayList arrayList = new ArrayList();
        mo973(obj, arrayList);
        List arrayList2 = new ArrayList();
        C0624 c0624 = this.f1543;
        if (c0624 != null) {
            try {
                C0946 c0946 = c0624.f2641;
                C0048 c0048 = c0624.f2639;
                C0915 c0915 = c0048.f653;
                arrayList2 = (List) c0946.m1558(c0915, c0915.f3495, c0048, Collections.singletonList(obj)).f1192;
            } catch (Exception unused) {
                AbstractC0182.m1147(StringFog.decrypt("pZG4L38hHf27naY0bio56w==\n", "9/TVQAtEXJk=\n"), StringFog.decrypt("CL7st49BRzQ5uPe2mkFXNC+a972KEgA3P6Pz+A==\n", "Tcye2P1hIFE=\n") + c0624.f2640);
                arrayList2 = null;
            }
        }
        String str3 = AbstractC0061.f813;
        HashSet hashSet = new HashSet(arrayList);
        if (arrayList2 != null) {
            hashSet.addAll(arrayList2);
        }
        ArrayList arrayList3 = new ArrayList(hashSet);
        if (arrayList3.isEmpty() || this.f1542.f1588) {
            View viewMo970 = mo970(obj);
            if (viewMo970 != null) {
                viewMo970.addOnLayoutChangeListener(new ViewOnLayoutChangeListenerC0278(this, obj));
            }
            if (arrayList3.isEmpty()) {
                super.mo987(jSONObject, null, obj);
                return;
            }
        }
        if (this.f1542.f1583) {
            AbstractC0272.f1610.post(new RunnableC0268(this, obj, arrayList3, jSONObject));
        } else {
            m1203(obj, arrayList3);
            super.mo987(jSONObject, (WebView) arrayList3.get(0), obj);
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final AbstractViewOnLayoutChangeListenerC3474b0 m1202(Object obj) {
        if (this.f1542.f1584) {
            return (AbstractViewOnLayoutChangeListenerC3474b0) this.f1545.get(obj);
        }
        return this.f1544;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1200(AbstractC0238 abstractC0238, JSONObject jSONObject, WebView webView, Object obj) {
        super.mo987(jSONObject, webView, obj);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1203(Object obj, ArrayList arrayList) {
        AbstractViewOnLayoutChangeListenerC3474b0 abstractViewOnLayoutChangeListenerC3474b0M1202 = m1202(obj);
        abstractViewOnLayoutChangeListenerC3474b0M1202.getClass();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            abstractViewOnLayoutChangeListenerC3474b0M1202.m1021((WebView) it.next());
        }
        if (this.f1542.f1590) {
            m1202(obj).f252 = Integer.toHexString(((WebView) arrayList.get(0)).hashCode());
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0822
    /* JADX INFO: renamed from: ﾒ */
    public final String mo966(Object obj) {
        return m1202(obj).f252;
    }
}

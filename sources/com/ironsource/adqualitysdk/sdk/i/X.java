package com.ironsource.adqualitysdk.sdk.i;

import android.webkit.WebView;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class X extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C3472a0 f231;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ boolean f232;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ String f233;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ WebView f234;

    public X(C3472a0 c3472a0, WebView webView, String str, boolean z) {
        this.f231 = c3472a0;
        this.f234 = webView;
        this.f233 = str;
        this.f232 = z;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void mo1013() {
        AbstractViewOnLayoutChangeListenerC3474b0 abstractViewOnLayoutChangeListenerC3474b0 = this.f231.f243;
        if (abstractViewOnLayoutChangeListenerC3474b0.f250) {
            List list = abstractViewOnLayoutChangeListenerC3474b0.f253;
            if (list == null || list.isEmpty()) {
                C3472a0 c3472a0 = this.f231;
                WebView webView = this.f234;
                String str = this.f233;
                boolean z = this.f232;
                c3472a0.getClass();
                AbstractC0272.m1212(new Z(c3472a0, webView, str, z));
                return;
            }
            Iterator it = this.f231.f243.f253.iterator();
            while (it.hasNext()) {
                if (this.f233.startsWith((String) it.next())) {
                    C3472a0 c3472a02 = this.f231;
                    WebView webView2 = this.f234;
                    String str2 = this.f233;
                    boolean z2 = this.f232;
                    c3472a02.getClass();
                    AbstractC0272.m1212(new Z(c3472a02, webView2, str2, z2));
                    return;
                }
            }
        }
    }
}

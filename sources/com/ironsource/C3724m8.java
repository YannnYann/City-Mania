package com.ironsource;

import android.webkit.JavascriptInterface;

/* JADX INFO: renamed from: com.ironsource.m8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3724m8 {
    private C3778p8 a;

    public C3724m8(C3778p8 c3778p8) {
        this.a = c3778p8;
    }

    @JavascriptInterface
    public void receiveMessageFromExternal(String str) {
        this.a.handleMessageFromAd(str);
    }
}

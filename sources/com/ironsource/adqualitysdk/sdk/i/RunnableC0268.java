package com.ironsource.adqualitysdk.sdk.i;

import android.webkit.WebView;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ԍ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class RunnableC0268 implements Runnable {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0238 f1601;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f1602;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ ArrayList f1603;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ Object f1604;

    public RunnableC0268(AbstractC0238 abstractC0238, Object obj, ArrayList arrayList, JSONObject jSONObject) {
        this.f1601 = abstractC0238;
        this.f1604 = obj;
        this.f1603 = arrayList;
        this.f1602 = jSONObject;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f1601.m1203(this.f1604, this.f1603);
        AbstractC0238.m1200(this.f1601, this.f1602, (WebView) this.f1603.get(0), this.f1604);
    }
}

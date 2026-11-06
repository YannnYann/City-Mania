package com.ironsource.adqualitysdk.sdk.i;

import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᘂ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0613 implements InterfaceC0511 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0048 f2593;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0915 f2594;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0946 f2595;

    public C0613(C0946 c0946, C0915 c0915, C0048 c0048) {
        this.f2595 = c0946;
        this.f2594 = c0915;
        this.f2593 = c0048;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0511
    /* JADX INFO: renamed from: ﾒ */
    public final JSONObject mo1267(String str, JSONObject jSONObject) {
        List listAsList = Arrays.asList(str, jSONObject);
        C0946 c0946 = this.f2595;
        C0915 c0915 = this.f2594;
        C0048 c0048 = this.f2593;
        c0946.getClass();
        return (JSONObject) c0946.m1558(c0915, c0915.f3495, c0048, listAsList).f1192;
    }
}

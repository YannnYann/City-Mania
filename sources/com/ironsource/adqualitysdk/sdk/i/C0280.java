package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.ISAdQualitySegment;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ב, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0280 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0204 f1620;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ ISAdQualitySegment f1621;

    public C0280(C0204 c0204, ISAdQualitySegment iSAdQualitySegment) {
        this.f1620 = c0204;
        this.f1621 = iSAdQualitySegment;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        boolean z;
        C0204 c0204 = this.f1620;
        synchronized (c0204) {
            z = c0204.f1364;
        }
        if (!z) {
            AbstractC0182.m1149(StringFog.decrypt("36vYz1KLR1znnM3x\n", "ns+JujPnLig=\n"), StringFog.decrypt("ZP1EUTOXgBFTvFkTINqWGlO8B1YO5LIQdulLGi7DilR02GFWLsTTGkjoCh8p3ocdRvBDDCLT3Q==\n", "J5wqdke383Q=\n"));
            return;
        }
        C0672 c0672 = this.f1620.f1348;
        if (c0672 != null) {
            ISAdQualitySegment iSAdQualitySegment = this.f1621;
            C0622 c0622 = c0672.f2736;
            String strDecrypt = StringFog.decrypt("twmzQwY0zAOhArM=\n", "xGzHHHVRq24=\n");
            JSONObject jSONObject = new JSONObject(iSAdQualitySegment.getCustomData());
            try {
                if (!TextUtils.isEmpty(iSAdQualitySegment.getName())) {
                    jSONObject.put(StringFog.decrypt("mWDREA==\n", "6ge/fald38k=\n"), iSAdQualitySegment.getName());
                }
                if (iSAdQualitySegment.getAge() != -1) {
                    jSONObject.put(StringFog.decrypt("WHWdAg==\n", "KxT6ZwACiO0=\n"), iSAdQualitySegment.getAge());
                }
                if (!TextUtils.isEmpty(iSAdQualitySegment.getGender())) {
                    jSONObject.put(StringFog.decrypt("bLGiqA==\n", "H9bHxiO51XA=\n"), iSAdQualitySegment.getGender());
                }
                if (iSAdQualitySegment.getLevel() != -1) {
                    jSONObject.put(StringFog.decrypt("n73lVw==\n", "7NGTO+nACrI=\n"), iSAdQualitySegment.getLevel());
                }
                if (iSAdQualitySegment.getIsPaying() != null) {
                    jSONObject.put(StringFog.decrypt("rCNKTw==\n", "31MrNpOU1QQ=\n"), iSAdQualitySegment.getIsPaying().get());
                }
                if (iSAdQualitySegment.getInAppPurchasesTotal() != -1.0d) {
                    jSONObject.put(StringFog.decrypt("38Doe3A=\n", "rKmJCwRWHt4=\n"), iSAdQualitySegment.getInAppPurchasesTotal());
                }
                if (iSAdQualitySegment.getUserCreationDate() != 0) {
                    jSONObject.put(StringFog.decrypt("CqcV4w==\n", "edJ2h8uJiic=\n"), iSAdQualitySegment.getUserCreationDate());
                }
            } catch (JSONException unused) {
            }
            c0622.m1403(strDecrypt, jSONObject);
        }
    }
}

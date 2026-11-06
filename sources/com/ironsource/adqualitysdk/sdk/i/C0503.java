package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import java.util.LinkedHashMap;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒮ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0503 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final /* synthetic */ C0324 f2321;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final /* synthetic */ C0342 f2322;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ LinkedHashMap f2323;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ List f2324;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ String f2325;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ Context f2326;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f2327;

    public C0503(C0324 c0324, String str, Context context, String str2, List list, LinkedHashMap linkedHashMap, C0342 c0342) {
        this.f2321 = c0324;
        this.f2327 = str;
        this.f2326 = context;
        this.f2325 = str2;
        this.f2324 = list;
        this.f2323 = linkedHashMap;
        this.f2322 = c0342;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        AbstractC0885 abstractC0885M1491 = AbstractC0885.m1491();
        String str = this.f2327;
        String str2 = this.f2321.f1897;
        C0512 c0512 = (C0512) ((C0893) abstractC0885M1491).mo1506().get(str);
        if (c0512 != null && c0512.m1294(str2)) {
            JSONObject jSONObject = new JSONObject();
            this.f2321.m1240(this.f2327, jSONObject);
            C0324.m1226(this.f2321).put(this.f2327, jSONObject);
            AbstractC0272.m1213(new C0504(this), AbstractC0885.m1491().mo1507());
            return;
        }
        C0324 c0324 = this.f2321;
        Context context = this.f2326;
        String str3 = this.f2325;
        String str4 = this.f2327;
        List list = this.f2324;
        C0507 c0507 = new C0507(this);
        c0324.getClass();
        AbstractC0272.m1214(new C0490(c0324, str4, context, str3, list, c0507));
    }
}

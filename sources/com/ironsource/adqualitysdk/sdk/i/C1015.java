package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﾆ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C1015 implements InterfaceC0054 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0975 f3817;

    public C1015(C0975 c0975) {
        this.f3817 = c0975;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0054
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1068(String str) {
        C0975 c0975 = this.f3817;
        c0975.getClass();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            c0975.f3676 = new JSONObject(str);
        } catch (JSONException unused) {
        }
    }
}

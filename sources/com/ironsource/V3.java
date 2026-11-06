package com.ironsource;

import android.content.Context;
import com.ironsource.C3522b4;
import com.ironsource.sdk.service.Connectivity.BroadcastReceiverStrategy;
import com.ironsource.sdk.utils.Logger;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public abstract class V3 implements InterfaceC3908w7 {
    private InterfaceC3890v7 a;

    public V3(JSONObject jSONObject, Context context) {
        this.a = a(jSONObject, context);
        Logger.i(V3.class.getSimpleName(), "created ConnectivityAdapter with strategy " + this.a.getClass().getSimpleName());
    }

    public JSONObject a(Context context) {
        return this.a.c(context);
    }

    @Override // com.ironsource.InterfaceC3908w7
    public void a() {
    }

    @Override // com.ironsource.InterfaceC3908w7
    public void a(String str, JSONObject jSONObject) {
    }

    public void b(Context context) {
        this.a.b(context);
    }

    @Override // com.ironsource.InterfaceC3908w7
    public void b(String str, JSONObject jSONObject) {
    }

    public void c(Context context) {
        this.a.a(context);
    }

    public void b() {
        this.a.a();
    }

    private InterfaceC3890v7 a(JSONObject jSONObject, Context context) {
        if (jSONObject.optInt(C3522b4.j.g0) == 1) {
            return new BroadcastReceiverStrategy(this);
        }
        if (M1.c(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return new C3764oc(this);
        }
        return new BroadcastReceiverStrategy(this);
    }
}

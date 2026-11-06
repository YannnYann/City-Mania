package com.ironsource;

import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.wa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3911wa {
    private InterfaceC3875ua a;

    public C3911wa(InterfaceC3875ua interfaceC3875ua) {
        this.a = interfaceC3875ua;
    }

    public void a(C3893va c3893va, JSONObject jSONObject) {
        this.a.a(false, c3893va.a(), jSONObject);
    }

    public void b(C3893va c3893va, JSONObject jSONObject) {
        this.a.a(true, c3893va.d(), jSONObject);
    }
}

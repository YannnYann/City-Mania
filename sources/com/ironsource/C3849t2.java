package com.ironsource;

import com.ironsource.mediationsdk.e;
import java.net.URL;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.t2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3849t2 extends e.a {
    public C3849t2(InterfaceC3538c2 interfaceC3538c2, URL url, JSONObject jSONObject, boolean z, A2 a2) {
        super(interfaceC3538c2, url, jSONObject, z, a2);
    }

    @Override // com.ironsource.mediationsdk.e.a
    public void a(boolean z, InterfaceC3538c2 interfaceC3538c2, long j) {
        try {
            if (z) {
                ((InterfaceC3718m2) interfaceC3538c2).a(this.b, this.f + 1, j, this.j, this.i);
            } else {
                interfaceC3538c2.a(this.c, this.d, this.f + 1, this.g, j);
            }
        } catch (Exception e) {
            C3813r4.d().a(e);
            interfaceC3538c2.a(1009, e.getMessage(), this.f + 1, this.g, j);
        }
    }
}

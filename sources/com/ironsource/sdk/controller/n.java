package com.ironsource.sdk.controller;

import android.app.Activity;
import android.content.Context;
import com.ironsource.C3813r4;
import com.ironsource.C3855t8;
import com.ironsource.InterfaceC3905w4;
import com.ironsource.InterfaceC3923x4;
import com.ironsource.InterfaceC3941y4;
import com.ironsource.V7;
import com.ironsource.X4;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.sdk.controller.f;
import com.ironsource.sdk.controller.l;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class n implements l {
    private final V7 a;
    private final String b;

    public class a implements Runnable {
        final /* synthetic */ l.a a;
        final /* synthetic */ f.c b;

        public a(l.a aVar, f.c cVar) {
            this.a = aVar;
            this.b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.a == null) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("success", false);
                jSONObject.put("reason", n.this.b);
                this.a.a(new f.a(this.b.f(), jSONObject));
            } catch (JSONException e) {
                C3813r4.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
        }
    }

    public class b implements Runnable {
        final /* synthetic */ InterfaceC3941y4 a;
        final /* synthetic */ X4 b;

        public b(InterfaceC3941y4 interfaceC3941y4, X4 x4) {
            this.a = interfaceC3941y4;
            this.b = x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a(C3855t8.e.RewardedVideo, this.b.h(), n.this.b);
        }
    }

    public class c implements Runnable {
        final /* synthetic */ InterfaceC3941y4 a;
        final /* synthetic */ JSONObject b;

        public c(InterfaceC3941y4 interfaceC3941y4, JSONObject jSONObject) {
            this.a = interfaceC3941y4;
            this.b = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.b(this.b.optString("demandSourceName"), n.this.b);
        }
    }

    public class d implements Runnable {
        final /* synthetic */ InterfaceC3923x4 a;
        final /* synthetic */ X4 b;

        public d(InterfaceC3923x4 interfaceC3923x4, X4 x4) {
            this.a = interfaceC3923x4;
            this.b = x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a(C3855t8.e.Interstitial, this.b.h(), n.this.b);
        }
    }

    public class e implements Runnable {
        final /* synthetic */ InterfaceC3923x4 a;
        final /* synthetic */ String b;

        public e(InterfaceC3923x4 interfaceC3923x4, String str) {
            this.a = interfaceC3923x4;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a(this.b, n.this.b);
        }
    }

    public class f implements Runnable {
        final /* synthetic */ InterfaceC3923x4 a;
        final /* synthetic */ X4 b;

        public f(InterfaceC3923x4 interfaceC3923x4, X4 x4) {
            this.a = interfaceC3923x4;
            this.b = x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a(this.b.h(), n.this.b);
        }
    }

    public class g implements Runnable {
        final /* synthetic */ InterfaceC3923x4 a;
        final /* synthetic */ JSONObject b;

        public g(InterfaceC3923x4 interfaceC3923x4, JSONObject jSONObject) {
            this.a = interfaceC3923x4;
            this.b = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.d(this.b.optString("demandSourceName"), n.this.b);
        }
    }

    public class h implements Runnable {
        final /* synthetic */ InterfaceC3923x4 a;
        final /* synthetic */ X4 b;

        public h(InterfaceC3923x4 interfaceC3923x4, X4 x4) {
            this.a = interfaceC3923x4;
            this.b = x4;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.d(this.b.h(), n.this.b);
        }
    }

    public class i implements Runnable {
        final /* synthetic */ InterfaceC3905w4 a;
        final /* synthetic */ Map b;

        public i(InterfaceC3905w4 interfaceC3905w4, Map map) {
            this.a = interfaceC3905w4;
            this.b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.c((String) this.b.get("demandSourceName"), n.this.b);
        }
    }

    public class j implements Runnable {
        final /* synthetic */ InterfaceC3905w4 a;
        final /* synthetic */ JSONObject b;

        public j(InterfaceC3905w4 interfaceC3905w4, JSONObject jSONObject) {
            this.a = interfaceC3905w4;
            this.b = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.c(this.b.optString("demandSourceName"), n.this.b);
        }
    }

    public n(String str, V7 v7) {
        this.a = v7;
        this.b = str;
    }

    @Override // com.ironsource.sdk.controller.l
    public void a() {
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(Activity activity) {
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(Context context) {
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(X4 x4) {
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(JSONObject jSONObject) {
    }

    @Override // com.ironsource.sdk.controller.l
    public boolean a(String str) {
        return false;
    }

    @Override // com.ironsource.sdk.controller.l
    public void b() {
    }

    @Override // com.ironsource.sdk.controller.l
    public void b(Context context) {
    }

    @Override // com.ironsource.sdk.controller.l
    public void b(X4 x4) {
    }

    @Override // com.ironsource.sdk.controller.l
    public void b(JSONObject jSONObject) {
    }

    @Override // com.ironsource.sdk.controller.l
    public void e() {
    }

    @Override // com.ironsource.sdk.controller.l
    public void f() {
    }

    @Override // com.ironsource.sdk.controller.l
    public void g() {
    }

    @Override // com.ironsource.sdk.controller.l
    public C3855t8.c h() {
        return C3855t8.c.Native;
    }

    @Override // com.ironsource.sdk.controller.l
    public void b(X4 x4, Map<String, String> map, InterfaceC3923x4 interfaceC3923x4) {
        if (interfaceC3923x4 != null) {
            a(new f(interfaceC3923x4, x4));
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(String str, String str2, X4 x4, InterfaceC3941y4 interfaceC3941y4) {
        if (interfaceC3941y4 != null) {
            a(new b(interfaceC3941y4, x4));
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(JSONObject jSONObject, InterfaceC3941y4 interfaceC3941y4) {
        if (interfaceC3941y4 != null) {
            a(new c(interfaceC3941y4, jSONObject));
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(String str, String str2, X4 x4, InterfaceC3923x4 interfaceC3923x4) {
        if (interfaceC3923x4 != null) {
            a(new d(interfaceC3923x4, x4));
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(String str, InterfaceC3923x4 interfaceC3923x4) {
        if (interfaceC3923x4 != null) {
            a(new e(interfaceC3923x4, str));
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(JSONObject jSONObject, InterfaceC3923x4 interfaceC3923x4) {
        if (interfaceC3923x4 != null) {
            a(new g(interfaceC3923x4, jSONObject));
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(X4 x4, Map<String, String> map, InterfaceC3923x4 interfaceC3923x4) {
        if (interfaceC3923x4 != null) {
            a(new h(interfaceC3923x4, x4));
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(String str, String str2, X4 x4, InterfaceC3905w4 interfaceC3905w4) {
        if (interfaceC3905w4 != null) {
            interfaceC3905w4.a(C3855t8.e.Banner, x4.h(), this.b);
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(X4 x4, Map<String, String> map, InterfaceC3905w4 interfaceC3905w4) {
        if (interfaceC3905w4 != null) {
            a(new i(interfaceC3905w4, map));
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(JSONObject jSONObject, InterfaceC3905w4 interfaceC3905w4) {
        if (interfaceC3905w4 != null) {
            a(new j(interfaceC3905w4, jSONObject));
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(f.c cVar, l.a aVar) {
        a(new a(aVar, cVar));
    }

    public void a(Runnable runnable) {
        V7 v7 = this.a;
        if (v7 != null) {
            v7.c(runnable);
        }
    }
}

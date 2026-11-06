package com.ironsource.sdk.controller;

import android.app.Activity;
import android.content.Context;
import com.ironsource.C3855t8;
import com.ironsource.InterfaceC3905w4;
import com.ironsource.InterfaceC3923x4;
import com.ironsource.InterfaceC3941y4;
import com.ironsource.Sb;
import com.ironsource.X4;
import com.ironsource.sdk.controller.f;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public interface l {

    public interface a {
        void a(f.a aVar);
    }

    public interface b {
        void a(Sb sb);
    }

    void a();

    void a(Activity activity);

    void a(Context context);

    void a(X4 x4);

    void a(X4 x4, Map<String, String> map, InterfaceC3905w4 interfaceC3905w4);

    void a(X4 x4, Map<String, String> map, InterfaceC3923x4 interfaceC3923x4);

    void a(f.c cVar, a aVar);

    void a(String str, InterfaceC3923x4 interfaceC3923x4);

    void a(String str, String str2, X4 x4, InterfaceC3905w4 interfaceC3905w4);

    void a(String str, String str2, X4 x4, InterfaceC3923x4 interfaceC3923x4);

    void a(String str, String str2, X4 x4, InterfaceC3941y4 interfaceC3941y4);

    void a(JSONObject jSONObject);

    void a(JSONObject jSONObject, InterfaceC3905w4 interfaceC3905w4);

    void a(JSONObject jSONObject, InterfaceC3923x4 interfaceC3923x4);

    void a(JSONObject jSONObject, InterfaceC3941y4 interfaceC3941y4);

    boolean a(String str);

    void b();

    void b(Context context);

    void b(X4 x4);

    void b(X4 x4, Map<String, String> map, InterfaceC3923x4 interfaceC3923x4);

    void b(JSONObject jSONObject);

    void e();

    @Deprecated
    void f();

    void g();

    C3855t8.c h();
}

package com.ironsource;

import android.app.Activity;
import com.ironsource.C3522b4;
import com.ironsource.H8;
import com.ironsource.InterfaceC3469ac;
import com.ironsource.sdk.controller.f;
import com.ironsource.sdk.controller.l;
import com.ironsource.sdk.utils.Logger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class Zb implements InterfaceC3469ac {
    private final String a;
    private final com.ironsource.sdk.controller.e b;
    private final InterfaceC3466a9 c;
    private final InterfaceC3519b1 d;
    private final String e;
    private InterfaceC3469ac.a f;

    public static final class a {
        public static final a a = new a();
        public static final String b = "nativeAd.load";
        public static final String c = "nativeAd.loadReport";
        public static final String d = "nativeAd.register";
        public static final String e = "nativeAd.click";
        public static final String f = "nativeAd.privacyClick";
        public static final String g = "nativeAd.visibilityChanged";
        public static final String h = "nativeAd.destroy";

        private a() {
        }
    }

    public Zb(String id, com.ironsource.sdk.controller.e controllerManager, InterfaceC3466a9 imageLoader, InterfaceC3519b1 adViewManagement) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(controllerManager, "controllerManager");
        Intrinsics.checkNotNullParameter(imageLoader, "imageLoader");
        Intrinsics.checkNotNullParameter(adViewManagement, "adViewManagement");
        this.a = id;
        this.b = controllerManager;
        this.c = imageLoader;
        this.d = adViewManagement;
        this.e = Zb.class.getSimpleName();
        controllerManager.a(id, d());
    }

    private final l.b d() {
        return new l.b() { // from class: com.ironsource.Zb$$ExternalSyntheticLambda0
            @Override // com.ironsource.sdk.controller.l.b
            public final void a(Sb sb) {
                Zb.a(this.f$0, sb);
            }
        };
    }

    private final JSONObject e() throws JSONException {
        JSONObject jSONObjectPut = new JSONObject().put(f.b.g, a.e).put("sdkCallback", C3522b4.h.U);
        Intrinsics.checkNotNullExpressionValue(jSONObjectPut, "put(...)");
        return jSONObjectPut;
    }

    @Override // com.ironsource.InterfaceC3469ac
    public void a(InterfaceC3469ac.a aVar) {
        this.f = aVar;
    }

    @Override // com.ironsource.InterfaceC3469ac
    public InterfaceC3469ac.a b() {
        return this.f;
    }

    @Override // com.ironsource.InterfaceC3469ac
    public void c() {
        this.b.a(new f.c(this.a, a.f, new JSONObject()), (l.a) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Zb zb, f.a it) {
        Intrinsics.checkNotNullParameter(it, "it");
        zb.b(it);
    }

    @Override // com.ironsource.InterfaceC3469ac
    public void a(final Activity activity, JSONObject loadParams) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(loadParams, "loadParams");
        this.b.a(activity);
        this.b.a(new f.c(this.a, a.b, loadParams), new l.a() { // from class: com.ironsource.Zb$$ExternalSyntheticLambda3
            @Override // com.ironsource.sdk.controller.l.a
            public final void a(f.a aVar) {
                Zb.a(this.f$0, activity, aVar);
            }
        });
    }

    private final void b(f.a aVar) {
        if (aVar.d() == null) {
            Logger.i(this.e, "failed to handle show on native ad: missing params");
            return;
        }
        if (!aVar.d().optBoolean("success", false)) {
            String strOptString = aVar.d().optString("reason", "unexpected error");
            Logger.i(this.e, "failed to handle show on native ad: " + strOptString);
            return;
        }
        InterfaceC3469ac.a aVarB = b();
        if (aVarB != null) {
            aVarB.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Zb zb, Activity activity, f.a it) {
        Intrinsics.checkNotNullParameter(it, "it");
        zb.a(activity, it);
    }

    private final void a(Activity activity, f.a aVar) {
        if (aVar.d() == null) {
            InterfaceC3469ac.a aVarB = b();
            if (aVarB != null) {
                aVarB.a("failed to load native ad: missing params");
                return;
            }
            return;
        }
        if (!aVar.d().optBoolean("success", false)) {
            String strOptString = aVar.d().optString("reason", "failed to load native ad: unexpected error");
            InterfaceC3469ac.a aVarB2 = b();
            if (aVarB2 != null) {
                Intrinsics.checkNotNull(strOptString);
                aVarB2.a(strOptString);
                return;
            }
            return;
        }
        H8.b bVarA = new H8.a(this.c, this.d).a(activity, aVar.d());
        a(bVarA, bVarA.a().h());
    }

    public /* synthetic */ Zb(String str, com.ironsource.sdk.controller.e eVar, InterfaceC3466a9 interfaceC3466a9, InterfaceC3519b1 interfaceC3519b1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, eVar, (i & 4) != 0 ? new Z8(null, 1, null) : interfaceC3466a9, (i & 8) != 0 ? C3800q8.a() : interfaceC3519b1);
    }

    private final void a(H8.b bVar, final H8 h8) {
        this.b.a(new f.c(this.a, "nativeAd.loadReport." + this.a, bVar.b()), new l.a() { // from class: com.ironsource.Zb$$ExternalSyntheticLambda2
            @Override // com.ironsource.sdk.controller.l.a
            public final void a(f.a aVar) {
                Zb.a(this.f$0, h8, aVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Zb zb, H8 h8, f.a it) {
        Intrinsics.checkNotNullParameter(it, "it");
        zb.a(h8, it);
    }

    private final void a(H8 h8, f.a aVar) {
        if (aVar.d() == null) {
            InterfaceC3469ac.a aVarB = b();
            if (aVarB != null) {
                aVarB.a("failed to load native ad: missing report params");
                return;
            }
            return;
        }
        if (!aVar.d().optBoolean("success", false)) {
            String strOptString = aVar.d().optString("reason", "failed to load native ad: unexpected error");
            InterfaceC3469ac.a aVarB2 = b();
            if (aVarB2 != null) {
                Intrinsics.checkNotNull(strOptString);
                aVarB2.a(strOptString);
                return;
            }
            return;
        }
        InterfaceC3469ac.a aVarB3 = b();
        if (aVarB3 != null) {
            aVarB3.a(h8);
        }
    }

    @Override // com.ironsource.InterfaceC3469ac
    public void a() {
        this.b.a(new f.c(this.a, a.h, new JSONObject()), (l.a) null);
    }

    @Override // com.ironsource.InterfaceC3469ac
    public void a(K8 viewHolder) throws JSONException {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        JSONObject jSONObjectPut = new JSONObject().put("assetViews", viewHolder.t()).put("adViewClickCommand", e());
        String str = this.a;
        Intrinsics.checkNotNull(jSONObjectPut);
        this.b.a(new f.c(str, a.d, jSONObjectPut), (l.a) null);
    }

    @Override // com.ironsource.InterfaceC3469ac
    public void a(Dg viewVisibilityParams) {
        Intrinsics.checkNotNullParameter(viewVisibilityParams, "viewVisibilityParams");
        this.b.a(new f.c(this.a, a.g, viewVisibilityParams.g()), new l.a() { // from class: com.ironsource.Zb$$ExternalSyntheticLambda4
            @Override // com.ironsource.sdk.controller.l.a
            public final void a(f.a aVar) {
                Zb.b(this.f$0, aVar);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3469ac
    public void a(JSONObject clickParams) {
        Intrinsics.checkNotNullParameter(clickParams, "clickParams");
        this.b.a(new f.c(this.a, a.e, clickParams), new l.a() { // from class: com.ironsource.Zb$$ExternalSyntheticLambda1
            @Override // com.ironsource.sdk.controller.l.a
            public final void a(f.a aVar) {
                Zb.a(this.f$0, aVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Zb zb, f.a it) {
        Intrinsics.checkNotNullParameter(it, "it");
        zb.a(it);
    }

    private final void a(f.a aVar) {
        if (aVar.d() == null) {
            Logger.i(this.e, "failed to handle click on native ad: missing params");
            return;
        }
        if (!aVar.d().optBoolean("success", false)) {
            String strOptString = aVar.d().optString("reason", "unexpected error");
            Logger.i(this.e, "failed to handle click on native ad: " + strOptString);
            return;
        }
        InterfaceC3469ac.a aVarB = b();
        if (aVarB != null) {
            aVarB.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Zb zb, Sb msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (Intrinsics.areEqual(msg.e(), a.e)) {
            zb.a(msg);
        }
    }

    private final void a(Sb sb) {
        if (sb.f() == null) {
            Logger.i(this.e, "failed to handle click on native ad: missing params");
            return;
        }
        if (!sb.f().optBoolean("success", false)) {
            String strOptString = sb.f().optString("reason", "unexpected error");
            Logger.i(this.e, "failed to handle click on native ad: " + strOptString);
            return;
        }
        InterfaceC3469ac.a aVarB = b();
        if (aVarB != null) {
            aVarB.e();
        }
    }
}

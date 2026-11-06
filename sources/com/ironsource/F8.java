package com.ironsource;

import android.app.Activity;
import com.ironsource.C3522b4;
import com.ironsource.C3712le;
import com.ironsource.C3855t8;
import com.ironsource.InterfaceC3469ac;
import com.ironsource.J8;
import com.ironsource.K8;
import com.ironsource.sdk.IronSourceNetwork;
import java.util.Calendar;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.UUID;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class F8 implements J8 {
    public static final a j = new a(null);
    private final String a;
    private final InterfaceC3469ac b;
    private final InterfaceC3909w8 c;
    private H8 d;
    private String e;
    private String f;
    private Long g;
    private J8.a h;
    private K8 i;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final F8 a() {
            String string = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            com.ironsource.sdk.controller.e controllerManager = IronSourceNetwork.getControllerManager();
            Intrinsics.checkNotNull(controllerManager);
            return new F8(string, new Zb(string, controllerManager, null, null, 12, null), new C3927x8());
        }

        private a() {
        }
    }

    public F8(String id, InterfaceC3469ac controller, InterfaceC3909w8 eventTracker) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(controller, "controller");
        Intrinsics.checkNotNullParameter(eventTracker, "eventTracker");
        this.a = id;
        this.b = controller;
        this.c = eventTracker;
        controller.a(f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final C3891v8 d() {
        C3891v8 c3891v8A = new C3891v8().a(G5.x, this.f).a(G5.v, this.e).a(G5.w, C3855t8.e.NativeAd.toString()).a(G5.I, Long.valueOf(j()));
        Intrinsics.checkNotNullExpressionValue(c3891v8A, "addPair(...)");
        return c3891v8A;
    }

    public static final F8 e() {
        return j.a();
    }

    private final b f() {
        return new b();
    }

    private final c g() {
        return new c();
    }

    private final long j() {
        Long l = this.g;
        if (l == null) {
            return -1L;
        }
        return Calendar.getInstance().getTimeInMillis() - l.longValue();
    }

    public final String h() {
        return this.e;
    }

    public final String i() {
        return this.f;
    }

    @Override // com.ironsource.J8
    public J8.a b() {
        return this.h;
    }

    @Override // com.ironsource.J8
    public H8 c() {
        return this.d;
    }

    public static final class b implements InterfaceC3469ac.a {
        public b() {
        }

        @Override // com.ironsource.InterfaceC3469ac.a
        public void a(H8 adData) {
            Intrinsics.checkNotNullParameter(adData, "adData");
            F8.this.d = adData;
            InterfaceC3909w8 interfaceC3909w8 = F8.this.c;
            C3712le.a loadAdSuccess = C3712le.l;
            Intrinsics.checkNotNullExpressionValue(loadAdSuccess, "loadAdSuccess");
            HashMap<String, Object> mapA = F8.this.d().a();
            Intrinsics.checkNotNullExpressionValue(mapA, "getData(...)");
            interfaceC3909w8.a(loadAdSuccess, mapA);
            J8.a aVarB = F8.this.b();
            if (aVarB != null) {
                aVarB.onNativeAdLoadSuccess(adData);
            }
        }

        @Override // com.ironsource.InterfaceC3469ac.a
        public void e() {
            J8.a aVarB = F8.this.b();
            if (aVarB != null) {
                aVarB.onNativeAdClicked();
            }
        }

        @Override // com.ironsource.InterfaceC3469ac.a
        public void a(String reason) {
            Intrinsics.checkNotNullParameter(reason, "reason");
            C3891v8 c3891v8A = F8.this.d().a(G5.A, reason);
            InterfaceC3909w8 interfaceC3909w8 = F8.this.c;
            C3712le.a loadAdFailed = C3712le.g;
            Intrinsics.checkNotNullExpressionValue(loadAdFailed, "loadAdFailed");
            HashMap<String, Object> mapA = c3891v8A.a();
            Intrinsics.checkNotNullExpressionValue(mapA, "getData(...)");
            interfaceC3909w8.a(loadAdFailed, mapA);
            J8.a aVarB = F8.this.b();
            if (aVarB != null) {
                aVarB.onNativeAdLoadFailed(reason);
            }
        }

        @Override // com.ironsource.InterfaceC3469ac.a
        public void a() {
            J8.a aVarB = F8.this.b();
            if (aVarB != null) {
                aVarB.onNativeAdShown();
            }
        }
    }

    @Override // com.ironsource.J8
    public void a(J8.a aVar) {
        this.h = aVar;
    }

    @Override // com.ironsource.J8
    public void a(Activity activity, JSONObject loadParams) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(loadParams, "loadParams");
        this.g = Long.valueOf(Calendar.getInstance().getTimeInMillis());
        this.e = loadParams.optString("demandSourceName");
        this.f = loadParams.optString("inAppBidding");
        InterfaceC3909w8 interfaceC3909w8 = this.c;
        C3712le.a loadAd = C3712le.f;
        Intrinsics.checkNotNullExpressionValue(loadAd, "loadAd");
        HashMap<String, Object> mapA = d().a();
        Intrinsics.checkNotNullExpressionValue(mapA, "getData(...)");
        interfaceC3909w8.a(loadAd, mapA);
        JSONObject jSONObject = new JSONObject(loadParams.toString());
        jSONObject.put(C3522b4.i.y0, String.valueOf(this.g));
        this.b.a(activity, jSONObject);
    }

    public static final class c implements K8.a {

        public /* synthetic */ class a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[K8.b.values().length];
                try {
                    iArr[K8.b.h.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                a = iArr;
            }
        }

        public c() {
        }

        @Override // com.ironsource.K8.a
        public void a(K8.b viewName) throws JSONException {
            Intrinsics.checkNotNullParameter(viewName, "viewName");
            if (a.a[viewName.ordinal()] == 1) {
                F8.this.b.c();
                return;
            }
            JSONObject jSONObjectPut = new JSONObject().put("viewName", viewName.c());
            InterfaceC3469ac interfaceC3469ac = F8.this.b;
            Intrinsics.checkNotNull(jSONObjectPut);
            interfaceC3469ac.a(jSONObjectPut);
        }

        @Override // com.ironsource.K8.a
        public void a(Dg viewVisibilityParams) {
            Intrinsics.checkNotNullParameter(viewVisibilityParams, "viewVisibilityParams");
            F8.this.b.a(viewVisibilityParams);
        }
    }

    @Override // com.ironsource.J8
    public void a(K8 viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        HashMap<String, Object> mapA = d().a();
        Intrinsics.checkNotNullExpressionValue(mapA, "getData(...)");
        linkedHashMap.putAll(mapA);
        String string = viewHolder.t().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        linkedHashMap.put(G5.y, string);
        InterfaceC3909w8 interfaceC3909w8 = this.c;
        C3712le.a registerAd = C3712le.n;
        Intrinsics.checkNotNullExpressionValue(registerAd, "registerAd");
        interfaceC3909w8.a(registerAd, linkedHashMap);
        this.i = viewHolder;
        viewHolder.a(g());
        this.b.a(viewHolder);
    }

    @Override // com.ironsource.J8
    public void a() {
        K8 k8 = this.i;
        if (k8 != null) {
            k8.a((K8.a) null);
        }
        this.b.a();
    }

    public /* synthetic */ F8(String str, InterfaceC3469ac interfaceC3469ac, InterfaceC3909w8 interfaceC3909w8, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? UUID.randomUUID().toString() : str, interfaceC3469ac, interfaceC3909w8);
    }
}

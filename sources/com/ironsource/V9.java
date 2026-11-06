package com.ironsource;

import android.content.Context;
import com.ironsource.Ue;
import com.ironsource.W;
import com.ironsource.mediationsdk.config.ConfigFile;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.unity3d.ironsourceads.InitListener;
import com.unity3d.ironsourceads.InitRequest;
import java.util.ArrayList;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class V9 {
    public static final V9 a = new V9();
    private static final C3818r9 b = new C3818r9();

    public static final class a implements InitListener {
        @Override // com.unity3d.ironsourceads.InitListener
        public void onInitFailed(IronSourceError error) {
            Intrinsics.checkNotNullParameter(error, "error");
        }

        @Override // com.unity3d.ironsourceads.InitListener
        public void onInitSuccess() {
        }
    }

    private V9() {
    }

    public final void b(boolean z) throws JSONException {
        a(z);
        new C3877uc().a(z);
    }

    public static final class b implements InterfaceC3933xe {
        final /* synthetic */ Context a;
        final /* synthetic */ C3703l5 b;
        final /* synthetic */ InitListener c;

        public b(Context context, C3703l5 c3703l5, InitListener initListener) {
            this.a = context;
            this.b = c3703l5;
            this.c = initListener;
        }

        @Override // com.ironsource.InterfaceC3933xe
        public void a(C3806qe sdkConfig) {
            Intrinsics.checkNotNullParameter(sdkConfig, "sdkConfig");
            V9.a.a(this.a, sdkConfig.d(), this.b, this.c);
        }

        @Override // com.ironsource.InterfaceC3933xe
        public void a(C3841se error) {
            Intrinsics.checkNotNullParameter(error, "error");
            V9.a.a(this.c, this.b, error);
        }
    }

    public final void a(final Context context, final InitRequest initRequest, final InitListener initializationListener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initRequest, "initRequest");
        Intrinsics.checkNotNullParameter(initializationListener, "initializationListener");
        IronLog.API.info("IronSourceAds.init() appkey: " + initRequest.getAppKey() + ", legacyAdFormats: " + initRequest.getLegacyAdFormats() + ", context: " + context.getClass().getSimpleName());
        b.a(new Runnable() { // from class: com.ironsource.V9$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                V9.a(initRequest, context, initializationListener);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(InitRequest initRequest, Context context, InitListener initListener) {
        C3703l5 c3703l5 = new C3703l5();
        Ge.a.c(context, new C3969ze(initRequest.getAppKey(), null, ArraysKt___ArraysKt.toMutableList(b.a(initRequest.getLegacyAdFormats())), 2, null), new b(context, c3703l5, initListener));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Context context, Ue ue, C3703l5 c3703l5, InitListener initListener) {
        String strN = com.ironsource.mediationsdk.p.g().n();
        C3600f9 c3600f9G = ue.g();
        Intrinsics.checkNotNullExpressionValue(c3600f9G, "getInitialConfiguration(...)");
        NetworkSettings networkSettingsB = ue.l().b("IronSource");
        Intrinsics.checkNotNullExpressionValue(networkSettingsB, "getProviderSettings(...)");
        JSONObject interstitialSettings = networkSettingsB.getInterstitialSettings();
        Intrinsics.checkNotNullExpressionValue(interstitialSettings, "getInterstitialSettings(...)");
        c3600f9G.a(new W.a(interstitialSettings, Pb.w.d().h()));
        c3600f9G.a(ConfigFile.getConfigFile().getPluginType());
        c3600f9G.b(strN);
        new Y(new C3913wc()).a(context, c3600f9G, new a());
        a(ue, c3703l5, initListener);
    }

    private final void a(Ue ue, C3703l5 c3703l5, final InitListener initListener) {
        T1 t1E;
        K1 k1B = ue.c().b();
        new Qb().a((k1B == null || (t1E = k1B.e()) == null) ? null : t1E.b(), true);
        String strN = com.ironsource.mediationsdk.p.g().n();
        C3786pc c3786pcA = C3786pc.e.a();
        c3786pcA.a(ue.l());
        c3786pcA.a(ue.c());
        Intrinsics.checkNotNull(strN);
        c3786pcA.a(strN);
        c3786pcA.g();
        long jA = C3703l5.a(c3703l5);
        C3818r9 c3818r9 = b;
        Ue.a aVarI = ue.i();
        Intrinsics.checkNotNullExpressionValue(aVarI, "getOrigin(...)");
        c3818r9.a(jA, aVarI);
        c3818r9.b(new Runnable() { // from class: com.ironsource.V9$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                V9.a(initListener);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(InitListener initListener) {
        IronLog.CALLBACK.info("InitListener.onInitSuccess()");
        if (initListener != null) {
            initListener.onInitSuccess();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(final InitListener initListener, C3703l5 c3703l5, final C3841se c3841se) {
        long jA = C3703l5.a(c3703l5);
        C3818r9 c3818r9 = b;
        final C3841se c3841seB = c3818r9.b(c3841se);
        c3818r9.a(c3841seB, jA);
        c3818r9.b(new Runnable() { // from class: com.ironsource.V9$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                V9.a(c3841se, initListener, c3841seB);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3841se c3841se, InitListener initListener, C3841se c3841se2) {
        IronLog.CALLBACK.info("InitListener.onInitFailed() error " + c3841se);
        if (initListener != null) {
            initListener.onInitFailed(b.a(c3841se2));
        }
    }

    private final void a(boolean z) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(IronSourceConstants.EVENTS_EXT1, String.valueOf(z));
        Pb.w.d().q().a(new C5(D5.f, jSONObject));
    }

    public final void a(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        ArrayList arrayList = new ArrayList();
        arrayList.add(value);
        com.ironsource.mediationsdk.p.g().a(key, arrayList);
    }
}

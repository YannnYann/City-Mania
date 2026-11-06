package com.ironsource;

import android.content.Context;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.ironsourceads.InitListener;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class Y implements X {
    private final InterfaceC3895vc a;

    public static final class a implements Tc {
        final /* synthetic */ C3600f9 a;
        final /* synthetic */ InitListener b;

        public a(C3600f9 c3600f9, InitListener initListener) {
            this.a = c3600f9;
            this.b = initListener;
        }

        @Override // com.ironsource.Tc
        public void onFail(C3873u8 error) {
            Intrinsics.checkNotNullParameter(error, "error");
            IronLog.ADAPTER_API.verbose("initSDKWithNetworkConfigurations error: " + error);
            this.b.onInitFailed(C3960z5.a.a(new IronSourceError(error.a(), error.b())));
        }

        @Override // com.ironsource.Tc
        public void onSuccess() {
            IronLog ironLog = IronLog.ADAPTER_API;
            ironLog.verbose("initSDKWithNetworkConfigurations success");
            W wE = this.a.e();
            ironLog.verbose("controllerURL = " + (wE != null ? wE.a() : null));
            W wE2 = this.a.e();
            ironLog.verbose("controllerConfig = " + (wE2 != null ? wE2.b() : null));
            W wE3 = this.a.e();
            ironLog.verbose("debugMode = " + (wE3 != null ? Integer.valueOf(wE3.c()) : null));
            ironLog.verbose("applicationKey = " + this.a.d());
            ironLog.verbose("userId = " + this.a.h());
            this.b.onInitSuccess();
        }
    }

    public Y(InterfaceC3895vc networkInitApi) {
        Intrinsics.checkNotNullParameter(networkInitApi, "networkInitApi");
        this.a = networkInitApi;
    }

    @Override // com.ironsource.X
    public void a(Context context, C3600f9 initConfig, InitListener initListener) {
        JSONObject jSONObjectB;
        String strA;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initConfig, "initConfig");
        Intrinsics.checkNotNullParameter(initListener, "initListener");
        InterfaceC3895vc interfaceC3895vc = this.a;
        W wE = initConfig.e();
        interfaceC3895vc.a(wE != null ? wE.c() : 0);
        W wE2 = initConfig.e();
        if (wE2 != null && (strA = wE2.a()) != null) {
            this.a.b(strA);
        }
        W wE3 = initConfig.e();
        if (wE3 != null && (jSONObjectB = wE3.b()) != null) {
            InterfaceC3895vc interfaceC3895vc2 = this.a;
            String string = jSONObjectB.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            interfaceC3895vc2.a(string);
        }
        Map<String, String> mapA = new C3859tc().a();
        this.a.a(new a(initConfig, initListener));
        this.a.a(context, initConfig.d(), initConfig.h(), mapA);
    }
}

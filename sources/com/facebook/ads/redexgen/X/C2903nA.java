package com.facebook.ads.redexgen.X;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.Messenger;
import com.facebook.ads.internal.api.AudienceNetworkRemoteServiceApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.util.process.ProcessUtils;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.nA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2903nA implements AudienceNetworkRemoteServiceApi {
    public Messenger A00;
    public AudienceNetworkRemoteServiceApi.MessageHandler A01;
    public AudienceNetworkRemoteServiceApi.PackageVerifier A02;
    public final Service A03;

    public C2903nA(Service service) {
        this.A03 = service;
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkRemoteServiceApi
    public final IBinder onBind(Intent intent) {
        if (this.A00 == null) {
            return null;
        }
        return this.A00.getBinder();
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkRemoteServiceApi
    public final void onCreate() {
        ProcessUtils.setRemoteRenderingProcess(true);
        DynamicLoaderFactory.makeLoader(this.A03).getInitApi().initialize(this.A03, null, null, 2);
        this.A00 = new Messenger(new HandlerC2904nB(this.A03.getApplicationContext(), this.A01, this.A02));
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkRemoteServiceApi
    public final void onDestroy() {
        C1634Gz.A00().A06();
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkRemoteServiceApi
    public final void setHorizonWorldUrlLauncher(AudienceNetworkRemoteServiceApi.HorizonWorldUrlLauncher horizonWorldUrlLauncher) {
        C3022p8.A0C(horizonWorldUrlLauncher);
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkRemoteServiceApi
    public final void setMessageHandler(AudienceNetworkRemoteServiceApi.MessageHandler messageHandler) {
        this.A01 = messageHandler;
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkRemoteServiceApi
    public final void setPackageVerifier(AudienceNetworkRemoteServiceApi.PackageVerifier packageVerifier) {
        this.A02 = packageVerifier;
    }
}

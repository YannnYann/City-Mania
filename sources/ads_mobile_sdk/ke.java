package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.initialization.AdapterStatus;

/* JADX INFO: loaded from: classes.dex */
public final class ke implements AdapterStatus {
    public final AdapterStatus.InitializationState a;
    public final String b;
    public final int c;
    public final /* synthetic */ AdapterStatus.InitializationState d;
    public final /* synthetic */ String e;
    public final /* synthetic */ int f;

    public ke(AdapterStatus.InitializationState initializationState, String str, int i) {
        this.d = initializationState;
        this.e = str;
        this.f = i;
        this.a = initializationState;
        this.b = str;
        this.c = i;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.initialization.AdapterStatus
    public final AdapterStatus.InitializationState getInitializationState() {
        return this.a;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.initialization.AdapterStatus
    public final String getDescription() {
        return this.b;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.initialization.AdapterStatus
    public final int getLatency() {
        return this.c;
    }

    public final String toString() {
        return "Adapter in state " + this.d + " completed in " + this.f + " with description: " + this.e;
    }
}

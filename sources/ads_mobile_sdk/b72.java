package ads_mobile_sdk;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class b72 implements rf {
    public final BaseRequest a;
    public final NativeRequest b;
    public final l43 c;
    public final Context d;
    public final f0 e;
    public final hm0 f;
    public final cw2 g;

    public b72(BaseRequest baseRequest, NativeRequest nativeRequest, l43 requestConfigurationWrapper, Context context, f0 activityTracker, hm0 delegatingThirdPartyEventEmitter, dw2 nativeAdComponentProvider) {
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(nativeRequest, "nativeRequest");
        Intrinsics.checkNotNullParameter(requestConfigurationWrapper, "requestConfigurationWrapper");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(delegatingThirdPartyEventEmitter, "delegatingThirdPartyEventEmitter");
        Intrinsics.checkNotNullParameter(nativeAdComponentProvider, "nativeAdComponentProvider");
        this.a = baseRequest;
        this.b = nativeRequest;
        this.c = requestConfigurationWrapper;
        this.d = context;
        this.e = activityTracker;
        this.f = delegatingThirdPartyEventEmitter;
        this.g = nativeAdComponentProvider;
    }

    @Override // ads_mobile_sdk.rf
    public final void a(ec3 transaction, i2 config, jf jfVar, do3 listener) {
        rc2 adapter = (rc2) jfVar;
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Context contextG = this.e.g();
        if (contextG == null) {
            contextG = this.d;
        }
        adapter.a(contextG, this.a, this.b, this.c.a(), config.c, listener, this.f);
    }

    @Override // ads_mobile_sdk.rf
    public final w1 a(ec3 transaction, i2 config, Object obj) {
        rc2 adapter = (rc2) obj;
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        pp3 pp3Var = (pp3) this.g.get();
        p12 p12Var = adapter.c;
        p12 p12Var2 = null;
        if (p12Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nativeAdMapper");
            p12Var = null;
        }
        ij0 ij0Var = (ij0) pp3Var;
        ij0Var.getClass();
        p12Var.getClass();
        ij0Var.p = p12Var;
        p12 p12Var3 = adapter.c;
        if (p12Var3 != null) {
            p12Var2 = p12Var3;
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("nativeAdMapper");
        }
        ij0Var.q = r02.a(p12Var2, this.b.getAdChoicesPlacement());
        return ij0Var;
    }
}

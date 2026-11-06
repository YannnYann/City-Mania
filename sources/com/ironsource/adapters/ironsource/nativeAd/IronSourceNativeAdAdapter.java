package com.ironsource.adapters.ironsource.nativeAd;

import android.app.Activity;
import com.ironsource.C3522b4;
import com.ironsource.C3813r4;
import com.ironsource.F8;
import com.ironsource.adapters.ironsource.IronSourceAdapter;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.adapter.AbstractNativeAdAdapter;
import com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdSmashListener;
import com.ironsource.mediationsdk.d;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.ads.core.domain.CommonGetHeaderBiddingToken;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class IronSourceNativeAdAdapter extends AbstractNativeAdAdapter<IronSourceAdapter> {
    private F8 nativeAd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IronSourceNativeAdAdapter(IronSourceAdapter adapter) {
        super(adapter);
        Intrinsics.checkNotNullParameter(adapter, "adapter");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadNativeAdForBidding$lambda$0(IronSourceNativeAdAdapter ironSourceNativeAdAdapter, JSONObject jSONObject, NativeAdSmashListener nativeAdSmashListener, String str) {
        try {
            F8 f8A = F8.j.a();
            f8A.a(new IronSourceNativeAdListener(new IronSourceNativeAdViewBinder(f8A, ironSourceNativeAdAdapter.getNativeAdProperties(jSONObject)), nativeAdSmashListener));
            Activity currentActiveActivity = ContextProvider.getInstance().getCurrentActiveActivity();
            JSONObject jSONObjectPrepareLoadParams = ironSourceNativeAdAdapter.prepareLoadParams(jSONObject, str);
            Intrinsics.checkNotNull(currentActiveActivity);
            f8A.a(currentActiveActivity, jSONObjectPrepareLoadParams);
            ironSourceNativeAdAdapter.nativeAd = f8A;
        } catch (Exception e) {
            C3813r4.d().a(e);
            nativeAdSmashListener.onNativeAdLoadFailed(new IronSourceError(510, "IronSourceAdapter loadNativeAd exception " + e.getMessage()));
        }
    }

    private final JSONObject prepareLoadParams(JSONObject jSONObject, String str) throws JSONException {
        JSONObject jSONObjectPut = new JSONObject().put("demandSourceName", getAdapter().getDemandSourceName(jSONObject)).put(C3522b4.s, CommonGetHeaderBiddingToken.HB_TOKEN_VERSION).put("inAppBidding", true).put(getAdapter().ADM_KEY, d.b().a(str));
        HashMap<String, String> initParams = getAdapter().getInitParams();
        Intrinsics.checkNotNull(initParams);
        for (Map.Entry<String, String> entry : initParams.entrySet()) {
            jSONObjectPut.put(entry.getKey(), entry.getValue());
        }
        Intrinsics.checkNotNull(jSONObjectPut);
        return jSONObjectPut;
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractNativeAdAdapter, com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdAdapterInterface
    public void destroyNativeAd(JSONObject config) {
        Intrinsics.checkNotNullParameter(config, "config");
        F8 f8 = this.nativeAd;
        if (f8 != null) {
            f8.a();
        }
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractNativeAdAdapter, com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdAdapterInterface
    public Map<String, Object> getNativeAdBiddingData(JSONObject config, JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(config, "config");
        return new HashMap();
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractNativeAdAdapter, com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdAdapterInterface
    public void initNativeAdForBidding(String str, String str2, JSONObject config, NativeAdSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        getAdapter().initSDK(str, config);
        listener.onNativeAdInitSuccess();
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractNativeAdAdapter, com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdAdapterInterface
    public void loadNativeAdForBidding(final JSONObject config, JSONObject jSONObject, final String str, final NativeAdSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.ironsource.nativeAd.IronSourceNativeAdAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                IronSourceNativeAdAdapter.loadNativeAdForBidding$lambda$0(this.f$0, config, listener, str);
            }
        });
    }
}

package com.ironsource;

import android.text.TextUtils;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class C implements D0 {
    private final T0 a;
    private final B b;
    private final BaseAdAdapter<?, ?> c;

    public C(T0 adTools, B instanceData, BaseAdAdapter<?, ?> baseAdAdapter) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(instanceData, "instanceData");
        this.a = adTools;
        this.b = instanceData;
        this.c = baseAdAdapter;
    }

    @Override // com.ironsource.D0
    public Map<String, Object> a(B0 event) {
        String adapterVersion;
        Intrinsics.checkNotNullParameter(event, "event");
        HashMap map = new HashMap();
        try {
            BaseAdAdapter<?, ?> baseAdAdapter = this.c;
            String networkSDKVersion = "";
            if (baseAdAdapter != null) {
                AdapterBaseInterface networkAdapter = baseAdAdapter.getNetworkAdapter();
                Intrinsics.checkNotNull(networkAdapter);
                adapterVersion = networkAdapter.getAdapterVersion();
            } else {
                adapterVersion = "";
            }
            map.put(IronSourceConstants.EVENTS_PROVIDER_ADAPTER_VERSION, adapterVersion);
            BaseAdAdapter<?, ?> baseAdAdapter2 = this.c;
            if (baseAdAdapter2 != null) {
                AdapterBaseInterface networkAdapter2 = baseAdAdapter2.getNetworkAdapter();
                Intrinsics.checkNotNull(networkAdapter2);
                networkSDKVersion = networkAdapter2.getNetworkSDKVersion();
            }
            Intrinsics.checkNotNull(networkSDKVersion);
            map.put(IronSourceConstants.EVENTS_PROVIDER_SDK_VERSION, networkSDKVersion);
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(C3770p0.a(this.a, "could not get adapter version for event data " + this.b.x(), (String) null, 2, (Object) null));
        }
        map.put("spId", this.b.k().i());
        map.put(IronSourceConstants.EVENTS_PROVIDER, this.b.k().a());
        map.put("instanceType", Integer.valueOf(this.b.t()));
        String strK = this.b.o().k();
        T0 t0 = this.a;
        Intrinsics.checkNotNull(strK);
        String strE = t0.e(strK);
        if (!TextUtils.isEmpty(strE)) {
            map.put("dynamicDemandSource", strE);
        }
        map.put("sessionDepth", Integer.valueOf(this.b.w()));
        if (!TextUtils.isEmpty(this.b.v().getCustomNetwork())) {
            map.put(IronSourceConstants.EVENTS_CUSTOM_NETWORK_FIELD, this.b.v().getCustomNetwork());
        }
        return map;
    }
}

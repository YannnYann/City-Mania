package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class k83 extends n2 {
    public final io3 l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k83(io3 thirdPartyAdConfigurationRenderer, ks3 traceMetaSet, BaseRequest baseRequest, j53 requestType, long j, int i, i2 adConfiguration, zy commonConfiguration, ec3 serverTransaction, String renderId, eo2 placementIdWrapper) {
        super(traceMetaSet, baseRequest, requestType, j, i, adConfiguration, commonConfiguration, serverTransaction, renderId, placementIdWrapper);
        Intrinsics.checkNotNullParameter(thirdPartyAdConfigurationRenderer, "thirdPartyAdConfigurationRenderer");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(serverTransaction, "serverTransaction");
        Intrinsics.checkNotNullParameter(renderId, "renderId");
        Intrinsics.checkNotNullParameter(placementIdWrapper, "placementIdWrapper");
        this.l = thirdPartyAdConfigurationRenderer;
    }

    @Override // ads_mobile_sdk.j2
    public final boolean b() {
        return this.l.b();
    }

    @Override // ads_mobile_sdk.n2
    public final Object a(boolean z, Continuation continuation) {
        return this.l.a(true, continuation);
    }
}

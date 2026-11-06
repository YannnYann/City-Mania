package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import com.google.gson.JsonObject;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public interface zh1 {
    ks3 a();

    Object a(Continuation continuation);

    Unit a(ContinuationImpl continuationImpl);

    void a(ResponseInfo responseInfo);

    i2 b();

    void destroy();

    JsonObject g();

    ResponseInfo getResponseInfo();
}

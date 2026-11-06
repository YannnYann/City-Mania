package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public interface li1 extends mq0 {
    Object a(ec3 ec3Var, i2 i2Var, ResponseInfo responseInfo, Continuation continuation);

    default Object a(i01 i01Var, ResponseInfo responseInfo, Continuation continuation) {
        return Unit.INSTANCE;
    }
}

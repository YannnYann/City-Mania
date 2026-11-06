package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public interface gj1 extends mq0 {
    default Object a(Map map, Continuation continuation) {
        return Unit.INSTANCE;
    }

    default Object c(Continuation continuation) {
        return Unit.INSTANCE;
    }

    default Unit j() {
        return Unit.INSTANCE;
    }

    default Object a(BaseRequest baseRequest, Continuation continuation) {
        return Unit.INSTANCE;
    }

    default Object a(ec3 ec3Var, Continuation continuation) {
        return Unit.INSTANCE;
    }
}

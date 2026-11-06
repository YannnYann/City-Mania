package ads_mobile_sdk;

import com.google.common.base.Splitter;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public final class ht1 implements r41 {
    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_LOG;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        Splitter splitter = f01.a;
        f01.b("Received log message: " + map.get("string"), null);
        return Unit.INSTANCE;
    }
}

package ads_mobile_sdk;

import com.google.common.base.Preconditions;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class l92 extends jj3 {
    public final Map f;

    public l92(xf xfVar, yw1 yw1Var, Map map, ts3 ts3Var) {
        super("0NIT52uMLryaCDSaYUNTuLrzAq4mHtZo+PB3KlcFFwbeXateEvxa704CMxtRHbLJ", "s+ypGKrTCojCsgwPi6TAeYKzOJO0imQtS3SqSWBWtUM=", xfVar, yw1Var, ts3Var.a(lq0.EVENT_ID_NAVIGATION_SIGNALS_TASK));
        this.f = map;
    }

    @Override // ads_mobile_sdk.jj3
    public final void a(Method method, xf xfVar) {
        List list = (List) this.f.get("vst");
        if (list == null) {
            return;
        }
        Long l = (Long) Preconditions.checkNotNull(method.invoke("", list));
        synchronized (xfVar) {
            xfVar.a((rg) Preconditions.checkNotNull(rg.a(l.intValue())));
        }
    }
}

package ads_mobile_sdk;

import android.content.Context;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import java.lang.reflect.Method;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class oa3 extends jj3 {
    public final fl3 f;
    public final Context g;
    public final Map h;

    public oa3(xf xfVar, yw1 yw1Var, fl3 fl3Var, Context context, Map map, ts3 ts3Var) {
        super("JOzC6/ZgCwSvEVJCUSvoCbmKtBo3jCGU50ZjBIYBqYyjn6f8szB9X4gQSZiZdGxW", "WNDs4S5wyhYtg4w6BjmRCnxPTCgBBdruB89hqkSRK58=", xfVar, yw1Var, ts3Var.a(lq0.EVENT_ID_SCREEN_SIGNALS_TASK));
        this.f = fl3Var;
        this.g = context;
        this.h = map;
    }

    @Override // ads_mobile_sdk.jj3
    public final void a(Method method, xf xfVar) {
        Object[] objArr = (Object[]) Preconditions.checkNotNull((Object[]) method.invoke("", Integer.valueOf(this.f.ordinal()), this.g, MoreObjects.firstNonNull(this.h.get("up"), Boolean.TRUE)));
        synchronized (xfVar) {
            try {
                if (this.f == fl3.QUERY) {
                    xfVar.K(((Long) MoreObjects.firstNonNull(objArr[0], -1L)).longValue());
                    xfVar.G(((Long) MoreObjects.firstNonNull(objArr[1], -1L)).longValue());
                }
                xfVar.r(((Long) objArr[2]).longValue());
                xfVar.v(((Long) objArr[3]).longValue());
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

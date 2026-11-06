package ads_mobile_sdk;

import android.content.Context;
import com.google.common.base.Preconditions;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class oo0 extends jj3 {
    public final Context f;

    public oo0(xf xfVar, yw1 yw1Var, Context context, ts3 ts3Var) {
        super("CzCPmDNIzbko9j27W4Y+FnVoo4mioliPgu3lHZfH7X37ZS9shhTEINdeW6qNrIwK", "kLU+LRtEwqUYExhIA2ie2CRIFLizPvlVLrV8UdO5R3c=", xfVar, yw1Var, ts3Var.a(lq0.EVENT_ID_DYNAMIC_DEVICE_SIGNALS_TASK));
        this.f = context;
    }

    @Override // ads_mobile_sdk.jj3
    public final void a(Method method, xf xfVar) {
        Object[] objArr = (Object[]) Preconditions.checkNotNull((Object[]) method.invoke("", this.f));
        synchronized (xfVar) {
            try {
                xfVar.e(((Integer) objArr[0]).intValue());
                xfVar.h(((Integer) objArr[1]).intValue());
                xfVar.g(((Integer) objArr[2]).intValue());
                xfVar.f(((Integer) objArr[3]).intValue());
                Boolean bool = (Boolean) objArr[4];
                if (bool == null) {
                    xfVar.a(rh.ENUM_FAILURE);
                } else {
                    xfVar.a(bool.booleanValue() ? rh.ENUM_TRUE : rh.ENUM_FALSE);
                }
                Boolean bool2 = (Boolean) objArr[5];
                if (bool2 == null) {
                    xfVar.e(rh.ENUM_FAILURE);
                } else {
                    xfVar.e(bool2.booleanValue() ? rh.ENUM_TRUE : rh.ENUM_FALSE);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

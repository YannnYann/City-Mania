package ads_mobile_sdk;

import com.google.common.base.Preconditions;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class sp0 extends jj3 {
    public final na f;

    public sp0(xf xfVar, yw1 yw1Var, na naVar, ts3 ts3Var) {
        super("WW47yStxc+Kn23SzlVFAtkW406rAiVNF7FaBmX6o9CgxQkQFUdWEOMSkrqtI78H7", "kf+iEov9hqWWX6mGICnxIdxLkafhWxGKH7t1rvtl8FM=", xfVar, yw1Var, ts3Var.a(lq0.EVENT_ID_ENV_VERSION_SIGNALS_TASK));
        this.f = naVar;
    }

    @Override // ads_mobile_sdk.jj3
    public final void a(Method method, xf xfVar) {
        Object[] objArr = (Object[]) Preconditions.checkNotNull((Object[]) method.invoke("", this.f.M()));
        synchronized (xfVar) {
            xfVar.c((String) objArr[0]);
            xfVar.b((String) objArr[1]);
        }
    }
}

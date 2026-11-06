package ads_mobile_sdk;

import android.content.Context;
import com.google.common.base.Preconditions;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class nu2 extends jj3 {
    public final Context f;

    public nu2(xf xfVar, yw1 yw1Var, Context context, ts3 ts3Var) {
        super("92s2qsrUg5n1gNuK4U7FYJwOKgHiT+UiyRlVbdS7E1ri6kGmKVfwR+FunWJTpj2J", "xyLgzxehtCaOU4QeCIg/EsOKjeEXIxGayCr/69XxzQM=", xfVar, yw1Var, ts3Var.a(lq0.EVENT_ID_PROCESS_INFO_SIGNALS_TASK));
        this.f = context;
    }

    @Override // ads_mobile_sdk.jj3
    public final void a(Method method, xf xfVar) {
        Object[] objArr = (Object[]) Preconditions.checkNotNull((Object[]) method.invoke("", this.f));
        synchronized (xfVar) {
            xfVar.d(((Long) objArr[0]).longValue());
            xfVar.s(((Long) objArr[1]).longValue());
        }
    }
}

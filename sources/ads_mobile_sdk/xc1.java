package ads_mobile_sdk;

import android.content.Context;
import android.view.InputEvent;
import com.google.common.base.Preconditions;
import java.lang.reflect.Method;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class xc1 extends jj3 {
    public final Map f;
    public final Context g;

    public xc1(xf xfVar, yw1 yw1Var, Map map, Context context, ts3 ts3Var) {
        super("GauOpnoxf6p5GA2NJIw5NcmKJH7taAuqPyfYH3Rob5Rpa2mvs/g2TNVoAum1Tckt", "CI381sdL7APBiiyTOOg2qni/3Q0HvOQXrSqa7G+2ZqY=", xfVar, yw1Var, ts3Var.a(lq0.EVENT_ID_INPUT_EVENT_INFO_SIGNALS_TASK));
        this.f = map;
        this.g = context;
    }

    @Override // ads_mobile_sdk.jj3
    public final void a(Method method, xf xfVar) {
        Object[] objArr = (Object[]) Preconditions.checkNotNull(method.invoke("", (InputEvent) this.f.get("evt"), this.g));
        kg kgVarB = lg.v().a(((Long) objArr[0]).longValue()).a((rh) Preconditions.checkNotNull(rh.a(((Long) objArr[1]).intValue()))).b((rh) Preconditions.checkNotNull(rh.a(((Long) objArr[2]).intValue())));
        synchronized (xfVar) {
            xfVar.a((lg) kgVarB.b());
        }
    }
}

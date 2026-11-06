package ads_mobile_sdk;

import android.util.DisplayMetrics;
import android.view.View;
import com.google.common.base.Preconditions;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class cy3 extends jj3 {
    public final DisplayMetrics f;
    public final View g;

    public cy3(xf xfVar, yw1 yw1Var, DisplayMetrics displayMetrics, View view, ts3 ts3Var) {
        super("rnGK6fjcvZLEOpdyLZda1N+5o7k92nVwmQp/BzksnH2L5MS/d3D+Bg7WICL9NYP9", "qS7kpckjPqgFXXeQ8FROfwS9LPleZI2llG98EziVyuA=", xfVar, yw1Var, ts3Var.a(lq0.EVENT_ID_VIEW_SIGNALS_TASK));
        this.f = displayMetrics;
        this.g = view;
    }

    @Override // ads_mobile_sdk.jj3
    public final void a(Method method, xf xfVar) {
        View view = this.g;
        if (view == null) {
            return;
        }
        Long[] lArr = (Long[]) Preconditions.checkNotNull(method.invoke("", this.f, view));
        dh dhVarV = eh.v();
        dhVarV.b(lArr[2].longValue()).d(lArr[1].longValue()).e(lArr[0].longValue()).c(lArr[3].longValue()).a(lArr[4].longValue());
        synchronized (xfVar) {
            xfVar.a((eh) dhVarV.b());
        }
    }
}

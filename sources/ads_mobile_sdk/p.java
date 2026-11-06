package ads_mobile_sdk;

import android.app.Activity;
import android.view.View;
import com.google.common.base.Preconditions;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class p extends jj3 {
    public final Activity f;
    public final View g;

    public p(xf xfVar, yw1 yw1Var, View view, Activity activity, ts3 ts3Var) {
        super("tXC+6Jm/Fr9MMTTWrGVRmjCRxQXB1wBBIW7URdo6dTIjKw/6PPrbFGVPystgMCjX", "IcAhweG2HC3QGfD4kIQwOT6WrAtTmjwAp/4H7506MIM=", xfVar, yw1Var, ts3Var.a(lq0.EVENT_ID_ACTIVITY_SIGNALS_TASK));
        this.g = view;
        this.f = activity;
    }

    @Override // ads_mobile_sdk.jj3
    public final void a(Method method, xf xfVar) {
        Object[] objArr = (Object[]) Preconditions.checkNotNull((Object[]) method.invoke("", this.g, this.f));
        synchronized (xfVar) {
            xfVar.a(((Long) objArr[0]).longValue());
            xfVar.b(((Long) objArr[1]).longValue());
            xfVar.a((String) objArr[2]);
        }
    }
}

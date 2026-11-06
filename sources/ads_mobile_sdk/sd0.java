package ads_mobile_sdk;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class sd0 implements nh3 {
    public final id0 a;
    public final nd0 b;
    public Context c;
    public View d;
    public Activity e;
    public String f;
    public Map g;
    public xf h;
    public fl3 i;

    public final td0 a() {
        kq2.a(this.c, Context.class);
        kq2.a(this.g, Map.class);
        kq2.a(this.h, xf.class);
        kq2.a(this.i, fl3.class);
        return new td0(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i);
    }

    public sd0(id0 id0Var, nd0 nd0Var) {
        this.a = id0Var;
        this.b = nd0Var;
    }
}

package ads_mobile_sdk;

import android.os.Handler;
import android.os.Looper;
import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: classes.dex */
public final class cf2 implements rn, mn0 {
    public static cf2 f;
    public float a = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    public final qn0 b;
    public final ln0 c;
    public pn0 d;
    public q9 e;

    @Override // ads_mobile_sdk.rn
    public final void a(boolean z) {
        if (!z) {
            rt3.g.getClass();
            Handler handler = rt3.i;
            if (handler != null) {
                handler.removeCallbacks(rt3.k);
                rt3.i = null;
                return;
            }
            return;
        }
        rt3.g.getClass();
        if (rt3.i == null) {
            Handler handler2 = new Handler(Looper.getMainLooper());
            rt3.i = handler2;
            handler2.post(rt3.j);
            rt3.i.postDelayed(rt3.k, 200L);
        }
    }

    public static cf2 a() {
        if (f == null) {
            f = new cf2(new qn0(), new ln0());
        }
        return f;
    }

    public cf2(qn0 qn0Var, ln0 ln0Var) {
        this.b = qn0Var;
        this.c = ln0Var;
    }
}

package ads_mobile_sdk;

import android.util.DisplayMetrics;
import android.view.MotionEvent;
import com.google.common.base.Preconditions;
import com.unity3d.services.UnityAdsConstants;
import java.lang.reflect.Method;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class or3 extends jj3 {
    public final Map f;
    public final yw1 g;
    public final DisplayMetrics h;

    public or3(xf xfVar, yw1 yw1Var, Map map, DisplayMetrics displayMetrics, ts3 ts3Var) {
        super("wIGOLfnk1nzTsp6li7k0BsIlCG7uMPqg0o75hlXQhc8b+SsFCnmi/DiYWcMC2l6c", "GnZ/3TJK6yLIUnfdHCU3GsIzeXoNAV7fJenlMCT7Qj4=", xfVar, yw1Var, ts3Var.a(lq0.EVENT_ID_TOUCH_SIGNALS_TASK));
        this.g = yw1Var;
        this.f = map;
        this.h = displayMetrics;
    }

    @Override // ads_mobile_sdk.jj3
    public final void a(Method method, xf xfVar) {
        MotionEvent motionEvent = (MotionEvent) this.f.get("nv");
        try {
            Object[] objArr = (Object[]) Preconditions.checkNotNull((Object[]) method.invoke("", motionEvent, this.h));
            bh bhVarV = ch.v();
            Object obj = objArr[0];
            if (obj != null && objArr[1] != null) {
                bhVarV.g(((Long) obj).longValue()).i(((Long) objArr[1]).longValue());
            }
            Object obj2 = objArr[2];
            if (obj2 != null) {
                bhVarV.e(((Long) obj2).longValue());
            }
            Object obj3 = objArr[3];
            if (obj3 != null) {
                bhVarV.d(((Long) obj3).longValue());
            }
            Object obj4 = objArr[4];
            if (obj4 != null) {
                bhVarV.c(((Long) obj4).longValue());
            }
            Object obj5 = objArr[5];
            if (obj5 != null) {
                bhVarV.b(((Long) obj5).longValue() != 0 ? rh.ENUM_TRUE : rh.ENUM_FALSE);
            }
            Object obj6 = objArr[6];
            if (obj6 != null) {
                bhVarV.b(((Long) obj6).longValue());
            }
            Object obj7 = objArr[7];
            if (obj7 != null) {
                bhVarV.j(((Long) obj7).longValue());
            }
            Object obj8 = objArr[8];
            if (obj8 != null) {
                bhVarV.a(((Long) obj8).longValue() != 0 ? rh.ENUM_TRUE : rh.ENUM_FALSE);
            }
            synchronized (xfVar) {
                try {
                    a(xfVar);
                    zc1 zc1Var = (zc1) this.f.get("oe");
                    if (zc1Var != null) {
                        long j = zc1Var.a;
                        if (j > 0) {
                            xfVar.y(j);
                        }
                        long j2 = zc1Var.b;
                        if (j2 > 0) {
                            xfVar.z(j2);
                        }
                        long j3 = zc1Var.c;
                        if (j3 > 0) {
                            xfVar.C(j3);
                        }
                        long j4 = zc1Var.d;
                        if (j4 > 0) {
                            xfVar.w(j4);
                        }
                    }
                    a(bhVarV);
                    xfVar.a(bhVarV);
                    b(xfVar);
                } finally {
                }
            }
            if (motionEvent != null) {
                motionEvent.recycle();
            }
        } catch (Throwable th) {
            if (motionEvent != null) {
                motionEvent.recycle();
            }
            throw th;
        }
    }

    public final void b(xf xfVar) {
        DisplayMetrics displayMetrics;
        ad1[] ad1VarArr = (ad1[]) this.f.get("ro");
        if (ad1VarArr == null || (displayMetrics = this.h) == null || displayMetrics.density == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            return;
        }
        for (int i = 0; i <= ad1VarArr.length - 2; i++) {
            ad1 ad1Var = ad1VarArr[i];
            xfVar.a((ch) ch.v().g(Math.round(((double) ad1Var.a) / ((double) ((DisplayMetrics) Preconditions.checkNotNull(this.h)).density))).i(Math.round(((double) ad1Var.b) / ((double) ((DisplayMetrics) Preconditions.checkNotNull(this.h)).density))).b());
        }
    }

    public final void a(xf xfVar) {
        Object[] objArr = (Object[]) Preconditions.checkNotNull((Object[]) ((Method) Preconditions.checkNotNull(((zw1) this.g).a("ptkaUVDTLfNqaGRtRIraqNrTprMtGmt3IzCNSoNMVOfIZ9Ss/9Vh6PY9L+QVC4mg", "knYhVkDhcPjoxZ4MXCS3A9MdUHLgzvVXsVl0JJ2BOEQ="))).invoke("", (MotionEvent) this.f.get("nv"), this.h));
        Object obj = objArr[0];
        if (obj != null) {
            xfVar.D(((Long) obj).longValue());
        }
        Object obj2 = objArr[1];
        if (obj2 != null) {
            xfVar.E(((Long) obj2).longValue());
        }
        Object obj3 = objArr[2];
        if (obj3 != null) {
            xfVar.B(((Long) obj3).longValue());
        }
        Object obj4 = objArr[3];
        if (obj4 != null) {
            xfVar.A(((Long) obj4).longValue());
        }
        Object obj5 = objArr[4];
        if (obj5 != null) {
            xfVar.x(((Long) obj5).longValue());
        }
    }

    public final void a(bh bhVar) {
        DisplayMetrics displayMetrics;
        zc1 zc1Var = (zc1) this.f.get("oe");
        if (zc1Var == null || zc1Var.a == 0 || (displayMetrics = this.h) == null || displayMetrics.density == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            return;
        }
        bhVar.a(Math.round(zc1Var.g / ((double) ((DisplayMetrics) Preconditions.checkNotNull(displayMetrics)).density)));
        bhVar.m(Math.round(((double) (zc1Var.j - zc1Var.h)) / ((double) this.h.density))).n(Math.round(((double) (zc1Var.k - zc1Var.i)) / ((double) this.h.density))).f(Math.round(((double) zc1Var.h) / ((double) this.h.density))).h(Math.round(((double) zc1Var.i) / ((double) this.h.density)));
        MotionEvent motionEvent = (MotionEvent) this.f.get("nv");
        if (motionEvent == null) {
            return;
        }
        long jRound = Math.round(((double) ((motionEvent.getRawX() + (zc1Var.h - zc1Var.j)) - motionEvent.getX())) / ((double) this.h.density));
        if (jRound != 0) {
            bhVar.k(jRound);
        }
        long jRound2 = Math.round(((double) ((motionEvent.getRawY() + (zc1Var.i - zc1Var.k)) - motionEvent.getY())) / ((double) this.h.density));
        if (jRound2 != 0) {
            bhVar.l(jRound2);
        }
    }
}

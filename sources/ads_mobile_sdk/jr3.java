package ads_mobile_sdk;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class jr3 extends jj3 {
    public final Map f;
    public final fl3 g;

    public jr3(xf xfVar, yw1 yw1Var, fl3 fl3Var, Map map, ts3 ts3Var) {
        super("//yzYZ1sObODOuJVRUkTv/8xSmTDNf3CUi9s5msjbPeqhsxxt6fWwuCvPvazrIKE", "nOhJ0hE2Nx8yeQtcKLaGdM30AUThZhyn71DvNE+XkMw=", xfVar, yw1Var, ts3Var.a(lq0.EVENT_ID_TIME_SIGNALS_TASK));
        this.f = map;
        this.g = fl3Var;
    }

    @Override // ads_mobile_sdk.jj3
    public final void a(Method method, xf xfVar) {
        Long[] lArr = new Long[9];
        Arrays.fill((Object[]) lArr, (Object) (-1L));
        lArr[0] = (Long) MoreObjects.firstNonNull((Long) this.f.get("tcq"), -1L);
        lArr[1] = (Long) MoreObjects.firstNonNull((Long) this.f.get("tpq"), -1L);
        lArr[2] = (Long) MoreObjects.firstNonNull((Long) this.f.get("tcv"), -1L);
        lArr[3] = (Long) MoreObjects.firstNonNull((Long) this.f.get("tpv"), -1L);
        lArr[4] = (Long) MoreObjects.firstNonNull((Long) this.f.get("tchv"), -1L);
        lArr[5] = (Long) MoreObjects.firstNonNull((Long) this.f.get("tphv"), -1L);
        lArr[6] = (Long) MoreObjects.firstNonNull((Long) this.f.get("tcc"), -1L);
        lArr[7] = (Long) MoreObjects.firstNonNull((Long) this.f.get("tpc"), -1L);
        lArr[8] = (Long) MoreObjects.firstNonNull((Long) this.f.get("tst"), -1L);
        for (int i = 0; i < 9; i++) {
            if (lArr[i] == null) {
                lArr[i] = -1L;
            }
        }
        Long[] lArr2 = (Long[]) Preconditions.checkNotNull((Long[]) method.invoke("", lArr, Integer.valueOf(this.g.ordinal())));
        synchronized (xfVar) {
            xfVar.l(lArr2[0].longValue());
            xfVar.J(lArr2[1].longValue());
            xfVar.I(lArr2[2].longValue());
            xfVar.H(lArr2[3].longValue());
            xfVar.o(lArr2[4].longValue());
            xfVar.n(lArr2[5].longValue());
            xfVar.j(lArr2[6].longValue());
            xfVar.k(lArr2[7].longValue());
        }
    }
}

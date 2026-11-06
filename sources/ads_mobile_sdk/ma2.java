package ads_mobile_sdk;

import android.net.NetworkCapabilities;
import com.google.common.base.Preconditions;
import java.lang.reflect.Method;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class ma2 extends jj3 {
    public final Map f;

    public ma2(xf xfVar, yw1 yw1Var, Map map, ts3 ts3Var) {
        super("6rtGdXQ0NfJtjALp1SU3EV8a8C+xU3leWzJkhweDj7Qc7b2AmiMUFfEFTlWg/y94", "2IeAOqgxQ9MuURMRwplUp+eIWsDyl3j/iScS6NWDc6A=", xfVar, yw1Var, ts3Var.a(lq0.EVENT_ID_NETWORK_SIGNALS_TASK));
        this.f = map;
    }

    @Override // ads_mobile_sdk.jj3
    public final void a(Method method, xf xfVar) {
        Object obj;
        Object[] objArr = (Object[]) Preconditions.checkNotNull((Object[]) method.invoke("", (NetworkCapabilities) this.f.get("ntc"), (Long) this.f.get("vs"), (Long) this.f.get("vf")));
        synchronized (xfVar) {
            try {
                xfVar.q(((Long) objArr[0]).longValue());
                long jLongValue = ((Long) objArr[1]).longValue();
                if (jLongValue >= 0) {
                    xfVar.F(jLongValue);
                }
                long jLongValue2 = ((Long) objArr[2]).longValue();
                if (jLongValue2 >= 0) {
                    xfVar.c(jLongValue2);
                }
                if (objArr.length > 3 && (obj = objArr[3]) != null) {
                    xfVar.d((rh) Preconditions.checkNotNull(rh.a(((Long) obj).intValue())));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

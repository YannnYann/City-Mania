package ads_mobile_sdk;

import com.google.common.base.Preconditions;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class vp1 extends jj3 {
    public static volatile Long f;
    public static final Object g = new Object();

    @Override // ads_mobile_sdk.jj3
    public final void a(Method method, xf xfVar) {
        if (f == null) {
            synchronized (g) {
                try {
                    if (f == null) {
                        f = (Long) Preconditions.checkNotNull((Long) method.invoke("", new Object[0]));
                    }
                } finally {
                }
            }
        }
        synchronized (xfVar) {
            try {
                if (f != null) {
                    xfVar.p(f.longValue());
                }
            } finally {
            }
        }
    }

    public vp1(xf xfVar, yw1 yw1Var, ts3 ts3Var) {
        super("qsS4E7Zdzd5AMeFVR3NmaIqyoOh0n8fm8kgGnCIs4S9k7Bur9Ss8oj7wBe2HDBDL", "6E0zJrZ9xYjWqzqR24K6dPoQ/SmEVXdR/xTduZwLWwQ=", xfVar, yw1Var, ts3Var.a(lq0.EVENT_ID_JAILBREAK_SIGNALS_TASK));
    }
}

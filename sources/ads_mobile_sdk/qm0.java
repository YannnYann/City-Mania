package ads_mobile_sdk;

import com.google.common.base.Preconditions;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class qm0 extends jj3 {
    public qm0(xf xfVar, yw1 yw1Var, ts3 ts3Var) {
        super("bGrL/ZzXI/ZNE+YiDFN0F4lzZ1HaMnmeESPDtJ5adf/x/8g6Bx96tHHTcGqnnR9c", "kKd457XCSk8toM3Zqd+E2Zp7vy/b8R5wigX1/oa6bFk=", xfVar, yw1Var, ts3Var.a(lq0.EVENT_ID_DEVICE_INFO_SIGNALS_TASK));
    }

    @Override // ads_mobile_sdk.jj3
    public final void a(Method method, xf xfVar) {
        synchronized (xfVar) {
            xfVar.i("E");
            xfVar.i(0L);
            xfVar.f("D");
        }
        Object[] objArr = (Object[]) Preconditions.checkNotNull((Object[]) method.invoke("", new Object[0]));
        synchronized (xfVar) {
            xfVar.i((String) objArr[0]);
            xfVar.i(((Long) objArr[1]).longValue());
            xfVar.f((String) objArr[2]);
        }
    }
}

package ads_mobile_sdk;

import android.content.Context;
import android.os.Build;
import android.util.Base64;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import com.google.common.io.BaseEncoding;
import com.google.common.util.concurrent.ListenableFuture;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class fk extends jj3 {
    public final Map f;
    public final Context g;
    public final fl3 h;
    public final ts3 i;
    public final long j;
    public final long k;

    public fk(xf xfVar, yw1 yw1Var, Map map, Context context, fl3 fl3Var, na naVar, ts3 ts3Var) {
        super("djHg9vieI/9LROlIGz8vnOthg7fM6e9YIS42gpsHPrs90458Aocnnr5o3fsdj+hF", "hM7HRLowFCruS7CMm0mWhsf8pMiXDgYsYJI/8i6Gz90=", xfVar, yw1Var, ts3Var.a(lq0.EVENT_ID_APP_INFO_SIGNALS_TASK));
        this.g = context;
        this.f = map;
        this.h = fl3Var;
        this.i = ts3Var;
        this.j = naVar.K();
        this.k = naVar.O();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ads_mobile_sdk.jj3
    public final void a(Method method, xf xfVar) {
        String strEncodeToString;
        fh fhVar;
        Object[] objArr = (Object[]) Preconditions.checkNotNull((Object[]) method.invoke("", this.g, Integer.valueOf(this.h.ordinal())));
        String strW = "E";
        try {
            ListenableFuture listenableFuture = (ListenableFuture) this.f.get("gs");
            if (listenableFuture != null && ((Build.VERSION.SDK_INT < 31 || listenableFuture.isDone()) && (fhVar = (fh) listenableFuture.get(this.j, TimeUnit.MILLISECONDS)) != null && fhVar.w().length() > 1 && !fhVar.w().equals("0000000000000000000000000000000000000000000000000000000000000000"))) {
                strW = fhVar.w();
            }
        } catch (ClassCastException | ExecutionException unused) {
        } catch (InterruptedException unused2) {
            Thread.currentThread().interrupt();
        } catch (TimeoutException unused3) {
            this.i.b(lq0.EVENT_ID_APP_INFO_SIGNALS_TASK_GASS_TIMEOUT);
        }
        if (strW.equals("E")) {
            try {
                ListenableFuture listenableFuture2 = (ListenableFuture) this.f.get("ai");
                if (listenableFuture2 != null) {
                    String str = (String) listenableFuture2.get(this.k, TimeUnit.MILLISECONDS);
                    if (!Strings.isNullOrEmpty(str)) {
                        strW = str;
                    }
                }
            } catch (ClassCastException | ExecutionException unused4) {
            } catch (InterruptedException unused5) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused6) {
                this.i.b(lq0.EVENT_ID_APP_INFO_SIGNALS_TASK_LOCAL_INT_TIMEOUT);
            }
        }
        Boolean bool = (Boolean) objArr[5];
        Long l = (Long) objArr[6];
        synchronized (xfVar) {
            try {
                Object obj = objArr[4];
                if (obj instanceof byte[]) {
                    strEncodeToString = Base64.encodeToString(BaseEncoding.base16().lowerCase().encode((byte[]) obj).getBytes(StandardCharsets.UTF_8), 11);
                } else {
                    strEncodeToString = (String) obj;
                }
                xfVar.L(((Long) objArr[0]).longValue()).j((String) objArr[1]).d((String) objArr[2]).g((String) objArr[3]).e(strEncodeToString).h(strW);
                if (bool != null) {
                    xfVar.c(bool.booleanValue() ? rh.ENUM_TRUE : rh.ENUM_FALSE);
                }
                if (l != null) {
                    xfVar.b((rh) Preconditions.checkNotNull(rh.a(l.intValue())));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

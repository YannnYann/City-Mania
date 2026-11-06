package ads_mobile_sdk;

import android.content.Context;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class gz0 {
    public static fh a(Context context, String str, String str2) {
        fh fhVar;
        try {
            fhVar = (fh) new fz0(context, str, str2).d.poll(5000, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            fhVar = null;
        }
        return fhVar == null ? (fh) fh.D().t(32768L).b() : fhVar;
    }
}

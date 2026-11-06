package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class w41 implements v41 {
    public static w41 b;
    public final x41 a;

    public w41(Context context) {
        this.a = x41.a(context);
    }

    public final boolean a() {
        boolean z;
        synchronized (w41.class) {
            z = this.a.b.getBoolean("paidv2_publisher_option", true);
        }
        return z;
    }

    public final boolean b() {
        boolean z;
        synchronized (w41.class) {
            z = this.a.b.getBoolean("paidv2_user_option", true);
        }
        return z;
    }

    public static final w41 a(Context context) {
        w41 w41Var;
        synchronized (w41.class) {
            try {
                if (b == null) {
                    b = new w41(context);
                }
                w41Var = b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return w41Var;
    }
}

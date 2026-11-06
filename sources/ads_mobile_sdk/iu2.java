package ads_mobile_sdk;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class iu2 {
    public static final pt1 c = new pt1("PrewarmService");
    public static final Intent d = new Intent("com.google.android.play.core.prewarm.BIND_PREWARM_SERVICE").setPackage("com.android.vending");
    public final lc3 a;
    public final String b;

    public static ArrayList a(mq2 mq2Var) {
        ArrayList arrayList = new ArrayList();
        mq2Var.getClass();
        for (String str : new ArrayList(mq2Var.a)) {
            Bundle bundle = new Bundle();
            bundle.putString("url", str);
            arrayList.add(bundle);
        }
        return arrayList;
    }

    public iu2(Context context) {
        if (in2.a(context)) {
            this.a = new lc3(context.getApplicationContext(), c, d, new hc3() { // from class: ads_mobile_sdk.iu2$$ExternalSyntheticLambda0
                @Override // ads_mobile_sdk.hc3
                public final Object a(IBinder iBinder) {
                    return w81.a(iBinder);
                }
            });
        } else {
            this.a = null;
        }
        this.b = context.getPackageName();
    }
}

package ads_mobile_sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
public final class qa3 extends BroadcastReceiver {
    public final /* synthetic */ ra3 a = ra3.d;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
            ra3 ra3Var = this.a;
            ra3Var.a(true, ra3Var.c);
            this.a.b = true;
        } else if (intent.getAction().equals("android.intent.action.SCREEN_ON")) {
            ra3 ra3Var2 = this.a;
            ra3Var2.a(false, ra3Var2.c);
            this.a.b = false;
        }
    }
}

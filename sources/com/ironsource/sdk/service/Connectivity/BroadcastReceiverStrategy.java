package com.ironsource.sdk.service.Connectivity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import com.ironsource.C3813r4;
import com.ironsource.InterfaceC3890v7;
import com.ironsource.InterfaceC3908w7;
import com.ironsource.Y3;
import com.ironsource.mediationsdk.logger.IronLog;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class BroadcastReceiverStrategy implements InterfaceC3890v7 {
    private final InterfaceC3908w7 a;
    private BroadcastReceiver b = new BroadcastReceiver() { // from class: com.ironsource.sdk.service.Connectivity.BroadcastReceiverStrategy.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String strB = Y3.b(context);
            if (strB.equals("none")) {
                BroadcastReceiverStrategy.this.a.a();
            } else {
                BroadcastReceiverStrategy.this.a.a(strB, new JSONObject());
            }
        }
    };

    public BroadcastReceiverStrategy(InterfaceC3908w7 interfaceC3908w7) {
        this.a = interfaceC3908w7;
    }

    @Override // com.ironsource.InterfaceC3890v7
    public void a(Context context) {
        try {
            context.unregisterReceiver(this.b);
        } catch (IllegalArgumentException e) {
            C3813r4.d().a(e);
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            Log.e("ContentValues", "unregisterConnectionReceiver - " + e2);
        }
    }

    @Override // com.ironsource.InterfaceC3890v7
    public void b(Context context) {
        try {
            context.registerReceiver(this.b, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    @Override // com.ironsource.InterfaceC3890v7
    public JSONObject c(Context context) {
        return new JSONObject();
    }

    @Override // com.ironsource.InterfaceC3890v7
    public void a() {
        this.b = null;
    }
}

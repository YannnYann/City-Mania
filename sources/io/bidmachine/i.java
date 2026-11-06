package io.bidmachine;

import android.content.Context;
import io.bidmachine.analytics.BidMachineAnalytics;
import io.bidmachine.internal.C4222f;
import io.bidmachine.protobuf.InitResponse;

/* JADX INFO: loaded from: classes4.dex */
public class i {
    public static void a(Context context) {
        try {
            BidMachineAnalytics.initialize(context);
        } catch (Throwable unused) {
        }
    }

    public void a(Context context, String str, InitResponse initResponse, String str2) {
        C4222f.a(context, str, initResponse, str2);
    }
}

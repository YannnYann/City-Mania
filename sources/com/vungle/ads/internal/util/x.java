package com.vungle.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class x extends BroadcastReceiver {
    public w a;

    public final void a(w wVar) {
        this.a = wVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String action;
        w wVar;
        if (intent != null) {
            try {
                action = intent.getAction();
            } catch (Exception e) {
                String localizedMessage = e.getLocalizedMessage();
                if (localizedMessage != null) {
                    boolean z = v.a;
                    u.b("RingerModeReceiver", localizedMessage);
                    return;
                }
                return;
            }
        } else {
            action = null;
        }
        if (Intrinsics.areEqual(action, "android.media.RINGER_MODE_CHANGED")) {
            int intExtra = intent.getIntExtra("android.media.EXTRA_RINGER_MODE", -1);
            boolean z2 = v.a;
            u.a("RingerModeReceiver", "receive ringermode: " + intExtra);
            if (intExtra == 0) {
                w wVar2 = this.a;
                if (wVar2 != null) {
                    wVar2.a(true);
                    return;
                }
                return;
            }
            if (intExtra != 1) {
                if (intExtra == 2 && (wVar = this.a) != null) {
                    wVar.a(false);
                    return;
                }
                return;
            }
            w wVar3 = this.a;
            if (wVar3 != null) {
                wVar3.a(true);
            }
        }
    }
}

package com.google.android.gms.internal.playcore_hsdp;

import android.os.Process;
import android.util.Log;

/* JADX INFO: compiled from: com.google.android.play:hsdp@@2.0.1 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzd {
    private final String zza = ("UID: [" + Process.myUid() + "]  PID: [" + Process.myPid() + "] ").concat("PhoneskyVerificationUtils");

    public zzd(String str) {
    }

    public final int zza(String str, Object... objArr) {
        if (!Log.isLoggable("PlayCore", 5)) {
            return 0;
        }
        return Log.w("PlayCore", this.zza + " : " + str);
    }
}

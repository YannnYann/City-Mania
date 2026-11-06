package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzb extends com.google.android.gms.internal.common.zzh {
    final /* synthetic */ BaseGmsClient zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzb(BaseGmsClient baseGmsClient, Looper looper) {
        super(looper);
        java.util.Objects.requireNonNull(baseGmsClient);
        this.zza = baseGmsClient;
    }

    private static final void zza(Message message) {
        zzc zzcVar = (zzc) message.obj;
        if (zzcVar != null) {
            zzcVar.zze();
        }
    }

    private static final boolean zzb(Message message) {
        int i = message.what;
        return i == 2 || i == 1 || i == 7;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        BaseGmsClient baseGmsClient = this.zza;
        if (baseGmsClient.zzd.get() != message.arg1) {
            if (zzb(message)) {
                zza(message);
                return;
            }
            return;
        }
        int i = message.what;
        if ((i == 1 || i == 7 || ((i == 4 && !baseGmsClient.enableLocalFallback()) || message.what == 5)) && !baseGmsClient.isConnecting()) {
            zza(message);
            return;
        }
        int i2 = message.what;
        if (i2 == 4) {
            baseGmsClient.zzo(new ConnectionResult(message.arg2));
            int iZzp = baseGmsClient.zzp();
            int i3 = baseGmsClient.zzd.get();
            if (baseGmsClient.zzh() && iZzp != i3) {
                baseGmsClient.zze(3, null, message.arg1);
                return;
            }
            ConnectionResult connectionResultZzn = baseGmsClient.zzn() != null ? baseGmsClient.zzn() : new ConnectionResult(8);
            baseGmsClient.zzc.onReportServiceBinding(connectionResultZzn);
            baseGmsClient.onConnectionFailed(connectionResultZzn);
            return;
        }
        if (i2 == 5) {
            ConnectionResult connectionResultZzn2 = baseGmsClient.zzn() != null ? baseGmsClient.zzn() : new ConnectionResult(8);
            baseGmsClient.zzc.onReportServiceBinding(connectionResultZzn2);
            baseGmsClient.onConnectionFailed(connectionResultZzn2);
            return;
        }
        if (i2 == 3) {
            Object obj = message.obj;
            ConnectionResult connectionResult = new ConnectionResult(message.arg2, obj instanceof PendingIntent ? (PendingIntent) obj : null);
            baseGmsClient.zzc.onReportServiceBinding(connectionResult);
            baseGmsClient.onConnectionFailed(connectionResult);
            return;
        }
        if (i2 == 6) {
            baseGmsClient.zze(5, null, message.arg1);
            if (baseGmsClient.zzl() != null) {
                baseGmsClient.zzl().onConnectionSuspended(message.arg2);
            }
            baseGmsClient.onConnectionSuspended(message.arg2);
            baseGmsClient.zzf(5, 1, null, message.arg1);
            return;
        }
        if (i2 == 2 && !baseGmsClient.isConnected()) {
            zza(message);
            return;
        }
        if (zzb(message)) {
            ((zzc) message.obj).zzd();
            return;
        }
        int i4 = message.what;
        StringBuilder sb = new StringBuilder(String.valueOf(i4).length() + 34);
        sb.append("Don't know how to handle message: ");
        sb.append(i4);
        Log.wtf("GmsClient", sb.toString(), new Exception());
    }
}

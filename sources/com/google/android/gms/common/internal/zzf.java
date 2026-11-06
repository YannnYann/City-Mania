package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzf extends zza {
    public final IBinder zzf;
    final /* synthetic */ BaseGmsClient zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzf(BaseGmsClient baseGmsClient, int i, IBinder iBinder, Bundle bundle, int i2) {
        super(baseGmsClient, i, bundle, i2);
        java.util.Objects.requireNonNull(baseGmsClient);
        this.zzg = baseGmsClient;
        this.zzf = iBinder;
    }

    @Override // com.google.android.gms.common.internal.zza
    public final boolean zza() {
        try {
            IBinder iBinder = this.zzf;
            Preconditions.checkNotNull(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            BaseGmsClient baseGmsClient = this.zzg;
            if (!baseGmsClient.getServiceDescriptor().equals(interfaceDescriptor)) {
                String serviceDescriptor = baseGmsClient.getServiceDescriptor();
                StringBuilder sb = new StringBuilder(String.valueOf(serviceDescriptor).length() + 34 + String.valueOf(interfaceDescriptor).length());
                sb.append("service descriptor mismatch: ");
                sb.append(serviceDescriptor);
                sb.append(" vs. ");
                sb.append(interfaceDescriptor);
                Log.w("GmsClient", sb.toString());
                return false;
            }
            IInterface iInterfaceCreateServiceInterface = baseGmsClient.createServiceInterface(this.zzf);
            if (iInterfaceCreateServiceInterface != null) {
                int i = this.zzc;
                if (baseGmsClient.zzf(2, 4, iInterfaceCreateServiceInterface, i) || baseGmsClient.zzf(3, 4, iInterfaceCreateServiceInterface, i)) {
                    baseGmsClient.zzo(null);
                    Bundle connectionHint = baseGmsClient.getConnectionHint();
                    ConnectionThrottlingConfig connectionThrottlingConfig = baseGmsClient.usesClientThrottling() ? baseGmsClient.getConnectionThrottlingConfig() : null;
                    if (connectionThrottlingConfig != null) {
                        if (connectionHint == null) {
                            connectionHint = new Bundle();
                        }
                        connectionHint.putByteArray("com.google.android.gms.common.internal.CONNECTION_THROTTLING_CONFIG", SafeParcelableSerializer.serializeToBytes(connectionThrottlingConfig));
                    } else if (connectionHint != null) {
                        connectionHint.remove("com.google.android.gms.common.internal.CONNECTION_THROTTLING_CONFIG");
                    }
                    if (baseGmsClient.zzl() == null) {
                        return true;
                    }
                    baseGmsClient.zzl().onConnected(connectionHint);
                    return true;
                }
            }
            return false;
        } catch (RemoteException unused) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }

    @Override // com.google.android.gms.common.internal.zza
    public final void zzb(ConnectionResult connectionResult) {
        BaseGmsClient baseGmsClient = this.zzg;
        if (baseGmsClient.zzm() != null) {
            baseGmsClient.zzm().onConnectionFailed(connectionResult);
        }
        baseGmsClient.onConnectionFailed(connectionResult);
    }
}

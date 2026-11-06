package com.google.android.gms.internal.consent_sdk;

import com.google.android.gms.common.api.Api;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@4.0.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzpn extends zzpp {
    private int zzb;
    private int zzc;
    private int zzd;

    public /* synthetic */ zzpn(byte[] bArr, int i, int i2, boolean z, zzpo zzpoVar) {
        super(null);
        this.zzd = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzb = 0;
    }

    public final int zza(int i) throws zzqu {
        int i2 = this.zzd;
        this.zzd = 0;
        int i3 = this.zzb + this.zzc;
        this.zzb = i3;
        if (i3 <= 0) {
            this.zzc = 0;
            return i2;
        }
        this.zzc = i3;
        this.zzb = 0;
        return i2;
    }
}

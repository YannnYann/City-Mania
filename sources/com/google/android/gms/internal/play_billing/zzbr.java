package com.google.android.gms.internal.play_billing;

/* JADX INFO: compiled from: com.android.billingclient:billing@@8.0.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzbr extends zzbn {
    private final zzbt zza;

    public zzbr(zzbt zzbtVar, int i) {
        super(zzbtVar.size(), i);
        this.zza = zzbtVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zzbn
    public final Object zza(int i) {
        return this.zza.get(i);
    }
}

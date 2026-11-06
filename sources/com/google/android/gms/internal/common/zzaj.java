package com.google.android.gms.internal.common;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzaj extends zzae {
    private final zzam zza;

    public zzaj(zzam zzamVar, int i) {
        super(zzamVar.size(), i);
        this.zza = zzamVar;
    }

    @Override // com.google.android.gms.internal.common.zzae
    public final Object zza(int i) {
        return this.zza.get(i);
    }
}

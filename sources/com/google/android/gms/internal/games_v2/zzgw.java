package com.google.android.gms.internal.games_v2;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgw extends zzgq {
    static final zzgq zza;
    static final zzhe zzb;
    final transient Object[] zzc;
    private final transient int zzd;

    static {
        zzgw zzgwVar = new zzgw(new Object[0], 0);
        zza = zzgwVar;
        zzb = new zzgo(zzgwVar, 0);
    }

    public zzgw(Object[] objArr, int i) {
        this.zzc = objArr;
        this.zzd = i;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzgd.zza(i, this.zzd, "index");
        Object obj = this.zzc[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.games_v2.zzgm
    public final Object[] zzb() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.games_v2.zzgm
    public final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.games_v2.zzgm
    public final int zzd() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.games_v2.zzgq, com.google.android.gms.internal.games_v2.zzgm
    public final int zze(Object[] objArr, int i) {
        Object[] objArr2 = this.zzc;
        int i2 = this.zzd;
        System.arraycopy(objArr2, 0, objArr, 0, i2);
        return i2;
    }
}

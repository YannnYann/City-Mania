package com.google.android.gms.internal.common;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzao extends zzam {
    static final zzam zza;
    static final zzaq zzb;
    final transient Object[] zzc;
    private final transient int zzd;

    static {
        zzao zzaoVar = new zzao(new Object[0], 0);
        zza = zzaoVar;
        zzb = new zzaj(zzaoVar, 0);
    }

    public zzao(Object[] objArr, int i) {
        this.zzc = objArr;
        this.zzd = i;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzs.zzb(i, this.zzd, "index");
        Object obj = this.zzc[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.common.zzah
    public final Object[] zzb() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.common.zzah
    public final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.common.zzah
    public final int zzd() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.common.zzah
    public final boolean zzf() {
        return false;
    }

    @Override // com.google.android.gms.internal.common.zzam, com.google.android.gms.internal.common.zzah
    public final int zzg(Object[] objArr, int i) {
        Object[] objArr2 = this.zzc;
        int i2 = this.zzd;
        System.arraycopy(objArr2, 0, objArr, 0, i2);
        return i2;
    }
}

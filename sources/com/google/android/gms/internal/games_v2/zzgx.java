package com.google.android.gms.internal.games_v2;

import java.util.AbstractMap;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgx extends zzgq {
    final /* synthetic */ zzgy zza;

    public zzgx(zzgy zzgyVar) {
        Objects.requireNonNull(zzgyVar);
        this.zza = zzgyVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        zzgy zzgyVar = this.zza;
        zzgd.zza(i, zzgyVar.zzi(), "index");
        int i2 = i + i;
        Object obj = zzgyVar.zzh()[i2];
        Objects.requireNonNull(obj);
        Object obj2 = zzgyVar.zzh()[i2 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.zzi();
    }
}

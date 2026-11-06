package com.google.android.gms.internal.games_v2;

import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzgu extends zzgm implements Set {
    private transient zzgq zza;

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this || obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    return containsAll(set);
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return zzhc.zza(this);
    }

    @Override // com.google.android.gms.internal.games_v2.zzgm, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* JADX INFO: renamed from: zza */
    public abstract zzhd iterator();

    public final zzgq zzf() {
        zzgq zzgqVar = this.zza;
        if (zzgqVar != null) {
            return zzgqVar;
        }
        zzgq zzgqVarZzg = zzg();
        this.zza = zzgqVarZzg;
        return zzgqVarZzg;
    }

    public zzgq zzg() {
        Object[] array = toArray();
        return zzgq.zzj(array, array.length);
    }
}

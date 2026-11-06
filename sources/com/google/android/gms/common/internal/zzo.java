package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.os.UserHandle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzo {
    private final String zza;
    private final String zzb;
    private final ComponentName zzc;
    private final int zzd;
    private final boolean zze;
    private final UserHandle zzf;

    public zzo(ComponentName componentName, int i, UserHandle userHandle) {
        this.zza = null;
        this.zzb = null;
        Preconditions.checkNotNull(componentName);
        this.zzc = componentName;
        this.zzd = 4225;
        this.zze = false;
        this.zzf = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzo)) {
            return false;
        }
        zzo zzoVar = (zzo) obj;
        return java.util.Objects.equals(this.zza, zzoVar.zza) && java.util.Objects.equals(this.zzb, zzoVar.zzb) && java.util.Objects.equals(this.zzc, zzoVar.zzc) && this.zze == zzoVar.zze && java.util.Objects.equals(this.zzf, zzoVar.zzf);
    }

    public final int hashCode() {
        return java.util.Objects.hash(this.zza, this.zzb, this.zzc, 4225, Boolean.valueOf(this.zze), this.zzf);
    }

    public final String toString() {
        String str = this.zza;
        if (str != null) {
            return str;
        }
        ComponentName componentName = this.zzc;
        Preconditions.checkNotNull(componentName);
        return componentName.flattenToString();
    }

    public final String zza() {
        return this.zza;
    }

    public final String zzb() {
        return this.zzb;
    }

    public final ComponentName zzc() {
        return this.zzc;
    }

    public final boolean zzd() {
        return this.zze;
    }

    public final UserHandle zze() {
        return this.zzf;
    }

    public zzo(String str, String str2, int i, boolean z, UserHandle userHandle) {
        Preconditions.checkNotEmpty(str);
        this.zza = str;
        Preconditions.checkNotEmpty(str2);
        this.zzb = str2;
        this.zzc = null;
        this.zzd = 4225;
        this.zze = z;
        this.zzf = userHandle;
    }
}

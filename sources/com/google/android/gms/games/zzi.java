package com.google.android.gms.games;

import android.text.TextUtils;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.ShowFirstParty;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
@ShowFirstParty
public final class zzi implements Api.ApiOptions.Optional {
    public final int zze;
    public final ArrayList zzg;
    public final String zzm;
    public final com.google.android.gms.games.internal.zzi zzn;
    public final boolean zza = false;
    public final boolean zzb = true;
    public final int zzc = 17;
    public final boolean zzd = false;
    public final String zzf = null;
    public final boolean zzh = false;
    public final boolean zzi = false;
    public final boolean zzj = false;
    public final String zzk = null;
    public final int zzp = 0;
    public final int zzl = 9;
    public final boolean zzo = false;

    public /* synthetic */ zzi(boolean z, boolean z2, int i, boolean z3, int i2, String str, ArrayList arrayList, boolean z4, boolean z5, boolean z6, String str2, int i3, int i4, String str3, com.google.android.gms.games.internal.zzi zziVar, boolean z7, byte[] bArr) {
        this.zze = i2;
        this.zzg = arrayList;
        this.zzm = str3;
        this.zzn = zziVar;
    }

    public static zzh zza() {
        return new zzh(null);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzi) {
            zzi zziVar = (zzi) obj;
            boolean z = zziVar.zza;
            if (this.zze == zziVar.zze && this.zzg.equals(zziVar.zzg) && TextUtils.equals(null, null) && Objects.equals(this.zzm, zziVar.zzm)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = ((this.zze + 486741695) * 961) + this.zzg.hashCode();
        String str = this.zzm;
        return ((((iHashCode * 887503681) + 9) * 31) + (str == null ? 0 : str.hashCode())) * 31;
    }
}

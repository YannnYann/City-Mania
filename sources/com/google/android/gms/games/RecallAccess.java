package com.google.android.gms.games;

import com.google.android.gms.internal.games_v2.zzad;
import com.google.android.gms.internal.games_v2.zzam;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
@zzad
public final class RecallAccess {
    public final String zza;

    public RecallAccess(String str) {
        this.zza = str;
    }

    public static RecallAccess zza(zzam zzamVar) {
        return new RecallAccess(zzamVar.zza());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RecallAccess) {
            return Objects.equals(this.zza, ((RecallAccess) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.zza);
    }
}

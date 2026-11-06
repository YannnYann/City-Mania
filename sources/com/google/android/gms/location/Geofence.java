package com.google.android.gms.location;

import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-location@@18.0.0 */
/* JADX INFO: loaded from: classes3.dex */
@VisibleForTesting
public interface Geofence {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-location@@18.0.0 */
    @VisibleForTesting
    public static final class Builder {
        public String zza = null;

        @TransitionTypes
        public int zzb = 0;
        public long zzc = Long.MIN_VALUE;
        public short zzd = -1;
        public int zzh = 0;
        public int zzi = -1;
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-location@@18.0.0 */
    public @interface GeofenceTransition {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-location@@18.0.0 */
    public @interface TransitionTypes {
    }
}

package com.google.android.gms.games;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.snapshot.Snapshot;
import com.google.android.gms.games.snapshot.SnapshotContents;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public interface SnapshotsClient {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
    public static final class DataOrConflict<T> {
        public final Object zza;
        public final SnapshotConflict zzb;

        public DataOrConflict(Object obj, SnapshotConflict snapshotConflict) {
            this.zza = obj;
            this.zzb = snapshotConflict;
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface ResolutionPolicy {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
    public static final class SnapshotConflict {
        public final Snapshot zza;
        public final String zzb;
        public final Snapshot zzc;
        public final SnapshotContents zzd;

        public SnapshotConflict(Snapshot snapshot, String str, Snapshot snapshot2, SnapshotContents snapshotContents) {
            this.zza = snapshot;
            this.zzb = str;
            this.zzc = snapshot2;
            this.zzd = snapshotContents;
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
    public static final class SnapshotContentUnavailableApiException extends ApiException {
        public final SnapshotMetadata metadata;

        public SnapshotContentUnavailableApiException(Status status, SnapshotMetadata snapshotMetadata) {
            super(status);
            this.metadata = snapshotMetadata;
        }
    }
}

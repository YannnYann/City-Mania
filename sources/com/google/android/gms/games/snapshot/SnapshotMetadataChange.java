package com.google.android.gms.games.snapshot;

import android.net.Uri;
import com.google.android.gms.common.data.BitmapTeleporter;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public interface SnapshotMetadataChange {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
    public static final class Builder {
        public String zza;
        public Long zzb;
        public Long zzc;
        public BitmapTeleporter zzd;
        public Uri zze;

        public SnapshotMetadataChange build() {
            return new SnapshotMetadataChangeEntity(this.zza, this.zzb, this.zzd, this.zze, this.zzc);
        }

        public Builder fromMetadata(SnapshotMetadata snapshotMetadata) {
            this.zza = snapshotMetadata.getDescription();
            this.zzb = Long.valueOf(snapshotMetadata.getPlayedTime());
            this.zzc = Long.valueOf(snapshotMetadata.getProgressValue());
            if (this.zzb.longValue() == -1) {
                this.zzb = null;
            }
            Uri coverImageUri = snapshotMetadata.getCoverImageUri();
            this.zze = coverImageUri;
            if (coverImageUri != null) {
                this.zzd = null;
            }
            return this;
        }
    }

    BitmapTeleporter zza();
}

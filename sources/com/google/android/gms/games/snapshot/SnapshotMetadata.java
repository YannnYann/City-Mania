package com.google.android.gms.games.snapshot;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.Player;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public interface SnapshotMetadata extends Freezable<SnapshotMetadata>, Parcelable {
    float getCoverImageAspectRatio();

    Uri getCoverImageUri();

    @KeepName
    @Deprecated
    String getCoverImageUrl();

    String getDescription();

    String getDeviceName();

    Game getGame();

    long getLastModifiedTimestamp();

    Player getOwner();

    long getPlayedTime();

    long getProgressValue();

    String getSnapshotId();

    String getUniqueName();

    boolean hasChangePending();

    String zza();
}

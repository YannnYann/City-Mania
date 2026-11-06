package com.google.android.gms.games.event;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.games.Player;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public interface Event extends Freezable<Event>, Parcelable {
    String getDescription();

    String getEventId();

    String getFormattedValue();

    Uri getIconImageUri();

    @KeepName
    @Deprecated
    String getIconImageUrl();

    String getName();

    Player getPlayer();

    long getValue();

    boolean isVisible();
}

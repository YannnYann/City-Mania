package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.common.internal.ShowFirstParty;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
@ShowFirstParty
public interface StockProfileImage extends Freezable<StockProfileImage>, Parcelable {
    String getImageUrl();

    Uri zza();

    String zzb();
}

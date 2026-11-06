package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.DowngradeableSafeParcel;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zze extends zzf {
    @Override // com.google.android.gms.games.zzf, android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        return createFromParcel(parcel);
    }

    @Override // com.google.android.gms.games.zzf
    /* JADX INFO: renamed from: zza */
    public final GameEntity createFromParcel(Parcel parcel) {
        boolean z;
        if (GamesDowngradeableSafeParcel.zzp(DowngradeableSafeParcel.getUnparcelClientVersion()) || DowngradeableSafeParcel.canUnparcelSafely(GameEntity.class.getCanonicalName())) {
            return super.createFromParcel(parcel);
        }
        String string = parcel.readString();
        String string2 = parcel.readString();
        String string3 = parcel.readString();
        String string4 = parcel.readString();
        String string5 = parcel.readString();
        String string6 = parcel.readString();
        String string7 = parcel.readString();
        Uri uri = string7 == null ? null : Uri.parse(string7);
        String string8 = parcel.readString();
        Uri uri2 = string8 == null ? null : Uri.parse(string8);
        String string9 = parcel.readString();
        Uri uri3 = string9 != null ? Uri.parse(string9) : null;
        boolean z2 = true;
        if (parcel.readInt() > 0) {
            z = true;
        } else {
            z = true;
            z2 = false;
        }
        return new GameEntity(string, string2, string3, string4, string5, string6, uri, uri2, uri3, z2, parcel.readInt() > 0 ? z : false, parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), false, false, null, null, null, false, false, false, null, false, false);
    }
}

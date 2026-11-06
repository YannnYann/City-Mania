package com.google.android.gms.games.internal;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.facebook.ads.AdError;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.playergameevent.PlayerGameEvent;
import com.google.android.gms.games.snapshot.SnapshotMetadataChangeEntity;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzan extends com.google.android.gms.internal.games_v2.zza implements zzao {
    public zzan(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.games.internal.IGamesService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.games.internal.zzao
    public final void zzA(zzak zzakVar, boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzakVar);
        parcelZza.writeInt(z ? 1 : 0);
        zzc(12002, parcelZza);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.games.internal.zzao
    public final void zzB(zzak zzakVar, String str, SnapshotMetadataChangeEntity snapshotMetadataChangeEntity, Contents contents) throws RemoteException {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzakVar);
        parcelZza.writeString(str);
        com.google.android.gms.internal.games_v2.zzc.zzc(parcelZza, snapshotMetadataChangeEntity);
        com.google.android.gms.internal.games_v2.zzc.zzc(parcelZza, contents);
        zzc(12007, parcelZza);
    }

    @Override // com.google.android.gms.games.internal.zzao
    public final void zzC(Contents contents) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.games_v2.zzc.zzc(parcelZza, contents);
        zzc(12019, parcelZza);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.games.internal.zzao
    public final void zzD(zzak zzakVar, String str) throws RemoteException {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzakVar);
        parcelZza.writeString(str);
        zzc(12020, parcelZza);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.games.internal.zzao
    public final void zzE(zzak zzakVar, String str, String str2, SnapshotMetadataChangeEntity snapshotMetadataChangeEntity, Contents contents) throws RemoteException {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzakVar);
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        com.google.android.gms.internal.games_v2.zzc.zzc(parcelZza, snapshotMetadataChangeEntity);
        com.google.android.gms.internal.games_v2.zzc.zzc(parcelZza, contents);
        zzc(12033, parcelZza);
    }

    @Override // com.google.android.gms.games.internal.zzao
    public final int zzF() throws RemoteException {
        Parcel parcelZzb = zzb(12035, zza());
        int i = parcelZzb.readInt();
        parcelZzb.recycle();
        return i;
    }

    @Override // com.google.android.gms.games.internal.zzao
    public final int zzG() throws RemoteException {
        Parcel parcelZzb = zzb(12036, zza());
        int i = parcelZzb.readInt();
        parcelZzb.recycle();
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.games.internal.zzao
    public final void zzH(zzak zzakVar, boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzakVar);
        parcelZza.writeInt(z ? 1 : 0);
        zzc(12016, parcelZza);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.games.internal.zzao
    public final void zzI(zzak zzakVar, boolean z, String[] strArr) throws RemoteException {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzakVar);
        parcelZza.writeInt(z ? 1 : 0);
        parcelZza.writeStringArray(strArr);
        zzc(12031, parcelZza);
    }

    @Override // com.google.android.gms.games.internal.zzao
    public final void zzJ(String str, int i) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeInt(i);
        zzc(12017, parcelZza);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.games.internal.zzao
    public final void zzK(zzak zzakVar, String str, boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzakVar);
        parcelZza.writeString(str);
        parcelZza.writeInt(z ? 1 : 0);
        zzc(13006, parcelZza);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.games.internal.zzao
    public final void zzL(zzak zzakVar, String str, boolean z, int i) throws RemoteException {
        Parcel parcelZza = zza();
        int i2 = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzakVar);
        parcelZza.writeString(str);
        parcelZza.writeInt(z ? 1 : 0);
        parcelZza.writeInt(i);
        zzc(15001, parcelZza);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.games.internal.zzao
    public final void zzM(zzam zzamVar, long j) throws RemoteException {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzamVar);
        parcelZza.writeLong(j);
        zzc(15501, parcelZza);
    }

    @Override // com.google.android.gms.games.internal.zzao
    public final Intent zzN(PlayerEntity playerEntity) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.games_v2.zzc.zzc(parcelZza, playerEntity);
        Parcel parcelZzb = zzb(15503, parcelZza);
        Intent intent = (Intent) com.google.android.gms.internal.games_v2.zzc.zzb(parcelZzb, Intent.CREATOR);
        parcelZzb.recycle();
        return intent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.games.internal.zzao
    public final void zzO(zzak zzakVar, boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzakVar);
        parcelZza.writeInt(z ? 1 : 0);
        zzc(17001, parcelZza);
    }

    @Override // com.google.android.gms.games.internal.zzao
    public final Intent zzP(String str, int i, int i2) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeInt(i);
        parcelZza.writeInt(i2);
        Parcel parcelZzb = zzb(18001, parcelZza);
        Intent intent = (Intent) com.google.android.gms.internal.games_v2.zzc.zzb(parcelZzb, Intent.CREATOR);
        parcelZzb.recycle();
        return intent;
    }

    @Override // com.google.android.gms.games.internal.zzao
    public final PendingIntent zzQ() throws RemoteException {
        Parcel parcelZzb = zzb(25015, zza());
        PendingIntent pendingIntent = (PendingIntent) com.google.android.gms.internal.games_v2.zzc.zzb(parcelZzb, PendingIntent.CREATOR);
        parcelZzb.recycle();
        return pendingIntent;
    }

    @Override // com.google.android.gms.games.internal.zzao
    public final Intent zzR(String str, String str2, String str3) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        parcelZza.writeString(str3);
        Parcel parcelZzb = zzb(25016, parcelZza);
        Intent intent = (Intent) com.google.android.gms.internal.games_v2.zzc.zzb(parcelZzb, Intent.CREATOR);
        parcelZzb.recycle();
        return intent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.games.internal.zzao
    public final void zzS(zzak zzakVar, String str, boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzakVar);
        parcelZza.writeString(str);
        parcelZza.writeInt(z ? 1 : 0);
        zzc(27003, parcelZza);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.games.internal.zzao
    public final void zzT(zzak zzakVar, String str, boolean z, List list) throws RemoteException {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzakVar);
        parcelZza.writeString(str);
        parcelZza.writeInt(z ? 1 : 0);
        parcelZza.writeStringList(list);
        zzc(27012, parcelZza);
    }

    @Override // com.google.android.gms.games.internal.zzao
    public final void zzU(PlayerGameEvent playerGameEvent) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.games_v2.zzc.zzc(parcelZza, playerGameEvent);
        zzc(27014, parcelZza);
    }

    @Override // com.google.android.gms.games.internal.zzao
    public final void zzV(List list) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeTypedList(list);
        zzc(27015, parcelZza);
    }

    @Override // com.google.android.gms.games.internal.zzao
    public final void zzW() throws RemoteException {
        zzc(27016, zza());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.games.internal.zzao
    public final void zzX(zzak zzakVar, PlayerGameEvent playerGameEvent) throws RemoteException {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzakVar);
        com.google.android.gms.internal.games_v2.zzc.zzc(parcelZza, playerGameEvent);
        zzc(27017, parcelZza);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.games.internal.zzao
    public final void zzY(zzak zzakVar, List list) throws RemoteException {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzakVar);
        parcelZza.writeTypedList(list);
        zzc(27018, parcelZza);
    }

    @Override // com.google.android.gms.games.internal.zzao
    public final void zzd(long j) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeLong(j);
        zzc(IronSourceConstants.errorCode_biddingDataException, parcelZza);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.games.internal.zzao
    public final void zze(zzak zzakVar) throws RemoteException {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzakVar);
        zzc(IronSourceConstants.errorCode_isReadyException, parcelZza);
    }

    @Override // com.google.android.gms.games.internal.zzao
    public final void zzf(IBinder iBinder, Bundle bundle) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeStrongBinder(iBinder);
        com.google.android.gms.internal.games_v2.zzc.zzc(parcelZza, bundle);
        zzc(IronSourceConstants.errorCode_loadException, parcelZza);
    }

    @Override // com.google.android.gms.games.internal.zzao
    public final void zzg() throws RemoteException {
        zzc(IronSourceConstants.errorCode_showFailed, zza());
    }

    @Override // com.google.android.gms.games.internal.zzao
    public final String zzh() throws RemoteException {
        Parcel parcelZzb = zzb(5012, zza());
        String string = parcelZzb.readString();
        parcelZzb.recycle();
        return string;
    }

    @Override // com.google.android.gms.games.internal.zzao
    public final DataHolder zzi() throws RemoteException {
        Parcel parcelZzb = zzb(5013, zza());
        DataHolder dataHolder = (DataHolder) com.google.android.gms.internal.games_v2.zzc.zzb(parcelZzb, DataHolder.CREATOR);
        parcelZzb.recycle();
        return dataHolder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.games.internal.zzao
    public final void zzj(zzak zzakVar, String str, int i, int i2, int i3, boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        int i4 = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzakVar);
        parcelZza.writeString(str);
        parcelZza.writeInt(i);
        parcelZza.writeInt(i2);
        parcelZza.writeInt(i3);
        parcelZza.writeInt(z ? 1 : 0);
        zzc(5019, parcelZza);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.games.internal.zzao
    public final void zzk(zzak zzakVar, String str, int i, int i2, int i3, boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        int i4 = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzakVar);
        parcelZza.writeString(str);
        parcelZza.writeInt(i);
        parcelZza.writeInt(i2);
        parcelZza.writeInt(i3);
        parcelZza.writeInt(z ? 1 : 0);
        zzc(5020, parcelZza);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.games.internal.zzao
    public final void zzl(zzak zzakVar, Bundle bundle, int i, int i2) throws RemoteException {
        Parcel parcelZza = zza();
        int i3 = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzakVar);
        com.google.android.gms.internal.games_v2.zzc.zzc(parcelZza, bundle);
        parcelZza.writeInt(i);
        parcelZza.writeInt(i2);
        zzc(5021, parcelZza);
    }

    @Override // com.google.android.gms.games.internal.zzao
    public final void zzm(zzak zzakVar, String str, IBinder iBinder, Bundle bundle) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.games_v2.zzc.zzd(parcelZza, zzakVar);
        parcelZza.writeString(str);
        parcelZza.writeStrongBinder(iBinder);
        com.google.android.gms.internal.games_v2.zzc.zzc(parcelZza, bundle);
        zzc(5023, parcelZza);
    }

    @Override // com.google.android.gms.games.internal.zzao
    public final void zzn(zzak zzakVar, String str, IBinder iBinder, Bundle bundle) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.games_v2.zzc.zzd(parcelZza, zzakVar);
        parcelZza.writeString(str);
        parcelZza.writeStrongBinder(iBinder);
        com.google.android.gms.internal.games_v2.zzc.zzc(parcelZza, bundle);
        zzc(5024, parcelZza);
    }

    @Override // com.google.android.gms.games.internal.zzao
    public final void zzo(zzak zzakVar, String str, int i, IBinder iBinder, Bundle bundle) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.games_v2.zzc.zzd(parcelZza, zzakVar);
        parcelZza.writeString(str);
        parcelZza.writeInt(i);
        parcelZza.writeStrongBinder(iBinder);
        com.google.android.gms.internal.games_v2.zzc.zzc(parcelZza, bundle);
        zzc(5025, parcelZza);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.games.internal.zzao
    public final void zzp(zzak zzakVar, boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzakVar);
        parcelZza.writeInt(z ? 1 : 0);
        zzc(AdError.MEDIAVIEW_MISSING_ERROR_CODE, parcelZza);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.games.internal.zzao
    public final void zzq(zzak zzakVar, boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzakVar);
        parcelZza.writeInt(z ? 1 : 0);
        zzc(6503, parcelZza);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.games.internal.zzao
    public final void zzr(zzak zzakVar, String str, boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzakVar);
        parcelZza.writeString(str);
        parcelZza.writeInt(z ? 1 : 0);
        zzc(6504, parcelZza);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.games.internal.zzao
    public final void zzs(zzak zzakVar, String str, long j, String str2) throws RemoteException {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzakVar);
        parcelZza.writeString(str);
        parcelZza.writeLong(j);
        parcelZza.writeString(str2);
        zzc(AdError.LOAD_CALLED_WHILE_SHOWING_AD, parcelZza);
    }

    @Override // com.google.android.gms.games.internal.zzao
    public final void zzt(zzak zzakVar, String str, int i, IBinder iBinder, Bundle bundle) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.games_v2.zzc.zzd(parcelZza, zzakVar);
        parcelZza.writeString(str);
        parcelZza.writeInt(i);
        parcelZza.writeStrongBinder(iBinder);
        com.google.android.gms.internal.games_v2.zzc.zzc(parcelZza, bundle);
        zzc(AdError.CLEAR_TEXT_SUPPORT_NOT_ALLOWED, parcelZza);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.games.internal.zzao
    public final void zzu(zzak zzakVar, String str, String str2, int i, int i2) throws RemoteException {
        Parcel parcelZza = zza();
        int i3 = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzakVar);
        parcelZza.writeString(null);
        parcelZza.writeString(str2);
        parcelZza.writeInt(i);
        parcelZza.writeInt(i2);
        zzc(8001, parcelZza);
    }

    @Override // com.google.android.gms.games.internal.zzao
    public final Intent zzv() throws RemoteException {
        Parcel parcelZzb = zzb(9003, zza());
        Intent intent = (Intent) com.google.android.gms.internal.games_v2.zzc.zzb(parcelZzb, Intent.CREATOR);
        parcelZzb.recycle();
        return intent;
    }

    @Override // com.google.android.gms.games.internal.zzao
    public final Intent zzw() throws RemoteException {
        Parcel parcelZzb = zzb(9005, zza());
        Intent intent = (Intent) com.google.android.gms.internal.games_v2.zzc.zzb(parcelZzb, Intent.CREATOR);
        parcelZzb.recycle();
        return intent;
    }

    @Override // com.google.android.gms.games.internal.zzao
    public final Intent zzx() throws RemoteException {
        Parcel parcelZzb = zzb(9010, zza());
        Intent intent = (Intent) com.google.android.gms.internal.games_v2.zzc.zzb(parcelZzb, Intent.CREATOR);
        parcelZzb.recycle();
        return intent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.games.internal.zzao
    public final void zzy(zzak zzakVar, String str, int i, boolean z, boolean z2) throws RemoteException {
        Parcel parcelZza = zza();
        int i2 = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzakVar);
        parcelZza.writeString(str);
        parcelZza.writeInt(i);
        parcelZza.writeInt(z ? 1 : 0);
        parcelZza.writeInt(z2 ? 1 : 0);
        zzc(9020, parcelZza);
    }

    @Override // com.google.android.gms.games.internal.zzao
    public final Intent zzz(String str, boolean z, boolean z2, int i) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        int i2 = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeInt(z ? 1 : 0);
        parcelZza.writeInt(z2 ? 1 : 0);
        parcelZza.writeInt(i);
        Parcel parcelZzb = zzb(12001, parcelZza);
        Intent intent = (Intent) com.google.android.gms.internal.games_v2.zzc.zzb(parcelZzb, Intent.CREATOR);
        parcelZzb.recycle();
        return intent;
    }
}

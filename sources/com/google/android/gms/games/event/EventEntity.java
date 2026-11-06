package com.google.android.gms.games.event;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.internal.zzg;
import com.ironsource.C3670j8;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
@UsedByReflection("GamesGmsClientImpl.java")
@SafeParcelable.Class(creator = "EventEntityCreator")
@SafeParcelable.Reserved({1000})
public final class EventEntity extends zzg implements Event {
    public static final Parcelable.Creator<EventEntity> CREATOR = new zza();

    @SafeParcelable.Field(getter = "getEventId", id = 1)
    public final String zza;

    @SafeParcelable.Field(getter = "getName", id = 2)
    public final String zzb;

    @SafeParcelable.Field(getter = "getDescription", id = 3)
    public final String zzc;

    @SafeParcelable.Field(getter = "getIconImageUri", id = 4)
    public final Uri zzd;

    @SafeParcelable.Field(getter = "getIconImageUrl", id = 5)
    public final String zze;

    @SafeParcelable.Field(getter = "getPlayer", id = 6)
    public final PlayerEntity zzf;

    @SafeParcelable.Field(getter = "getValue", id = 7)
    public final long zzg;

    @SafeParcelable.Field(getter = "getFormattedValue", id = 8)
    public final String zzh;

    @SafeParcelable.Field(getter = C3670j8.k, id = 9)
    public final boolean zzi;

    public EventEntity(Event event) {
        this.zza = event.getEventId();
        this.zzb = event.getName();
        this.zzc = event.getDescription();
        this.zzd = event.getIconImageUri();
        this.zze = event.getIconImageUrl();
        this.zzf = (PlayerEntity) event.getPlayer().freeze();
        this.zzg = event.getValue();
        this.zzh = event.getFormattedValue();
        this.zzi = event.isVisible();
    }

    public static int zza(Event event) {
        return Objects.hash(event.getEventId(), event.getName(), event.getDescription(), event.getIconImageUri(), event.getIconImageUrl(), event.getPlayer(), Long.valueOf(event.getValue()), event.getFormattedValue(), Boolean.valueOf(event.isVisible()));
    }

    public static boolean zzb(Event event, Object obj) {
        if (!(obj instanceof Event)) {
            return false;
        }
        if (event == obj) {
            return true;
        }
        Event event2 = (Event) obj;
        return Objects.equals(event2.getEventId(), event.getEventId()) && Objects.equals(event2.getName(), event.getName()) && Objects.equals(event2.getDescription(), event.getDescription()) && Objects.equals(event2.getIconImageUri(), event.getIconImageUri()) && Objects.equals(event2.getIconImageUrl(), event.getIconImageUrl()) && Objects.equals(event2.getPlayer(), event.getPlayer()) && Long.valueOf(event2.getValue()).equals(Long.valueOf(event.getValue())) && Objects.equals(event2.getFormattedValue(), event.getFormattedValue()) && Boolean.valueOf(event2.isVisible()).equals(Boolean.valueOf(event.isVisible()));
    }

    public static String zzc(Event event) {
        return com.google.android.gms.common.internal.Objects.toStringHelper(event).add("Id", event.getEventId()).add("Name", event.getName()).add("Description", event.getDescription()).add("IconImageUri", event.getIconImageUri()).add("IconImageUrl", event.getIconImageUrl()).add("Player", event.getPlayer()).add("Value", Long.valueOf(event.getValue())).add("FormattedValue", event.getFormattedValue()).add(C3670j8.k, Boolean.valueOf(event.isVisible())).toString();
    }

    public boolean equals(Object obj) {
        return zzb(this, obj);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* bridge */ /* synthetic */ Event freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.event.Event
    public String getDescription() {
        return this.zzc;
    }

    @Override // com.google.android.gms.games.event.Event
    public String getEventId() {
        return this.zza;
    }

    @Override // com.google.android.gms.games.event.Event
    public String getFormattedValue() {
        return this.zzh;
    }

    @Override // com.google.android.gms.games.event.Event
    public Uri getIconImageUri() {
        return this.zzd;
    }

    @Override // com.google.android.gms.games.event.Event
    public String getIconImageUrl() {
        return this.zze;
    }

    @Override // com.google.android.gms.games.event.Event
    public String getName() {
        return this.zzb;
    }

    @Override // com.google.android.gms.games.event.Event
    public Player getPlayer() {
        return this.zzf;
    }

    @Override // com.google.android.gms.games.event.Event
    public long getValue() {
        return this.zzg;
    }

    public int hashCode() {
        return zza(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    @Override // com.google.android.gms.games.event.Event
    public boolean isVisible() {
        return this.zzi;
    }

    public String toString() {
        return zzc(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getEventId(), false);
        SafeParcelWriter.writeString(parcel, 2, getName(), false);
        SafeParcelWriter.writeString(parcel, 3, getDescription(), false);
        SafeParcelWriter.writeParcelable(parcel, 4, getIconImageUri(), i, false);
        SafeParcelWriter.writeString(parcel, 5, getIconImageUrl(), false);
        SafeParcelWriter.writeParcelable(parcel, 6, getPlayer(), i, false);
        SafeParcelWriter.writeLong(parcel, 7, getValue());
        SafeParcelWriter.writeString(parcel, 8, getFormattedValue(), false);
        SafeParcelWriter.writeBoolean(parcel, 9, isVisible());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @SafeParcelable.Constructor
    public EventEntity(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2, @SafeParcelable.Param(id = 3) String str3, @SafeParcelable.Param(id = 4) Uri uri, @SafeParcelable.Param(id = 5) String str4, @SafeParcelable.Param(id = 6) Player player, @SafeParcelable.Param(id = 7) long j, @SafeParcelable.Param(id = 8) String str5, @SafeParcelable.Param(id = 9) boolean z) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = uri;
        this.zze = str4;
        this.zzf = new PlayerEntity(player);
        this.zzg = j;
        this.zzh = str5;
        this.zzi = z;
    }
}

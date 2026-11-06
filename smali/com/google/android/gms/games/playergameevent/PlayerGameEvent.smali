###### Class com.google.android.gms.games.playergameevent.PlayerGameEvent (com.google.android.gms.games.playergameevent.PlayerGameEvent)
.class public final Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;
.super Lcom/google/android/gms/games/internal/zzg;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "PlayerGameEventCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/playergameevent/PlayerGameEvent$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValue = "-1"
        getter = "getEventElapsedTimeMillis"
        id = 0x1
    .end annotation
.end field

.field public final zzb:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getEventName"
        id = 0x2
    .end annotation
.end field

.field public final zzc:Landroid/os/Bundle;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getEventProperties"
        id = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/android/gms/games/playergameevent/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/games/playergameevent/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzg;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;->zza:J

    iput-object p3, p0, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;->zzb:Ljava/lang/String;

    if-nez p4, :cond_e

    new-instance p4, Landroid/os/Bundle;

    .line 2
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_e
    iput-object p4, p0, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;->zzc:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getEventProperties()Landroid/os/Bundle;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;->zzc:Landroid/os/Bundle;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;->zza:J

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;->getEventProperties()Landroid/os/Bundle;

    move-result-object v1

    .line 4
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

###### Class com.google.android.gms.games.playergameevent.PlayerGameEvent.Builder (com.google.android.gms.games.playergameevent.PlayerGameEvent$Builder)
.class public Lcom/google/android/gms/games/playergameevent/PlayerGameEvent$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

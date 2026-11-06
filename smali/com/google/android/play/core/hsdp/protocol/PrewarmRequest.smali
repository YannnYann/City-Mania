###### Class com.google.android.play.core.hsdp.protocol.PrewarmRequest (com.google.android.play.core.hsdp.protocol.PrewarmRequest)
.class public final Lcom/google/android/play/core/hsdp/protocol/PrewarmRequest;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/play/core/hsdp/protocol/PrewarmRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Landroid/os/IBinder;

.field public final zzd:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/android/play/core/hsdp/protocol/zzm;

    invoke-direct {v0}, Lcom/google/android/play/core/hsdp/protocol/zzm;-><init>()V

    sput-object v0, Lcom/google/android/play/core/hsdp/protocol/PrewarmRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/play/core/hsdp/protocol/zzn;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/protocol/PrewarmRequest;->zza:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/protocol/PrewarmRequest;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-eqz p2, :cond_22

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/protocol/PrewarmRequest;->zzc:Landroid/os/IBinder;

    goto :goto_25

    :cond_22
    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcom/google/android/play/core/hsdp/protocol/PrewarmRequest;->zzc:Landroid/os/IBinder;

    .line 4
    :goto_25
    const-class p2, Lcom/google/android/play/core/hsdp/protocol/PrewarmRequest;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_33

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_33
    iput-object p1, p0, Lcom/google/android/play/core/hsdp/protocol/PrewarmRequest;->zzd:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 6

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "targetPackage cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/protocol/PrewarmRequest;->zza:Ljava/lang/String;

    const-string p1, "url cannot be null"

    .line 7
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/protocol/PrewarmRequest;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/play/core/hsdp/protocol/PrewarmRequest;->zzc:Landroid/os/IBinder;

    if-eqz p4, :cond_1b

    new-instance p1, Landroid/os/Bundle;

    .line 8
    invoke-direct {p1, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_1d

    :cond_1b
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_1d
    iput-object p1, p0, Lcom/google/android/play/core/hsdp/protocol/PrewarmRequest;->zzd:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/google/android/play/core/hsdp/protocol/PrewarmRequest;->zza:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/play/core/hsdp/protocol/PrewarmRequest;->zzb:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/play/core/hsdp/protocol/PrewarmRequest;->zzc:Landroid/os/IBinder;

    if-eqz p2, :cond_16

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_1a

    :cond_16
    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 4
    :goto_1a
    iget-object p2, p0, Lcom/google/android/play/core/hsdp/protocol/PrewarmRequest;->zzd:Landroid/os/Bundle;

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

###### Class com.google.android.play.core.hsdp.protocol.zzm (com.google.android.play.core.hsdp.protocol.zzm)
.class public final Lcom/google/android/play/core/hsdp/protocol/zzm;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/play/core/hsdp/protocol/PrewarmRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/play/core/hsdp/protocol/PrewarmRequest;-><init>(Landroid/os/Parcel;Lcom/google/android/play/core/hsdp/protocol/zzn;)V

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    new-array p1, p1, [Lcom/google/android/play/core/hsdp/protocol/PrewarmRequest;

    return-object p1
.end method

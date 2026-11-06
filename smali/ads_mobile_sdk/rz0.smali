###### Class ads_mobile_sdk.rz0 (ads_mobile_sdk.rz0)
.class public final Lads_mobile_sdk/rz0;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lads_mobile_sdk/rz0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public b:Lads_mobile_sdk/fh;

.field public c:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/sz0;

    invoke-direct {v0}, Lads_mobile_sdk/sz0;-><init>()V

    sput-object v0, Lads_mobile_sdk/rz0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 3
    iput p2, p0, Lads_mobile_sdk/rz0;->a:I

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lads_mobile_sdk/rz0;->b:Lads_mobile_sdk/fh;

    .line 6
    iput-object p1, p0, Lads_mobile_sdk/rz0;->c:[B

    .line 7
    invoke-virtual {p0}, Lads_mobile_sdk/rz0;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 98
    iget-object v0, p0, Lads_mobile_sdk/rz0;->b:Lads_mobile_sdk/fh;

    if-nez v0, :cond_9

    iget-object v1, p0, Lads_mobile_sdk/rz0;->c:[B

    if-eqz v1, :cond_9

    goto :goto_f

    :cond_9
    if-eqz v0, :cond_10

    .line 101
    iget-object v1, p0, Lads_mobile_sdk/rz0;->c:[B

    if-nez v1, :cond_10

    :goto_f
    return-void

    :cond_10
    if-eqz v0, :cond_1f

    .line 104
    iget-object v1, p0, Lads_mobile_sdk/rz0;->c:[B

    if-nez v1, :cond_17

    goto :goto_1f

    .line 105
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_1f
    if-nez v0, :cond_2d

    .line 107
    iget-object v0, p0, Lads_mobile_sdk/rz0;->c:[B

    if-nez v0, :cond_2d

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 4
    iget v0, p0, Lads_mobile_sdk/rz0;->a:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 5
    iget-object v0, p0, Lads_mobile_sdk/rz0;->c:[B

    if-eqz v0, :cond_f

    goto :goto_15

    .line 9
    :cond_f
    iget-object v0, p0, Lads_mobile_sdk/rz0;->b:Lads_mobile_sdk/fh;

    invoke-virtual {v0}, Lads_mobile_sdk/f;->c()[B

    move-result-object v0

    :goto_15
    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 10
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    .line 15
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

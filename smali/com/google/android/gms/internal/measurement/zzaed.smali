###### Class com.google.android.gms.internal.measurement.zzaed (com.google.android.gms.internal.measurement.zzaed)
.class public final Lcom/google/android/gms/internal/measurement/zzaed;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@23.2.0"


# static fields
.field public static final zza:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    new-array v1, v0, [B

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzaed;->zza:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 2
    invoke-static {v1, v0, v0, v0}, Lcom/google/android/gms/internal/measurement/zzacv;->zzN([BIIZ)Lcom/google/android/gms/internal/measurement/zzacv;

    return-void
.end method

.method public static zza(Z)I
    .registers 1

    .line 0
    if-eqz p0, :cond_5

    const/16 p0, 0x4cf

    return p0

    :cond_5
    const/16 p0, 0x4d5

    return p0
.end method

.method public static zzb(I[BII)I
    .registers 6

    move v0, p2

    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_d

    mul-int/lit8 p0, p0, 0x1f

    .line 1
    aget-byte v1, p1, v0

    add-int/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    return p0
.end method

###### Class com.google.android.gms.internal.measurement.zzaed.zza (com.google.android.gms.internal.measurement.zzaed$zza)
.class public Lcom/google/android/gms/internal/measurement/zzaed$zza;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-measurement-base@@23.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzaeb;

.field private final zzb:Lcom/google/android/gms/internal/measurement/zzaec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzaec<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzaeb;Lcom/google/android/gms/internal/measurement/zzaec;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzaeb;",
            "Lcom/google/android/gms/internal/measurement/zzaec<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzaed$zza;->zza:Lcom/google/android/gms/internal/measurement/zzaeb;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzaed$zza;->zzb:Lcom/google/android/gms/internal/measurement/zzaec;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaed$zza;->zza:Lcom/google/android/gms/internal/measurement/zzaeb;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzaed$zza;->zzb:Lcom/google/android/gms/internal/measurement/zzaec;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzaeb;->zzf(I)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/measurement/zzaec;->zza(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaed$zza;->zza:Lcom/google/android/gms/internal/measurement/zzaeb;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

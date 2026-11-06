###### Class com.google.android.gms.internal.measurement.zzzy (com.google.android.gms.internal.measurement.zzzy)
.class final Lcom/google/android/gms/internal/measurement/zzzy;
.super Lcom/google/android/gms/internal/measurement/zzaaa;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzzj;

.field private final zzb:Lcom/google/android/gms/internal/measurement/zzzj;

.field private final zzc:[I

.field private final zzd:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzzj;Lcom/google/android/gms/internal/measurement/zzzj;[B)V
    .registers 12

    const/4 p3, 0x0

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzaaa;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzy;->zza:Lcom/google/android/gms/internal/measurement/zzzj;

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzzy;->zzb:Lcom/google/android/gms/internal/measurement/zzzj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzzj;->zza()I

    move-result p1

    const/16 p2, 0x1c

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-gt p1, p2, :cond_14

    move p2, v0

    goto :goto_15

    :cond_14
    move p2, p3

    :goto_15
    const-string v1, "metadata size too large"

    .line 3
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzabr;->zzb(ZLjava/lang/String;)V

    .line 4
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzy;->zzc:[I

    const-wide/16 v1, 0x0

    move p2, p3

    move v3, p2

    :goto_22
    array-length v4, p1

    if-ge p2, v4, :cond_66

    .line 5
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzzy;->zzi(I)Lcom/google/android/gms/internal/measurement/zzyl;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzyl;->zzi()J

    move-result-wide v5

    or-long/2addr v5, v1

    cmp-long v1, v5, v1

    if-nez v1, :cond_5d

    move v1, p3

    :goto_33
    const/4 v2, -0x1

    if-ge v1, v3, :cond_48

    .line 7
    aget v7, p1, v1

    and-int/lit8 v7, v7, 0x1f

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/measurement/zzzy;->zzi(I)Lcom/google/android/gms/internal/measurement/zzyl;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    goto :goto_49

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_48
    move v1, v2

    :goto_49
    if-eq v1, v2, :cond_5d

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzyl;->zzf()Z

    move-result v2

    if-eqz v2, :cond_59

    aget v2, p1, v1

    add-int/lit8 v4, p2, 0x4

    shl-int v4, v0, v4

    or-int/2addr v2, v4

    goto :goto_5a

    :cond_59
    move v2, p2

    :goto_5a
    aput v2, p1, v1

    goto :goto_62

    :cond_5d
    add-int/lit8 v1, v3, 0x1

    .line 8
    aput p2, p1, v3

    move v3, v1

    :goto_62
    add-int/lit8 p2, p2, 0x1

    move-wide v1, v5

    goto :goto_22

    :cond_66
    iput v3, p0, Lcom/google/android/gms/internal/measurement/zzzy;->zzd:I

    return-void
.end method

.method private final zzi(I)Lcom/google/android/gms/internal/measurement/zzyl;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzy;->zza:Lcom/google/android/gms/internal/measurement/zzzj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zza()I

    move-result v1

    if-lt p1, v1, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzy;->zzb:Lcom/google/android/gms/internal/measurement/zzzj;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(I)Lcom/google/android/gms/internal/measurement/zzyl;

    move-result-object p1

    return-object p1

    :cond_10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(I)Lcom/google/android/gms/internal/measurement/zzyl;

    move-result-object p1

    return-object p1
.end method

.method private final zzj(I)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzy;->zza:Lcom/google/android/gms/internal/measurement/zzzj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zza()I

    move-result v1

    if-lt p1, v1, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzy;->zzb:Lcom/google/android/gms/internal/measurement/zzzj;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzzq;Ljava/lang/Object;)V
    .registers 8

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzy;->zzd:I

    if-ge v0, v1, :cond_2d

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzy;->zzc:[I

    aget v1, v1, v0

    and-int/lit8 v2, v1, 0x1f

    .line 2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzzy;->zzi(I)Lcom/google/android/gms/internal/measurement/zzyl;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzyl;->zzf()Z

    move-result v3

    if-nez v3, :cond_21

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzzy;->zzj(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzyl;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1, p2}, Lcom/google/android/gms/internal/measurement/zzzq;->zza(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2a

    :cond_21
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzzx;

    const/4 v4, 0x0

    .line 5
    invoke-direct {v3, p0, v2, v1, v4}, Lcom/google/android/gms/internal/measurement/zzzx;-><init>(Lcom/google/android/gms/internal/measurement/zzzy;Lcom/google/android/gms/internal/measurement/zzyl;I[B)V

    invoke-virtual {p1, v2, v3, p2}, Lcom/google/android/gms/internal/measurement/zzzq;->zzb(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/util/Iterator;Ljava/lang/Object;)V

    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2d
    return-void
.end method

.method public final zzb()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzy;->zzd:I

    return v0
.end method

.method public final zzc()Ljava/util/Set;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzzw;-><init>(Lcom/google/android/gms/internal/measurement/zzzy;)V

    return-object v0
.end method

.method public final synthetic zzd(I)Lcom/google/android/gms/internal/measurement/zzyl;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzy;->zzi(I)Lcom/google/android/gms/internal/measurement/zzyl;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zze(I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzy;->zzj(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzf()[I
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzy;->zzc:[I

    return-object v0
.end method

.method public final synthetic zzg()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzy;->zzd:I

    return v0
.end method

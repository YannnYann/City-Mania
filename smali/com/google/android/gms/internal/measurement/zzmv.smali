###### Class com.google.android.gms.internal.measurement.zzmv (com.google.android.gms.internal.measurement.zzmv)
.class public final Lcom/google/android/gms/internal/measurement/zzmv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final zza:J

.field final zzb:Ljava/lang/String;

.field final zzc:I

.field final zzd:J

.field final zze:Ljava/lang/Object;

.field private final zzf:Ljava/lang/RuntimeException;


# direct methods
.method public constructor <init>(JLjava/lang/String;IJLjava/lang/Object;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    if-nez p3, :cond_12

    move v3, v2

    goto :goto_13

    :cond_12
    move v3, v1

    :goto_13
    if-ne v0, v3, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zza:J

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zzb:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zzc:I

    iput-wide p5, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zzd:J

    iput-object p7, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zze:Ljava/lang/Object;

    const/4 p1, 0x5

    const/4 p2, 0x0

    if-ne p4, p1, :cond_55

    if-nez p7, :cond_34

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null stringOrBytes"

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Ljava/lang/RuntimeException;

    return-void

    .line 3
    :cond_34
    instance-of p1, p7, [B

    if-nez p1, :cond_52

    instance-of p1, p7, Lcom/google/android/gms/internal/measurement/zzacr;

    if-nez p1, :cond_52

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance p2, Ljava/lang/RuntimeException;

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Wrong stringOrBytes type: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Ljava/lang/RuntimeException;

    return-void

    :cond_52
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Ljava/lang/RuntimeException;

    return-void

    :cond_55
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Ljava/lang/RuntimeException;

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 6

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmv;

    .line 2
    iget-wide v0, p1, Lcom/google/android/gms/internal/measurement/zzmv;->zza:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zza:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_29

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_14

    const/4 p1, 0x0

    return p1

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zzb:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzmv;->zzb:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_29
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzmv;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmv;

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zza:J

    .line 2
    iget-wide v5, p1, Lcom/google/android/gms/internal/measurement/zzmv;->zza:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zzb:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzmv;->zzb:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    return v0

    :cond_1f
    return v2
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zza:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zzb:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmv;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmv;->zzb()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zzb:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zza:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Ljava/lang/Object;
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zzc:I

    if-eqz v0, :cond_54

    const/4 v1, 0x1

    if-eq v0, v1, :cond_51

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_39

    const/4 v1, 0x5

    if-ne v0, v1, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zze:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_18
    instance-of v1, v0, [B

    if-eqz v1, :cond_21

    .line 4
    check-cast v0, [B

    return-object v0

    :catchall_1f
    move-exception v0

    goto :goto_28

    .line 3
    :cond_21
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzacr;->zzm()[B

    move-result-object v0
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_1f

    return-object v0

    .line 12
    :goto_28
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Ljava/lang/RuntimeException;

    if-nez v1, :cond_2d

    goto :goto_30

    .line 5
    :cond_2d
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 6
    :goto_30
    throw v0

    .line 11
    :cond_31
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Impossible, this was validated when parsed or created"

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3
    :cond_39
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zze:Ljava/lang/Object;

    .line 7
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_3f
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zzd:J

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_4a
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzmv;->zzd:J

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 10
    :cond_51
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 11
    :cond_54
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

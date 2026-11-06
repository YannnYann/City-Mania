###### Class com.google.android.gms.internal.measurement.zzabm (com.google.android.gms.internal.measurement.zzabm)
.class public abstract Lcom/google/android/gms/internal/measurement/zzabm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzaaf;

.field private zzb:I

.field private zzc:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzaaf;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzabm;->zzb:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzabm;->zzc:I

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzabr;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzabm;->zza:Lcom/google/android/gms/internal/measurement/zzaaf;

    return-void
.end method


# virtual methods
.method public abstract zzb(IILcom/google/android/gms/internal/measurement/zzabh;)V
.end method

.method public abstract zzg()Ljava/lang/Object;
.end method

.method public final zzh()Lcom/google/android/gms/internal/measurement/zzabn;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzabm;->zza:Lcom/google/android/gms/internal/measurement/zzaaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaaf;->zza()Lcom/google/android/gms/internal/measurement/zzabn;

    move-result-object v0

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzabm;->zza:Lcom/google/android/gms/internal/measurement/zzaaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaaf;->zzb()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzj()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzabm;->zzc:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final zzk(IILcom/google/android/gms/internal/measurement/zzabh;)V
    .registers 7

    .line 1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzabh;->zzc()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_13

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzabm;->zzb:I

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzabh;->zzc()I

    move-result v2

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzabm;->zzb:I

    :cond_13
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzabm;->zzc:I

    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzabh;->zzc()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzabm;->zzc:I

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzabm;->zzb(IILcom/google/android/gms/internal/measurement/zzabh;)V

    return-void
.end method

.method public final zzl()Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzabm;->zza:Lcom/google/android/gms/internal/measurement/zzaaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaaf;->zza()Lcom/google/android/gms/internal/measurement/zzabn;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/measurement/zzabn;->zzc(Lcom/google/android/gms/internal/measurement/zzabm;)V

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzabm;->zzb:I

    add-int/lit8 v2, v1, 0x1

    and-int/2addr v2, v1

    if-nez v2, :cond_1e

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzabm;->zzc:I

    const/16 v3, 0x1f

    if-le v2, v3, :cond_19

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1e

    .line 2
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzabm;->zzg()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1e
    not-int v1, v1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "unreferenced arguments [first missing index=%d]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaaf;->zzb()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzabo;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzabo;

    move-result-object v0

    throw v0
.end method

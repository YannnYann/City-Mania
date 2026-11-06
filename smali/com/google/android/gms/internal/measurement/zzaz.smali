###### Class com.google.android.gms.internal.measurement.zzaz (com.google.android.gms.internal.measurement.zzaz)
.class final Lcom/google/android/gms/internal/measurement/zzaz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@23.2.0"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/measurement/zzai;

.field final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzai;Lcom/google/android/gms/internal/measurement/zzg;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzaz;->zza:Lcom/google/android/gms/internal/measurement/zzai;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzaz;->zzb:Lcom/google/android/gms/internal/measurement/zzg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzao;

    instance-of v2, p1, Lcom/google/android/gms/internal/measurement/zzat;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzao;

    if-eqz v2, :cond_10

    instance-of p1, p2, Lcom/google/android/gms/internal/measurement/zzat;

    if-nez p1, :cond_f

    return v1

    :cond_f
    return v0

    :cond_10
    instance-of v2, p2, Lcom/google/android/gms/internal/measurement/zzat;

    if-eqz v2, :cond_16

    const/4 p1, -0x1

    return p1

    :cond_16
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzaz;->zza:Lcom/google/android/gms/internal/measurement/zzai;

    if-nez v2, :cond_27

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzao;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzao;->zzc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_27
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzaz;->zzb:Lcom/google/android/gms/internal/measurement/zzg;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/zzao;

    aput-object p1, v4, v0

    aput-object p2, v4, v1

    .line 3
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/google/android/gms/internal/measurement/zzai;->zza(Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzao;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzh;->zzi(D)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method

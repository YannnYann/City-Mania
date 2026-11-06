###### Class com.google.android.gms.internal.measurement.zzof (com.google.android.gms.internal.measurement.zzof)
.class abstract Lcom/google/android/gms/internal/measurement/zzof;
.super Lcom/google/android/gms/internal/measurement/zznp;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zznw;


# instance fields
.field private volatile zza:I

.field private zzb:Lcom/google/android/gms/internal/measurement/zzps;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzph;)V
    .registers 4

    .line 1
    const-string p1, "com.google.android.gms.measurement"

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zznp;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzph;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzof;->zza:I

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/measurement/zzlk;)Ljava/lang/Object;
    .registers 3

    .line 1
    const-string v0, ""

    invoke-virtual {p0, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzaA(Lcom/google/android/gms/internal/measurement/zznw;Lcom/google/android/gms/internal/measurement/zzlk;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzf()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzof;->zza:I

    return v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/measurement/zzps;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzof;->zzb:Lcom/google/android/gms/internal/measurement/zzps;

    return-object v0
.end method

.method public final zzi(I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzof;->zza:I

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/measurement/zzps;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzof;->zzb:Lcom/google/android/gms/internal/measurement/zzps;

    return-void
.end method

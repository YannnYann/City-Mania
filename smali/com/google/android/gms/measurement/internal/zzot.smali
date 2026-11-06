###### Class com.google.android.gms.measurement.internal.zzot (com.google.android.gms.measurement.internal.zzot)
.class public final Lcom/google/android/gms/measurement/internal/zzot;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@23.2.0"


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/util/Map;

.field public final zzc:Lcom/google/android/gms/measurement/internal/zzls;

.field public final zzd:Lcom/google/android/gms/internal/measurement/zzis;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzls;Lcom/google/android/gms/internal/measurement/zzis;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzot;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzot;->zzb:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzot;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzot;->zzd:Lcom/google/android/gms/internal/measurement/zzis;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzot;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Ljava/util/Map;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzot;->zzb:Ljava/util/Map;

    if-nez v0, :cond_6

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :cond_6
    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/measurement/internal/zzls;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzot;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/measurement/zzis;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzot;->zzd:Lcom/google/android/gms/internal/measurement/zzis;

    return-object v0
.end method

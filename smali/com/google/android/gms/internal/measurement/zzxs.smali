###### Class com.google.android.gms.internal.measurement.zzxs (com.google.android.gms.internal.measurement.zzxs)
.class public final Lcom/google/android/gms/internal/measurement/zzxs;
.super Lcom/google/android/gms/internal/measurement/zzxi;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzxr;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzxr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzxr;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzxs;->zza:Lcom/google/android/gms/internal/measurement/zzxr;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzzf;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzxi;-><init>(Lcom/google/android/gms/internal/measurement/zzzf;)V

    return-void
.end method

.method public static zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzxs;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzxs;

    const-string v0, "Phlogger"

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzaad;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzzf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzxs;-><init>(Lcom/google/android/gms/internal/measurement/zzzf;)V

    return-object p0
.end method


# virtual methods
.method public final zze(Ljava/util/logging/Level;)Lcom/google/android/gms/internal/measurement/zzxp;
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzxi;->zzb(Ljava/util/logging/Level;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzxi;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/zzaad;->zzh(Ljava/lang/String;Ljava/util/logging/Level;Z)Z

    if-nez v0, :cond_10

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzxs;->zza:Lcom/google/android/gms/internal/measurement/zzxr;

    return-object p1

    :cond_10
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzxq;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzxq;-><init>(Lcom/google/android/gms/internal/measurement/zzxs;Ljava/util/logging/Level;Z)V

    return-object v0
.end method

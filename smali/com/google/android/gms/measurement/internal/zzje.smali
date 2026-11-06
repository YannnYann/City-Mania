###### Class com.google.android.gms.measurement.internal.zzje (com.google.android.gms.measurement.internal.zzje)
.class public Lcom/google/android/gms/measurement/internal/zzje;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzjg;


# instance fields
.field public final zzu:Lcom/google/android/gms/measurement/internal/zzic;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzic;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    return-void
.end method


# virtual methods
.method public final zzaV()Lcom/google/android/gms/measurement/internal/zzae;
    .registers 2

    .line 0
    const/4 v0, 0x0

    throw v0
.end method

.method public final zzaW()Lcom/google/android/gms/measurement/internal/zzgu;
    .registers 2

    .line 0
    const/4 v0, 0x0

    throw v0
.end method

.method public final zzaX()Lcom/google/android/gms/measurement/internal/zzhz;
    .registers 2

    .line 0
    const/4 v0, 0x0

    throw v0
.end method

.method public zzaY()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaX()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzaY()V

    return-void
.end method

.method public final zzaZ()Landroid/content/Context;
    .registers 2

    .line 0
    const/4 v0, 0x0

    throw v0
.end method

.method public final zzba()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 0
    const/4 v0, 0x0

    throw v0
.end method

.method public zzg()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaX()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    return-void
.end method

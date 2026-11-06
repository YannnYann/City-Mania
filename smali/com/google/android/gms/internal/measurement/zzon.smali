###### Class com.google.android.gms.internal.measurement.zzon (com.google.android.gms.internal.measurement.zzon)
.class final Lcom/google/android/gms/internal/measurement/zzon;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# instance fields
.field private final zza:Lcom/google/common/base/Function;

.field private final zzb:Z

.field private final zzc:Lcom/google/common/collect/ImmutableSet;

.field private volatile zzd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Function;ZZZZLcom/google/common/collect/ImmutableSet;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzon;->zzd:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzon;->zza:Lcom/google/common/base/Function;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/measurement/zzon;->zzb:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/measurement/zzon;->zzc:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzon;->zzd:Ljava/lang/String;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzon;->zza:Lcom/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzon;->zzd:Ljava/lang/String;

    return-object p1

    :cond_f
    return-object v0
.end method

.method public final zzb()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzon;->zzb:Z

    return v0
.end method

.method public final zzc()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzon;->zzc:Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method

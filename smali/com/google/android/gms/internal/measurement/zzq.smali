###### Class com.google.android.gms.internal.measurement.zzq (com.google.android.gms.internal.measurement.zzq)
.class final Lcom/google/android/gms/internal/measurement/zzq;
.super Lcom/google/android/gms/internal/measurement/zzai;
.source "com.google.android.gms:play-services-measurement@@23.2.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzt;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "unmonitored"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzao;
    .registers 3

    .line 0
    return-object p0
.end method

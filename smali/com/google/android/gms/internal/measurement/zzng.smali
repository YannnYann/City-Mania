###### Class com.google.android.gms.internal.measurement.zzng (com.google.android.gms.internal.measurement.zzng)
.class final Lcom/google/android/gms/internal/measurement/zzng;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzaec;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzabz;->zzb(I)Lcom/google/android/gms/internal/measurement/zzabz;

    move-result-object p1

    if-nez p1, :cond_8

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzabz;->zza:Lcom/google/android/gms/internal/measurement/zzabz;

    :cond_8
    return-object p1
.end method

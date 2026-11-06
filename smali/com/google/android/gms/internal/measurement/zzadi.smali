###### Class com.google.android.gms.internal.measurement.zzadi (com.google.android.gms.internal.measurement.zzadi)
.class final Lcom/google/android/gms/internal/measurement/zzadi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@23.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzadg;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzadh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzadh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzadi;->zza:Lcom/google/android/gms/internal/measurement/zzadg;

    sget v0, Lcom/google/android/gms/internal/measurement/zzacf;->zza:I

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzadg;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzadi;->zza:Lcom/google/android/gms/internal/measurement/zzadg;

    return-object v0
.end method

###### Class com.google.android.gms.internal.consent_sdk.zztf (com.google.android.gms.internal.consent_sdk.zztf)
.class public final Lcom/google/android/gms/internal/consent_sdk/zztf;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzth;


# instance fields
.field private zza:Lcom/google/android/gms/internal/consent_sdk/zztk;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;)V
    .registers 3

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/consent_sdk/zztf;

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zztf;->zza:Lcom/google/android/gms/internal/consent_sdk/zztk;

    if-nez v0, :cond_9

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zztf;->zza:Lcom/google/android/gms/internal/consent_sdk/zztk;

    return-void

    .line 1
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zztf;->zza:Lcom/google/android/gms/internal/consent_sdk/zztk;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zztm;->zzb()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

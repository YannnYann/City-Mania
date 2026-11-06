###### Class com.google.android.gms.internal.play_billing.zzgg (com.google.android.gms.internal.play_billing.zzgg)
.class final Lcom/google/android/gms/internal/play_billing/zzgg;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzgf;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgf;

    .line 3
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zze()Z

    move-result v0

    if-nez v0, :cond_14

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzb()Lcom/google/android/gms/internal/play_billing/zzgf;

    move-result-object p0

    .line 6
    :cond_14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzd(Lcom/google/android/gms/internal/play_billing/zzgf;)V

    :cond_17
    return-object p0
.end method

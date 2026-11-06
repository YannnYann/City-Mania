###### Class com.google.android.gms.internal.consent_sdk.zzpn (com.google.android.gms.internal.consent_sdk.zzpn)
.class final Lcom/google/android/gms/internal/consent_sdk/zzpn;
.super Lcom/google/android/gms/internal/consent_sdk/zzpp;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# instance fields
.field private zzb:I

.field private zzc:I

.field private zzd:I


# direct methods
.method public synthetic constructor <init>([BIIZLcom/google/android/gms/internal/consent_sdk/zzpo;)V
    .registers 6

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpp;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzpo;)V

    const p1, 0x7fffffff

    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpn;->zzd:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpn;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/consent_sdk/zzqu;
        }
    .end annotation

    .line 0
    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpn;->zzd:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpn;->zzd:I

    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpn;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpn;->zzc:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpn;->zzb:I

    if-lez v1, :cond_13

    iput v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpn;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpn;->zzb:I

    return p1

    :cond_13
    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpn;->zzc:I

    return p1
.end method

###### Class com.google.android.gms.internal.consent_sdk.zzrd (com.google.android.gms.internal.consent_sdk.zzrd)
.class final Lcom/google/android/gms/internal/consent_sdk/zzrd;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/consent_sdk/zzrc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/consent_sdk/zzpc;->zza:I

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzrc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzrc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzrd;->zza:Lcom/google/android/gms/internal/consent_sdk/zzrc;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/consent_sdk/zzrc;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzrd;->zza:Lcom/google/android/gms/internal/consent_sdk/zzrc;

    return-object v0
.end method

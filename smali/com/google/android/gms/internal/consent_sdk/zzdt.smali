###### Class com.google.android.gms.internal.consent_sdk.zzdt (com.google.android.gms.internal.consent_sdk.zzdt)
.class final Lcom/google/android/gms/internal/consent_sdk/zzdt;
.super Lcom/google/android/gms/internal/consent_sdk/zzdq;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzdv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzdv;I)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzdq;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzdt;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdv;

    return-void
.end method


# virtual methods
.method public final zza(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdt;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdv;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

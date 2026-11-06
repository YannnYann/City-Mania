###### Class com.google.android.gms.internal.play_billing.zzgr (com.google.android.gms.internal.play_billing.zzgr)
.class final Lcom/google/android/gms/internal/play_billing/zzgr;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_billing/zzgq;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/play_billing/zzgs;->zza:I

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzgq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzgq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzgr;->zza:Lcom/google/android/gms/internal/play_billing/zzgq;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_billing/zzgq;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzgr;->zza:Lcom/google/android/gms/internal/play_billing/zzgq;

    return-object v0
.end method

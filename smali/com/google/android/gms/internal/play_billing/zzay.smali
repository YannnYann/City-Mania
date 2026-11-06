###### Class com.google.android.gms.internal.play_billing.zzay (com.google.android.gms.internal.play_billing.zzay)
.class final Lcom/google/android/gms/internal/play_billing/zzay;
.super Lcom/google/android/gms/internal/play_billing/zzbl;
.source "com.android.billingclient:billing@@8.0.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzbl;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()J
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0
.end method

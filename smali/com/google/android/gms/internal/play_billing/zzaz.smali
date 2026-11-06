###### Class com.google.android.gms.internal.play_billing.zzaz (com.google.android.gms.internal.play_billing.zzaz)
.class public final Lcom/google/android/gms/internal/play_billing/zzaz;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_billing/zzbl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzax;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzax;-><init>()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_11

    .line 3
    :catchall_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzay;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzay;-><init>()V

    .line 2
    :goto_11
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzaz;->zza:Lcom/google/android/gms/internal/play_billing/zzbl;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_billing/zzbl;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzaz;->zza:Lcom/google/android/gms/internal/play_billing/zzbl;

    return-object v0
.end method

###### Class com.google.android.gms.internal.play_billing.zzbk (com.google.android.gms.internal.play_billing.zzbk)
.class final Lcom/google/android/gms/internal/play_billing/zzbk;
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
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

###### Class com.google.android.gms.internal.play_billing.zzff (com.google.android.gms.internal.play_billing.zzff)
.class public abstract Lcom/google/android/gms/internal/play_billing/zzff;
.super Lcom/google/android/gms/internal/play_billing/zzfi;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzgm;


# instance fields
.field protected final zzb:Lcom/google/android/gms/internal/play_billing/zzez;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzfi;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzez;->zze()Lcom/google/android/gms/internal/play_billing/zzez;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:Lcom/google/android/gms/internal/play_billing/zzez;

    return-void
.end method

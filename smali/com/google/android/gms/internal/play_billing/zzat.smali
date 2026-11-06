###### Class com.google.android.gms.internal.play_billing.zzat (com.google.android.gms.internal.play_billing.zzat)
.class public abstract Lcom/google/android/gms/internal/play_billing/zzat;
.super Lcom/google/android/gms/internal/play_billing/zzaq;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzau;


# direct methods
.method public static zzc(Landroid/os/IBinder;)Lcom/google/android/gms/internal/play_billing/zzau;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    const-string v0, "com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/zzau;

    if-eqz v1, :cond_11

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzau;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzas;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzas;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

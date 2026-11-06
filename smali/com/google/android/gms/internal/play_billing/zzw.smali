###### Class com.google.android.gms.internal.play_billing.zzw (com.google.android.gms.internal.play_billing.zzw)
.class public abstract Lcom/google/android/gms/internal/play_billing/zzw;
.super Lcom/google/android/gms/internal/play_billing/zzaq;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzx;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "com.android.vending.billing.IInAppBillingCreateAlternativeBillingOnlyTokenCallback"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzaq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zzb(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p1, p3, :cond_12

    .line 1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzar;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzar;->zzb(Landroid/os/Parcel;)V

    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzx;->zza(Landroid/os/Bundle;)V

    return p3

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

###### Class com.google.android.gms.internal.play_billing.zzav (com.google.android.gms.internal.play_billing.zzav)
.class public abstract Lcom/google/android/gms/internal/play_billing/zzav;
.super Lcom/google/android/gms/internal/play_billing/zzaq;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzaw;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideServiceCallback"

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

    if-ne p1, p3, :cond_e

    .line 1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzar;->zzb(Landroid/os/Parcel;)V

    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzaw;->zza(I)V

    return p3

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

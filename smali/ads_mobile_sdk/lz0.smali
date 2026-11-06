###### Class ads_mobile_sdk.lz0 (ads_mobile_sdk.lz0)
.class public final Lads_mobile_sdk/lz0;
.super Lads_mobile_sdk/zr;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;I)V
    .registers 6

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lads_mobile_sdk/zr;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    .line 43
    iput p5, p0, Lads_mobile_sdk/lz0;->a:I

    return-void
.end method


# virtual methods
.method public final createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 4

    .line 2
    sget v0, Lads_mobile_sdk/q81;->$r8$clinit:I

    if-nez p1, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_6
    const-string v0, "com.google.android.gms.gass.internal.IGassService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lads_mobile_sdk/r81;

    if-eqz v1, :cond_13

    .line 5
    check-cast v0, Lads_mobile_sdk/r81;

    return-object v0

    .line 7
    :cond_13
    new-instance v0, Lads_mobile_sdk/p81;

    invoke-direct {v0, p1}, Lads_mobile_sdk/p81;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final getMinApkVersion()I
    .registers 2

    .line 63
    iget v0, p0, Lads_mobile_sdk/lz0;->a:I

    return v0
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "com.google.android.gms.gass.internal.IGassService"

    return-object v0
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "com.google.android.gms.gass.START"

    return-object v0
.end method

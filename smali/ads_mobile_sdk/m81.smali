###### Class ads_mobile_sdk.m81 (ads_mobile_sdk.m81)
.class public final Lads_mobile_sdk/m81;
.super Lads_mobile_sdk/fs;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/o81;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 69
    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    invoke-direct {p0, p1, v0}, Lads_mobile_sdk/fs;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/dl0;Lads_mobile_sdk/wt3;)V
    .registers 6

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lads_mobile_sdk/fs;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    sget v1, Lads_mobile_sdk/ly;->$r8$clinit:I

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Lads_mobile_sdk/dl0;->writeToParcel(Landroid/os/Parcel;I)V

    if-nez p2, :cond_1a

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_1d

    .line 9
    :cond_1a
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 10
    :goto_1d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    .line 12
    :try_start_21
    iget-object p2, p0, Lads_mobile_sdk/fs;->a:Landroid/os/IBinder;

    const/16 v2, 0x8

    invoke-interface {p2, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_32

    .line 15
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_32
    move-exception p2

    .line 17
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 19
    throw p2
.end method

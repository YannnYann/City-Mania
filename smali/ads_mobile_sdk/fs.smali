###### Class ads_mobile_sdk.fs (ads_mobile_sdk.fs)
.class public abstract Lads_mobile_sdk/fs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final a:Landroid/os/IBinder;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lads_mobile_sdk/fs;->a:Landroid/os/IBinder;

    .line 21
    iput-object p2, p0, Lads_mobile_sdk/fs;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;I)Landroid/os/Parcel;
    .registers 6

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3
    :try_start_4
    iget-object v1, p0, Lads_mobile_sdk/fs;->a:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p2, p1, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_11
    move-exception p2

    goto :goto_18

    :catch_13
    move-exception p2

    .line 10
    :try_start_14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11
    throw p2
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_11

    .line 13
    :goto_18
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 14
    throw p2
.end method

.method public final asBinder()Landroid/os/IBinder;
    .registers 2

    .line 26
    iget-object v0, p0, Lads_mobile_sdk/fs;->a:Landroid/os/IBinder;

    return-object v0
.end method

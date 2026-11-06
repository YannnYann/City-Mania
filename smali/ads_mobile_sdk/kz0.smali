###### Class ads_mobile_sdk.kz0 (ads_mobile_sdk.kz0)
.class public final Lads_mobile_sdk/kz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field public final a:Lads_mobile_sdk/lz0;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lads_mobile_sdk/yn;

.field public final e:I

.field public final f:Ljava/util/concurrent/LinkedBlockingQueue;

.field public final g:Landroid/os/HandlerThread;

.field public final h:Lads_mobile_sdk/x9;

.field public final i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/yn;Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/x9;)V
    .registers 12

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p3, p0, Lads_mobile_sdk/kz0;->b:Ljava/lang/String;

    const/4 p3, 0x1

    .line 4
    iput p3, p0, Lads_mobile_sdk/kz0;->e:I

    .line 5
    iput-object p2, p0, Lads_mobile_sdk/kz0;->d:Lads_mobile_sdk/yn;

    .line 6
    iput-object p4, p0, Lads_mobile_sdk/kz0;->c:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lads_mobile_sdk/kz0;->h:Lads_mobile_sdk/x9;

    .line 8
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "GassDGClient"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lads_mobile_sdk/kz0;->g:Landroid/os/HandlerThread;

    .line 9
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lads_mobile_sdk/kz0;->i:J

    .line 11
    new-instance v0, Lads_mobile_sdk/lz0;

    .line 12
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const v5, 0x12b6488

    move-object v4, p0

    move-object v3, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/lz0;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;I)V

    iput-object v0, v3, Lads_mobile_sdk/kz0;->a:Lads_mobile_sdk/lz0;

    .line 13
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, v3, Lads_mobile_sdk/kz0;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 14
    invoke-virtual {p0}, Lads_mobile_sdk/kz0;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 147
    iget-object v0, p0, Lads_mobile_sdk/kz0;->a:Lads_mobile_sdk/lz0;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    return-void
.end method

.method public final a(IJLjava/lang/Exception;)V
    .registers 8

    .line 357
    iget-object v0, p0, Lads_mobile_sdk/kz0;->h:Lads_mobile_sdk/x9;

    if-eqz v0, :cond_c

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    .line 359
    invoke-virtual {v0, p1, v1, v2, p4}, Lads_mobile_sdk/x9;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    :cond_c
    return-void
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .registers 9

    const/4 p1, 0x0

    .line 2
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/kz0;->a:Lads_mobile_sdk/lz0;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    .line 4
    check-cast v0, Lads_mobile_sdk/r81;
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_9} :catch_a
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    move-object v0, p1

    :goto_b
    if-eqz v0, :cond_b5

    .line 5
    :try_start_d
    new-instance v1, Lads_mobile_sdk/kv2;

    iget v3, p0, Lads_mobile_sdk/kz0;->e:I

    iget-object v2, p0, Lads_mobile_sdk/kz0;->d:Lads_mobile_sdk/yn;

    iget-object v5, p0, Lads_mobile_sdk/kz0;->b:Ljava/lang/String;

    iget-object v6, p0, Lads_mobile_sdk/kz0;->c:Ljava/lang/String;

    .line 6
    iget v4, v2, Lads_mobile_sdk/yn;->a:I

    const/4 v2, 0x1

    .line 7
    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/kv2;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 8
    check-cast v0, Lads_mobile_sdk/p81;

    .line 9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 10
    iget-object v3, v0, Lads_mobile_sdk/fs;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11
    sget v3, Lads_mobile_sdk/ly;->$r8$clinit:I

    const/4 v3, 0x1

    .line 12
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, v2, v3}, Lads_mobile_sdk/kv2;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v1, 0x3

    .line 14
    invoke-virtual {v0, v2, v1}, Lads_mobile_sdk/fs;->a(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v0

    .line 15
    sget-object v1, Lads_mobile_sdk/mv2;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_41

    move-object v1, p1

    goto :goto_47

    .line 19
    :cond_41
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 20
    :goto_47
    check-cast v1, Lads_mobile_sdk/mv2;

    .line 21
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 22
    iget-wide v2, p0, Lads_mobile_sdk/kz0;->i:J

    const/16 v0, 0x1393

    .line 23
    invoke-virtual {p0, v0, v2, v3, p1}, Lads_mobile_sdk/kz0;->a(IJLjava/lang/Exception;)V

    .line 24
    iget-object p1, p0, Lads_mobile_sdk/kz0;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_58
    .catchall {:try_start_d .. :try_end_58} :catchall_6b

    .line 25
    iget-object p1, p0, Lads_mobile_sdk/kz0;->a:Lads_mobile_sdk/lz0;

    if-eqz p1, :cond_90

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result p1

    if-nez p1, :cond_8b

    iget-object p1, p0, Lads_mobile_sdk/kz0;->a:Lads_mobile_sdk/lz0;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    move-result p1

    if-eqz p1, :cond_90

    goto :goto_8b

    :catchall_6b
    move-exception v0

    move-object p1, v0

    .line 28
    :try_start_6d
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 29
    iget-wide v1, p0, Lads_mobile_sdk/kz0;->i:J

    const/16 p1, 0x7da

    invoke-virtual {p0, p1, v1, v2, v0}, Lads_mobile_sdk/kz0;->a(IJLjava/lang/Exception;)V
    :try_end_79
    .catchall {:try_start_6d .. :try_end_79} :catchall_96

    .line 30
    iget-object p1, p0, Lads_mobile_sdk/kz0;->a:Lads_mobile_sdk/lz0;

    if-eqz p1, :cond_90

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result p1

    if-nez p1, :cond_8b

    iget-object p1, p0, Lads_mobile_sdk/kz0;->a:Lads_mobile_sdk/lz0;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    move-result p1

    if-eqz p1, :cond_90

    .line 26
    :cond_8b
    :goto_8b
    iget-object p1, p0, Lads_mobile_sdk/kz0;->a:Lads_mobile_sdk/lz0;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    .line 27
    :cond_90
    iget-object p1, p0, Lads_mobile_sdk/kz0;->g:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_b5

    :catchall_96
    move-exception v0

    move-object p1, v0

    .line 31
    iget-object v0, p0, Lads_mobile_sdk/kz0;->a:Lads_mobile_sdk/lz0;

    if-eqz v0, :cond_af

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_aa

    iget-object v0, p0, Lads_mobile_sdk/kz0;->a:Lads_mobile_sdk/lz0;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 32
    :cond_aa
    iget-object v0, p0, Lads_mobile_sdk/kz0;->a:Lads_mobile_sdk/lz0;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    .line 33
    :cond_af
    iget-object v0, p0, Lads_mobile_sdk/kz0;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 34
    throw p1

    :cond_b5
    :goto_b5
    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    .line 186
    :try_start_0
    iget-wide v0, p0, Lads_mobile_sdk/kz0;->i:J

    const/4 p1, 0x0

    const/16 v2, 0xfac

    .line 187
    invoke-virtual {p0, v2, v0, v1, p1}, Lads_mobile_sdk/kz0;->a(IJLjava/lang/Exception;)V

    .line 188
    iget-object v0, p0, Lads_mobile_sdk/kz0;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 189
    new-instance v1, Lads_mobile_sdk/mv2;

    const/4 v2, 0x1

    .line 190
    invoke-direct {v1, p1, v2, v2}, Lads_mobile_sdk/mv2;-><init>([BII)V

    .line 191
    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_13} :catch_13

    :catch_13
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .registers 5

    .line 154
    :try_start_0
    iget-wide v0, p0, Lads_mobile_sdk/kz0;->i:J

    const/4 p1, 0x0

    const/16 v2, 0xfab

    .line 155
    invoke-virtual {p0, v2, v0, v1, p1}, Lads_mobile_sdk/kz0;->a(IJLjava/lang/Exception;)V

    .line 156
    iget-object v0, p0, Lads_mobile_sdk/kz0;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 157
    new-instance v1, Lads_mobile_sdk/mv2;

    const/4 v2, 0x1

    .line 158
    invoke-direct {v1, p1, v2, v2}, Lads_mobile_sdk/mv2;-><init>([BII)V

    .line 159
    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_13} :catch_13

    :catch_13
    return-void
.end method

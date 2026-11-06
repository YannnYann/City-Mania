###### Class ads_mobile_sdk.fz0 (ads_mobile_sdk.fz0)
.class public final Lads_mobile_sdk/fz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field public final a:Lads_mobile_sdk/lz0;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/concurrent/LinkedBlockingQueue;

.field public final e:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lads_mobile_sdk/fz0;->b:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lads_mobile_sdk/fz0;->c:Ljava/lang/String;

    .line 82
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "GassClient"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lads_mobile_sdk/fz0;->e:Landroid/os/HandlerThread;

    .line 83
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 84
    new-instance v0, Lads_mobile_sdk/lz0;

    .line 85
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const v5, 0x8c6180

    move-object v4, p0

    move-object v3, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/lz0;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;I)V

    iput-object v0, v3, Lads_mobile_sdk/fz0;->a:Lads_mobile_sdk/lz0;

    .line 86
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, v3, Lads_mobile_sdk/fz0;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 87
    invoke-virtual {p0}, Lads_mobile_sdk/fz0;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 128
    iget-object v0, p0, Lads_mobile_sdk/fz0;->a:Lads_mobile_sdk/lz0;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    return-void
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .registers 7

    const/4 p1, 0x0

    .line 2
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/fz0;->a:Lads_mobile_sdk/lz0;

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
    if-eqz v0, :cond_ce

    .line 5
    :try_start_d
    new-instance v1, Lads_mobile_sdk/pz0;

    iget-object v2, p0, Lads_mobile_sdk/fz0;->b:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/fz0;->c:Ljava/lang/String;

    const/4 v4, 0x1

    .line 6
    invoke-direct {v1, v4, v2, v3}, Lads_mobile_sdk/pz0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    check-cast v0, Lads_mobile_sdk/p81;

    .line 8
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 9
    iget-object v3, v0, Lads_mobile_sdk/fs;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    sget v3, Lads_mobile_sdk/ly;->$r8$clinit:I

    .line 11
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    .line 12
    invoke-virtual {v1, v2, v3}, Lads_mobile_sdk/pz0;->writeToParcel(Landroid/os/Parcel;I)V

    .line 13
    invoke-virtual {v0, v2, v4}, Lads_mobile_sdk/fs;->a(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v0

    .line 14
    sget-object v1, Lads_mobile_sdk/rz0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_39

    move-object v1, p1

    goto :goto_3f

    .line 18
    :cond_39
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 19
    :goto_3f
    check-cast v1, Lads_mobile_sdk/rz0;

    .line 20
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 21
    iget-object v0, v1, Lads_mobile_sdk/rz0;->b:Lads_mobile_sdk/fh;
    :try_end_46
    .catchall {:try_start_d .. :try_end_46} :catchall_7d

    if-eqz v0, :cond_49

    goto :goto_57

    .line 22
    :cond_49
    :try_start_49
    iget-object v0, v1, Lads_mobile_sdk/rz0;->c:[B

    .line 23
    invoke-static {}, Lads_mobile_sdk/er0;->a()Lads_mobile_sdk/er0;

    move-result-object v2

    invoke-static {v0, v2}, Lads_mobile_sdk/fh;->a([BLads_mobile_sdk/er0;)Lads_mobile_sdk/fh;

    move-result-object v0

    iput-object v0, v1, Lads_mobile_sdk/rz0;->b:Lads_mobile_sdk/fh;

    .line 24
    iput-object p1, v1, Lads_mobile_sdk/rz0;->c:[B
    :try_end_57
    .catch Lads_mobile_sdk/np1; {:try_start_49 .. :try_end_57} :catch_76
    .catch Ljava/lang/NullPointerException; {:try_start_49 .. :try_end_57} :catch_74
    .catchall {:try_start_49 .. :try_end_57} :catchall_7d

    .line 29
    :goto_57
    :try_start_57
    invoke-virtual {v1}, Lads_mobile_sdk/rz0;->a()V

    .line 30
    iget-object p1, v1, Lads_mobile_sdk/rz0;->b:Lads_mobile_sdk/fh;

    .line 31
    iget-object v0, p0, Lads_mobile_sdk/fz0;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_7d

    .line 32
    iget-object p1, p0, Lads_mobile_sdk/fz0;->a:Lads_mobile_sdk/lz0;

    if-eqz p1, :cond_c9

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result p1

    if-nez p1, :cond_c4

    iget-object p1, p0, Lads_mobile_sdk/fz0;->a:Lads_mobile_sdk/lz0;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    move-result p1

    if-eqz p1, :cond_c9

    goto :goto_c4

    :catch_74
    move-exception p1

    goto :goto_77

    :catch_76
    move-exception p1

    .line 35
    :goto_77
    :try_start_77
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_7d

    .line 36
    :catchall_7d
    :try_start_7d
    iget-object p1, p0, Lads_mobile_sdk/fz0;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 37
    invoke-static {}, Lads_mobile_sdk/fh;->D()Lads_mobile_sdk/xf;

    move-result-object v0

    const-wide/32 v1, 0x8000

    .line 38
    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/xf;->t(J)Lads_mobile_sdk/xf;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/fh;

    .line 40
    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_93
    .catch Ljava/lang/InterruptedException; {:try_start_7d .. :try_end_93} :catch_b2
    .catchall {:try_start_7d .. :try_end_93} :catchall_94

    goto :goto_b2

    :catchall_94
    move-exception p1

    .line 41
    iget-object v0, p0, Lads_mobile_sdk/fz0;->a:Lads_mobile_sdk/lz0;

    if-eqz v0, :cond_ac

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_a7

    iget-object v0, p0, Lads_mobile_sdk/fz0;->a:Lads_mobile_sdk/lz0;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 42
    :cond_a7
    iget-object v0, p0, Lads_mobile_sdk/fz0;->a:Lads_mobile_sdk/lz0;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    .line 43
    :cond_ac
    iget-object v0, p0, Lads_mobile_sdk/fz0;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 44
    throw p1

    .line 45
    :catch_b2
    :goto_b2
    iget-object p1, p0, Lads_mobile_sdk/fz0;->a:Lads_mobile_sdk/lz0;

    if-eqz p1, :cond_c9

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result p1

    if-nez p1, :cond_c4

    iget-object p1, p0, Lads_mobile_sdk/fz0;->a:Lads_mobile_sdk/lz0;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    move-result p1

    if-eqz p1, :cond_c9

    .line 33
    :cond_c4
    :goto_c4
    iget-object p1, p0, Lads_mobile_sdk/fz0;->a:Lads_mobile_sdk/lz0;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    .line 34
    :cond_c9
    iget-object p1, p0, Lads_mobile_sdk/fz0;->e:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    :cond_ce
    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    .line 174
    :try_start_0
    iget-object p1, p0, Lads_mobile_sdk/fz0;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 175
    invoke-static {}, Lads_mobile_sdk/fh;->D()Lads_mobile_sdk/xf;

    move-result-object v0

    const-wide/32 v1, 0x8000

    .line 176
    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/xf;->t(J)Lads_mobile_sdk/xf;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/fh;

    .line 178
    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_16} :catch_16

    :catch_16
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .registers 5

    .line 135
    :try_start_0
    iget-object p1, p0, Lads_mobile_sdk/fz0;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 136
    invoke-static {}, Lads_mobile_sdk/fh;->D()Lads_mobile_sdk/xf;

    move-result-object v0

    const-wide/32 v1, 0x8000

    .line 137
    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/xf;->t(J)Lads_mobile_sdk/xf;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/fh;

    .line 139
    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_16} :catch_16

    :catch_16
    return-void
.end method

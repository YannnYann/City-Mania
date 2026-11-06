###### Class ads_mobile_sdk.gu2 (ads_mobile_sdk.gu2)
.class public final Lads_mobile_sdk/gu2;
.super Lads_mobile_sdk/x93;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lads_mobile_sdk/mq2;

.field public final synthetic c:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic d:Lads_mobile_sdk/iu2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/iu2;Lcom/google/android/gms/tasks/TaskCompletionSource;Lads_mobile_sdk/mq2;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 5

    .line 70
    iput-object p1, p0, Lads_mobile_sdk/gu2;->d:Lads_mobile_sdk/iu2;

    iput-object p3, p0, Lads_mobile_sdk/gu2;->b:Lads_mobile_sdk/mq2;

    iput-object p4, p0, Lads_mobile_sdk/gu2;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0, p2}, Lads_mobile_sdk/x93;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 8

    .line 74
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/gu2;->d:Lads_mobile_sdk/iu2;

    iget-object v1, v0, Lads_mobile_sdk/iu2;->a:Lads_mobile_sdk/lc3;

    .line 75
    iget-object v1, v1, Lads_mobile_sdk/lc3;->n:Landroid/os/IInterface;

    .line 76
    check-cast v1, Lads_mobile_sdk/x81;

    iget-object v0, v0, Lads_mobile_sdk/iu2;->b:Ljava/lang/String;

    iget-object v2, p0, Lads_mobile_sdk/gu2;->b:Lads_mobile_sdk/mq2;

    .line 79
    invoke-static {v2}, Lads_mobile_sdk/iu2;->a(Lads_mobile_sdk/mq2;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Lads_mobile_sdk/hu2;

    iget-object v5, p0, Lads_mobile_sdk/gu2;->d:Lads_mobile_sdk/iu2;

    invoke-direct {v4, v5}, Lads_mobile_sdk/hu2;-><init>(Lads_mobile_sdk/iu2;)V

    .line 80
    check-cast v1, Lads_mobile_sdk/v81;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 82
    iget-object v6, v1, Lads_mobile_sdk/fs;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v5, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 85
    sget v0, Lads_mobile_sdk/ly;->$r8$clinit:I

    const/4 v0, 0x1

    .line 86
    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    .line 87
    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 88
    invoke-virtual {v5, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3d} :catch_47

    .line 89
    :try_start_3d
    iget-object v1, v1, Lads_mobile_sdk/fs;->a:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v5, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_49

    .line 91
    :try_start_43
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    return-void

    :catch_47
    move-exception v0

    goto :goto_4e

    :catchall_49
    move-exception v0

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 92
    throw v0
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4e} :catch_47

    .line 93
    :goto_4e
    sget-object v1, Lads_mobile_sdk/iu2;->c:Lads_mobile_sdk/pt1;

    iget-object v2, p0, Lads_mobile_sdk/gu2;->d:Lads_mobile_sdk/iu2;

    iget-object v2, v2, Lads_mobile_sdk/iu2;->b:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x6

    .line 94
    const-string v4, "PlayCore"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 95
    iget-object v1, v1, Lads_mobile_sdk/pt1;->a:Ljava/lang/String;

    const-string v3, "prewarm(%s)"

    invoke-static {v1, v3, v2}, Lads_mobile_sdk/pt1;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    :cond_6f
    iget-object v1, p0, Lads_mobile_sdk/gu2;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method

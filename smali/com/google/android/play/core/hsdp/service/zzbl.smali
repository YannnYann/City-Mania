###### Class com.google.android.play.core.hsdp.service.zzbl (com.google.android.play.core.hsdp.service.zzbl)
.class public final Lcom/google/android/play/core/hsdp/service/zzbl;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzbn;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzbn;Lcom/google/android/play/core/hsdp/service/zzbm;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbl;->zza:Lcom/google/android/play/core/hsdp/service/zzbn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    const/4 v0, 0x4

    .line 1
    const-string v1, "ServiceConnMgrImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iget-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbl;->zza:Lcom/google/android/play/core/hsdp/service/zzbn;

    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzbj;

    invoke-direct {v0, p0, p2}, Lcom/google/android/play/core/hsdp/service/zzbj;-><init>(Lcom/google/android/play/core/hsdp/service/zzbl;Landroid/os/IBinder;)V

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzr(Lcom/google/android/play/core/hsdp/service/zzbn;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const/4 v0, 0x4

    .line 1
    const-string v1, "ServiceConnMgrImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iget-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbl;->zza:Lcom/google/android/play/core/hsdp/service/zzbn;

    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzbk;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/hsdp/service/zzbk;-><init>(Lcom/google/android/play/core/hsdp/service/zzbl;)V

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzr(Lcom/google/android/play/core/hsdp/service/zzbn;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.google.android.play.core.hsdp.service.zzbj (com.google.android.play.core.hsdp.service.zzbj)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzbj;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzbl;

.field public final synthetic zzb:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzbl;Landroid/os/IBinder;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbj;->zza:Lcom/google/android/play/core/hsdp/service/zzbl;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzbj;->zzb:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbj;->zza:Lcom/google/android/play/core/hsdp/service/zzbl;

    iget-object v1, v0, Lcom/google/android/play/core/hsdp/service/zzbl;->zza:Lcom/google/android/play/core/hsdp/service/zzbn;

    invoke-static {v1}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzh(Lcom/google/android/play/core/hsdp/service/zzbn;)Lcom/google/android/play/core/hsdp/service/zzba;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzbj;->zzb:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Lcom/google/android/play/core/hsdp/service/zzba;->zza(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    invoke-static {v1, v2}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzo(Lcom/google/android/play/core/hsdp/service/zzbn;Landroid/os/IInterface;)V

    const-string v2, "ServiceConnMgrImpl"

    const-string v3, "notifyOnConnected"

    .line 2
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {v1}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzp(Lcom/google/android/play/core/hsdp/service/zzbn;)V

    const-string v2, "ServiceConnMgrImpl"

    const/4 v3, 0x4

    .line 4
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "ServiceConnMgrImpl"

    const-string v3, "linkToDeath"

    .line 5
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const/4 v2, 0x0

    :try_start_2e
    invoke-static {v1}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzg(Lcom/google/android/play/core/hsdp/service/zzbn;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 6
    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzf(Lcom/google/android/play/core/hsdp/service/zzbn;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    goto :goto_4b

    :catch_40
    move-exception v1

    goto :goto_44

    :cond_42
    const/4 v1, 0x0

    .line 7
    throw v1
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_44} :catch_40

    .line 13
    :goto_44
    const-string v3, "ServiceConnMgrImpl"

    const-string v4, "linkToDeath failed"

    .line 8
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :goto_4b
    iget-object v0, v0, Lcom/google/android/play/core/hsdp/service/zzbl;->zza:Lcom/google/android/play/core/hsdp/service/zzbn;

    .line 9
    invoke-static {v0, v2}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzn(Lcom/google/android/play/core/hsdp/service/zzbn;Z)V

    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzi(Lcom/google/android/play/core/hsdp/service/zzbn;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_55
    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzi(Lcom/google/android/play/core/hsdp/service/zzbn;)Ljava/util/List;

    move-result-object v2

    .line 10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 11
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_5d

    :catchall_6d
    move-exception v0

    goto :goto_78

    :cond_6f
    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzi(Lcom/google/android/play/core/hsdp/service/zzbn;)Ljava/util/List;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    monitor-exit v1

    return-void

    :goto_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_55 .. :try_end_79} :catchall_6d

    throw v0
.end method

###### Class com.google.android.play.core.hsdp.service.zzbk (com.google.android.play.core.hsdp.service.zzbk)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzbk;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzbl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzbl;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbk;->zza:Lcom/google/android/play/core/hsdp/service/zzbl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbk;->zza:Lcom/google/android/play/core/hsdp/service/zzbl;

    iget-object v0, v0, Lcom/google/android/play/core/hsdp/service/zzbl;->zza:Lcom/google/android/play/core/hsdp/service/zzbn;

    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzg(Lcom/google/android/play/core/hsdp/service/zzbn;)Landroid/os/IInterface;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    const/4 v1, 0x4

    const-string v3, "ServiceConnMgrImpl"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "unlinkToDeath"

    .line 2
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzg(Lcom/google/android/play/core/hsdp/service/zzbn;)Landroid/os/IInterface;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzf(Lcom/google/android/play/core/hsdp/service/zzbn;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzo(Lcom/google/android/play/core/hsdp/service/zzbn;Landroid/os/IInterface;)V

    const-string v1, "notifyOnDisconnected in onServiceDisconnected()"

    .line 5
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzq(Lcom/google/android/play/core/hsdp/service/zzbn;)V

    .line 8
    :cond_37
    invoke-static {v0, v2}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzn(Lcom/google/android/play/core/hsdp/service/zzbn;Z)V

    return-void
.end method

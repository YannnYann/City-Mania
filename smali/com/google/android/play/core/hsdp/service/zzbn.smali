###### Class com.google.android.play.core.hsdp.service.zzbn (com.google.android.play.core.hsdp.service.zzbn)
.class public final Lcom/google/android/play/core/hsdp/service/zzbn;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Lcom/google/android/play/core/hsdp/service/zzbc;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

.field public final zzb:Landroid/content/Context;

.field public final zzc:Ljava/lang/String;

.field public final zzd:Ljava/util/List;

.field public final zze:Ljava/util/List;

.field public zzf:Z

.field public final zzg:Landroid/content/Intent;

.field public final zzh:Lcom/google/android/play/core/hsdp/service/zzba;

.field public final zzi:Landroid/os/IBinder$DeathRecipient;

.field public zzj:Landroid/content/ServiceConnection;

.field public zzk:Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/core/hsdp/service/zzba;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzd:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zze:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzg:Landroid/content/Intent;

    iput-object p4, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzh:Lcom/google/android/play/core/hsdp/service/zzba;

    new-instance p1, Lcom/google/android/play/core/hsdp/service/zzbh;

    invoke-direct {p1, p2}, Lcom/google/android/play/core/hsdp/service/zzbh;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/playcore_hsdp/zzj;->zza(Lcom/google/android/gms/internal/playcore_hsdp/zzg;)Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zza:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    new-instance p1, Lcom/google/android/play/core/hsdp/service/zzbi;

    invoke-direct {p1, p0}, Lcom/google/android/play/core/hsdp/service/zzbi;-><init>(Lcom/google/android/play/core/hsdp/service/zzbn;)V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzi:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public static bridge synthetic zzf(Lcom/google/android/play/core/hsdp/service/zzbn;)Landroid/os/IBinder$DeathRecipient;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzi:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/play/core/hsdp/service/zzbn;)Landroid/os/IInterface;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzk:Landroid/os/IInterface;

    return-object p0
.end method

.method public static bridge synthetic zzh(Lcom/google/android/play/core/hsdp/service/zzbn;)Lcom/google/android/play/core/hsdp/service/zzba;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzh:Lcom/google/android/play/core/hsdp/service/zzba;

    return-object p0
.end method

.method public static bridge synthetic zzi(Lcom/google/android/play/core/hsdp/service/zzbn;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzd:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic zzj(Lcom/google/android/play/core/hsdp/service/zzbn;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzk:Landroid/os/IInterface;

    if-eqz v0, :cond_3b

    const-string v0, "ServiceConnMgrImpl"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "ServiceConnMgrImpl"

    const-string v1, "Unbind from service."

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzb:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzj:Landroid/content/ServiceConnection;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzf:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzk:Landroid/os/IInterface;

    iput-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzj:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzd:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_29
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_38

    const-string v0, "ServiceConnMgrImpl"

    const-string v1, "notifyOnDisconnected in unbind()"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzs()V

    return-void

    :catchall_38
    move-exception p0

    .line 5
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p0

    :cond_3b
    return-void
.end method

.method public static synthetic zzk(Lcom/google/android/play/core/hsdp/service/zzbn;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzk:Landroid/os/IInterface;

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzk:Landroid/os/IInterface;

    const-string v0, "ServiceConnMgrImpl"

    const-string v1, "notifyOnDisconnected in reportBinderDeath()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzs()V

    :cond_11
    return-void
.end method

.method public static synthetic zzl(Lcom/google/android/play/core/hsdp/service/zzbn;)V
    .registers 4

    .line 1
    const-string v0, "ServiceConnMgrImpl"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzc:Ljava/lang/String;

    const-string v1, "Binder has died: "

    const-string v2, "ServiceConnMgrImpl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzd:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_19
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_26

    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzbe;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/hsdp/service/zzbe;-><init>(Lcom/google/android/play/core/hsdp/service/zzbn;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzt(Ljava/lang/Runnable;)V

    return-void

    :catchall_26
    move-exception p0

    .line 4
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public static synthetic zzm(Lcom/google/android/play/core/hsdp/service/zzbn;Ljava/lang/Runnable;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzk:Landroid/os/IInterface;

    const/4 v1, 0x4

    if-nez v0, :cond_57

    iget-boolean v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzf:Z

    if-nez v0, :cond_57

    const-string v0, "ServiceConnMgrImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "ServiceConnMgrImpl"

    const-string v2, "Initiate binding to the service."

    .line 2
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzd:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_1b
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_54

    new-instance p1, Lcom/google/android/play/core/hsdp/service/zzbl;

    const/4 v0, 0x0

    .line 5
    invoke-direct {p1, p0, v0}, Lcom/google/android/play/core/hsdp/service/zzbl;-><init>(Lcom/google/android/play/core/hsdp/service/zzbn;Lcom/google/android/play/core/hsdp/service/zzbm;)V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzj:Landroid/content/ServiceConnection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzf:Z

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzb:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzg:Landroid/content/Intent;

    const/16 v3, 0x41

    .line 6
    invoke-virtual {v0, v2, p1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_53

    const-string p1, "ServiceConnMgrImpl"

    .line 7
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_45

    const-string p1, "ServiceConnMgrImpl"

    const-string v0, "Failed to bind to the service."

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzf:Z

    iget-object p0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzd:Ljava/util/List;

    monitor-enter p0

    .line 9
    :try_start_4b
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 10
    monitor-exit p0

    return-void

    :catchall_50
    move-exception p1

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_50

    throw p1

    :cond_53
    return-void

    :catchall_54
    move-exception p0

    .line 4
    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p0

    .line 10
    :cond_57
    iget-boolean v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzf:Z

    if-eqz v0, :cond_75

    const-string v0, "ServiceConnMgrImpl"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6a

    const-string v0, "ServiceConnMgrImpl"

    const-string v1, "Waiting to bind to the service."

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    iget-object p0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzd:Ljava/util/List;

    monitor-enter p0

    .line 13
    :try_start_6d
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    monitor-exit p0

    return-void

    :catchall_72
    move-exception p1

    monitor-exit p0
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_72

    throw p1

    .line 15
    :cond_75
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static bridge synthetic zzn(Lcom/google/android/play/core/hsdp/service/zzbn;Z)V
    .registers 2

    .line 0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzf:Z

    return-void
.end method

.method public static bridge synthetic zzo(Lcom/google/android/play/core/hsdp/service/zzbn;Landroid/os/IInterface;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzk:Landroid/os/IInterface;

    return-void
.end method

.method public static bridge synthetic zzp(Lcom/google/android/play/core/hsdp/service/zzbn;)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zze:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/hsdp/service/zzbb;

    .line 2
    invoke-interface {v0}, Lcom/google/android/play/core/hsdp/service/zzbb;->zzq()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static bridge synthetic zzq(Lcom/google/android/play/core/hsdp/service/zzbn;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzs()V

    return-void
.end method

.method public static bridge synthetic zzr(Lcom/google/android/play/core/hsdp/service/zzbn;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzt(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final zza()Landroid/os/Handler;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zza:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/playcore_hsdp/zzg;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public final zzb()Landroid/os/IInterface;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzk:Landroid/os/IInterface;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/play/core/hsdp/service/zzbb;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zze:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzd(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzbf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/hsdp/service/zzbf;-><init>(Lcom/google/android/play/core/hsdp/service/zzbn;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzt(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zze()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzbd;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/hsdp/service/zzbd;-><init>(Lcom/google/android/play/core/hsdp/service/zzbn;)V

    invoke-virtual {p0, v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzt(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzs()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zze:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/hsdp/service/zzbb;

    .line 2
    invoke-interface {v1}, Lcom/google/android/play/core/hsdp/service/zzbb;->zzr()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final zzt(Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zza()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/hsdp/service/zzbg;

    invoke-direct {v1, p1}, Lcom/google/android/play/core/hsdp/service/zzbg;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.google.android.play.core.hsdp.service.zzbd (com.google.android.play.core.hsdp.service.zzbd)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzbd;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzbn;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzbn;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbd;->zza:Lcom/google/android/play/core/hsdp/service/zzbn;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbd;->zza:Lcom/google/android/play/core/hsdp/service/zzbn;

    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzj(Lcom/google/android/play/core/hsdp/service/zzbn;)V

    return-void
.end method

###### Class com.google.android.play.core.hsdp.service.zzbe (com.google.android.play.core.hsdp.service.zzbe)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzbe;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzbn;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzbn;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbe;->zza:Lcom/google/android/play/core/hsdp/service/zzbn;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbe;->zza:Lcom/google/android/play/core/hsdp/service/zzbn;

    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzk(Lcom/google/android/play/core/hsdp/service/zzbn;)V

    return-void
.end method

###### Class com.google.android.play.core.hsdp.service.zzbf (com.google.android.play.core.hsdp.service.zzbf)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzbf;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzbn;

.field public final synthetic zzb:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzbn;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbf;->zza:Lcom/google/android/play/core/hsdp/service/zzbn;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzbf;->zzb:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbf;->zza:Lcom/google/android/play/core/hsdp/service/zzbn;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzbf;->zzb:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzm(Lcom/google/android/play/core/hsdp/service/zzbn;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.google.android.play.core.hsdp.service.zzbg (com.google.android.play.core.hsdp.service.zzbg)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzbg;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbg;->zza:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbg;->zza:Ljava/lang/Runnable;

    :try_start_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, "ServiceConnMgrImpl"

    const-string v2, "error caused by "

    .line 2
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

###### Class com.google.android.play.core.hsdp.service.zzbh (com.google.android.play.core.hsdp.service.zzbh)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzbh;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/playcore_hsdp/zzg;


# instance fields
.field public final synthetic zza:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbh;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzbh;->zza:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method

###### Class com.google.android.play.core.hsdp.service.zzbi (com.google.android.play.core.hsdp.service.zzbi)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzbi;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzbn;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzbn;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbi;->zza:Lcom/google/android/play/core/hsdp/service/zzbn;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbi;->zza:Lcom/google/android/play/core/hsdp/service/zzbn;

    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzl(Lcom/google/android/play/core/hsdp/service/zzbn;)V

    return-void
.end method

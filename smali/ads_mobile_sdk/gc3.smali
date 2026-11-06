###### Class ads_mobile_sdk.gc3 (ads_mobile_sdk.gc3)
.class public final Lads_mobile_sdk/gc3;
.super Lads_mobile_sdk/x93;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lads_mobile_sdk/lc3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/lc3;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lads_mobile_sdk/gc3;->b:Lads_mobile_sdk/lc3;

    invoke-direct {p0}, Lads_mobile_sdk/x93;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 8

    .line 161
    iget-object v0, p0, Lads_mobile_sdk/gc3;->b:Lads_mobile_sdk/lc3;

    iget-object v0, v0, Lads_mobile_sdk/lc3;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_5
    iget-object v1, p0, Lads_mobile_sdk/gc3;->b:Lads_mobile_sdk/lc3;

    iget-object v1, v1, Lads_mobile_sdk/lc3;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_29

    iget-object v1, p0, Lads_mobile_sdk/gc3;->b:Lads_mobile_sdk/lc3;

    iget-object v1, v1, Lads_mobile_sdk/lc3;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-lez v1, :cond_29

    .line 165
    iget-object v1, p0, Lads_mobile_sdk/gc3;->b:Lads_mobile_sdk/lc3;

    iget-object v1, v1, Lads_mobile_sdk/lc3;->b:Lads_mobile_sdk/pt1;

    const-string v3, "Leaving the connection open for other ongoing calls."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Lads_mobile_sdk/pt1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    monitor-exit v0

    return-void

    :catchall_27
    move-exception v1

    goto :goto_81

    .line 168
    :cond_29
    iget-object v1, p0, Lads_mobile_sdk/gc3;->b:Lads_mobile_sdk/lc3;

    iget-object v3, v1, Lads_mobile_sdk/lc3;->n:Landroid/os/IInterface;

    if-eqz v3, :cond_4a

    .line 169
    iget-object v1, v1, Lads_mobile_sdk/lc3;->b:Lads_mobile_sdk/pt1;

    const-string v3, "Unbind from service."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lads_mobile_sdk/pt1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v1, p0, Lads_mobile_sdk/gc3;->b:Lads_mobile_sdk/lc3;

    iget-object v3, v1, Lads_mobile_sdk/lc3;->a:Landroid/content/Context;

    iget-object v1, v1, Lads_mobile_sdk/lc3;->m:Lads_mobile_sdk/kc3;

    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 171
    iget-object v1, p0, Lads_mobile_sdk/gc3;->b:Lads_mobile_sdk/lc3;

    iput-boolean v2, v1, Lads_mobile_sdk/lc3;->g:Z

    const/4 v2, 0x0

    .line 174
    iput-object v2, v1, Lads_mobile_sdk/lc3;->n:Landroid/os/IInterface;

    .line 175
    iput-object v2, v1, Lads_mobile_sdk/lc3;->m:Lads_mobile_sdk/kc3;

    .line 177
    :cond_4a
    iget-object v1, p0, Lads_mobile_sdk/gc3;->b:Lads_mobile_sdk/lc3;

    .line 178
    iget-object v2, v1, Lads_mobile_sdk/lc3;->e:Ljava/util/HashSet;

    .line 179
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 180
    new-instance v4, Landroid/os/RemoteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lads_mobile_sdk/lc3;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : Binder has died."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    goto :goto_52

    .line 183
    :cond_7a
    iget-object v1, v1, Lads_mobile_sdk/lc3;->e:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 184
    monitor-exit v0

    return-void

    .line 185
    :goto_81
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_5 .. :try_end_82} :catchall_27

    throw v1
.end method

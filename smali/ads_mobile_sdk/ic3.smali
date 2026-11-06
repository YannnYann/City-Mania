###### Class ads_mobile_sdk.ic3 (ads_mobile_sdk.ic3)
.class public final Lads_mobile_sdk/ic3;
.super Lads_mobile_sdk/x93;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/os/IBinder;

.field public final synthetic c:Lads_mobile_sdk/kc3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/kc3;Landroid/os/IBinder;)V
    .registers 3

    .line 236
    iput-object p1, p0, Lads_mobile_sdk/ic3;->c:Lads_mobile_sdk/kc3;

    iput-object p2, p0, Lads_mobile_sdk/ic3;->b:Landroid/os/IBinder;

    invoke-direct {p0}, Lads_mobile_sdk/x93;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    .line 239
    iget-object v0, p0, Lads_mobile_sdk/ic3;->c:Lads_mobile_sdk/kc3;

    iget-object v0, v0, Lads_mobile_sdk/kc3;->a:Lads_mobile_sdk/lc3;

    iget-object v1, v0, Lads_mobile_sdk/lc3;->i:Lads_mobile_sdk/hc3;

    iget-object v2, p0, Lads_mobile_sdk/ic3;->b:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lads_mobile_sdk/hc3;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    iput-object v1, v0, Lads_mobile_sdk/lc3;->n:Landroid/os/IInterface;

    .line 240
    iget-object v0, p0, Lads_mobile_sdk/ic3;->c:Lads_mobile_sdk/kc3;

    iget-object v0, v0, Lads_mobile_sdk/kc3;->a:Lads_mobile_sdk/lc3;

    .line 241
    iget-object v1, v0, Lads_mobile_sdk/lc3;->b:Lads_mobile_sdk/pt1;

    const/4 v2, 0x0

    .line 242
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "linkToDeath"

    invoke-virtual {v1, v4, v3}, Lads_mobile_sdk/pt1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    :try_start_1e
    iget-object v1, v0, Lads_mobile_sdk/lc3;->n:Landroid/os/IInterface;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, v0, Lads_mobile_sdk/lc3;->k:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_29} :catch_2a

    goto :goto_46

    :catch_2a
    move-exception v1

    .line 246
    iget-object v0, v0, Lads_mobile_sdk/lc3;->b:Lads_mobile_sdk/pt1;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    .line 247
    const-string v5, "PlayCore"

    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 248
    iget-object v0, v0, Lads_mobile_sdk/pt1;->a:Ljava/lang/String;

    const-string v4, "linkToDeath failed"

    invoke-static {v0, v4, v3}, Lads_mobile_sdk/pt1;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    :cond_46
    :goto_46
    iget-object v0, p0, Lads_mobile_sdk/ic3;->c:Lads_mobile_sdk/kc3;

    iget-object v0, v0, Lads_mobile_sdk/kc3;->a:Lads_mobile_sdk/lc3;

    iput-boolean v2, v0, Lads_mobile_sdk/lc3;->g:Z

    .line 250
    iget-object v0, v0, Lads_mobile_sdk/lc3;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 251
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_52

    .line 253
    :cond_62
    iget-object v0, p0, Lads_mobile_sdk/ic3;->c:Lads_mobile_sdk/kc3;

    iget-object v0, v0, Lads_mobile_sdk/kc3;->a:Lads_mobile_sdk/lc3;

    iget-object v0, v0, Lads_mobile_sdk/lc3;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

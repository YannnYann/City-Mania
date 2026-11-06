###### Class com.ironsource.adqualitysdk.sdk.i.C0514 (com.ironsource.adqualitysdk.sdk.i.ᒹ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ᔬ;

.field public final ｋ:Landroid/os/Handler;

.field public final ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Ꮠ;

.field public ﾒ:Z


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/Ꮠ;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;->ﾒ:Z

    .line 9
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Ꮠ;

    .line 10
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;->ｋ:Landroid/os/Handler;

    .line 11
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/ᔬ;

    invoke-direct {p1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᔬ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;)V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ᔬ;

    .line 47
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ᔬ;

    monitor-enter p1

    .line 48
    :try_start_21
    iget-object v1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾇ:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_28

    monitor-exit p1

    return-void

    :catchall_28
    move-exception v0

    .line 49
    monitor-exit p1

    throw v0
.end method


# virtual methods
.method public final ﾒ()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;->ｋ:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ᔬ;

    if-eqz v0, :cond_1d

    .line 3
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ᔬ;

    monitor-enter v0

    .line 4
    :try_start_11
    iget-object v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾇ:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1a

    monitor-exit v0

    .line 5
    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ᔬ;

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1d
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.WifiLockManager (io.bidmachine.media3.exoplayer.WifiLockManager)
.class public final Lio/bidmachine/media3/exoplayer/WifiLockManager;
.super Ljava/lang/Object;
.source "WifiLockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/WifiLockManager$WifiLockManagerInternal;
    }
.end annotation


# instance fields
.field public enabled:Z

.field public stayAwake:Z

.field public final wifiLockHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

.field public final wifiLockManagerInternal:Lio/bidmachine/media3/exoplayer/WifiLockManager$WifiLockManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$IhNMaddnl4qbxMhpDT5t2dY6BdI(Lio/bidmachine/media3/exoplayer/WifiLockManager;Z)V
    .registers 3

    .line 91
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager;->wifiLockManagerInternal:Lio/bidmachine/media3/exoplayer/WifiLockManager$WifiLockManagerInternal;

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/exoplayer/WifiLockManager$WifiLockManagerInternal;->updateWifiLock(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$gFDSnuMJSA3YolkJA2WlD8yqWFM(Lio/bidmachine/media3/exoplayer/WifiLockManager;ZZ)V
    .registers 3

    .line 72
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager;->wifiLockManagerInternal:Lio/bidmachine/media3/exoplayer/WifiLockManager$WifiLockManagerInternal;

    .line 72
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/WifiLockManager$WifiLockManagerInternal;->updateWifiLock(ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;)V
    .registers 5

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lio/bidmachine/media3/exoplayer/WifiLockManager$WifiLockManagerInternal;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/WifiLockManager$WifiLockManagerInternal;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager;->wifiLockManagerInternal:Lio/bidmachine/media3/exoplayer/WifiLockManager$WifiLockManagerInternal;

    const/4 p1, 0x0

    .line 53
    invoke-interface {p3, p2, p1}, Lio/bidmachine/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager;->wifiLockHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .registers 5

    .line 67
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager;->enabled:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 70
    :cond_5
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager;->enabled:Z

    .line 71
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager;->stayAwake:Z

    .line 72
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager;->wifiLockHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    new-instance v2, Lio/bidmachine/media3/exoplayer/WifiLockManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lio/bidmachine/media3/exoplayer/WifiLockManager$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/WifiLockManager;ZZ)V

    invoke-interface {v1, v2}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setStayAwake(Z)V
    .registers 4

    .line 85
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager;->stayAwake:Z

    if-ne v0, p1, :cond_5

    goto :goto_15

    .line 88
    :cond_5
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager;->stayAwake:Z

    .line 89
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager;->enabled:Z

    if-eqz v0, :cond_15

    .line 90
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager;->wifiLockHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    new-instance v1, Lio/bidmachine/media3/exoplayer/WifiLockManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/WifiLockManager$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/exoplayer/WifiLockManager;Z)V

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_15
    :goto_15
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.WifiLockManager.WifiLockManagerInternal (io.bidmachine.media3.exoplayer.WifiLockManager$WifiLockManagerInternal)
.class public final Lio/bidmachine/media3/exoplayer/WifiLockManager$WifiLockManagerInternal;
.super Ljava/lang/Object;
.source "WifiLockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/WifiLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiLockManagerInternal"
.end annotation


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager$WifiLockManagerInternal;->applicationContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public updateWifiLock(ZZ)V
    .registers 6

    if-eqz p1, :cond_2b

    .line 107
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager$WifiLockManagerInternal;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_2b

    .line 108
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager$WifiLockManagerInternal;->applicationContext:Landroid/content/Context;

    .line 110
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1e

    .line 112
    const-string p1, "WifiLockManager"

    const-string p2, "WifiManager is null, therefore not creating the WifiLock."

    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    const/4 v1, 0x3

    .line 115
    const-string v2, "ExoPlayer:WifiLockManager"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager$WifiLockManagerInternal;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 119
    :cond_2b
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager$WifiLockManagerInternal;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_30

    return-void

    :cond_30
    if-eqz p1, :cond_38

    if-eqz p2, :cond_38

    .line 124
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    return-void

    .line 126
    :cond_38
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.WifiLockManager$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.WifiLockManager$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/WifiLockManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/WifiLockManager;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/WifiLockManager;ZZ)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/WifiLockManager;

    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager$$ExternalSyntheticLambda0;->f$1:Z

    iput-boolean p3, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/WifiLockManager;

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager$$ExternalSyntheticLambda0;->f$1:Z

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager$$ExternalSyntheticLambda0;->f$2:Z

    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/WifiLockManager;->$r8$lambda$gFDSnuMJSA3YolkJA2WlD8yqWFM(Lio/bidmachine/media3/exoplayer/WifiLockManager;ZZ)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.WifiLockManager$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.WifiLockManager$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/WifiLockManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/WifiLockManager;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/WifiLockManager;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/WifiLockManager;

    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/WifiLockManager;

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/WifiLockManager$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/WifiLockManager;->$r8$lambda$IhNMaddnl4qbxMhpDT5t2dY6BdI(Lio/bidmachine/media3/exoplayer/WifiLockManager;Z)V

    return-void
.end method

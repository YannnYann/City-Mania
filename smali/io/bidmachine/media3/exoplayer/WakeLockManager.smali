###### Class io.bidmachine.media3.exoplayer.WakeLockManager (io.bidmachine.media3.exoplayer.WakeLockManager)
.class public final Lio/bidmachine/media3/exoplayer/WakeLockManager;
.super Ljava/lang/Object;
.source "WakeLockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/WakeLockManager$WakeLockManagerInternal;
    }
.end annotation


# instance fields
.field public enabled:Z

.field public stayAwake:Z

.field public final wakeLockHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

.field public final wakeLockManagerInternal:Lio/bidmachine/media3/exoplayer/WakeLockManager$WakeLockManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$gAhcTXDzU-Rg94OiD_xQhDKIICg(Lio/bidmachine/media3/exoplayer/WakeLockManager;Z)V
    .registers 3

    .line 92
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager;->wakeLockManagerInternal:Lio/bidmachine/media3/exoplayer/WakeLockManager$WakeLockManagerInternal;

    const/4 v0, 0x1

    .line 92
    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/exoplayer/WakeLockManager$WakeLockManagerInternal;->updateWakeLock(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$gyw06lDxUs38Z9bRcQfK4PzVRls(Lio/bidmachine/media3/exoplayer/WakeLockManager;ZZ)V
    .registers 3

    .line 73
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager;->wakeLockManagerInternal:Lio/bidmachine/media3/exoplayer/WakeLockManager$WakeLockManagerInternal;

    .line 73
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/WakeLockManager$WakeLockManagerInternal;->updateWakeLock(ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;)V
    .registers 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lio/bidmachine/media3/exoplayer/WakeLockManager$WakeLockManagerInternal;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/WakeLockManager$WakeLockManagerInternal;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager;->wakeLockManagerInternal:Lio/bidmachine/media3/exoplayer/WakeLockManager$WakeLockManagerInternal;

    const/4 p1, 0x0

    .line 54
    invoke-interface {p3, p2, p1}, Lio/bidmachine/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager;->wakeLockHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .registers 5

    .line 68
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager;->enabled:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 71
    :cond_5
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager;->enabled:Z

    .line 72
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager;->stayAwake:Z

    .line 73
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager;->wakeLockHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    new-instance v2, Lio/bidmachine/media3/exoplayer/WakeLockManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lio/bidmachine/media3/exoplayer/WakeLockManager$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/WakeLockManager;ZZ)V

    invoke-interface {v1, v2}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setStayAwake(Z)V
    .registers 4

    .line 86
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager;->stayAwake:Z

    if-ne v0, p1, :cond_5

    goto :goto_15

    .line 89
    :cond_5
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager;->stayAwake:Z

    .line 90
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager;->enabled:Z

    if-eqz v0, :cond_15

    .line 91
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager;->wakeLockHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    new-instance v1, Lio/bidmachine/media3/exoplayer/WakeLockManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/WakeLockManager$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/exoplayer/WakeLockManager;Z)V

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_15
    :goto_15
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.WakeLockManager.WakeLockManagerInternal (io.bidmachine.media3.exoplayer.WakeLockManager$WakeLockManagerInternal)
.class public final Lio/bidmachine/media3/exoplayer/WakeLockManager$WakeLockManagerInternal;
.super Ljava/lang/Object;
.source "WakeLockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/WakeLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WakeLockManagerInternal"
.end annotation


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager$WakeLockManagerInternal;->applicationContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public updateWakeLock(ZZ)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WakelockTimeout"
        }
    .end annotation

    if-eqz p1, :cond_27

    .line 112
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager$WakeLockManagerInternal;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_27

    .line 113
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager$WakeLockManagerInternal;->applicationContext:Landroid/content/Context;

    const-string v1, "power"

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-nez v0, :cond_1a

    .line 116
    const-string p1, "WakeLockManager"

    const-string p2, "PowerManager is null, therefore not creating the WakeLock."

    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    const/4 v1, 0x1

    .line 119
    const-string v2, "ExoPlayer:WakeLockManager"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager$WakeLockManagerInternal;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 123
    :cond_27
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager$WakeLockManagerInternal;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_2c

    return-void

    :cond_2c
    if-eqz p1, :cond_34

    if-eqz p2, :cond_34

    .line 128
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void

    .line 130
    :cond_34
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.WakeLockManager$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.WakeLockManager$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/WakeLockManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/WakeLockManager;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/WakeLockManager;ZZ)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/WakeLockManager;

    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager$$ExternalSyntheticLambda0;->f$1:Z

    iput-boolean p3, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/WakeLockManager;

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager$$ExternalSyntheticLambda0;->f$1:Z

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager$$ExternalSyntheticLambda0;->f$2:Z

    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/WakeLockManager;->$r8$lambda$gyw06lDxUs38Z9bRcQfK4PzVRls(Lio/bidmachine/media3/exoplayer/WakeLockManager;ZZ)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.WakeLockManager$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.WakeLockManager$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/WakeLockManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/WakeLockManager;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/WakeLockManager;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/WakeLockManager;

    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/WakeLockManager;

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/WakeLockManager$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/WakeLockManager;->$r8$lambda$gAhcTXDzU-Rg94OiD_xQhDKIICg(Lio/bidmachine/media3/exoplayer/WakeLockManager;Z)V

    return-void
.end method

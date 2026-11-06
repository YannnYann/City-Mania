###### Class info.flowersoft.theotown.util.Watchdog (info.flowersoft.theotown.util.Watchdog)
.class public Linfo/flowersoft/theotown/util/Watchdog;
.super Ljava/lang/Object;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/util/Watchdog$TimeoutHandler;
    }
.end annotation


# static fields
.field public static ACTIVE:Z = true


# instance fields
.field public volatile lastAliveSign:J

.field public lastHint:Ljava/lang/Object;

.field public thread:Ljava/lang/Thread;

.field public final timeout:J

.field public final timeoutHandler:Linfo/flowersoft/theotown/util/Watchdog$TimeoutHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(JLinfo/flowersoft/theotown/util/Watchdog$TimeoutHandler;)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Linfo/flowersoft/theotown/util/Watchdog;->timeout:J

    .line 21
    iput-object p3, p0, Linfo/flowersoft/theotown/util/Watchdog;->timeoutHandler:Linfo/flowersoft/theotown/util/Watchdog$TimeoutHandler;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/util/Watchdog;)J
    .registers 3

    .line 5
    iget-wide v0, p0, Linfo/flowersoft/theotown/util/Watchdog;->lastAliveSign:J

    return-wide v0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/util/Watchdog;)J
    .registers 3

    .line 5
    iget-wide v0, p0, Linfo/flowersoft/theotown/util/Watchdog;->timeout:J

    return-wide v0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/util/Watchdog;)Ljava/lang/Object;
    .registers 1

    .line 5
    iget-object p0, p0, Linfo/flowersoft/theotown/util/Watchdog;->lastHint:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/util/Watchdog;)Linfo/flowersoft/theotown/util/Watchdog$TimeoutHandler;
    .registers 1

    .line 5
    iget-object p0, p0, Linfo/flowersoft/theotown/util/Watchdog;->timeoutHandler:Linfo/flowersoft/theotown/util/Watchdog$TimeoutHandler;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized alive()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 53
    :try_start_2
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/Watchdog;->alive(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 54
    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public alive(Ljava/lang/Object;)V
    .registers 4

    .line 57
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/util/Watchdog;->lastAliveSign:J

    .line 58
    iput-object p1, p0, Linfo/flowersoft/theotown/util/Watchdog;->lastHint:Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized start()V
    .registers 3

    monitor-enter p0

    .line 25
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/util/Watchdog;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_b

    .line 26
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/Watchdog;->stop()V

    goto :goto_b

    :catchall_9
    move-exception v0

    goto :goto_26

    .line 28
    :cond_b
    :goto_b
    sget-boolean v0, Linfo/flowersoft/theotown/util/Watchdog;->ACTIVE:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_9

    if-nez v0, :cond_11

    .line 29
    monitor-exit p0

    return-void

    .line 32
    :cond_11
    :try_start_11
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/util/Watchdog;->lastAliveSign:J

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Linfo/flowersoft/theotown/util/Watchdog;->lastHint:Ljava/lang/Object;

    .line 35
    new-instance v0, Linfo/flowersoft/theotown/util/Watchdog$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/util/Watchdog$1;-><init>(Linfo/flowersoft/theotown/util/Watchdog;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/Watchdog;->thread:Ljava/lang/Thread;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_9

    .line 50
    monitor-exit p0

    return-void

    :goto_26
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_9

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 2

    monitor-enter p0

    .line 62
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/util/Watchdog;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_e

    .line 63
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Linfo/flowersoft/theotown/util/Watchdog;->thread:Ljava/lang/Thread;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_e

    :catchall_c
    move-exception v0

    goto :goto_10

    .line 66
    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :goto_10
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_c

    throw v0
.end method

###### Class info.flowersoft.theotown.util.Watchdog.AnonymousClass1 (info.flowersoft.theotown.util.Watchdog$1)
.class Linfo/flowersoft/theotown/util/Watchdog$1;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/util/Watchdog;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/util/Watchdog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/Watchdog;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 35
    iput-object p1, p0, Linfo/flowersoft/theotown/util/Watchdog$1;->this$0:Linfo/flowersoft/theotown/util/Watchdog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 40
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iget-object v2, p0, Linfo/flowersoft/theotown/util/Watchdog$1;->this$0:Linfo/flowersoft/theotown/util/Watchdog;

    invoke-static {v2}, Linfo/flowersoft/theotown/util/Watchdog;->access$000(Linfo/flowersoft/theotown/util/Watchdog;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Linfo/flowersoft/theotown/util/Watchdog$1;->this$0:Linfo/flowersoft/theotown/util/Watchdog;

    invoke-static {v2}, Linfo/flowersoft/theotown/util/Watchdog;->access$100(Linfo/flowersoft/theotown/util/Watchdog;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_21

    .line 41
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_21

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 42
    :cond_21
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_36

    .line 43
    iget-object v2, p0, Linfo/flowersoft/theotown/util/Watchdog$1;->this$0:Linfo/flowersoft/theotown/util/Watchdog;

    invoke-static {v2}, Linfo/flowersoft/theotown/util/Watchdog;->access$300(Linfo/flowersoft/theotown/util/Watchdog;)Linfo/flowersoft/theotown/util/Watchdog$TimeoutHandler;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/util/Watchdog$1;->this$0:Linfo/flowersoft/theotown/util/Watchdog;

    invoke-static {v3}, Linfo/flowersoft/theotown/util/Watchdog;->access$200(Linfo/flowersoft/theotown/util/Watchdog;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Linfo/flowersoft/theotown/util/Watchdog$TimeoutHandler;->handle(JLjava/lang/Object;)V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_36} :catch_36

    :catch_36
    :cond_36
    return-void
.end method

###### Class info.flowersoft.theotown.util.Watchdog.TimeoutHandler (info.flowersoft.theotown.util.Watchdog$TimeoutHandler)
.class public interface abstract Linfo/flowersoft/theotown/util/Watchdog$TimeoutHandler;
.super Ljava/lang/Object;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TimeoutHandler"
.end annotation


# virtual methods
.method public abstract handle(JLjava/lang/Object;)V
.end method

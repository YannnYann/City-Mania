###### Class io.bidmachine.SessionManager (io.bidmachine.SessionManager)
.class public Lio/bidmachine/SessionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/SessionManager$Status;,
        Lio/bidmachine/SessionManager$Observer;
    }
.end annotation


# static fields
.field public static final SESSION_ID_EMPTY:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "SessionManager"

.field private static volatile instance:Lio/bidmachine/SessionManager;


# instance fields
.field private volatile applicationContext:Landroid/content/Context;

.field private final observers:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lio/bidmachine/SessionManager$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private pauseTime:J

.field private resumeTime:J

.field private sessionId:Ljava/lang/String;

.field private final sessionManagerKtWrapper:Lio/bidmachine/SessionManagerKtWrapper;

.field private sessionResetAfterSec:J

.field private sessionStartTime:J

.field private final versionManager:Lio/bidmachine/internal/Q;


# direct methods
.method public static synthetic $r8$lambda$8FZZQAQZK1iO0d9vELOVb0TUlY0(Lio/bidmachine/SessionManager;Landroid/content/Context;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/SessionManager;->versionManager:Lio/bidmachine/internal/Q;

    .line 1
    iget-object p0, p0, Lio/bidmachine/SessionManager;->sessionManagerKtWrapper:Lio/bidmachine/SessionManagerKtWrapper;

    invoke-virtual {v0, p1, p0}, Lio/bidmachine/internal/Q;->b(Landroid/content/Context;Lio/bidmachine/SessionManagerKtWrapper;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D2AvPDd8aGXxNFQ2wsnvUAQAgRo(Lio/bidmachine/SessionManager;Landroid/content/Context;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/SessionManager;->versionManager:Lio/bidmachine/internal/Q;

    .line 1
    iget-object p0, p0, Lio/bidmachine/SessionManager;->sessionManagerKtWrapper:Lio/bidmachine/SessionManagerKtWrapper;

    invoke-virtual {v0, p1, p0}, Lio/bidmachine/internal/Q;->c(Landroid/content/Context;Lio/bidmachine/SessionManagerKtWrapper;)V

    .line 2
    invoke-static {p1}, Lio/bidmachine/n;->B(Landroid/content/Context;)V

    .line 3
    invoke-static {p1}, Lio/bidmachine/n;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jC6gxyp1NMOLWPiNoMfIp-kYFOk(Lio/bidmachine/SessionManager;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lio/bidmachine/SessionManager;->saveCurrentSessionDuration(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jlF8jrGd403otpIMzH9JoAzQJzM(Lio/bidmachine/SessionManager;Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/SessionManager;->getSessionDurationMs()J

    move-result-wide v0

    .line 2
    invoke-static {p1, v0, v1}, Lio/bidmachine/n;->e(Landroid/content/Context;J)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/bidmachine/internal/Q;

    invoke-direct {v0}, Lio/bidmachine/internal/Q;-><init>()V

    iput-object v0, p0, Lio/bidmachine/SessionManager;->versionManager:Lio/bidmachine/internal/Q;

    .line 4
    new-instance v0, Lio/bidmachine/SessionManagerKtWrapper;

    invoke-direct {v0, p0}, Lio/bidmachine/SessionManagerKtWrapper;-><init>(Lio/bidmachine/SessionManager;)V

    iput-object v0, p0, Lio/bidmachine/SessionManager;->sessionManagerKtWrapper:Lio/bidmachine/SessionManagerKtWrapper;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/SessionManager;->sessionId:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/bidmachine/SessionManager;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 33
    invoke-virtual {p0}, Lio/bidmachine/SessionManager;->startNewSession()V

    return-void
.end method

.method public static get()Lio/bidmachine/SessionManager;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/SessionManager;->instance:Lio/bidmachine/SessionManager;

    if-nez v0, :cond_19

    .line 3
    const-class v1, Lio/bidmachine/SessionManager;

    monitor-enter v1

    .line 4
    :try_start_7
    sget-object v0, Lio/bidmachine/SessionManager;->instance:Lio/bidmachine/SessionManager;

    if-nez v0, :cond_15

    .line 6
    new-instance v0, Lio/bidmachine/SessionManager;

    invoke-direct {v0}, Lio/bidmachine/SessionManager;-><init>()V

    .line 7
    sput-object v0, Lio/bidmachine/SessionManager;->instance:Lio/bidmachine/SessionManager;

    goto :goto_15

    :catchall_13
    move-exception v0

    goto :goto_17

    .line 9
    :cond_15
    :goto_15
    monitor-exit v1

    return-object v0

    :goto_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v0

    :cond_19
    return-object v0
.end method

.method private getLastSessionDurationMs()J
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/SessionManager;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_e

    .line 3
    const-string v0, "SessionManager"

    const-string v1, "Context not attached"

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 6
    :cond_e
    invoke-static {v0}, Lio/bidmachine/n;->s(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyObservers(Lio/bidmachine/SessionManager$Status;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/SessionManager;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/SessionManager$Observer;

    .line 2
    invoke-interface {v1, p1}, Lio/bidmachine/SessionManager$Observer;->onSessionEvent(Lio/bidmachine/SessionManager$Status;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private onContextAttached()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/SessionManager;->onNewSessionStarted()V

    return-void
.end method

.method private onNewSessionStarted()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/SessionManager;->applicationContext:Landroid/content/Context;

    new-instance v1, Lio/bidmachine/SessionManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/bidmachine/SessionManager$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/SessionManager;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 6
    sget-object v0, Lio/bidmachine/SessionManager$Status;->START:Lio/bidmachine/SessionManager$Status;

    invoke-direct {p0, v0}, Lio/bidmachine/SessionManager;->notifyObservers(Lio/bidmachine/SessionManager$Status;)V

    .line 7
    const-string v0, "SessionManager"

    const-string v1, "New session started"

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private onSessionPaused()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/SessionManager;->applicationContext:Landroid/content/Context;

    new-instance v1, Lio/bidmachine/SessionManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lio/bidmachine/SessionManager$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/SessionManager;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    return-void
.end method

.method private saveCurrentSessionDuration(Landroid/content/Context;)V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/SessionManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/SessionManager$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/SessionManager;Landroid/content/Context;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addObserver(Lio/bidmachine/SessionManager$Observer;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/SessionManager;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized attachContext(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/SessionManager;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 2
    :goto_8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/SessionManager;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_16

    .line 4
    invoke-direct {p0}, Lio/bidmachine/SessionManager;->onContextAttached()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_14

    goto :goto_16

    :catchall_14
    move-exception p1

    goto :goto_18

    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    :goto_18
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_14

    throw p1
.end method

.method public getLastSessionDurationSec()I
    .registers 5

    .line 1
    invoke-direct {p0}, Lio/bidmachine/SessionManager;->getLastSessionDurationMs()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getSessionCount()I
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/SessionManager;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_d

    .line 3
    const-string v0, "SessionManager"

    const-string v1, "Context not attached"

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 6
    :cond_d
    invoke-static {v0}, Lio/bidmachine/n;->v(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getSessionDurationMs()J
    .registers 5

    .line 1
    iget-wide v0, p0, Lio/bidmachine/SessionManager;->resumeTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-wide v2

    .line 4
    :cond_9
    invoke-static {}, Lio/bidmachine/core/TimeManager;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lio/bidmachine/SessionManager;->sessionStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getSessionDurationSec()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/SessionManager;->getSessionDurationMs()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/SessionManager;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionStartTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/SessionManager;->sessionStartTime:J

    return-wide v0
.end method

.method public pause()V
    .registers 5

    .line 1
    iget-wide v0, p0, Lio/bidmachine/SessionManager;->resumeTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-void

    .line 4
    :cond_9
    invoke-static {}, Lio/bidmachine/core/TimeManager;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/SessionManager;->pauseTime:J

    .line 6
    invoke-direct {p0}, Lio/bidmachine/SessionManager;->onSessionPaused()V

    .line 7
    sget-object v0, Lio/bidmachine/SessionManager$Status;->PAUSE:Lio/bidmachine/SessionManager$Status;

    invoke-direct {p0, v0}, Lio/bidmachine/SessionManager;->notifyObservers(Lio/bidmachine/SessionManager$Status;)V

    .line 8
    iget-object v0, p0, Lio/bidmachine/SessionManager;->applicationContext:Landroid/content/Context;

    new-instance v1, Lio/bidmachine/SessionManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/bidmachine/SessionManager$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/SessionManager;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session paused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/bidmachine/SessionManager;->getSessionDurationSec()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sec."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SessionManager"

    invoke-static {v1, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public removeObserver(Lio/bidmachine/SessionManager$Observer;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/SessionManager;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resume()V
    .registers 9

    .line 1
    invoke-static {}, Lio/bidmachine/core/TimeManager;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lio/bidmachine/SessionManager;->sessionResetAfterSec:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1f

    iget-wide v6, p0, Lio/bidmachine/SessionManager;->pauseTime:J

    cmp-long v4, v6, v4

    if-lez v4, :cond_1f

    sub-long v4, v0, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    cmp-long v2, v4, v2

    if-ltz v2, :cond_1f

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/SessionManager;->startNewSession()V

    goto :goto_2b

    .line 7
    :cond_1f
    sget-object v2, Lio/bidmachine/SessionManager$Status;->RESUME:Lio/bidmachine/SessionManager$Status;

    invoke-direct {p0, v2}, Lio/bidmachine/SessionManager;->notifyObservers(Lio/bidmachine/SessionManager$Status;)V

    .line 8
    const-string v2, "SessionManager"

    const-string v3, "Session resumed"

    invoke-static {v2, v3}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :goto_2b
    iput-wide v0, p0, Lio/bidmachine/SessionManager;->resumeTime:J

    return-void
.end method

.method public setSessionResetAfter(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lio/bidmachine/SessionManager;->sessionResetAfterSec:J

    return-void
.end method

.method public startNewSession()V
    .registers 3

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/SessionManager;->sessionId:Ljava/lang/String;

    .line 2
    invoke-static {}, Lio/bidmachine/core/TimeManager;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/SessionManager;->sessionStartTime:J

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lio/bidmachine/SessionManager;->pauseTime:J

    .line 4
    iput-wide v0, p0, Lio/bidmachine/SessionManager;->resumeTime:J

    .line 6
    invoke-direct {p0}, Lio/bidmachine/SessionManager;->onNewSessionStarted()V

    return-void
.end method

###### Class io.bidmachine.SessionManager.Observer (io.bidmachine.SessionManager$Observer)
.class public interface abstract Lio/bidmachine/SessionManager$Observer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onSessionEvent(Lio/bidmachine/SessionManager$Status;)V
.end method

###### Class io.bidmachine.SessionManager.Status (io.bidmachine.SessionManager$Status)
.class public final enum Lio/bidmachine/SessionManager$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/SessionManager$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/SessionManager$Status;

.field public static final enum PAUSE:Lio/bidmachine/SessionManager$Status;

.field public static final enum RESUME:Lio/bidmachine/SessionManager$Status;

.field public static final enum START:Lio/bidmachine/SessionManager$Status;


# direct methods
.method private static synthetic $values()[Lio/bidmachine/SessionManager$Status;
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/SessionManager$Status;->START:Lio/bidmachine/SessionManager$Status;

    sget-object v1, Lio/bidmachine/SessionManager$Status;->RESUME:Lio/bidmachine/SessionManager$Status;

    sget-object v2, Lio/bidmachine/SessionManager$Status;->PAUSE:Lio/bidmachine/SessionManager$Status;

    filled-new-array {v0, v1, v2}, [Lio/bidmachine/SessionManager$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/SessionManager$Status;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/SessionManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/SessionManager$Status;->START:Lio/bidmachine/SessionManager$Status;

    .line 5
    new-instance v0, Lio/bidmachine/SessionManager$Status;

    const-string v1, "RESUME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/SessionManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/SessionManager$Status;->RESUME:Lio/bidmachine/SessionManager$Status;

    .line 9
    new-instance v0, Lio/bidmachine/SessionManager$Status;

    const-string v1, "PAUSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/SessionManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/SessionManager$Status;->PAUSE:Lio/bidmachine/SessionManager$Status;

    .line 10
    invoke-static {}, Lio/bidmachine/SessionManager$Status;->$values()[Lio/bidmachine/SessionManager$Status;

    move-result-object v0

    sput-object v0, Lio/bidmachine/SessionManager$Status;->$VALUES:[Lio/bidmachine/SessionManager$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/SessionManager$Status;
    .registers 2

    .line 1
    const-class v0, Lio/bidmachine/SessionManager$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/SessionManager$Status;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/SessionManager$Status;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/SessionManager$Status;->$VALUES:[Lio/bidmachine/SessionManager$Status;

    invoke-virtual {v0}, [Lio/bidmachine/SessionManager$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/SessionManager$Status;

    return-object v0
.end method

###### Class io.bidmachine.SessionManager$$ExternalSyntheticLambda0 (io.bidmachine.SessionManager$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/SessionManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/SessionManager;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/SessionManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/SessionManager$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/SessionManager;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/SessionManager$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/SessionManager;

    check-cast p1, Landroid/content/Context;

    invoke-static {v0, p1}, Lio/bidmachine/SessionManager;->$r8$lambda$D2AvPDd8aGXxNFQ2wsnvUAQAgRo(Lio/bidmachine/SessionManager;Landroid/content/Context;)V

    return-void
.end method

###### Class io.bidmachine.SessionManager$$ExternalSyntheticLambda1 (io.bidmachine.SessionManager$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/SessionManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/SessionManager;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/SessionManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/SessionManager$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/SessionManager;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/SessionManager$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/SessionManager;

    check-cast p1, Landroid/content/Context;

    invoke-static {v0, p1}, Lio/bidmachine/SessionManager;->$r8$lambda$jC6gxyp1NMOLWPiNoMfIp-kYFOk(Lio/bidmachine/SessionManager;Landroid/content/Context;)V

    return-void
.end method

###### Class io.bidmachine.SessionManager$$ExternalSyntheticLambda2 (io.bidmachine.SessionManager$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/SessionManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/SessionManager;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/SessionManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/SessionManager$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/SessionManager;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/SessionManager$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/SessionManager;

    check-cast p1, Landroid/content/Context;

    invoke-static {v0, p1}, Lio/bidmachine/SessionManager;->$r8$lambda$8FZZQAQZK1iO0d9vELOVb0TUlY0(Lio/bidmachine/SessionManager;Landroid/content/Context;)V

    return-void
.end method

###### Class io.bidmachine.SessionManager$$ExternalSyntheticLambda3 (io.bidmachine.SessionManager$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/SessionManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/SessionManager;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/SessionManager;Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/SessionManager$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/SessionManager;

    iput-object p2, p0, Lio/bidmachine/SessionManager$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/SessionManager$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/SessionManager;

    iget-object v1, p0, Lio/bidmachine/SessionManager$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lio/bidmachine/SessionManager;->$r8$lambda$jlF8jrGd403otpIMzH9JoAzQJzM(Lio/bidmachine/SessionManager;Landroid/content/Context;)V

    return-void
.end method

###### Class io.blueflower.stapel2d.gamestack.GameStack (io.blueflower.stapel2d.gamestack.GameStack)
.class public final Lio/blueflower/stapel2d/gamestack/GameStack;
.super Ljava/lang/Object;
.source "GameStack.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/blueflower/stapel2d/gamestack/GameStack$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Lio/blueflower/stapel2d/gamestack/Stage;",
        ">;"
    }
.end annotation


# instance fields
.field public appRunning:Z

.field public droppedStages:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;"
        }
    .end annotation
.end field

.field public entered:Z

.field public inFocus:Z

.field public lastStage:Lio/blueflower/stapel2d/gamestack/Stage;

.field public leaveAppHooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field public listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/gamestack/GameStack$Listener;",
            ">;"
        }
    .end annotation
.end field

.field public pauseFlag:Z

.field public resumeFlag:Z

.field public stackChanged:Z

.field public stages:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->appRunning:Z

    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->inFocus:Z

    .line 40
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    .line 41
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->droppedStages:Ljava/util/LinkedList;

    .line 42
    iput-boolean v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stackChanged:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->listeners:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->leaveAppHooks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized addLeaveAppHook(Ljava/lang/Thread;)Z
    .registers 3

    monitor-enter p0

    .line 270
    :try_start_1
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->leaveAppHooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public ensureOnTop(Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 3

    .line 62
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->peek()Lio/blueflower/stapel2d/gamestack/Stage;

    move-result-object v0

    if-eq v0, p1, :cond_1e

    .line 63
    :cond_c
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 64
    :goto_14
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->peek()Lio/blueflower/stapel2d/gamestack/Stage;

    move-result-object v0

    if-eq v0, p1, :cond_1e

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    goto :goto_14

    :cond_1e
    return-void

    .line 66
    :cond_1f
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public get(I)Lio/blueflower/stapel2d/gamestack/Stage;
    .registers 3

    .line 317
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    return-object p1
.end method

.method public getStageByType(Ljava/lang/Class;)Lio/blueflower/stapel2d/gamestack/Stage;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 304
    iget-object v1, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gamestack/Stage;

    .line 305
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    return-object v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 288
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .line 198
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized onPause()V
    .registers 4

    monitor-enter p0

    .line 202
    :try_start_1
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->appRunning:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_73

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 204
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->isBound()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 205
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause -> leave "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 206
    const-string v0, "GameStack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Leave stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gamestack/Stage;

    .line 208
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->leave()V

    const/4 v1, 0x0

    .line 209
    iput-boolean v1, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->entered:Z

    .line 210
    sget-object v1, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->LEAVE:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    invoke-virtual {p0, v1, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->sendEvent(Lio/blueflower/stapel2d/gamestack/GameStackEvent;Lio/blueflower/stapel2d/gamestack/Stage;)V
    :try_end_72
    .catchall {:try_start_7 .. :try_end_72} :catchall_73

    goto :goto_75

    :catchall_73
    move-exception v0

    goto :goto_77

    .line 212
    :cond_75
    :goto_75
    monitor-exit p0

    return-void

    :goto_77
    :try_start_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_73

    throw v0
.end method

.method public declared-synchronized onPauseApp()V
    .registers 4

    monitor-enter p0

    .line 216
    :try_start_1
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "pause app"

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->isBound()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 219
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gamestack/Stage;

    .line 220
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->leaveApp()V

    goto :goto_2a

    :catchall_28
    move-exception v0

    goto :goto_73

    .line 223
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->isBound()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 224
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->leave()V

    .line 225
    iput-boolean v1, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->entered:Z

    .line 228
    :cond_4e
    sget-object v0, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->APP_LEAVE:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lio/blueflower/stapel2d/gamestack/GameStack;->sendEvent(Lio/blueflower/stapel2d/gamestack/GameStackEvent;Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 230
    iput-boolean v1, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->appRunning:Z

    .line 232
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->leaveAppHooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 233
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_5c

    .line 235
    :cond_6c
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->leaveAppHooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_71
    .catchall {:try_start_1 .. :try_end_71} :catchall_28

    .line 237
    monitor-exit p0

    return-void

    :goto_73
    :try_start_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_28

    throw v0
.end method

.method public declared-synchronized onResume()V
    .registers 4

    monitor-enter p0

    .line 240
    :try_start_1
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->appRunning:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_73

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 242
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->isBound()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 243
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume -> enter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 244
    const-string v0, "GameStack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gamestack/Stage;

    .line 246
    sget-object v1, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->ENTER:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    invoke-virtual {p0, v1, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->sendEvent(Lio/blueflower/stapel2d/gamestack/GameStackEvent;Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 247
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->enter()V

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->entered:Z
    :try_end_72
    .catchall {:try_start_7 .. :try_end_72} :catchall_73

    goto :goto_75

    :catchall_73
    move-exception v0

    goto :goto_77

    .line 250
    :cond_75
    :goto_75
    monitor-exit p0

    return-void

    :goto_77
    :try_start_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_73

    throw v0
.end method

.method public declared-synchronized onResumeApp()V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    .line 253
    :try_start_2
    iput-boolean v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->appRunning:Z

    .line 255
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stage;->isBound()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 256
    iget-object v1, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gamestack/Stage;

    .line 257
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v3, "enter app"

    invoke-interface {v2, v3}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stage;->enterApp()V

    goto :goto_2d

    :catchall_2b
    move-exception v0

    goto :goto_3e

    .line 262
    :cond_2d
    :goto_2d
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v2, "resume app"

    invoke-interface {v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 263
    sget-object v1, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->APP_ENTER:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lio/blueflower/stapel2d/gamestack/GameStack;->sendEvent(Lio/blueflower/stapel2d/gamestack/GameStackEvent;Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 265
    iput-boolean v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->resumeFlag:Z
    :try_end_3c
    .catchall {:try_start_2 .. :try_end_3c} :catchall_2b

    .line 267
    monitor-exit p0

    return-void

    :goto_3e
    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_2b

    throw v0
.end method

.method public peek()Lio/blueflower/stapel2d/gamestack/Stage;
    .registers 2

    .line 77
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gamestack/Stage;

    return-object v0
.end method

.method public pop()Lio/blueflower/stapel2d/gamestack/Stage;
    .registers 3

    .line 81
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gamestack/Stage;

    .line 82
    iget-object v1, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->droppedStages:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 83
    iput-boolean v1, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stackChanged:Z

    return-object v0
.end method

.method public popAll()V
    .registers 2

    .line 88
    :goto_0
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    move-result-object v0

    if-eqz v0, :cond_d

    goto :goto_0

    :cond_d
    return-void
.end method

.method public push(Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 3

    .line 72
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stackChanged:Z

    return-void
.end method

.method public rebind()V
    .registers 3

    .line 296
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 297
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gamestack/Stage;

    .line 298
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->isBound()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->drop()V

    :cond_1f
    return-void
.end method

.method public refreshCurrentStage()V
    .registers 3

    .line 92
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "refresh"

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 94
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gamestack/Stage;

    .line 95
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->isBound()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-boolean v1, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->entered:Z

    if-eqz v1, :cond_2a

    .line 96
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->leave()V

    .line 97
    invoke-static {}, Lio/blueflower/stapel2d/gui/GUICache;->invalidateAllCaches()V

    .line 98
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->enter()V

    :cond_2a
    return-void
.end method

.method public declared-synchronized removeLeaveAppHook(Ljava/lang/Thread;)Z
    .registers 3

    monitor-enter p0

    .line 274
    :try_start_1
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->leaveAppHooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public replace(ILio/blueflower/stapel2d/gamestack/Stage;)Lio/blueflower/stapel2d/gamestack/Stage;
    .registers 4

    .line 321
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    return-object p1
.end method

.method public final sendEvent(Lio/blueflower/stapel2d/gamestack/GameStackEvent;Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 5

    .line 278
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gamestack/GameStack$Listener;

    .line 279
    invoke-interface {v1, p1, p2}, Lio/blueflower/stapel2d/gamestack/GameStack$Listener;->event(Lio/blueflower/stapel2d/gamestack/GameStackEvent;Lio/blueflower/stapel2d/gamestack/Stage;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public set(Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 14
    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->set(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public size()I
    .registers 2

    .line 313
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized update()V
    .registers 8

    monitor-enter p0

    .line 104
    :try_start_1
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->pauseFlag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 105
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->onPause()V

    .line 106
    iput-boolean v1, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->pauseFlag:Z

    goto :goto_f

    :catchall_c
    move-exception v0

    goto/16 :goto_25d

    .line 108
    :cond_f
    :goto_f
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->resumeFlag:Z

    if-eqz v0, :cond_18

    .line 109
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->onResume()V

    .line 110
    iput-boolean v1, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->resumeFlag:Z

    .line 116
    :cond_18
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_177

    .line 117
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gamestack/Stage;

    .line 119
    iget-object v3, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->lastStage:Lio/blueflower/stapel2d/gamestack/Stage;

    if-eq v3, v0, :cond_57

    if-eqz v3, :cond_57

    .line 120
    const-string v3, "GameStack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Leave stage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->lastStage:Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lio/blueflower/stapel2d/gamestack/GameStack;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v3, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->lastStage:Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stage;->leave()V

    .line 122
    iput-boolean v1, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->entered:Z

    .line 123
    sget-object v3, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->LEAVE:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    iget-object v4, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->lastStage:Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {p0, v3, v4}, Lio/blueflower/stapel2d/gamestack/GameStack;->sendEvent(Lio/blueflower/stapel2d/gamestack/GameStackEvent;Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 126
    :cond_57
    iput-boolean v1, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stackChanged:Z

    .line 127
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->isBound()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_129

    .line 128
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bind "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 129
    const-string v3, "GameStack"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bind stage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lio/blueflower/stapel2d/gamestack/GameStack;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p0}, Lio/blueflower/stapel2d/gamestack/Stage;->bind(Lio/blueflower/stapel2d/gamestack/GameStack;)V

    .line 132
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepare "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 133
    const-string v3, "GameStack"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prepare stage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lio/blueflower/stapel2d/gamestack/GameStack;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v3, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->PREPARE:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    invoke-virtual {p0, v3, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->sendEvent(Lio/blueflower/stapel2d/gamestack/GameStackEvent;Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 135
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->prepare()V

    .line 136
    iget-object v3, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_122

    iget-object v3, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stages:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_122

    .line 137
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 138
    const-string v3, "GameStack"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enter stage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lio/blueflower/stapel2d/gamestack/GameStack;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v3, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->ENTER:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    invoke-virtual {p0, v3, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->sendEvent(Lio/blueflower/stapel2d/gamestack/GameStackEvent;Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 140
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->enter()V

    .line 141
    iput-boolean v4, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->entered:Z

    goto :goto_16b

    .line 143
    :cond_122
    iput-object v2, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->lastStage:Lio/blueflower/stapel2d/gamestack/Stage;

    .line 144
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->update()V
    :try_end_127
    .catchall {:try_start_1 .. :try_end_127} :catchall_c

    .line 145
    monitor-exit p0

    return-void

    .line 147
    :cond_129
    :try_start_129
    iget-object v3, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->lastStage:Lio/blueflower/stapel2d/gamestack/Stage;

    if-eq v3, v0, :cond_16b

    .line 148
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 149
    const-string v3, "GameStack"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enter stage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lio/blueflower/stapel2d/gamestack/GameStack;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v3, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->ENTER:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    invoke-virtual {p0, v3, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->sendEvent(Lio/blueflower/stapel2d/gamestack/GameStackEvent;Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 151
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->enter()V

    .line 152
    iput-boolean v4, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->entered:Z

    .line 155
    :cond_16b
    :goto_16b
    iget-boolean v3, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stackChanged:Z

    if-nez v3, :cond_173

    .line 156
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->update()V

    goto :goto_174

    :cond_173
    move v4, v1

    .line 160
    :goto_174
    iput-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->lastStage:Lio/blueflower/stapel2d/gamestack/Stage;

    goto :goto_1c4

    .line 162
    :cond_177
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->lastStage:Lio/blueflower/stapel2d/gamestack/Stage;

    if-eqz v0, :cond_1c1

    .line 163
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "leave "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->lastStage:Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 164
    const-string v0, "GameStack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Leave stage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->lastStage:Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lio/blueflower/stapel2d/gamestack/GameStack;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->lastStage:Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->leave()V

    .line 166
    iput-boolean v1, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->entered:Z

    .line 167
    sget-object v0, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->LEAVE:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    iget-object v3, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->lastStage:Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {p0, v0, v3}, Lio/blueflower/stapel2d/gamestack/GameStack;->sendEvent(Lio/blueflower/stapel2d/gamestack/GameStackEvent;Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 169
    :cond_1c1
    iput-object v2, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->lastStage:Lio/blueflower/stapel2d/gamestack/Stage;

    move v4, v1

    .line 172
    :cond_1c4
    :goto_1c4
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->droppedStages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_250

    .line 173
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->droppedStages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gamestack/Stage;

    .line 174
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->isBound()Z

    move-result v3

    if-eqz v3, :cond_1c4

    .line 175
    iget-object v3, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->lastStage:Lio/blueflower/stapel2d/gamestack/Stage;

    if-ne v0, v3, :cond_21a

    .line 176
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "leave "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 177
    const-string v3, "GameStack"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Leave stage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lio/blueflower/stapel2d/gamestack/GameStack;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v3, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->lastStage:Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stage;->leave()V

    .line 179
    iput-boolean v1, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->entered:Z

    .line 180
    sget-object v3, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->LEAVE:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    iget-object v5, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->lastStage:Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {p0, v3, v5}, Lio/blueflower/stapel2d/gamestack/GameStack;->sendEvent(Lio/blueflower/stapel2d/gamestack/GameStackEvent;Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 181
    iput-object v2, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->lastStage:Lio/blueflower/stapel2d/gamestack/Stage;

    .line 184
    :cond_21a
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drop "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 185
    const-string v3, "GameStack"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Drop stage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lio/blueflower/stapel2d/gamestack/GameStack;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->drop()V

    .line 187
    sget-object v3, Lio/blueflower/stapel2d/gamestack/GameStackEvent;->DROP:Lio/blueflower/stapel2d/gamestack/GameStackEvent;

    invoke-virtual {p0, v3, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->sendEvent(Lio/blueflower/stapel2d/gamestack/GameStackEvent;Lio/blueflower/stapel2d/gamestack/Stage;)V

    goto/16 :goto_1c4

    .line 191
    :cond_250
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stackChanged:Z

    if-eqz v0, :cond_25b

    if-nez v4, :cond_25b

    .line 192
    iput-boolean v1, p0, Lio/blueflower/stapel2d/gamestack/GameStack;->stackChanged:Z

    .line 193
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->update()V
    :try_end_25b
    .catchall {:try_start_129 .. :try_end_25b} :catchall_c

    .line 195
    :cond_25b
    monitor-exit p0

    return-void

    :goto_25d
    :try_start_25d
    monitor-exit p0
    :try_end_25e
    .catchall {:try_start_25d .. :try_end_25e} :catchall_c

    throw v0
.end method

###### Class io.blueflower.stapel2d.gamestack.GameStack.Listener (io.blueflower.stapel2d.gamestack.GameStack$Listener)
.class public interface abstract Lio/blueflower/stapel2d/gamestack/GameStack$Listener;
.super Ljava/lang/Object;
.source "GameStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/blueflower/stapel2d/gamestack/GameStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract event(Lio/blueflower/stapel2d/gamestack/GameStackEvent;Lio/blueflower/stapel2d/gamestack/Stage;)V
.end method

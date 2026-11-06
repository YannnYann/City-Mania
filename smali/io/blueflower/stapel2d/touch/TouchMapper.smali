###### Class io.blueflower.stapel2d.touch.TouchMapper (io.blueflower.stapel2d.touch.TouchMapper)
.class public final Lio/blueflower/stapel2d/touch/TouchMapper;
.super Ljava/lang/Object;
.source "TouchMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/blueflower/stapel2d/touch/TouchMapper$FlushableInputProcessor;,
        Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;
    }
.end annotation


# instance fields
.field public final activePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/touch/TouchPoint;",
            ">;"
        }
    .end annotation
.end field

.field public currentScrollPosition:F

.field public lastMouseMoved:J

.field public lastScrollPosition:F

.field public mouse:Z

.field public final mousePoint:Lio/blueflower/stapel2d/touch/TouchPoint;

.field public newPoint:Lio/blueflower/stapel2d/touch/TouchPoint;

.field public final newPoints:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/blueflower/stapel2d/touch/TouchPoint;",
            ">;"
        }
    .end annotation
.end field

.field public processor:Lcom/badlogic/gdx/InputProcessor;

.field public final publicActivePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/touch/TouchPoint;",
            ">;"
        }
    .end annotation
.end field

.field public final releasePoints:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/blueflower/stapel2d/touch/TouchPoint;",
            ">;"
        }
    .end annotation
.end field

.field public removedPoint:Lio/blueflower/stapel2d/touch/TouchPoint;

.field public final removedPoints:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/blueflower/stapel2d/touch/TouchPoint;",
            ">;"
        }
    .end annotation
.end field

.field public scrollChange:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-direct {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->mousePoint:Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 304
    new-instance v0, Lio/blueflower/stapel2d/touch/TouchMapper$1;

    invoke-direct {v0, p0}, Lio/blueflower/stapel2d/touch/TouchMapper$1;-><init>(Lio/blueflower/stapel2d/touch/TouchMapper;)V

    iput-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->processor:Lcom/badlogic/gdx/InputProcessor;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->activePoints:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->newPoints:Ljava/util/Queue;

    .line 44
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->removedPoints:Ljava/util/Queue;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->publicActivePoints:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->releasePoints:Ljava/util/Queue;

    return-void
.end method

.method public static synthetic access$500(Lio/blueflower/stapel2d/touch/TouchMapper;I)Z
    .registers 2

    .line 22
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/touch/TouchMapper;->isMouseInput(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$602(Lio/blueflower/stapel2d/touch/TouchMapper;J)J
    .registers 3

    .line 22
    iput-wide p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->lastMouseMoved:J

    return-wide p1
.end method

.method public static synthetic access$716(Lio/blueflower/stapel2d/touch/TouchMapper;F)F
    .registers 3

    .line 22
    iget v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->currentScrollPosition:F

    add-float/2addr v0, p1

    iput v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->currentScrollPosition:F

    return v0
.end method


# virtual methods
.method public final addTouchPoint(ILio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;IZIZ)Lio/blueflower/stapel2d/touch/TouchPoint;
    .registers 14

    .line 256
    new-instance v0, Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 259
    invoke-interface {p2, p3}, Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;->getX(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/touch/TouchMapper;->virtualToPixelsX(F)F

    move-result v3

    .line 260
    invoke-interface {p2, p3}, Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;->getY(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lio/blueflower/stapel2d/touch/TouchMapper;->virtualToPixelsY(F)F

    move-result v4

    move v1, p1

    move v2, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/touch/TouchPoint;-><init>(IZFFIZ)V

    .line 262
    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->clone()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/touch/TouchPoint;->setGhost(Lio/blueflower/stapel2d/touch/TouchPoint;)V

    .line 264
    iget-object p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->newPoints:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->activePoints:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public declared-synchronized countActualActivePoints()I
    .registers 2

    monitor-enter p0

    .line 65
    :try_start_1
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->activePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public final fillTouchPoint(Lio/blueflower/stapel2d/touch/TouchPoint;Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;I)V
    .registers 5

    .line 271
    invoke-interface {p2, p3}, Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;->getX(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/touch/TouchMapper;->virtualToPixelsX(F)F

    move-result v0

    invoke-interface {p2, p3}, Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;->getY(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lio/blueflower/stapel2d/touch/TouchMapper;->virtualToPixelsY(F)F

    move-result p2

    invoke-virtual {p1, v0, p2}, Lio/blueflower/stapel2d/touch/TouchPoint;->setPosition(FF)V

    return-void
.end method

.method public declared-synchronized flush()V
    .registers 2

    monitor-enter p0

    .line 161
    :try_start_1
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->activePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 162
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->newPoints:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 163
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->removedPoints:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 164
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->processor:Lcom/badlogic/gdx/InputProcessor;

    check-cast v0, Lio/blueflower/stapel2d/touch/TouchMapper$FlushableInputProcessor;

    invoke-interface {v0}, Lio/blueflower/stapel2d/touch/TouchMapper$FlushableInputProcessor;->flush()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 165
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getActivePoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/touch/TouchPoint;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->publicActivePoints:Ljava/util/List;

    return-object v0
.end method

.method public getMouseX()I
    .registers 2

    .line 231
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v0}, Lcom/badlogic/gdx/Input;->getX()I

    move-result v0

    return v0
.end method

.method public getMouseY()I
    .registers 2

    .line 235
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v0}, Lcom/badlogic/gdx/Input;->getY()I

    move-result v0

    return v0
.end method

.method public final getPoint(I)Lio/blueflower/stapel2d/touch/TouchPoint;
    .registers 5

    .line 245
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->activePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 246
    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getID()I

    move-result v2

    if-ne v2, p1, :cond_6

    return-object v1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public getScrollChange()F
    .registers 2

    .line 73
    iget v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->scrollChange:F

    return v0
.end method

.method public declared-synchronized getTouchUpdate()Lio/blueflower/stapel2d/touch/TouchUpdate;
    .registers 6

    monitor-enter p0

    .line 137
    :try_start_1
    new-instance v0, Lio/blueflower/stapel2d/touch/TouchUpdate;

    iget-object v1, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->newPoint:Lio/blueflower/stapel2d/touch/TouchPoint;

    iget-object v2, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->removedPoint:Lio/blueflower/stapel2d/touch/TouchPoint;

    iget v3, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->scrollChange:F

    iget-object v4, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->mousePoint:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/blueflower/stapel2d/touch/TouchUpdate;-><init>(Lio/blueflower/stapel2d/touch/TouchPoint;Lio/blueflower/stapel2d/touch/TouchPoint;FLio/blueflower/stapel2d/touch/TouchPoint;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public isMouse()Z
    .registers 2

    .line 217
    iget-boolean v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->mouse:Z

    return v0
.end method

.method public final isMouseInput(I)Z
    .registers 5

    .line 221
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    instance-of v1, v0, Lio/blueflower/stapel2d/touch/TouchInput;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    check-cast v0, Lio/blueflower/stapel2d/touch/TouchInput;

    .line 222
    invoke-interface {v0}, Lio/blueflower/stapel2d/touch/TouchInput;->isTouchInput()Z

    move-result v0

    if-eqz v0, :cond_10

    return v2

    :cond_10
    if-nez p1, :cond_1e

    .line 226
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 227
    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object p1

    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne p1, v0, :cond_1d

    goto :goto_1e

    :cond_1d
    return v2

    :cond_1e
    :goto_1e
    const/4 p1, 0x1

    return p1
.end method

.method public declared-synchronized map(Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;)V
    .registers 12

    monitor-enter p0

    .line 173
    :try_start_1
    invoke-interface {p1}, Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    move v5, v1

    .line 175
    :goto_7
    invoke-interface {p1}, Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v5, v2, :cond_9a

    .line 176
    invoke-interface {p1, v5}, Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lio/blueflower/stapel2d/touch/TouchMapper;->getPoint(I)Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v2

    if-nez v2, :cond_7e

    .line 178
    invoke-interface {p1}, Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;->getActionIndex()I

    move-result v2

    if-ne v5, v2, :cond_7b

    if-ne v0, v3, :cond_50

    move v2, v3

    .line 180
    invoke-interface {p1, v5}, Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-interface {p1, v5}, Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;->getButton(I)I

    move-result v7

    invoke-interface {p1}, Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;->isMouse()Z

    move-result v4
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_4e

    if-nez v4, :cond_41

    :try_start_2f
    invoke-interface {p1, v5}, Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;->getButton(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lio/blueflower/stapel2d/touch/TouchMapper;->isMouseInput(I)Z

    move-result v4
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_3c

    if-eqz v4, :cond_3a

    goto :goto_41

    :cond_3a
    move v8, v1

    goto :goto_42

    :catchall_3c
    move-exception v0

    move-object p1, v0

    :goto_3e
    move-object p1, p0

    goto/16 :goto_e7

    :cond_41
    :goto_41
    move v8, v2

    :goto_42
    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, p1

    :try_start_45
    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/touch/TouchMapper;->addTouchPoint(ILio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;IZIZ)Lio/blueflower/stapel2d/touch/TouchPoint;
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_4a

    move-object p1, v2

    goto :goto_95

    :catchall_4a
    move-exception v0

    move-object p1, v2

    goto/16 :goto_e7

    :catchall_4e
    move-exception v0

    goto :goto_3e

    :cond_50
    move-object v4, p1

    move v2, v3

    move-object p1, p0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_95

    .line 182
    :try_start_56
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;->getButton(I)I

    move-result v7

    invoke-interface {v4}, Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;->isMouse()Z

    move-result v6

    if-nez v6, :cond_74

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;->getButton(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lio/blueflower/stapel2d/touch/TouchMapper;->isMouseInput(I)Z

    move-result v6
    :try_end_6c
    .catchall {:try_start_56 .. :try_end_6c} :catchall_71

    if-eqz v6, :cond_6f

    goto :goto_74

    :cond_6f
    move v8, v1

    goto :goto_75

    :catchall_71
    move-exception v0

    goto/16 :goto_e7

    :cond_74
    :goto_74
    move v8, v2

    :goto_75
    const/4 v6, 0x0

    move-object v2, p1

    :try_start_77
    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/touch/TouchMapper;->addTouchPoint(ILio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;IZIZ)Lio/blueflower/stapel2d/touch/TouchPoint;
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_4a

    goto :goto_95

    :cond_7b
    move-object v4, p1

    move-object p1, p0

    goto :goto_95

    :cond_7e
    move-object v4, p1

    move-object p1, p0

    .line 186
    :try_start_80
    invoke-virtual {p0, v2, v4, v5}, Lio/blueflower/stapel2d/touch/TouchMapper;->fillTouchPoint(Lio/blueflower/stapel2d/touch/TouchPoint;Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;I)V

    .line 188
    invoke-interface {v4}, Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;->getActionIndex()I

    move-result v3

    if-ne v5, v3, :cond_8f

    const/4 v3, 0x2

    if-eq v0, v3, :cond_92

    const/4 v3, 0x4

    if-eq v0, v3, :cond_92

    :cond_8f
    const/4 v3, 0x5

    if-ne v0, v3, :cond_95

    .line 189
    :cond_92
    invoke-virtual {p0, v2}, Lio/blueflower/stapel2d/touch/TouchMapper;->removeTouchPoint(Lio/blueflower/stapel2d/touch/TouchPoint;)V

    :cond_95
    :goto_95
    add-int/lit8 v5, v5, 0x1

    move-object p1, v4

    goto/16 :goto_7

    :cond_9a
    move-object v4, p1

    move v2, v3

    move-object p1, p0

    .line 194
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move v3, v1

    .line 195
    :goto_a3
    iget-object v5, p1, Lio/blueflower/stapel2d/touch/TouchMapper;->activePoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_d3

    .line 196
    iget-object v5, p1, Lio/blueflower/stapel2d/touch/TouchMapper;->activePoints:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/blueflower/stapel2d/touch/TouchPoint;

    move v6, v1

    move v7, v6

    .line 198
    :goto_b5
    invoke-interface {v4}, Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;->getPointerCount()I

    move-result v8

    if-ge v6, v8, :cond_cb

    if-nez v7, :cond_cb

    .line 199
    invoke-interface {v4, v6}, Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;->getPointerId(I)I

    move-result v8

    invoke-virtual {v5}, Lio/blueflower/stapel2d/touch/TouchPoint;->getID()I

    move-result v9

    if-ne v8, v9, :cond_c8

    move v7, v2

    :cond_c8
    add-int/lit8 v6, v6, 0x1

    goto :goto_b5

    :cond_cb
    if-nez v7, :cond_d0

    .line 205
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d0
    add-int/lit8 v3, v3, 0x1

    goto :goto_a3

    .line 209
    :cond_d3
    :goto_d3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_e5

    .line 210
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 211
    invoke-virtual {p0, v2}, Lio/blueflower/stapel2d/touch/TouchMapper;->removeTouchPoint(Lio/blueflower/stapel2d/touch/TouchPoint;)V
    :try_end_e2
    .catchall {:try_start_80 .. :try_end_e2} :catchall_71

    add-int/lit8 v1, v1, 0x1

    goto :goto_d3

    .line 214
    :cond_e5
    monitor-exit p0

    return-void

    :goto_e7
    :try_start_e7
    monitor-exit p0
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_71

    throw v0
.end method

.method public final removeTouchPoint(Lio/blueflower/stapel2d/touch/TouchPoint;)V
    .registers 3

    .line 275
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->activePoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->removedPoints:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized update()V
    .registers 8

    monitor-enter p0

    .line 80
    :goto_1
    :try_start_1
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->releasePoints:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 81
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->releasePoints:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 82
    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/blueflower/stapel2d/touch/TouchPoint;->setLastPosition(FF)V

    .line 83
    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->setInvalid()V

    goto :goto_1

    :catchall_20
    move-exception v0

    goto/16 :goto_114

    .line 86
    :cond_23
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->newPoints:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    move-object v0, v1

    goto :goto_3a

    :cond_2e
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->newPoints:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getGhost()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v0

    :goto_3a
    iput-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->newPoint:Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 87
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->removedPoints:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->newPoint:Lio/blueflower/stapel2d/touch/TouchPoint;

    if-eqz v0, :cond_49

    goto :goto_55

    :cond_49
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->removedPoints:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getGhost()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v1

    :cond_55
    :goto_55
    iput-object v1, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->removedPoint:Lio/blueflower/stapel2d/touch/TouchPoint;

    if-eqz v1, :cond_5e

    .line 88
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->releasePoints:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_5e
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->publicActivePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 91
    :goto_65
    iget-object v2, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->activePoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_95

    .line 92
    iget-object v2, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->activePoints:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 93
    invoke-virtual {v2}, Lio/blueflower/stapel2d/touch/TouchPoint;->getGhost()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v4

    .line 94
    invoke-virtual {v4, v2}, Lio/blueflower/stapel2d/touch/TouchPoint;->fillWith(Lio/blueflower/stapel2d/touch/TouchPoint;)V

    .line 95
    invoke-virtual {v2}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v5

    invoke-virtual {v2}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v6

    invoke-virtual {v2, v5, v6}, Lio/blueflower/stapel2d/touch/TouchPoint;->setLastPosition(FF)V

    .line 96
    iget v5, v2, Lio/blueflower/stapel2d/touch/TouchPoint;->updateCounter:I

    add-int/2addr v5, v3

    iput v5, v2, Lio/blueflower/stapel2d/touch/TouchPoint;->updateCounter:I

    .line 97
    iget-object v2, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->publicActivePoints:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 100
    :cond_95
    iget v1, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->currentScrollPosition:F

    iget v2, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->lastScrollPosition:F

    sub-float v2, v1, v2

    iput v2, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->scrollChange:F

    .line 101
    iput v1, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->lastScrollPosition:F

    .line 103
    iget-object v1, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->mousePoint:Lio/blueflower/stapel2d/touch/TouchPoint;

    iget v2, v1, Lio/blueflower/stapel2d/touch/TouchPoint;->x:F

    iput v2, v1, Lio/blueflower/stapel2d/touch/TouchPoint;->lastX:F

    .line 104
    iget v2, v1, Lio/blueflower/stapel2d/touch/TouchPoint;->y:F

    iput v2, v1, Lio/blueflower/stapel2d/touch/TouchPoint;->lastY:F

    .line 105
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2}, Lcom/badlogic/gdx/Input;->getX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lio/blueflower/stapel2d/touch/TouchMapper;->virtualToPixelsX(F)F

    move-result v2

    iput v2, v1, Lio/blueflower/stapel2d/touch/TouchPoint;->x:F

    .line 106
    iget-object v1, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->mousePoint:Lio/blueflower/stapel2d/touch/TouchPoint;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2}, Lcom/badlogic/gdx/Input;->getY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lio/blueflower/stapel2d/touch/TouchMapper;->virtualToPixelsY(F)F

    move-result v2

    iput v2, v1, Lio/blueflower/stapel2d/touch/TouchPoint;->y:F

    .line 108
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v1

    iget-wide v4, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->lastMouseMoved:J

    sub-long/2addr v1, v4

    const-wide/16 v4, 0x64

    cmp-long v1, v1, v4

    if-lez v1, :cond_e5

    iget v1, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->scrollChange:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_e5

    iget-boolean v1, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->mouse:Z

    if-eqz v1, :cond_e6

    iget-object v1, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->publicActivePoints:Ljava/util/List;

    .line 109
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e6

    :cond_e5
    move v0, v3

    :cond_e6
    iput-boolean v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->mouse:Z

    .line 110
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->publicActivePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_ee
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_102

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 111
    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchPoint;->isMouse()Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 112
    iput-boolean v3, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->mouse:Z

    .line 117
    :cond_102
    iget-boolean v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->mouse:Z

    if-nez v0, :cond_112

    .line 118
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper;->mousePoint:Lio/blueflower/stapel2d/touch/TouchPoint;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lio/blueflower/stapel2d/touch/TouchPoint;->x:F

    .line 119
    iput v1, v0, Lio/blueflower/stapel2d/touch/TouchPoint;->y:F

    .line 120
    iput v1, v0, Lio/blueflower/stapel2d/touch/TouchPoint;->lastX:F

    .line 121
    iput v1, v0, Lio/blueflower/stapel2d/touch/TouchPoint;->lastY:F
    :try_end_112
    .catchall {:try_start_1 .. :try_end_112} :catchall_20

    .line 129
    :cond_112
    monitor-exit p0

    return-void

    :goto_114
    :try_start_114
    monitor-exit p0
    :try_end_115
    .catchall {:try_start_114 .. :try_end_115} :catchall_20

    throw v0
.end method

.method public final virtualToPixelsX(F)F
    .registers 3

    .line 280
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getBackBufferWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method public final virtualToPixelsY(F)F
    .registers 3

    .line 284
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getBackBufferHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

###### Class io.blueflower.stapel2d.touch.TouchMapper.AnonymousClass1 (io.blueflower.stapel2d.touch.TouchMapper$1)
.class public Lio/blueflower/stapel2d/touch/TouchMapper$1;
.super Ljava/lang/Object;
.source "TouchMapper.java"

# interfaces
.implements Lio/blueflower/stapel2d/touch/TouchMapper$FlushableInputProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/blueflower/stapel2d/touch/TouchMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public actionIndex:I

.field public actionMask:I

.field public activeButtons:Lio/blueflower/stapel2d/util/IntList;

.field public activePointers:Lio/blueflower/stapel2d/util/IntList;

.field public genericMotionEvent:Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;

.field public final synthetic this$0:Lio/blueflower/stapel2d/touch/TouchMapper;

.field public touchIdCtr:I

.field public touchIds:[I


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/touch/TouchMapper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 304
    iput-object p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->this$0:Lio/blueflower/stapel2d/touch/TouchMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    new-instance p1, Lio/blueflower/stapel2d/touch/TouchMapper$1$1;

    invoke-direct {p1, p0}, Lio/blueflower/stapel2d/touch/TouchMapper$1$1;-><init>(Lio/blueflower/stapel2d/touch/TouchMapper$1;)V

    iput-object p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->genericMotionEvent:Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;

    const/16 p1, 0x80

    .line 350
    new-array p1, p1, [I

    iput-object p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->touchIds:[I

    .line 351
    new-instance p1, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {p1}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->activePointers:Lio/blueflower/stapel2d/util/IntList;

    .line 352
    new-instance p1, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {p1}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->activeButtons:Lio/blueflower/stapel2d/util/IntList;

    return-void
.end method

.method public static synthetic access$000(Lio/blueflower/stapel2d/touch/TouchMapper$1;)Lio/blueflower/stapel2d/util/IntList;
    .registers 1

    .line 304
    iget-object p0, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->activePointers:Lio/blueflower/stapel2d/util/IntList;

    return-object p0
.end method

.method public static synthetic access$100(Lio/blueflower/stapel2d/touch/TouchMapper$1;)I
    .registers 1

    .line 304
    iget p0, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->actionIndex:I

    return p0
.end method

.method public static synthetic access$200(Lio/blueflower/stapel2d/touch/TouchMapper$1;)[I
    .registers 1

    .line 304
    iget-object p0, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->touchIds:[I

    return-object p0
.end method

.method public static synthetic access$300(Lio/blueflower/stapel2d/touch/TouchMapper$1;)Lio/blueflower/stapel2d/util/IntList;
    .registers 1

    .line 304
    iget-object p0, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->activeButtons:Lio/blueflower/stapel2d/util/IntList;

    return-object p0
.end method

.method public static synthetic access$400(Lio/blueflower/stapel2d/touch/TouchMapper$1;)I
    .registers 1

    .line 304
    iget p0, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->actionMask:I

    return p0
.end method


# virtual methods
.method public flush()V
    .registers 2

    .line 358
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->activePointers:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 359
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->activeButtons:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    return-void
.end method

.method public keyDown(I)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public keyTyped(C)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public keyUp(I)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public mouseMoved(II)Z
    .registers 5

    .line 430
    iget-object p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->this$0:Lio/blueflower/stapel2d/touch/TouchMapper;

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lio/blueflower/stapel2d/touch/TouchMapper;->access$602(Lio/blueflower/stapel2d/touch/TouchMapper;J)J

    const/4 p1, 0x1

    return p1
.end method

.method public scrolled(FF)Z
    .registers 5

    .line 436
    iget-object p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->this$0:Lio/blueflower/stapel2d/touch/TouchMapper;

    invoke-static {p1, p2}, Lio/blueflower/stapel2d/touch/TouchMapper;->access$716(Lio/blueflower/stapel2d/touch/TouchMapper;F)F

    .line 437
    iget-object p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->this$0:Lio/blueflower/stapel2d/touch/TouchMapper;

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lio/blueflower/stapel2d/touch/TouchMapper;->access$602(Lio/blueflower/stapel2d/touch/TouchMapper;J)J

    const/4 p1, 0x1

    return p1
.end method

.method public touchCancelled(IIII)Z
    .registers 5

    .line 401
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/blueflower/stapel2d/touch/TouchMapper$1;->touchUp(IIII)Z

    move-result p1

    return p1
.end method

.method public touchDown(IIII)Z
    .registers 8

    const/4 p1, 0x0

    .line 364
    :goto_1
    iget-object p2, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->activePointers:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ge p1, p2, :cond_2e

    .line 365
    sget-object p2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->activePointers:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    invoke-interface {p2, v1}, Lcom/badlogic/gdx/Input;->isTouched(I)Z

    move-result p2

    if-eqz p2, :cond_20

    iget-object p2, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->activePointers:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p2, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p2

    if-ne p2, p3, :cond_2c

    .line 366
    :cond_20
    iget-object p2, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->activePointers:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p2, p1}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    .line 367
    iget-object p2, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->activeButtons:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p2, p1}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    add-int/lit8 p1, p1, -0x1

    :cond_2c
    add-int/2addr p1, v0

    goto :goto_1

    .line 372
    :cond_2e
    iget-object p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->this$0:Lio/blueflower/stapel2d/touch/TouchMapper;

    invoke-static {p1, p4}, Lio/blueflower/stapel2d/touch/TouchMapper;->access$500(Lio/blueflower/stapel2d/touch/TouchMapper;I)Z

    move-result p1

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->this$0:Lio/blueflower/stapel2d/touch/TouchMapper;

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lio/blueflower/stapel2d/touch/TouchMapper;->access$602(Lio/blueflower/stapel2d/touch/TouchMapper;J)J

    .line 373
    :cond_3f
    iget-object p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->touchIds:[I

    mul-int/lit8 p2, p4, 0xa

    add-int/2addr p2, p3

    iget v1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->touchIdCtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->touchIdCtr:I

    aput v1, p1, p2

    .line 374
    iget-object p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->activePointers:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, p3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 375
    iget-object p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->activeButtons:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, p4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 376
    iget-object p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->activePointers:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result p1

    if-ne p1, v0, :cond_60

    move p1, v0

    goto :goto_61

    :cond_60
    const/4 p1, 0x3

    :goto_61
    iput p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->actionMask:I

    .line 377
    iget-object p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->activePointers:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    iput p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->actionIndex:I

    .line 378
    iget-object p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->this$0:Lio/blueflower/stapel2d/touch/TouchMapper;

    iget-object p2, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->genericMotionEvent:Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/touch/TouchMapper;->map(Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;)V

    return v0
.end method

.method public touchDragged(III)Z
    .registers 4

    const/4 p1, 0x0

    .line 406
    iput p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->actionMask:I

    .line 407
    iget-object p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->activePointers:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, p3}, Lio/blueflower/stapel2d/util/IntList;->indexOf(I)I

    move-result p1

    .line 408
    iput p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->actionIndex:I

    .line 409
    iget-object p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->this$0:Lio/blueflower/stapel2d/touch/TouchMapper;

    iget-object p2, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->genericMotionEvent:Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/touch/TouchMapper;->map(Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public touchUp(IIII)Z
    .registers 8

    const/4 p1, -0x1

    move p2, p1

    .line 385
    :goto_2
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->activePointers:Lio/blueflower/stapel2d/util/IntList;

    const/4 v1, 0x1

    add-int/2addr p2, v1

    invoke-virtual {v0, p3, p2}, Lio/blueflower/stapel2d/util/IntList;->indexOf(II)I

    move-result p2

    if-ltz p2, :cond_15

    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->activeButtons:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v0

    if-eq v0, p4, :cond_15

    goto :goto_2

    :cond_15
    if-ltz p2, :cond_3e

    .line 387
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->activePointers:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    if-ne v0, v1, :cond_21

    const/4 v0, 0x2

    goto :goto_22

    :cond_21
    const/4 v0, 0x4

    :goto_22
    iput v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->actionMask:I

    .line 388
    iput p2, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->actionIndex:I

    .line 389
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->this$0:Lio/blueflower/stapel2d/touch/TouchMapper;

    iget-object v2, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->genericMotionEvent:Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/touch/TouchMapper;->map(Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;)V

    .line 390
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->touchIds:[I

    mul-int/lit8 p4, p4, 0xa

    add-int/2addr p3, p4

    aput p1, v0, p3

    .line 391
    iget-object p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->activePointers:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    .line 392
    iget-object p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->activeButtons:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    :cond_3e
    return v1
.end method

###### Class io.blueflower.stapel2d.touch.TouchMapper.AnonymousClass1.C12141 (io.blueflower.stapel2d.touch.TouchMapper$1$1)
.class public Lio/blueflower/stapel2d/touch/TouchMapper$1$1;
.super Ljava/lang/Object;
.source "TouchMapper.java"

# interfaces
.implements Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/blueflower/stapel2d/touch/TouchMapper$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/blueflower/stapel2d/touch/TouchMapper$1;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/touch/TouchMapper$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 306
    iput-object p1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1$1;->this$1:Lio/blueflower/stapel2d/touch/TouchMapper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionIndex()I
    .registers 2

    .line 324
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1$1;->this$1:Lio/blueflower/stapel2d/touch/TouchMapper$1;

    invoke-static {v0}, Lio/blueflower/stapel2d/touch/TouchMapper$1;->access$100(Lio/blueflower/stapel2d/touch/TouchMapper$1;)I

    move-result v0

    return v0
.end method

.method public getActionMasked()I
    .registers 2

    .line 334
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1$1;->this$1:Lio/blueflower/stapel2d/touch/TouchMapper$1;

    invoke-static {v0}, Lio/blueflower/stapel2d/touch/TouchMapper$1;->access$400(Lio/blueflower/stapel2d/touch/TouchMapper$1;)I

    move-result v0

    return v0
.end method

.method public getButton(I)I
    .registers 3

    .line 339
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1$1;->this$1:Lio/blueflower/stapel2d/touch/TouchMapper$1;

    invoke-static {v0}, Lio/blueflower/stapel2d/touch/TouchMapper$1;->access$300(Lio/blueflower/stapel2d/touch/TouchMapper$1;)Lio/blueflower/stapel2d/util/IntList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public getPointerCount()I
    .registers 2

    .line 319
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1$1;->this$1:Lio/blueflower/stapel2d/touch/TouchMapper$1;

    invoke-static {v0}, Lio/blueflower/stapel2d/touch/TouchMapper$1;->access$000(Lio/blueflower/stapel2d/touch/TouchMapper$1;)Lio/blueflower/stapel2d/util/IntList;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    return v0
.end method

.method public getPointerId(I)I
    .registers 5

    .line 329
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1$1;->this$1:Lio/blueflower/stapel2d/touch/TouchMapper$1;

    invoke-static {v0}, Lio/blueflower/stapel2d/touch/TouchMapper$1;->access$200(Lio/blueflower/stapel2d/touch/TouchMapper$1;)[I

    move-result-object v0

    iget-object v1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1$1;->this$1:Lio/blueflower/stapel2d/touch/TouchMapper$1;

    invoke-static {v1}, Lio/blueflower/stapel2d/touch/TouchMapper$1;->access$000(Lio/blueflower/stapel2d/touch/TouchMapper$1;)Lio/blueflower/stapel2d/util/IntList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    iget-object v2, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1$1;->this$1:Lio/blueflower/stapel2d/touch/TouchMapper$1;

    invoke-static {v2}, Lio/blueflower/stapel2d/touch/TouchMapper$1;->access$300(Lio/blueflower/stapel2d/touch/TouchMapper$1;)Lio/blueflower/stapel2d/util/IntList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    add-int/2addr v1, p1

    aget p1, v0, v1

    return p1
.end method

.method public getX(I)I
    .registers 4

    .line 309
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1$1;->this$1:Lio/blueflower/stapel2d/touch/TouchMapper$1;

    invoke-static {v1}, Lio/blueflower/stapel2d/touch/TouchMapper$1;->access$000(Lio/blueflower/stapel2d/touch/TouchMapper$1;)Lio/blueflower/stapel2d/util/IntList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Input;->getX(I)I

    move-result p1

    return p1
.end method

.method public getY(I)I
    .registers 4

    .line 314
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v1, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1$1;->this$1:Lio/blueflower/stapel2d/touch/TouchMapper$1;

    invoke-static {v1}, Lio/blueflower/stapel2d/touch/TouchMapper$1;->access$000(Lio/blueflower/stapel2d/touch/TouchMapper$1;)Lio/blueflower/stapel2d/util/IntList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Input;->getY(I)I

    move-result p1

    return p1
.end method

.method public isMouse()Z
    .registers 4

    .line 344
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1$1;->this$1:Lio/blueflower/stapel2d/touch/TouchMapper$1;

    iget-object v1, v0, Lio/blueflower/stapel2d/touch/TouchMapper$1;->this$0:Lio/blueflower/stapel2d/touch/TouchMapper;

    invoke-static {v0}, Lio/blueflower/stapel2d/touch/TouchMapper$1;->access$300(Lio/blueflower/stapel2d/touch/TouchMapper$1;)Lio/blueflower/stapel2d/util/IntList;

    move-result-object v0

    iget-object v2, p0, Lio/blueflower/stapel2d/touch/TouchMapper$1$1;->this$1:Lio/blueflower/stapel2d/touch/TouchMapper$1;

    invoke-static {v2}, Lio/blueflower/stapel2d/touch/TouchMapper$1;->access$100(Lio/blueflower/stapel2d/touch/TouchMapper$1;)I

    move-result v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v0

    invoke-static {v1, v0}, Lio/blueflower/stapel2d/touch/TouchMapper;->access$500(Lio/blueflower/stapel2d/touch/TouchMapper;I)Z

    move-result v0

    return v0
.end method

###### Class io.blueflower.stapel2d.touch.TouchMapper.FlushableInputProcessor (io.blueflower.stapel2d.touch.TouchMapper$FlushableInputProcessor)
.class public interface abstract Lio/blueflower/stapel2d/touch/TouchMapper$FlushableInputProcessor;
.super Ljava/lang/Object;
.source "TouchMapper.java"

# interfaces
.implements Lcom/badlogic/gdx/InputProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/blueflower/stapel2d/touch/TouchMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FlushableInputProcessor"
.end annotation


# virtual methods
.method public abstract flush()V
.end method

###### Class io.blueflower.stapel2d.touch.TouchMapper.MotionEvent (io.blueflower.stapel2d.touch.TouchMapper$MotionEvent)
.class public interface abstract Lio/blueflower/stapel2d/touch/TouchMapper$MotionEvent;
.super Ljava/lang/Object;
.source "TouchMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/blueflower/stapel2d/touch/TouchMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MotionEvent"
.end annotation


# virtual methods
.method public abstract getActionIndex()I
.end method

.method public abstract getActionMasked()I
.end method

.method public abstract getButton(I)I
.end method

.method public abstract getPointerCount()I
.end method

.method public abstract getPointerId(I)I
.end method

.method public abstract getX(I)I
.end method

.method public abstract getY(I)I
.end method

.method public abstract isMouse()Z
.end method

###### Class io.blueflower.stapel2d.gamestack.Stage (io.blueflower.stapel2d.gamestack.Stage)
.class public abstract Lio/blueflower/stapel2d/gamestack/Stage;
.super Ljava/lang/Object;
.source "Stage.java"


# instance fields
.field public stack:Lio/blueflower/stapel2d/gamestack/GameStack;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lio/blueflower/stapel2d/gamestack/Stage;->stack:Lio/blueflower/stapel2d/gamestack/GameStack;

    return-void
.end method

.method public drop()V
    .registers 2

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lio/blueflower/stapel2d/gamestack/Stage;->stack:Lio/blueflower/stapel2d/gamestack/GameStack;

    return-void
.end method

.method public abstract enter()V
.end method

.method public enterApp()V
    .registers 1

    .line 0
    return-void
.end method

.method public getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;
    .registers 2

    .line 16
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/Stage;->stack:Lio/blueflower/stapel2d/gamestack/GameStack;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 39
    const-string v0, "unknown"

    :cond_8
    return-object v0
.end method

.method public isBound()Z
    .registers 2

    .line 12
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/Stage;->stack:Lio/blueflower/stapel2d/gamestack/GameStack;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public abstract leave()V
.end method

.method public leaveApp()V
    .registers 1

    .line 0
    return-void
.end method

.method public abstract prepare()V
.end method

.method public abstract update()V
.end method

###### Class info.flowersoft.theotown.stages.ExperimentalStage (info.flowersoft.theotown.stages.ExperimentalStage)
.class public Linfo/flowersoft/theotown/stages/ExperimentalStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "ExperimentalStage.java"


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 1

    .line 25
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    return-void
.end method

.method public leave()V
    .registers 1

    .line 30
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->leave()V

    return-void
.end method

.method public onUpdate()V
    .registers 1

    .line 0
    return-void
.end method

.method public prepare()V
    .registers 1

    .line 18
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->prepare()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 40
    const-string v0, "ExperimentalStage"

    return-object v0
.end method

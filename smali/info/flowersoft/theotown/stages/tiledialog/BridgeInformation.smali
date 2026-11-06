###### Class info.flowersoft.theotown.stages.tiledialog.BridgeInformation (info.flowersoft.theotown.stages.tiledialog.BridgeInformation)
.class public Linfo/flowersoft/theotown/stages/tiledialog/BridgeInformation;
.super Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;
.source "BridgeInformation.java"


# instance fields
.field public isBridge:Z

.field public road:Linfo/flowersoft/theotown/city/objects/Road;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle()Z
    .registers 2

    .line 35
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/BridgeInformation;->isBridge:Z

    return v0
.end method

.method public finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/ui/Dialog;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public isMutualExclusive()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public setContext(Linfo/flowersoft/theotown/city/City;II)V
    .registers 4

    .line 22
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->setContext(Linfo/flowersoft/theotown/city/City;II)V

    .line 24
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    .line 25
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/BridgeInformation;->road:Linfo/flowersoft/theotown/city/objects/Road;

    if-eqz p1, :cond_1c

    .line 27
    iget p2, p1, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-ltz p2, :cond_19

    if-nez p2, :cond_1c

    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez p1, :cond_1c

    :cond_19
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/BridgeInformation;->road:Linfo/flowersoft/theotown/city/objects/Road;

    .line 30
    :cond_1c
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/BridgeInformation;->road:Linfo/flowersoft/theotown/city/objects/Road;

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    iput-boolean p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/BridgeInformation;->isBridge:Z

    return-void
.end method

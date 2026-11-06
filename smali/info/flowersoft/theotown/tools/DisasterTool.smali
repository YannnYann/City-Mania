###### Class info.flowersoft.theotown.tools.DisasterTool (info.flowersoft.theotown.tools.DisasterTool)
.class public abstract Linfo/flowersoft/theotown/tools/DisasterTool;
.super Linfo/flowersoft/theotown/tools/BuildTool;
.source "DisasterTool.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/BuildTool;-><init>()V

    return-void
.end method


# virtual methods
.method public drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 11

    .line 31
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetHover:Z

    if-eqz v0, :cond_1f

    iget v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetX:I

    if-ne v0, p1, :cond_1f

    iget v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetY:I

    if-ne v0, p2, :cond_1f

    .line 32
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    .line 33
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_MARKER:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    :cond_1f
    return-void
.end method

.method public abstract getDisasterType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Linfo/flowersoft/theotown/city/components/Disaster;",
            ">;"
        }
    .end annotation
.end method

.method public getIcon()I
    .registers 2

    .line 18
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_CATASTROPHES:I

    return v0
.end method

.method public onClick(IIFFII)V
    .registers 7

    .line 23
    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 p4, 0x6

    invoke-virtual {p3, p4}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p3

    check-cast p3, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    .line 24
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/DisasterTool;->getDisasterType()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3, p4, p1, p2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->issueDisaster(Ljava/lang/Class;II)Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->canAchieve()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 25
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string p2, "issue_disaster"

    invoke-interface {p1, p2}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    :cond_22
    return-void
.end method

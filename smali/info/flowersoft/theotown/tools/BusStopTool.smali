###### Class info.flowersoft.theotown.tools.BusStopTool (info.flowersoft.theotown.tools.BusStopTool)
.class public Linfo/flowersoft/theotown/tools/BusStopTool;
.super Linfo/flowersoft/theotown/tools/BuildTool;
.source "BusStopTool.java"


# instance fields
.field public final draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

.field public price:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/BusStopDraft;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/BuildTool;-><init>()V

    .line 26
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BusStopTool;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    .line 28
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->addUndoButton()V

    return-void
.end method

.method private isValid(II)Z
    .registers 5

    .line 90
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BusStopTool;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    invoke-virtual {v0, v1, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPrice(Linfo/flowersoft/theotown/draft/BusStopDraft;II)J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/tools/BusStopTool;->price:J

    .line 91
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BusStopTool;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    invoke-virtual {v0, v1, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BusStopDraft;II)Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p1

    iget-wide v0, p0, Linfo/flowersoft/theotown/tools/BusStopTool;->price:J

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    return p1

    :cond_22
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 38
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 39
    new-instance v0, Linfo/flowersoft/theotown/tools/BusStopTool$1;

    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->PASSENGER_BUS:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-direct {v0, p0, p1, v1, p1}, Linfo/flowersoft/theotown/tools/BusStopTool$1;-><init>(Linfo/flowersoft/theotown/tools/BusStopTool;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/InfluenceType;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    return-void
.end method

.method public drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 11

    .line 82
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetHover:Z

    if-eqz v0, :cond_36

    iget v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetX:I

    if-ne v0, p1, :cond_36

    iget v1, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetY:I

    if-ne v1, p2, :cond_36

    .line 83
    iget-object v2, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0, v0, v1}, Linfo/flowersoft/theotown/tools/BusStopTool;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_19

    :cond_17
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    :goto_19
    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 84
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_YELLOW_DOTTED:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 85
    iget-object p1, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_36
    return-void
.end method

.method public drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z
    .registers 6

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/BuildTool;->drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z

    .line 65
    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/tools/BusStopTool;->isValid(II)Z

    move-result v0

    if-nez v0, :cond_38

    .line 66
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2, p4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 68
    iget p2, p1, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez p2, :cond_24

    .line 69
    sget-object p2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    neg-int p1, p1

    mul-int/lit8 p1, p1, 0xc

    int-to-float p1, p1

    sget p4, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_RED_DOTTED:I

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0, p1, p4}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    goto :goto_36

    .line 71
    :cond_24
    invoke-static {p2}, Linfo/flowersoft/theotown/city/Direction;->turnCCW(I)I

    move-result p4

    or-int/2addr p2, p4

    invoke-static {p2}, Linfo/flowersoft/theotown/city/Direction;->turnCCW(I)I

    move-result p2

    .line 72
    sget-object p4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    sget v0, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_RED_DOTTED:I

    invoke-static {p3, p4, p1, p2, v0}, Linfo/flowersoft/theotown/city/objects/Ground;->drawFrameOnCustomSlope(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;III)V

    :goto_36
    const/4 p1, 0x1

    return p1

    :cond_38
    const/4 p1, 0x0

    return p1
.end method

.method public getIcon()I
    .registers 2

    .line 96
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_BUS_TRANSPORT:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BusStop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BusStopTool;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 101
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BusStopTool;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(IIFFII)V
    .registers 13

    .line 49
    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/tools/BusStopTool;->isValid(II)Z

    move-result p3

    if-eqz p3, :cond_41

    .line 50
    invoke-virtual {p0, p1, p2, p1, p2}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIII)V

    .line 52
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v0

    iget-wide p3, p0, Linfo/flowersoft/theotown/tools/BusStopTool;->price:J

    long-to-double v1, p3

    int-to-float v3, p1

    int-to-float v4, p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "build bus stop "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Linfo/flowersoft/theotown/tools/BusStopTool;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget-object p4, p4, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DFFLjava/lang/String;)V

    .line 53
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object p4, p0, Linfo/flowersoft/theotown/tools/BusStopTool;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    invoke-virtual {p3, p4, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/BusStopDraft;II)Linfo/flowersoft/theotown/city/objects/BusStop;

    .line 55
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_BUILD:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->playSound(IIIII)V

    .line 56
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->issueMovement()V

    .line 58
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    :cond_41
    return-void
.end method

###### Class info.flowersoft.theotown.tools.BusStopTool.AnonymousClass1 (info.flowersoft.theotown.tools.BusStopTool$1)
.class public Linfo/flowersoft/theotown/tools/BusStopTool$1;
.super Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;
.source "BusStopTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/BusStopTool;->bind(Linfo/flowersoft/theotown/city/City;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/BusStopTool;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/BusStopTool;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/InfluenceType;Linfo/flowersoft/theotown/city/City;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 39
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BusStopTool$1;->this$0:Linfo/flowersoft/theotown/tools/BusStopTool;

    iput-object p4, p0, Linfo/flowersoft/theotown/tools/BusStopTool$1;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p0, p2, p3}, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/InfluenceType;)V

    return-void
.end method


# virtual methods
.method public useOverlay(II)Z
    .registers 4

    .line 42
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->useOverlay(II)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BusStopTool$1;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->hasVisibleRoad(II)Z

    move-result p1

    if-nez p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

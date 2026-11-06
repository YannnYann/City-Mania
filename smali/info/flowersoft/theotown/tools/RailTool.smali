###### Class info.flowersoft.theotown.tools.RailTool (info.flowersoft.theotown.tools.RailTool)
.class public Linfo/flowersoft/theotown/tools/RailTool;
.super Linfo/flowersoft/theotown/tools/TwoModesTool;
.source "RailTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/tools/RailTool$ConnectionCandidate;
    }
.end annotation


# instance fields
.field public final connectionCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/tools/RailTool$ConnectionCandidate;",
            ">;"
        }
    .end annotation
.end field

.field public final draft:Linfo/flowersoft/theotown/draft/RailDraft;

.field public price:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/RailDraft;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/RailTool;->connectionCandidates:Ljava/util/List;

    .line 30
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RailTool;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/TwoModesTool;->setHasToBeLine(Z)V

    .line 34
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->addUndoButton()V

    return-void
.end method

.method private addCandidate(III)V
    .registers 7

    .line 97
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 98
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 99
    invoke-static {p3}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v2

    add-int/2addr p1, v2

    invoke-static {p3}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v2

    add-int/2addr p2, v2

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p1

    if-nez p1, :cond_33

    .line 100
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Rail;->getConnectionDir()I

    move-result p1

    invoke-static {p3, p1}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result p1

    if-nez p1, :cond_33

    .line 101
    new-instance p1, Linfo/flowersoft/theotown/tools/RailTool$ConnectionCandidate;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Linfo/flowersoft/theotown/tools/RailTool$ConnectionCandidate;-><init>(Linfo/flowersoft/theotown/tools/RailTool$1;)V

    .line 102
    iput-object v0, p1, Linfo/flowersoft/theotown/tools/RailTool$ConnectionCandidate;->rail:Linfo/flowersoft/theotown/city/objects/Rail;

    .line 103
    iput p3, p1, Linfo/flowersoft/theotown/tools/RailTool$ConnectionCandidate;->dir:I

    .line 104
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/RailTool;->connectionCandidates:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    return-void
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 44
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 45
    new-instance v0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;

    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->PASSENGER_TRAIN:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/InfluenceType;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    return-void
.end method

.method public build(IIII)V
    .registers 16

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RailTool;->connectionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIII)V

    .line 54
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/tools/RailTool;->price:J

    long-to-double v1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "build rail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Linfo/flowersoft/theotown/tools/RailTool;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DLjava/lang/String;)V

    .line 55
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v5, p0, Linfo/flowersoft/theotown/tools/RailTool;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    const/4 v10, 0x0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v4 .. v10}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/RailDraft;IIIILvm2/LuaValue;)Ljava/util/List;

    if-ne v6, v8, :cond_37

    if-eq v7, v9, :cond_49

    :cond_37
    sub-int p3, v8, v6

    sub-int p4, v9, v7

    .line 58
    invoke-static {p3, p4}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result p1

    .line 59
    invoke-static {p1}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result p2

    invoke-direct {p0, v6, v7, p2}, Linfo/flowersoft/theotown/tools/RailTool;->addCandidate(III)V

    .line 60
    invoke-direct {p0, v8, v9, p1}, Linfo/flowersoft/theotown/tools/RailTool;->addCandidate(III)V

    .line 63
    :cond_49
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_BUILD:I

    invoke-virtual {p0, p1, v8, v9}, Linfo/flowersoft/theotown/tools/TwoModesTool;->playSound(III)V

    .line 64
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->issueMovement()V

    .line 66
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    .line 68
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/RailTool;->connectionCandidates:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    return-void
.end method

.method public drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 12

    .line 122
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawHelperLines(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 123
    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v4

    .line 125
    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    if-eqz v5, :cond_68

    const/4 v6, 0x1

    if-eq v5, v6, :cond_16

    goto/16 :goto_94

    .line 135
    :cond_16
    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    if-ne v5, p1, :cond_3e

    iget v6, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    if-ne v6, p2, :cond_3e

    .line 136
    iget-boolean v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    if-eqz v5, :cond_2d

    iget-boolean v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetValid:Z

    if-nez v5, :cond_2d

    iget-object v5, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 137
    :cond_2d
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_CHECKER:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 138
    iget-object v1, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void

    .line 139
    :cond_3e
    iget v4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    invoke-virtual {p0, v5, v4, p1, p2}, Linfo/flowersoft/theotown/tools/RailTool;->isValid(IIII)Z

    move-result v4

    if-eqz v4, :cond_94

    invoke-virtual/range {p0 .. p2}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isTileInvolved(II)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 140
    iget v4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    sub-int/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 141
    sget v4, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_GREEN_DOTTED:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawOverlay(Linfo/flowersoft/theotown/city/Drawer;IIII)V

    return-void

    .line 127
    :cond_68
    iget-boolean v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetHover:Z

    if-eqz v5, :cond_94

    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    if-ne v5, p1, :cond_94

    iget v6, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    if-ne v6, p2, :cond_94

    .line 128
    iget-object v7, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p0, v5, v6}, Linfo/flowersoft/theotown/tools/RailTool;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_7f

    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_81

    :cond_7f
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    :goto_81
    invoke-virtual {v7, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 129
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_YELLOW_DOTTED:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 130
    iget-object v0, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_94
    :goto_94
    return-void
.end method

.method public getIcon()I
    .registers 2

    .line 149
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRAFFIC:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RailTool;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 154
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RailTool;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValid(II)Z
    .registers 9

    .line 110
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RailTool;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    move v4, p1

    move v5, p2

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPrice(Linfo/flowersoft/theotown/draft/RailDraft;IIII)J

    move-result-wide p1

    iput-wide p1, p0, Linfo/flowersoft/theotown/tools/RailTool;->price:J

    .line 111
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RailTool;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/RailDraft;IIII)Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p1

    iget-wide v0, p0, Linfo/flowersoft/theotown/tools/RailTool;->price:J

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    return p1

    :cond_28
    const/4 p1, 0x0

    return p1
.end method

.method public isValid(IIII)Z
    .registers 11

    .line 116
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RailTool;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPrice(Linfo/flowersoft/theotown/draft/RailDraft;IIII)J

    move-result-wide p1

    iput-wide p1, p0, Linfo/flowersoft/theotown/tools/RailTool;->price:J

    .line 117
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RailTool;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/RailDraft;IIII)Z

    move-result p1

    if-eqz p1, :cond_2a

    if-ne v2, v4, :cond_1c

    if-eq v3, v5, :cond_2a

    :cond_1c
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p1

    iget-wide p2, p0, Linfo/flowersoft/theotown/tools/RailTool;->price:J

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result p1

    if-eqz p1, :cond_2a

    const/4 p1, 0x1

    return p1

    :cond_2a
    const/4 p1, 0x0

    return p1
.end method

###### Class info.flowersoft.theotown.tools.RailTool.AnonymousClass1 (info.flowersoft.theotown.tools.RailTool$1)
.class public Linfo/flowersoft/theotown/tools/RailTool$1;
.super Ljava/lang/Object;
.source "RailTool.java"

# interfaces
.implements Ljava/lang/Runnable;

###### Class info.flowersoft.theotown.tools.RailTool.ConnectionCandidate (info.flowersoft.theotown.tools.RailTool$ConnectionCandidate)
.class public Linfo/flowersoft/theotown/tools/RailTool$ConnectionCandidate;
.super Ljava/lang/Object;
.source "RailTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/tools/RailTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionCandidate"
.end annotation


# instance fields
.field public dir:I

.field public rail:Linfo/flowersoft/theotown/city/objects/Rail;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tools/RailTool$1;)V
    .registers 2

    .line 157
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/RailTool$ConnectionCandidate;-><init>()V

    return-void
.end method

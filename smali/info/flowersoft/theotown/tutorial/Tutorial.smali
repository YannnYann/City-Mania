###### Class info.flowersoft.theotown.tutorial.Tutorial (info.flowersoft.theotown.tutorial.Tutorial)
.class public Linfo/flowersoft/theotown/tutorial/Tutorial;
.super Ljava/lang/Object;
.source "Tutorial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;
    }
.end annotation


# static fields
.field public static final FLAG_ALERT:I

.field public static final FLAG_BUILD:I

.field public static final FLAG_CATASTROPHE:I

.field public static final FLAG_DATE:I

.field public static final FLAG_DEMAND:I

.field public static final FLAG_DIAMONDS:I

.field public static final FLAG_FEATURES:I

.field public static final FLAG_HALF_TUNNEL_PRICE:I

.field public static final FLAG_IDLE_CASH:I

.field public static final FLAG_MAP:I

.field public static final FLAG_MONEY:I

.field public static final FLAG_NAME:I

.field public static final FLAG_NOTIFICATION:I

.field public static final FLAG_OFFER:I

.field public static final FLAG_PLUGIN_STORE:I

.field public static final FLAG_PRESENT:I

.field public static final FLAG_RANK:I

.field public static final FLAG_RATING:I

.field public static final FLAG_REGION:I

.field public static final FLAG_REMOVE:I

.field public static final FLAG_SHORT_BUILD_TIME:I

.field public static final FLAG_SPECIAL_OFFER:I

.field public static final FLAG_TASK:I

.field public static final FLAG_VIEW:I

.field public static instance:Linfo/flowersoft/theotown/tutorial/Tutorial; = null

.field public static lastText:Ljava/lang/String; = null

.field public static markMask:I = 0x0

.field public static nextAllocId:I = 0x1

.field public static tmpTool:Linfo/flowersoft/theotown/city/components/Tool;

.field public static visibleMask:I


# instance fields
.field public active:Z

.field public activeStage:Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

.field public city:Linfo/flowersoft/theotown/city/City;

.field public context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public currentIcon:I

.field public currentShowMask:I

.field public currentStage:I

.field public date:Linfo/flowersoft/theotown/components/DefaultDate;

.field public focusActive:Z

.field public focusLastMS:J

.field public focusScale:F

.field public focusStartMS:J

.field public focusStartScale:F

.field public focusStartX:F

.field public focusStartY:F

.field public focusX:F

.field public focusY:F

.field public gadget:Lio/blueflower/stapel2d/gui/Gadget;

.field public gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

.field public gui:Lio/blueflower/stapel2d/gui/Master;

.field public lastStageChange:J

.field public management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

.field public notificationBar:Linfo/flowersoft/theotown/ui/NotificationBar;

.field public originalBuildMask:Linfo/flowersoft/theotown/city/components/BuildMask;

.field public parent:Lio/blueflower/stapel2d/gui/Gadget;

.field public people:Linfo/flowersoft/theotown/components/DefaultPeople;

.field public power:Linfo/flowersoft/theotown/components/DefaultPower;

.field public final runNextStage:Ljava/lang/Runnable;

.field public final runNextStageAction:Linfo/flowersoft/theotown/city/components/NotificationAction;

.field public final stages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;",
            ">;"
        }
    .end annotation
.end field

.field public tutorialBuildMask:Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;

.field public user_building:Linfo/flowersoft/theotown/city/objects/Building;

.field public user_x:F

.field public water:Linfo/flowersoft/theotown/components/DefaultWater;


# direct methods
.method public static synthetic $r8$lambda$1RYc3yBcG6vZfrGhCFUPfZ3fKYg(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 4

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x42340000    # 45.0f

    const/high16 v2, 0x41e00000    # 28.0f

    .line 391
    invoke-virtual {p0, v1, v2, v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->focus(FFF)V

    .line 392
    new-instance v0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;-><init>()V

    .line 393
    const-string v1, "cmdOk"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;)V

    .line 394
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3YHgu9LiUF2VLQwpHEV4IMVRPDQ(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 3

    .line 286
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    const/4 v1, 0x1

    .line 286
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultDate;->setSpeed(I)V

    .line 287
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->power:Linfo/flowersoft/theotown/components/DefaultPower;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultPower;->getWorker()Linfo/flowersoft/theotown/components/power/PowerWorker;

    move-result-object p0

    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/power/PowerWorker;->setAdaptionRate(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$3zCCBldjyGuxhNwlvC7B07r4aMs(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 1146
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    .line 1146
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4Ewe1FCwRpO24st5DMb_T3ZryrU(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/draft/BuildingDraft;FLjava/util/List;)V
    .registers 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 1168
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    iget v2, p2, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    iget v2, p2, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    int-to-float p1, p1

    invoke-virtual {p0, v1, p1, p3}, Linfo/flowersoft/theotown/tutorial/Tutorial;->focus(FFF)V

    .line 1169
    new-instance p1, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    invoke-direct {p1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;-><init>()V

    move p3, v0

    .line 1170
    :goto_22
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_34

    .line 1171
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_22

    .line 1173
    :cond_34
    const-string p3, "cmdBuild"

    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;)V

    .line 1174
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "selectable:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;)V

    .line 1175
    iget-object p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {p2, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    .line 1176
    new-array p1, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->inCaseOfCityInfo([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5K7ipZtr9nA4Re6SpYjnBQWCVoU(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    new-instance v0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;-><init>()V

    .line 300
    const-string v1, "cmdOk"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    .line 302
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->user_building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->user_building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/tutorial/Tutorial;->focus(FFF)V

    :cond_27
    return-void
.end method

.method public static synthetic $r8$lambda$5l0IOqPSc4s71tH4idBqGLCqP6M(Linfo/flowersoft/theotown/tutorial/Tutorial;Linfo/flowersoft/theotown/city/Tiles;II)Z
    .registers 4

    .line 667
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    if-eqz p0, :cond_10

    .line 667
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$7nWWFnIm4QIjoUZe95FxnR0WKLU(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/draft/BuildingDraft;)Ljava/lang/Boolean;
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 1154
    :goto_4
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 1155
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    .line 1156
    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    .line 1157
    iget-object v3, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 1158
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v1

    invoke-virtual {p2, v1}, Linfo/flowersoft/theotown/draft/Draft;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_2e

    :cond_2b
    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    .line 1159
    :cond_2e
    :goto_2e
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 1162
    :cond_31
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic $r8$lambda$88kD_B4tXk5yPTtGUiALnryyMqY(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 3

    .line 1143
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xd

    .line 1143
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/tutorial/Tutorial;->tmpTool:Linfo/flowersoft/theotown/city/components/Tool;

    if-eq v0, v1, :cond_11

    .line 1144
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    :cond_11
    return-void
.end method

.method public static synthetic $r8$lambda$9m9_RkpMhRX77mV9c96e1QWTfG0(Linfo/flowersoft/theotown/tutorial/Tutorial;IIIILinfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;)V
    .registers 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1238
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1239
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1240
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1241
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1242
    iget-object p3, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->tutorialBuildMask:Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p2, v1

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, v0, v1, p1, p2}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->addTiles(IIII)V

    .line 1243
    iget-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->tutorialBuildMask:Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;

    iget-object p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->runNextStage:Ljava/lang/Runnable;

    invoke-virtual {p1, p5, p2}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->setCondition(Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;Ljava/lang/Runnable;)V

    .line 1244
    new-instance p1, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    invoke-direct {p1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;-><init>()V

    .line 1245
    const-string p2, "cmdCloseTool"

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->removeButton(Ljava/lang/String;)V

    .line 1246
    iget-object p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {p2, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    const/4 p1, 0x0

    .line 1247
    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->inCaseOfCityInfo([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AoUAvW1G1_JEU7jpXRpBNoxDOiY(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 3

    .line 1249
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xd

    .line 1249
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/tutorial/Tutorial;->tmpTool:Linfo/flowersoft/theotown/city/components/Tool;

    if-eq v0, v1, :cond_11

    .line 1250
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    :cond_11
    return-void
.end method

.method public static synthetic $r8$lambda$B9afzinETLCN4kv8VUdpU8-XC1A(Linfo/flowersoft/theotown/tutorial/Tutorial;Ljava/lang/Class;)V
    .registers 4

    .line 1129
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xd

    .line 1129
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Tool;

    sput-object v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->tmpTool:Linfo/flowersoft/theotown/city/components/Tool;

    .line 1130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->nextStage()V

    :cond_19
    return-void
.end method

.method public static synthetic $r8$lambda$C2Hb8RDqasWxaZG4QeS3r2uZe4Y(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 369
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->user_building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_c

    .line 369
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_c

    :cond_b
    return-void

    :cond_c
    :goto_c
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->nextStage()V

    return-void
.end method

.method public static synthetic $r8$lambda$I25SXWl6ZAe5r3ansbiCV9O-2Is(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 3

    .line 365
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    const/4 v1, 0x1

    .line 365
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultDate;->setSpeed(I)V

    .line 366
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->user_x:F

    return-void
.end method

.method public static synthetic $r8$lambda$Io_NYqDIZHkrEegB4fQxoRc4cUw(Linfo/flowersoft/theotown/tutorial/Tutorial;Linfo/flowersoft/theotown/city/Tiles;II)Z
    .registers 4

    .line 382
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    if-eqz p0, :cond_10

    .line 382
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$J-bvz57Zbvxx5dbE76qTPtInf5Q(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    const/4 v0, 0x0

    .line 727
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->inCaseOfCityInfo([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Krj1H0YIEQeA7JA-Jt7EhAD3HXc(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/Getter;)V
    .registers 4

    .line 1178
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xd

    .line 1178
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Tool;

    sput-object v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->tmpTool:Linfo/flowersoft/theotown/city/components/Tool;

    .line 1179
    instance-of v0, v0, Linfo/flowersoft/theotown/tools/BuildingTool;

    if-nez v0, :cond_1e

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1e

    :cond_1d
    return-void

    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->nextStage()V

    return-void
.end method

.method public static synthetic $r8$lambda$MLcg9vAqDZ50AKYH9b4YIJqVOCA(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 672
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_RANK:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->mark(I)V

    .line 673
    new-instance v0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;-><init>()V

    .line 674
    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->runNextStage:Ljava/lang/Runnable;

    const-string v2, "cmdRank"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 675
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OatcQEVBWXiT919_3NCnuDum42I(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;)V
    .registers 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    move v1, v0

    .line 1134
    :goto_5
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 1135
    iget-object v2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->tutorialBuildMask:Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->addTile(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    .line 1137
    :cond_1d
    iget-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->tutorialBuildMask:Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->runNextStage:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v1}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->setCondition(Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;Ljava/lang/Runnable;)V

    .line 1138
    new-instance p1, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    invoke-direct {p1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;-><init>()V

    .line 1139
    const-string p2, "cmdCloseTool"

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->removeButton(Ljava/lang/String;)V

    .line 1140
    iget-object p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {p2, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    .line 1141
    new-array p1, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->inCaseOfCityInfo([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R4Dje078GAqYoJ9xdY9V6MWAhrw(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 690
    new-instance v0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;-><init>()V

    .line 691
    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->runNextStage:Ljava/lang/Runnable;

    const-string v2, "cmdAlertCollector"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 692
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RHfD_E9GtTY_vkJAUNn8EdqVJHU(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 704
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    .line 704
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TjDmtImYAVqLbg5bX7F-tNop_M0(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 731
    new-instance v0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;-><init>()V

    .line 732
    const-string v1, "cmdOk"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;)V

    .line 733
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UXiLJojYyoE0bIH6MfCBH5frpOs(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/Getter;)V
    .registers 4

    .line 1197
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xd

    .line 1197
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/tutorial/Tutorial;->tmpTool:Linfo/flowersoft/theotown/city/components/Tool;

    if-eq v0, v1, :cond_11

    .line 1198
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1200
    :cond_11
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 1201
    iget-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1202
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->nextStage()V

    :cond_29
    return-void
.end method

.method public static synthetic $r8$lambda$Vb4295Hry85U0MoDSNN0gytR1XM(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 3

    .line 289
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 289
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->properties:[Linfo/flowersoft/theotown/city/components/BuildingProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/BuildingProperty;->getBuilding()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->user_building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_16

    .line 290
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->nextStage()V

    :cond_16
    return-void
.end method

.method public static synthetic $r8$lambda$Vid0ggH75iwS4uV6rUk_pmh6vk8(Linfo/flowersoft/theotown/tutorial/Tutorial;Ljava/util/List;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1216
    new-instance v0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 1217
    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1c

    .line 1218
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1220
    :cond_1c
    iget-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    .line 1221
    new-array p1, v1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->inCaseOfCityInfo([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W1ivT18K5fPIPlT6c4IIy4_oBP4(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/draft/BuildingDraft;[IZ)V
    .registers 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    move v1, v0

    .line 1183
    :goto_5
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 1184
    iget-object v2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->tutorialBuildMask:Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    iget v5, p2, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    iget v6, p2, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    invoke-virtual {v2, v3, v4, v5, v6}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->addTiles(IIII)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    .line 1186
    :cond_21
    new-instance p1, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    invoke-direct {p1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;-><init>()V

    .line 1187
    const-string v1, "cmdPrev"

    invoke-virtual {p1, v1, v0}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;Z)V

    .line 1188
    const-string v1, "cmdNext"

    invoke-virtual {p1, v1, v0}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;Z)V

    .line 1189
    const-string v1, "cmdBuildTool"

    invoke-virtual {p1, v1, v0}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;Z)V

    .line 1190
    const-string v1, "cmdCloseTool"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->removeButton(Ljava/lang/String;)V

    .line 1191
    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    .line 1192
    iget-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object p1

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    aput p1, p3, v0

    .line 1193
    new-array p1, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->inCaseOfCityInfo([Ljava/lang/String;)V

    if-eqz p4, :cond_58

    .line 1195
    iput v0, p2, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildTime:I

    :cond_58
    return-void
.end method

.method public static synthetic $r8$lambda$_DZobezgcpDrsKWSycdgbuK1TOQ(Linfo/flowersoft/theotown/tutorial/Tutorial;ILio/blueflower/stapel2d/util/IntList;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p1, p1, 0x4

    .line 1253
    invoke-virtual {p2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result p2

    if-lt p1, p2, :cond_14

    .line 1254
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    :cond_14
    return-void
.end method

.method public static synthetic $r8$lambda$eB9NHlwO3vYXjeZNqNWi0I0Lk40(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    .line 372
    iget p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->user_x:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v1

    sub-int/2addr p0, v1

    if-lez p0, :cond_1a

    const/4 v1, 0x1

    .line 373
    const-string v2, "tutorial present"

    invoke-virtual {v0, p0, v1, v2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnDiamonds(IZLjava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public static synthetic $r8$lambda$eYyPRVv4JN3oGNGVvUV6VedarpI(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 680
    new-instance v0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;-><init>()V

    .line 681
    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->runNextStage:Ljava/lang/Runnable;

    const-string v2, "cmdClose"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 682
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f1bp-GKpOWRhjvj_FX7UhPBWpRE(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 711
    new-instance v0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;-><init>()V

    .line 712
    const-string v1, "cmdViewMarkerCollector"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;Z)V

    .line 713
    const-string v1, "cmdAlertCollector"

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;Z)V

    .line 714
    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->runNextStage:Ljava/lang/Runnable;

    const-string v2, "cmdPresent"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 715
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hPAIWkX1w_PpnsOgOndcSsGwYmc(Linfo/flowersoft/theotown/tutorial/Tutorial;Linfo/flowersoft/theotown/draft/BuildingDraft;I)V
    .registers 4

    .line 1205
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    .line 1205
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1206
    iput p2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildTime:I

    return-void
.end method

.method public static synthetic $r8$lambda$lVeBiSPO4VWLEjyXNE4qamGB_20(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 700
    new-instance v0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;-><init>()V

    .line 701
    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->runNextStage:Ljava/lang/Runnable;

    const-string v2, "cmdViewMarkerCollector"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 702
    const-string v1, "cmdAlertCollector"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;Z)V

    .line 703
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$neSrdkLiRO5TLg6vvGF25SFd3j8(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/IntList;Ljava/util/List;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 1119
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p0, v1, p1, v2}, Linfo/flowersoft/theotown/tutorial/Tutorial;->focus(FFF)V

    .line 1121
    new-instance p1, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    invoke-direct {p1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;-><init>()V

    move v1, v0

    .line 1122
    :goto_1a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 1123
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1125
    :cond_2c
    iget-object p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {p2, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    .line 1127
    new-array p1, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->inCaseOfCityInfo([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rhqWAq7hLYIr5UrjfA58gWTsJbM(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 3

    .line 292
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    const/4 v1, 0x2

    .line 292
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultDate;->setSpeed(I)V

    .line 293
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->power:Linfo/flowersoft/theotown/components/DefaultPower;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultPower;->getWorker()Linfo/flowersoft/theotown/components/power/PowerWorker;

    move-result-object p0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/power/PowerWorker;->setDefaultAdaptionRate()V

    return-void
.end method

.method public static synthetic $r8$lambda$u1Aw7P0RfF9G3rIta6MyZuJmPWw(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 4

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x422c0000    # 43.0f

    const/high16 v2, 0x41c00000    # 24.0f

    .line 400
    invoke-virtual {p0, v1, v2, v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->focus(FFF)V

    .line 401
    new-instance v0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;-><init>()V

    .line 402
    const-string v1, "cmdOk"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;)V

    .line 403
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vnz3F1d8uwNdqb3vzz8ivOQXvgs(Linfo/flowersoft/theotown/tutorial/Tutorial;Linfo/flowersoft/theotown/city/Tiles;II)Z
    .registers 4

    .line 317
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    if-eqz p0, :cond_10

    .line 317
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->hasWire(II)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$vrLRuuJGc63Pdxze7YwKcdwjTMA(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 747
    new-instance v0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;-><init>()V

    .line 748
    const-string v1, "cmdOk"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;)V

    .line 749
    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    .line 750
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getSpeed()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultDate;->setSpeed(I)V

    :cond_21
    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 71
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->alloc()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_DATE:I

    .line 72
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->alloc()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_NAME:I

    .line 73
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->alloc()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_RATING:I

    .line 74
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->alloc()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_MONEY:I

    .line 75
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->alloc()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_DIAMONDS:I

    .line 76
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->alloc()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_MAP:I

    .line 77
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->alloc()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_REGION:I

    .line 78
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->alloc()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_RANK:I

    .line 79
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->alloc()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_PRESENT:I

    .line 80
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->alloc()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_REMOVE:I

    .line 81
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->alloc()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_VIEW:I

    .line 82
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->alloc()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_ALERT:I

    .line 83
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->alloc()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_DEMAND:I

    .line 84
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->alloc()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_BUILD:I

    .line 85
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->alloc()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_NOTIFICATION:I

    .line 86
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->alloc()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_CATASTROPHE:I

    .line 87
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->alloc()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_IDLE_CASH:I

    .line 88
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->alloc()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_FEATURES:I

    .line 89
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->alloc()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_OFFER:I

    .line 90
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->alloc()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_SPECIAL_OFFER:I

    .line 91
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->alloc()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_TASK:I

    .line 92
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->alloc()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_SHORT_BUILD_TIME:I

    .line 93
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->alloc()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_HALF_TUNNEL_PRICE:I

    .line 94
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->alloc()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_PLUGIN_STORE:I

    const/4 v0, -0x1

    .line 96
    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->visibleMask:I

    const/4 v0, 0x0

    .line 97
    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->markMask:I

    const/4 v0, 0x0

    .line 100
    sput-object v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->lastText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Linfo/flowersoft/theotown/tutorial/Tutorial$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$1;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->runNextStage:Ljava/lang/Runnable;

    .line 108
    new-instance v1, Linfo/flowersoft/theotown/city/components/NotificationAction;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const-string v3, "cmdOk"

    invoke-direct {v1, v2, v0, v3}, Linfo/flowersoft/theotown/city/components/NotificationAction;-><init>(ILjava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->runNextStageAction:Linfo/flowersoft/theotown/city/components/NotificationAction;

    .line 774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->stages:Ljava/util/List;

    const/4 v0, 0x0

    .line 775
    iput v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentStage:I

    .line 800
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->focusActive:Z

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 1

    .line 61
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->nextStage()V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/tutorial/Tutorial;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 61
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$1000()Linfo/flowersoft/theotown/city/components/Tool;
    .registers 1

    .line 61
    sget-object v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->tmpTool:Linfo/flowersoft/theotown/city/components/Tool;

    return-object v0
.end method

.method public static synthetic access$1002(Linfo/flowersoft/theotown/city/components/Tool;)Linfo/flowersoft/theotown/city/components/Tool;
    .registers 1

    .line 61
    sput-object p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->tmpTool:Linfo/flowersoft/theotown/city/components/Tool;

    return-object p0
.end method

.method public static synthetic access$1100(Linfo/flowersoft/theotown/tutorial/Tutorial;)Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;
    .registers 1

    .line 61
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->tutorialBuildMask:Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/tutorial/Tutorial;)Lio/blueflower/stapel2d/gui/Master;
    .registers 1

    .line 61
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gui:Lio/blueflower/stapel2d/gui/Master;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/tutorial/Tutorial;)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 1

    .line 61
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->user_building:Linfo/flowersoft/theotown/city/objects/Building;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/tutorial/Tutorial;FFF)V
    .registers 4

    .line 61
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/tutorial/Tutorial;->focus(FFF)V

    return-void
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/tutorial/Tutorial;)Ljava/lang/Runnable;
    .registers 1

    .line 61
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->runNextStage:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 1

    .line 61
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->updateFocus()V

    return-void
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/tutorial/Tutorial;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;
    .registers 1

    .line 61
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->activeStage:Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    return-object p0
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/tutorial/Tutorial;)Linfo/flowersoft/theotown/components/DefaultDate;
    .registers 1

    .line 61
    iget-object p0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    return-object p0
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/tutorial/Tutorial;[Ljava/lang/String;)V
    .registers 2

    .line 61
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->inCaseOfCityInfo([Ljava/lang/String;)V

    return-void
.end method

.method public static alloc()I
    .registers 2

    .line 65
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->nextAllocId:I

    if-eqz v0, :cond_9

    shl-int/lit8 v1, v0, 0x1

    .line 67
    sput v1, Linfo/flowersoft/theotown/tutorial/Tutorial;->nextAllocId:I

    return v0

    .line 66
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Out of ids!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dispose()V
    .registers 1

    const/4 v0, -0x1

    .line 1342
    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->visibleMask:I

    const/4 v0, 0x0

    .line 1343
    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->markMask:I

    const/4 v0, 0x0

    .line 1344
    sput-object v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->tmpTool:Linfo/flowersoft/theotown/city/components/Tool;

    .line 1345
    sput-object v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->instance:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method

.method public static getInstance()Linfo/flowersoft/theotown/tutorial/Tutorial;
    .registers 1

    .line 987
    sget-object v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->instance:Linfo/flowersoft/theotown/tutorial/Tutorial;

    if-nez v0, :cond_b

    .line 988
    new-instance v0, Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->instance:Linfo/flowersoft/theotown/tutorial/Tutorial;

    .line 990
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->instance:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-object v0
.end method

.method public static isMarked(I)Z
    .registers 2

    .line 115
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->markMask:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static isVisible(I)Z
    .registers 2

    .line 111
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->visibleMask:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static mark(I)V
    .registers 2

    .line 123
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->visibleMask:I

    or-int/2addr v0, p0

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->visibleMask:I

    .line 124
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->markMask:I

    or-int/2addr p0, v0

    sput p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->markMask:I

    return-void
.end method

.method public static removeMarks()V
    .registers 1

    const/4 v0, 0x0

    .line 142
    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->markMask:I

    return-void
.end method

.method public static showAll()V
    .registers 1

    const/4 v0, -0x1

    .line 133
    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->visibleMask:I

    return-void
.end method


# virtual methods
.method public final addBuildingStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/draft/BuildingDraft;ZF)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/blueflower/stapel2d/util/IntList;",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            "ZF)V"
        }
    .end annotation

    move-object v3, p5

    const/4 v1, 0x1

    .line 1152
    new-array v7, v1, [I

    .line 1153
    new-instance v8, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda25;

    invoke-direct {v8, p0, p4, p5}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda25;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    .line 1164
    iget v9, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildTime:I

    .line 1166
    new-instance v0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda26;

    move-object v1, p0

    move-object v5, p3

    move-object v2, p4

    move/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda26;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/draft/BuildingDraft;FLjava/util/List;)V

    move-object v3, v0

    new-instance v4, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda27;

    invoke-direct {v4, p0, v8}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda27;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/Getter;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda28;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move/from16 v5, p6

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda28;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/draft/BuildingDraft;[IZ)V

    move-object v1, v0

    new-instance v4, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda29;

    invoke-direct {v4, p0, v8}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda29;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/Getter;)V

    new-instance v5, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda30;

    invoke-direct {v5, p0, p5, v9}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda30;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Linfo/flowersoft/theotown/draft/BuildingDraft;I)V

    move-object v3, v1

    move-object v1, v6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    move-result-object v1

    const/4 v0, 0x0

    iput-boolean v0, v1, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->saveable:Z

    return-void
.end method

.method public final addLineStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Linfo/flowersoft/theotown/tools/TwoModesTool;",
            ">;",
            "Lio/blueflower/stapel2d/util/IntList;",
            "Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p5

    .line 1214
    new-instance v3, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0, p3}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda21;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Ljava/util/List;)V

    new-instance v4, Linfo/flowersoft/theotown/tutorial/Tutorial$17;

    move-object v1, p4

    invoke-direct {v4, p0, p4}, Linfo/flowersoft/theotown/tutorial/Tutorial$17;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Ljava/lang/Class;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    const/4 v8, 0x0

    move v9, v8

    .line 1230
    :goto_17
    invoke-virtual {v7}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    if-ge v9, v0, :cond_6c

    .line 1232
    invoke-virtual {v7, v9}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    add-int/lit8 v0, v9, 0x1

    .line 1233
    invoke-virtual {v7, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    add-int/lit8 v0, v9, 0x2

    .line 1234
    invoke-virtual {v7, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    add-int/lit8 v0, v9, 0x3

    .line 1235
    invoke-virtual {v7, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    .line 1236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda22;

    move-object v1, p0

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda22;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;IIIILinfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;)V

    move-object v3, v0

    new-instance v4, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda23;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda23;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    new-instance v5, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda24;

    invoke-direct {v5, p0, v9, v7}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda24;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;ILio/blueflower/stapel2d/util/IntList;)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v1, v10

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    move-result-object v1

    iput-boolean v8, v1, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->saveable:Z

    add-int/lit8 v9, v9, 0x4

    goto :goto_17

    :cond_6c
    return-void
.end method

.method public final addRemoveStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/blueflower/stapel2d/util/IntList;Ljava/lang/Class;Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/blueflower/stapel2d/util/IntList;",
            "Ljava/lang/Class<",
            "+",
            "Linfo/flowersoft/theotown/city/components/Tool;",
            ">;",
            "Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;",
            ")V"
        }
    .end annotation

    .line 1117
    new-instance v3, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda31;

    invoke-direct {v3, p0, p4, p3}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda31;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/IntList;Ljava/util/List;)V

    new-instance v4, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda32;

    invoke-direct {v4, p0, p5}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda32;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Ljava/lang/Class;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    .line 1133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda33;

    invoke-direct {v3, p0, p4, p6}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda33;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;)V

    new-instance v4, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda34;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda34;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    new-instance v5, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda35;

    invoke-direct {v5, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda35;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    move-result-object v1

    const/4 v0, 0x0

    iput-boolean v0, v1, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->saveable:Z

    return-void
.end method

.method public final addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/NotificationAction;",
            ">;)",
            "Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;"
        }
    .end annotation

    .line 1328
    new-instance v0, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Linfo/flowersoft/theotown/tutorial/Tutorial$1;)V

    .line 1329
    iput-object p1, v0, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->id:Ljava/lang/String;

    .line 1330
    iget p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentIcon:I

    iput p1, v0, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->icon:I

    .line 1331
    iput-object p2, v0, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->text:Ljava/lang/String;

    .line 1332
    iput-object p3, v0, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->setUp:Ljava/lang/Runnable;

    .line 1333
    iput-object p4, v0, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->update:Ljava/lang/Runnable;

    .line 1334
    iput-object p5, v0, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->setDown:Ljava/lang/Runnable;

    .line 1335
    iput-object p6, v0, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->actions:Ljava/util/List;

    .line 1336
    iget p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    iput p1, v0, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->showMask:I

    .line 1337
    iget-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->stages:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final addZoneStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIIILinfo/flowersoft/theotown/draft/ZoneDraft;F)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIII",
            "Linfo/flowersoft/theotown/draft/ZoneDraft;",
            "F)V"
        }
    .end annotation

    .line 996
    new-instance v0, Linfo/flowersoft/theotown/tutorial/Tutorial$11;

    move-object v1, p0

    move-object v7, p3

    move v2, p4

    move v4, p5

    move v3, p6

    move/from16 v5, p7

    move-object/from16 v8, p8

    move/from16 v6, p9

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/tutorial/Tutorial$11;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;IIIIFLjava/util/List;Linfo/flowersoft/theotown/draft/ZoneDraft;)V

    new-instance v4, Linfo/flowersoft/theotown/tutorial/Tutorial$12;

    move-object/from16 v7, p8

    invoke-direct {v4, p0, v7}, Linfo/flowersoft/theotown/tutorial/Tutorial$12;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Linfo/flowersoft/theotown/draft/ZoneDraft;)V

    new-instance v5, Linfo/flowersoft/theotown/tutorial/Tutorial$13;

    invoke-direct {v5, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$13;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    .line 1028
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Linfo/flowersoft/theotown/tutorial/Tutorial$14;

    move-object v2, p0

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/tutorial/Tutorial$14;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;IIIILinfo/flowersoft/theotown/draft/ZoneDraft;)V

    move-object p6, v1

    new-instance p4, Linfo/flowersoft/theotown/tutorial/Tutorial$15;

    invoke-direct {p4, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$15;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    new-instance p5, Linfo/flowersoft/theotown/tutorial/Tutorial$16;

    invoke-direct {p5, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$16;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    const/4 v0, 0x0

    move-object p3, p0

    move-object/from16 p7, p4

    move-object/from16 p8, p5

    move-object/from16 p9, v0

    move-object p4, p1

    move-object p5, p2

    invoke-virtual/range {p3 .. p9}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    move-result-object p1

    const/4 p2, 0x0

    iput-boolean p2, p1, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->saveable:Z

    return-void
.end method

.method public final build()V
    .registers 16

    .line 146
    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v10

    .line 147
    sget v1, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_REGION:I

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    .line 148
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_GIRL:I

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentIcon:I

    .line 151
    new-instance v4, Linfo/flowersoft/theotown/tutorial/Tutorial$2;

    invoke-direct {v4, p0, v10}, Linfo/flowersoft/theotown/tutorial/Tutorial$2;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/gamestack/Translator;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "$start00"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    .line 270
    iget v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    sget v11, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_BUILD:I

    or-int/2addr v1, v11

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    const/16 v1, 0x399

    .line 271
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "cmdSelectableSelect$zoneresidential"

    const-string v12, "cmd$cat_zone00"

    filled-new-array {v12, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 273
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    iget-object v8, v1, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    const/high16 v9, 0x40000000    # 2.0f

    .line 271
    const-string v1, "$build01"

    const/16 v4, 0x29

    const/16 v5, 0x15

    const/4 v6, 0x6

    const/4 v7, 0x4

    invoke-virtual/range {v0 .. v9}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addZoneStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIIILinfo/flowersoft/theotown/draft/ZoneDraft;F)V

    const/16 v0, 0x398

    .line 275
    invoke-interface {v10, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "selectable:$road00"

    const-string v1, "cmd$cat_road00"

    const-string v3, "cmdSelectableSelect$road00"

    const-string v8, "cmdBuild"

    filled-new-array {v1, v3, v8, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_3ec

    .line 279
    invoke-static {v0}, Lio/blueflower/stapel2d/util/IntList;->asList([I)Lio/blueflower/stapel2d/util/IntList;

    move-result-object v5

    .line 281
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->getRoadCondition()Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;

    move-result-object v6

    .line 275
    const-string v1, "$build02"

    const-class v4, Linfo/flowersoft/theotown/tools/RoadTool;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addLineStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;)V

    .line 283
    iget v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    not-int v2, v11

    and-int/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    const/16 v1, 0x397

    .line 284
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    new-instance v4, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda11;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    new-instance v5, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda13;

    invoke-direct {v5, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda13;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    const/4 v6, 0x0

    const-string v1, "$build03"

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    const/16 v1, 0x22

    .line 297
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda14;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->runNextStageAction:Linfo/flowersoft/theotown/city/components/NotificationAction;

    .line 303
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 297
    const-string v1, "$build030"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    move-result-object v1

    const/4 v9, 0x0

    iput-boolean v9, v1, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->saveable:Z

    .line 306
    iget v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    or-int/2addr v1, v11

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    const/16 v1, 0x396

    .line 307
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "cmdSelectableSelect$solarpanels00"

    const-string v13, "cmd$cat_energy00"

    filled-new-array {v13, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v1, 0x2c

    const/16 v14, 0x30

    filled-new-array {v1, v14}, [I

    move-result-object v1

    .line 309
    invoke-static {v1}, Lio/blueflower/stapel2d/util/IntList;->asList([I)Lio/blueflower/stapel2d/util/IntList;

    move-result-object v4

    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v5, "$solarpanels00"

    .line 310
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Linfo/flowersoft/theotown/draft/BuildingDraft;

    const/4 v6, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    .line 307
    const-string v1, "$build04"

    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addBuildingStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/draft/BuildingDraft;ZF)V

    const/16 v1, 0x394

    .line 312
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "cmdSelectableSelect$wire00"

    const-string v3, "selectable:$wire00"

    filled-new-array {v13, v1, v8, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v1, 0x1b

    const/16 v4, 0x2d

    const/16 v7, 0x2e

    filled-new-array {v4, v7, v4, v1}, [I

    move-result-object v1

    .line 316
    invoke-static {v1}, Lio/blueflower/stapel2d/util/IntList;->asList([I)Lio/blueflower/stapel2d/util/IntList;

    move-result-object v5

    new-instance v6, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda15;

    invoke-direct {v6, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda15;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    .line 312
    const-string v1, "$build05"

    const-class v4, Linfo/flowersoft/theotown/tools/WireTool;

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addLineStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;)V

    .line 319
    iget v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    not-int v2, v11

    and-int/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    .line 343
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_GIRL:I

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentIcon:I

    const/16 v1, 0x3a3

    .line 344
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/tutorial/Tutorial$3;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$3;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->runNextStageAction:Linfo/flowersoft/theotown/city/components/NotificationAction;

    .line 353
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 344
    const-string v1, "$build07"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    move-result-object v1

    iput-boolean v9, v1, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->saveable:Z

    .line 356
    iget v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    or-int/2addr v1, v11

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    const/16 v1, 0x3a1

    .line 357
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "cmdSelectableSelect$watertower00"

    const-string v13, "cmd$cat_water00"

    filled-new-array {v13, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v1, 0x1a

    filled-new-array {v7, v1}, [I

    move-result-object v1

    .line 359
    invoke-static {v1}, Lio/blueflower/stapel2d/util/IntList;->asList([I)Lio/blueflower/stapel2d/util/IntList;

    move-result-object v4

    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v5, "$watertower00"

    .line 360
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Linfo/flowersoft/theotown/draft/BuildingDraft;

    const/4 v6, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    .line 357
    const-string v1, "$build08"

    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addBuildingStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/draft/BuildingDraft;ZF)V

    .line 362
    iget v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    not-int v2, v11

    and-int/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    const/16 v1, 0x3a0

    .line 363
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda16;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda16;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    new-instance v4, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda17;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda17;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    new-instance v5, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda18;

    invoke-direct {v5, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda18;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    const/4 v6, 0x0

    const-string v1, "$build09"

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    move-result-object v1

    iput-boolean v9, v1, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->saveable:Z

    .line 375
    iget v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    or-int/2addr v1, v11

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    const/16 v1, 0x3b6

    .line 377
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "cmdSelectableSelect$pipe00"

    const-string v3, "selectable:$pipe00"

    filled-new-array {v13, v1, v8, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_408

    .line 381
    invoke-static {v1}, Lio/blueflower/stapel2d/util/IntList;->asList([I)Lio/blueflower/stapel2d/util/IntList;

    move-result-object v5

    new-instance v6, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda19;

    invoke-direct {v6, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda19;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    .line 377
    const-string v1, "$build10"

    const-class v4, Linfo/flowersoft/theotown/tools/PipeTool;

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addLineStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;)V

    .line 383
    iget v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    not-int v2, v11

    and-int/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    .line 388
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_GIRL:I

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentIcon:I

    const/16 v1, 0x3b4

    .line 389
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda20;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda20;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->runNextStageAction:Linfo/flowersoft/theotown/city/components/NotificationAction;

    .line 395
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 389
    const-string v1, "$build11"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    .line 397
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_OFFICEWORKER:I

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentIcon:I

    const/16 v1, 0x36c

    .line 398
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->runNextStageAction:Linfo/flowersoft/theotown/city/components/NotificationAction;

    .line 404
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 398
    const-string v1, "$build110"

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    .line 406
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_GIRL:I

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentIcon:I

    .line 407
    iget v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    sget v2, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_DEMAND:I

    or-int/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    const/16 v1, 0x3b2

    .line 408
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/tutorial/Tutorial$4;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$4;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    const/4 v6, 0x0

    const-string v1, "$build12"

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    const/16 v1, 0x3b0

    .line 420
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/tutorial/Tutorial$5;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$5;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->runNextStageAction:Linfo/flowersoft/theotown/city/components/NotificationAction;

    .line 428
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 420
    const-string v1, "$build13"

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    move-result-object v1

    iput-boolean v9, v1, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->saveable:Z

    const/16 v1, 0x3ae

    .line 430
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/tutorial/Tutorial$6;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$6;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->runNextStageAction:Linfo/flowersoft/theotown/city/components/NotificationAction;

    .line 438
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 430
    const-string v1, "$build14"

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    move-result-object v1

    iput-boolean v9, v1, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->saveable:Z

    const/16 v1, 0x3ad

    .line 440
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/tutorial/Tutorial$7;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$7;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    new-instance v5, Linfo/flowersoft/theotown/tutorial/Tutorial$8;

    invoke-direct {v5, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$8;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    const/4 v6, 0x0

    const-string v1, "$build15"

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    move-result-object v1

    iput-boolean v9, v1, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->saveable:Z

    .line 455
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_GIRL:I

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentIcon:I

    .line 456
    iget v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    or-int/2addr v1, v11

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    const/16 v1, 0x3ab

    .line 457
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "cmdSelectableSelect$zonecommercial"

    filled-new-array {v12, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 459
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    iget-object v8, v1, Linfo/flowersoft/theotown/city/Zones;->COMMERCIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    const/high16 v9, 0x40000000    # 2.0f

    .line 457
    const-string v1, "$build16"

    const/16 v4, 0x30

    const/16 v5, 0x15

    const/4 v6, 0x4

    const/4 v7, 0x4

    invoke-virtual/range {v0 .. v9}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addZoneStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIIILinfo/flowersoft/theotown/draft/ZoneDraft;F)V

    .line 460
    iget v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    not-int v2, v11

    and-int/2addr v1, v2

    or-int/2addr v1, v11

    .line 465
    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    const/16 v1, 0x3bc

    .line 466
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "cmdSelectableSelect$zoneindustrial"

    filled-new-array {v12, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 468
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    iget-object v8, v1, Linfo/flowersoft/theotown/city/Zones;->INDUSTRIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 466
    const-string v1, "$build17"

    const/16 v5, 0x30

    invoke-virtual/range {v0 .. v9}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addZoneStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIIILinfo/flowersoft/theotown/draft/ZoneDraft;F)V

    .line 469
    iget v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    not-int v2, v11

    and-int/2addr v1, v2

    .line 495
    sget v2, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_MAP:I

    or-int/2addr v1, v2

    .line 523
    sget v2, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_NAME:I

    or-int/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    .line 657
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_GIRL:I

    iput v2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentIcon:I

    or-int/2addr v1, v11

    .line 658
    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    const/16 v1, 0x447

    .line 659
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "cmd$cat_park00"

    const-string v3, "cmdSelectableSelect$park01"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 660
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v8, 0x13

    filled-new-array {v14, v8}, [I

    move-result-object v1

    .line 661
    invoke-static {v1}, Lio/blueflower/stapel2d/util/IntList;->asList([I)Lio/blueflower/stapel2d/util/IntList;

    move-result-object v4

    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v5, "$park01"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Linfo/flowersoft/theotown/draft/BuildingDraft;

    const/4 v6, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    .line 659
    const-string v1, "$build32"

    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addBuildingStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/draft/BuildingDraft;ZF)V

    .line 663
    iget v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    sget v2, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_REMOVE:I

    or-int/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    const/16 v1, 0x446

    .line 664
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "cmdRemoveCollector"

    const-string v3, "cmdSelectableSelect$Remove$All"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 665
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    filled-new-array {v14, v8}, [I

    move-result-object v1

    .line 666
    invoke-static {v1}, Lio/blueflower/stapel2d/util/IntList;->asList([I)Lio/blueflower/stapel2d/util/IntList;

    move-result-object v4

    new-instance v6, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    .line 664
    const-string v1, "$build33"

    const-class v5, Linfo/flowersoft/theotown/tools/RemoveTool;

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addRemoveStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/blueflower/stapel2d/util/IntList;Ljava/lang/Class;Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;)V

    .line 669
    iget v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    sget v2, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_RANK:I

    or-int/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    const/16 v1, 0x445

    .line 670
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "$build34"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    const/16 v1, 0x444

    .line 678
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda4;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    const-string v1, "$build35"

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    .line 685
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_FIREFIGHTER0:I

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentIcon:I

    .line 686
    iget v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    sget v2, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_ALERT:I

    or-int/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    const/16 v1, 0x441

    .line 687
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda5;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    const-string v1, "$build36"

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    .line 695
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_GIRL:I

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentIcon:I

    .line 696
    iget v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    sget v2, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_VIEW:I

    or-int/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    const/16 v1, 0x440

    .line 697
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda6;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    new-instance v5, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda7;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    const-string v1, "$build37"

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    .line 707
    iget v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    sget v2, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_PRESENT:I

    sget v3, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_DIAMONDS:I

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentShowMask:I

    const/16 v1, 0x1a6

    .line 708
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda8;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    new-instance v4, Linfo/flowersoft/theotown/tutorial/Tutorial$9;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$9;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    const/4 v5, 0x0

    const-string v1, "$present00"

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    const/16 v1, 0x1a2

    .line 726
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda9;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->runNextStageAction:Linfo/flowersoft/theotown/city/components/NotificationAction;

    .line 727
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 726
    const-string v1, "$present01"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    const/16 v1, 0xc31

    .line 729
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda10;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->runNextStageAction:Linfo/flowersoft/theotown/city/components/NotificationAction;

    .line 734
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 729
    const-string v1, "$plugins00"

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    const/16 v1, 0x370

    .line 746
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda12;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->runNextStageAction:Linfo/flowersoft/theotown/city/components/NotificationAction;

    .line 751
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 746
    const-string v1, "$end01"

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tutorial/Tutorial;->addStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/List;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    return-void

    nop

    :array_3ec
    .array-data 4
        0x2f
        0x14
        0x28
        0x14
        0x28
        0x14
        0x28
        0x19
        0x28
        0x19
        0x2f
        0x19
    .end array-data

    :array_408
    .array-data 4
        0x29
        0x17
        0x32
        0x17
        0x2e
        0x14
        0x2e
        0x36
    .end array-data
.end method

.method public final buildNotification()V
    .registers 6

    .line 926
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->activeStage:Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    iget-object v0, v0, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->text:Ljava/lang/String;

    if-eqz v0, :cond_44

    .line 927
    new-instance v0, Linfo/flowersoft/theotown/ui/NotificationBar;

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v2

    const/16 v3, 0x136

    const/4 v4, 0x1

    if-ge v2, v3, :cond_15

    move v2, v4

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/ui/NotificationBar;-><init>(Lio/blueflower/stapel2d/gui/Gadget;Z)V

    iput-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->notificationBar:Linfo/flowersoft/theotown/ui/NotificationBar;

    .line 928
    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->activeStage:Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    iget v1, v1, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->icon:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/NotificationBar;->setIcon(I)V

    .line 929
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->notificationBar:Linfo/flowersoft/theotown/ui/NotificationBar;

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->activeStage:Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    iget-object v1, v1, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/NotificationBar;->setText(Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->notificationBar:Linfo/flowersoft/theotown/ui/NotificationBar;

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->activeStage:Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    iget-object v1, v1, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->actions:Ljava/util/List;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/NotificationBar;->setActions(Ljava/util/List;)V

    .line 931
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->notificationBar:Linfo/flowersoft/theotown/ui/NotificationBar;

    sget-object v1, Linfo/flowersoft/theotown/tutorial/Tutorial;->lastText:Ljava/lang/String;

    iget-object v2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->activeStage:Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    iget-object v2, v2, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->text:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/NotificationBar;->build(Z)V

    .line 933
    :cond_44
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->activeStage:Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    iget-object v0, v0, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->text:Ljava/lang/String;

    sput-object v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->lastText:Ljava/lang/String;

    return-void
.end method

.method public final focus(FFF)V
    .registers 4

    .line 803
    iput p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->focusX:F

    .line 804
    iput p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->focusY:F

    .line 805
    iput p3, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->focusScale:F

    .line 806
    iget-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getViewX()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->focusStartX:F

    .line 807
    iget-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getViewY()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->focusStartY:F

    .line 808
    iget-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->focusStartScale:F

    const/4 p1, 0x1

    .line 809
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->focusActive:Z

    .line 810
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide p1

    iput-wide p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->focusStartMS:J

    .line 811
    iput-wide p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->focusLastMS:J

    return-void
.end method

.method public final varargs inCaseOfCityInfo([Ljava/lang/String;)V
    .registers 5

    .line 755
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->peek()Lio/blueflower/stapel2d/gamestack/Stage;

    move-result-object v0

    instance-of v0, v0, Linfo/flowersoft/theotown/stages/CityInfoStage;

    if-eqz v0, :cond_2a

    .line 756
    new-instance v0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;-><init>()V

    const/4 v1, 0x0

    .line 757
    :goto_10
    array-length v2, p1

    if-ge v1, v2, :cond_1b

    .line 758
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 760
    :cond_1b
    const-string p1, "cmdClose"

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;)V

    .line 761
    const-string p1, "cmdOk"

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;)V

    .line 762
    iget-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    :cond_2a
    return-void
.end method

.method public isActive()Z
    .registers 2

    .line 836
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->active:Z

    return v0
.end method

.method public final nextStage()V
    .registers 2

    .line 980
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->setStageDown()V

    .line 981
    iget v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentStage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentStage:I

    .line 982
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->setStageUp()V

    return-void
.end method

.method public setCity(Linfo/flowersoft/theotown/city/City;)V
    .registers 5

    .line 937
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/city/CityInfo;->tutorialStage:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->active:Z

    if-eqz v0, :cond_91

    .line 940
    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    .line 941
    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    iput-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    const/16 v0, 0x9

    .line 942
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultPeople;

    iput-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->people:Linfo/flowersoft/theotown/components/DefaultPeople;

    const/4 v0, 0x3

    .line 943
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    iput-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    const/4 v0, 0x5

    .line 944
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultPower;

    iput-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->power:Linfo/flowersoft/theotown/components/DefaultPower;

    const/16 v0, 0x8

    .line 945
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultWater;

    iput-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->water:Linfo/flowersoft/theotown/components/DefaultWater;

    const/16 v0, 0xe

    .line 946
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/BuildMask;

    iput-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->originalBuildMask:Linfo/flowersoft/theotown/city/components/BuildMask;

    .line 947
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->tutorialBuildMask:Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;

    if-nez v0, :cond_56

    .line 948
    new-instance v0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->tutorialBuildMask:Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;

    .line 951
    :cond_56
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->stages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentStage:I

    .line 952
    :goto_5e
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->stages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_82

    .line 953
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->stages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    iget-object v0, v0, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->id:Ljava/lang/String;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object v2

    iget-object v2, v2, Linfo/flowersoft/theotown/city/CityInfo;->tutorialStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 954
    iput v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentStage:I

    goto :goto_82

    :cond_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 958
    :cond_82
    :goto_82
    iget p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentStage:I

    if-nez p1, :cond_91

    .line 959
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v0, "Begin"

    const-string v1, ""

    const-string v2, "Tutorial"

    invoke-interface {p1, v2, v0, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_91
    return-void
.end method

.method public setContext(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 3

    .line 965
    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 966
    iput-object p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    .line 967
    iget-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->stages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->build()V

    :cond_f
    return-void
.end method

.method public setGUI(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 4

    .line 971
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gui:Lio/blueflower/stapel2d/gui/Master;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    if-eq p2, v0, :cond_16

    :cond_8
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->active:Z

    if-eqz v0, :cond_16

    .line 972
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->setStageDown()V

    .line 973
    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 974
    iput-object p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    .line 975
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->setStageUp()V

    :cond_16
    return-void
.end method

.method public final setStageDown()V
    .registers 4

    .line 850
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->activeStage:Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    if-eqz v0, :cond_37

    .line 851
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->originalBuildMask:Linfo/flowersoft/theotown/city/components/BuildMask;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 852
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->notificationBar:Linfo/flowersoft/theotown/ui/NotificationBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 853
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/NotificationBar;->free()V

    .line 854
    iput-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->notificationBar:Linfo/flowersoft/theotown/ui/NotificationBar;

    .line 856
    :cond_15
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->activeStage:Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    iget-object v0, v0, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->setDown:Ljava/lang/Runnable;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 857
    :cond_1e
    iput-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->activeStage:Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    .line 858
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    iget-object v2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gadget:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->removeChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 859
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gadget:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->free()V

    .line 860
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->showAll()V

    .line 861
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->removeMarks()V

    .line 862
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    :cond_37
    return-void
.end method

.method public final setStageUp()V
    .registers 16

    .line 867
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->setStageDown()V

    .line 868
    :goto_3
    iget v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentStage:I

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->stages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->stages:Ljava/util/List;

    iget v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentStage:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->isActive()Z

    move-result v0

    if-nez v0, :cond_24

    iget v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentStage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentStage:I

    goto :goto_3

    .line 870
    :cond_24
    iget v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentStage:I

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->stages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "Tutorial"

    const-string v3, "tutorial reminder"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ge v0, v1, :cond_38

    iget-boolean v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->active:Z

    if-nez v0, :cond_3b

    :cond_38
    move-object v0, p0

    goto/16 :goto_f9

    .line 886
    :cond_3b
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    .line 887
    sget-object v6, Linfo/flowersoft/theotown/crossplatform/TheoTown;->notifications:Linfo/flowersoft/theotown/crossplatform/Notifications;

    const/16 v1, 0x344

    .line 888
    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    const/16 v1, 0xcec

    .line 889
    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v9

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "notification"

    .line 890
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v10, 0xea60

    mul-long/2addr v10, v0

    const-wide/32 v12, 0x2255100

    const/4 v14, 0x5

    .line 887
    const-string v7, "tutorial reminder"

    invoke-interface/range {v6 .. v14}, Linfo/flowersoft/theotown/crossplatform/Notifications;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V

    .line 892
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->tutorialBuildMask:Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->clear()V

    .line 895
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultBudget;

    .line 896
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v3

    const-wide v6, 0x40c3880000000000L    # 10000.0

    cmpg-double v1, v3, v6

    if-gez v1, :cond_9e

    .line 897
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v3

    sub-double/2addr v6, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tutorial"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentStage:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v7, v1}, Linfo/flowersoft/theotown/components/DefaultBudget;->earn(DLjava/lang/String;)V

    .line 900
    :cond_9e
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->tutorialBuildMask:Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 901
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->stages:Ljava/util/List;

    iget v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentStage:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    iput-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->activeStage:Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    .line 902
    iget-boolean v0, v0, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->saveable:Z

    if-eqz v0, :cond_c1

    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->activeStage:Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    iget-object v1, v1, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->id:Ljava/lang/String;

    iput-object v1, v0, Linfo/flowersoft/theotown/city/CityInfo;->tutorialStage:Ljava/lang/String;

    .line 903
    :cond_c1
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->activeStage:Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    iget v0, v0, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->showMask:I

    sput v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->visibleMask:I

    .line 904
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->lastStageChange:J

    .line 905
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0, v5}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    .line 906
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->activeStage:Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    iget-object v0, v0, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->setUp:Ljava/lang/Runnable;

    if-eqz v0, :cond_e6

    .line 907
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 908
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->activeStage:Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    iget-object v1, v1, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->id:Ljava/lang/String;

    const-string v3, "Stage"

    invoke-interface {v0, v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    :cond_e6
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->buildNotification()V

    .line 911
    new-instance v4, Linfo/flowersoft/theotown/tutorial/Tutorial$10;

    const/4 v9, 0x0

    iget-object v10, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Linfo/flowersoft/theotown/tutorial/Tutorial$10;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v0, v5

    iput-object v4, v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gadget:Lio/blueflower/stapel2d/gui/Gadget;

    return-void

    .line 871
    :goto_f9
    iget-boolean v1, v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->active:Z

    if-eqz v1, :cond_10d

    .line 872
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v6, "Completed"

    const-string v7, ""

    invoke-interface {v1, v2, v6, v7}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string v2, "tutorial_finish"

    invoke-interface {v1, v2}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    .line 875
    :cond_10d
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->notifications:Linfo/flowersoft/theotown/crossplatform/Notifications;

    invoke-interface {v1, v3}, Linfo/flowersoft/theotown/crossplatform/Notifications;->remove(Ljava/lang/String;)Z

    .line 876
    iput-boolean v4, v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->active:Z

    .line 877
    iget-object v1, v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    if-eqz v1, :cond_11b

    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/components/DefaultDate;->setSpeed(I)V

    .line 878
    :cond_11b
    iget-object v1, v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    if-eqz v1, :cond_125

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object v1

    iput-object v5, v1, Linfo/flowersoft/theotown/city/CityInfo;->tutorialStage:Ljava/lang/String;

    .line 879
    :cond_125
    iput-object v5, v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    .line 880
    iput-object v5, v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 881
    iput-object v5, v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    .line 882
    iput-object v5, v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->activeStage:Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    .line 883
    iput-object v5, v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    .line 884
    iput-object v5, v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method

.method public skip()V
    .registers 5

    .line 840
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->active:Z

    if-eqz v0, :cond_3c

    .line 841
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->notifications:Linfo/flowersoft/theotown/crossplatform/Notifications;

    const-string v1, "tutorial reminder"

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/Notifications;->remove(Ljava/lang/String;)Z

    .line 842
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->activeStage:Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    if-eqz v1, :cond_14

    iget-object v1, v1, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->id:Ljava/lang/String;

    goto :goto_2c

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "??? ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->currentStage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2c
    const-string v2, "Tutorial"

    const-string v3, "Skip"

    invoke-interface {v0, v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->setStageDown()V

    const/4 v0, 0x0

    .line 844
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->active:Z

    .line 845
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->setStageUp()V

    :cond_3c
    return-void
.end method

.method public final updateFocus()V
    .registers 11

    .line 815
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->focusActive:Z

    if-eqz v0, :cond_43

    .line 816
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    .line 817
    iget-wide v2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->focusStartMS:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x453b8000    # 3000.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 819
    sget-object v4, Lcom/badlogic/gdx/math/Interpolation;->fade:Lcom/badlogic/gdx/math/Interpolation;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v4

    .line 821
    iget-object v5, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->city:Linfo/flowersoft/theotown/city/City;

    iget v6, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->focusStartX:F

    iget v7, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->focusX:F

    .line 822
    invoke-static {v6, v7, v4}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v6

    iget v7, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->focusStartY:F

    iget v8, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->focusY:F

    .line 823
    invoke-static {v7, v8, v4}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v7

    iget v8, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->focusStartScale:F

    iget v9, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->focusScale:F

    .line 824
    invoke-static {v8, v9, v4}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v4

    .line 821
    invoke-virtual {v5, v6, v7, v4}, Linfo/flowersoft/theotown/city/City;->focus(FFF)V

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_41

    const/4 v2, 0x0

    .line 827
    iput-boolean v2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->focusActive:Z

    .line 829
    :cond_41
    iput-wide v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial;->focusLastMS:J

    :cond_43
    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial.AnonymousClass1 (info.flowersoft.theotown.tutorial.Tutorial$1)
.class public Linfo/flowersoft/theotown/tutorial/Tutorial$1;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/tutorial/Tutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 102
    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$1;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 105
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$1;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$000(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial.AnonymousClass10 (info.flowersoft.theotown.tutorial.Tutorial$10)
.class public Linfo/flowersoft/theotown/tutorial/Tutorial$10;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "Tutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tutorial/Tutorial;->setStageUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 911
    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$10;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public onUpdate()V
    .registers 2

    .line 914
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$10;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$600(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    .line 915
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$10;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$700(Linfo/flowersoft/theotown/tutorial/Tutorial;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$10;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$700(Linfo/flowersoft/theotown/tutorial/Tutorial;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->update:Ljava/lang/Runnable;

    if-eqz v0, :cond_22

    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$10;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$700(Linfo/flowersoft/theotown/tutorial/Tutorial;)Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->update:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_22
    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial.AnonymousClass11 (info.flowersoft.theotown.tutorial.Tutorial$11)
.class public Linfo/flowersoft/theotown/tutorial/Tutorial$11;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tutorial/Tutorial;->addZoneStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIIILinfo/flowersoft/theotown/draft/ZoneDraft;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

.field public final synthetic val$buttonIds:Ljava/util/List;

.field public final synthetic val$h:I

.field public final synthetic val$scale:F

.field public final synthetic val$w:I

.field public final synthetic val$x:I

.field public final synthetic val$y:I

.field public final synthetic val$zoneDraft:Linfo/flowersoft/theotown/draft/ZoneDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;IIIIFLjava/util/List;Linfo/flowersoft/theotown/draft/ZoneDraft;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 997
    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$11;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iput p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$11;->val$x:I

    iput p3, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$11;->val$w:I

    iput p4, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$11;->val$y:I

    iput p5, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$11;->val$h:I

    iput p6, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$11;->val$scale:F

    iput-object p7, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$11;->val$buttonIds:Ljava/util/List;

    iput-object p8, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$11;->val$zoneDraft:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1000
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$11;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iget v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$11;->val$x:I

    iget v2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$11;->val$w:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$11;->val$y:I

    iget v4, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$11;->val$h:I

    div-int/2addr v4, v3

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$11;->val$scale:F

    invoke-static {v0, v1, v2, v4}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$400(Linfo/flowersoft/theotown/tutorial/Tutorial;FFF)V

    const/4 v0, 0x0

    .line 1001
    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->autoRoadForZones:Z

    .line 1002
    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$11;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$800(Linfo/flowersoft/theotown/tutorial/Tutorial;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v1

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/components/DefaultDate;->setSpeed(I)V

    .line 1003
    new-instance v1, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    invoke-direct {v1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;-><init>()V

    move v2, v0

    .line 1004
    :goto_28
    iget-object v3, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$11;->val$buttonIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3e

    .line 1005
    iget-object v3, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$11;->val$buttonIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1007
    :cond_3e
    const-string v2, "cmdBuild"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;)V

    .line 1008
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$11;->val$zoneDraft:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;)V

    .line 1009
    iget-object v2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$11;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v2}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$200(Linfo/flowersoft/theotown/tutorial/Tutorial;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    .line 1010
    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$11;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$900(Linfo/flowersoft/theotown/tutorial/Tutorial;[Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial.AnonymousClass12 (info.flowersoft.theotown.tutorial.Tutorial$12)
.class public Linfo/flowersoft/theotown/tutorial/Tutorial$12;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tutorial/Tutorial;->addZoneStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIIILinfo/flowersoft/theotown/draft/ZoneDraft;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

.field public final synthetic val$zoneDraft:Linfo/flowersoft/theotown/draft/ZoneDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Linfo/flowersoft/theotown/draft/ZoneDraft;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1012
    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$12;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iput-object p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$12;->val$zoneDraft:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1015
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$12;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$100(Linfo/flowersoft/theotown/tutorial/Tutorial;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    instance-of v0, v0, Linfo/flowersoft/theotown/tools/ZoneTool;

    if-eqz v0, :cond_32

    .line 1016
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$12;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$100(Linfo/flowersoft/theotown/tutorial/Tutorial;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Tool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$1002(Linfo/flowersoft/theotown/city/components/Tool;)Linfo/flowersoft/theotown/city/components/Tool;

    .line 1017
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$1000()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/tools/ZoneTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/ZoneTool;->getZone()Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$12;->val$zoneDraft:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v0, v1, :cond_32

    .line 1018
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$12;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$000(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    :cond_32
    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial.AnonymousClass13 (info.flowersoft.theotown.tutorial.Tutorial$13)
.class public Linfo/flowersoft/theotown/tutorial/Tutorial$13;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tutorial/Tutorial;->addZoneStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIIILinfo/flowersoft/theotown/draft/ZoneDraft;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1022
    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$13;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    const/4 v0, 0x1

    .line 1025
    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->autoRoadForZones:Z

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial.AnonymousClass14 (info.flowersoft.theotown.tutorial.Tutorial$14)
.class public Linfo/flowersoft/theotown/tutorial/Tutorial$14;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tutorial/Tutorial;->addZoneStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIIILinfo/flowersoft/theotown/draft/ZoneDraft;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

.field public final synthetic val$h:I

.field public final synthetic val$w:I

.field public final synthetic val$x:I

.field public final synthetic val$y:I

.field public final synthetic val$zoneDraft:Linfo/flowersoft/theotown/draft/ZoneDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;IIIILinfo/flowersoft/theotown/draft/ZoneDraft;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1029
    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$14;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iput p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$14;->val$x:I

    iput p3, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$14;->val$y:I

    iput p4, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$14;->val$w:I

    iput p5, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$14;->val$h:I

    iput-object p6, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$14;->val$zoneDraft:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1032
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$14;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$1100(Linfo/flowersoft/theotown/tutorial/Tutorial;)Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$14;->val$x:I

    iget v2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$14;->val$y:I

    iget v3, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$14;->val$w:I

    iget v4, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$14;->val$h:I

    invoke-virtual {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->addTiles(IIII)V

    const/4 v0, 0x0

    .line 1033
    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->autoRoadForZones:Z

    .line 1034
    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$14;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$1100(Linfo/flowersoft/theotown/tutorial/Tutorial;)Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$14;->val$zoneDraft:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-static {v2}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->getZoneCondition(Linfo/flowersoft/theotown/draft/ZoneDraft;)Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$14;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v3}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$500(Linfo/flowersoft/theotown/tutorial/Tutorial;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->setCondition(Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;Ljava/lang/Runnable;)V

    .line 1035
    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$14;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$800(Linfo/flowersoft/theotown/tutorial/Tutorial;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/DefaultDate;->setSpeed(I)V

    .line 1036
    new-instance v1, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    invoke-direct {v1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;-><init>()V

    .line 1037
    const-string v2, "cmdCloseTool"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->removeButton(Ljava/lang/String;)V

    .line 1038
    iget-object v2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$14;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v2}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$200(Linfo/flowersoft/theotown/tutorial/Tutorial;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    .line 1039
    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$14;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$900(Linfo/flowersoft/theotown/tutorial/Tutorial;[Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial.AnonymousClass15 (info.flowersoft.theotown.tutorial.Tutorial$15)
.class public Linfo/flowersoft/theotown/tutorial/Tutorial$15;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tutorial/Tutorial;->addZoneStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIIILinfo/flowersoft/theotown/draft/ZoneDraft;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1041
    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$15;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1044
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$15;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$100(Linfo/flowersoft/theotown/tutorial/Tutorial;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Tool;

    .line 1045
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$1000()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v1

    if-eq v0, v1, :cond_21

    .line 1046
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$15;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$100(Linfo/flowersoft/theotown/tutorial/Tutorial;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$1000()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    :cond_21
    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial.AnonymousClass16 (info.flowersoft.theotown.tutorial.Tutorial$16)
.class public Linfo/flowersoft/theotown/tutorial/Tutorial$16;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tutorial/Tutorial;->addZoneStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIIILinfo/flowersoft/theotown/draft/ZoneDraft;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1049
    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$16;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    const/4 v0, 0x1

    .line 1052
    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->autoRoadForZones:Z

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial.AnonymousClass17 (info.flowersoft.theotown.tutorial.Tutorial$17)
.class public Linfo/flowersoft/theotown/tutorial/Tutorial$17;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tutorial/Tutorial;->addLineStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

.field public final synthetic val$targetToolType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1222
    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$17;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iput-object p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$17;->val$targetToolType:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1225
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$17;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$100(Linfo/flowersoft/theotown/tutorial/Tutorial;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Tool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$1002(Linfo/flowersoft/theotown/city/components/Tool;)Linfo/flowersoft/theotown/city/components/Tool;

    .line 1226
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$1000()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$17;->val$targetToolType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$17;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$000(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    :cond_26
    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial.AnonymousClass2 (info.flowersoft.theotown.tutorial.Tutorial$2)
.class public Linfo/flowersoft/theotown/tutorial/Tutorial$2;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tutorial/Tutorial;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

.field public final synthetic val$translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/gamestack/Translator;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$2;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iput-object p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$2;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 155
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$2;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$100(Linfo/flowersoft/theotown/tutorial/Tutorial;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultWeather;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultWeather;->setTime(I)V

    .line 156
    sput-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->showMinimap:Z

    const/4 v0, 0x1

    .line 157
    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->roadAutoJoin:Z

    .line 161
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$2;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$000(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial.AnonymousClass3 (info.flowersoft.theotown.tutorial.Tutorial$3)
.class public Linfo/flowersoft/theotown/tutorial/Tutorial$3;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tutorial/Tutorial;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 345
    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$3;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 348
    new-instance v0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;-><init>()V

    .line 349
    const-string v1, "cmdOk"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$3;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$200(Linfo/flowersoft/theotown/tutorial/Tutorial;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    .line 351
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$3;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$300(Linfo/flowersoft/theotown/tutorial/Tutorial;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$3;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$300(Linfo/flowersoft/theotown/tutorial/Tutorial;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$3;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v2}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$300(Linfo/flowersoft/theotown/tutorial/Tutorial;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$400(Linfo/flowersoft/theotown/tutorial/Tutorial;FFF)V

    :cond_36
    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial.AnonymousClass4 (info.flowersoft.theotown.tutorial.Tutorial$4)
.class public Linfo/flowersoft/theotown/tutorial/Tutorial$4;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tutorial/Tutorial;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 409
    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$4;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 413
    new-instance v0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;-><init>()V

    .line 414
    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$4;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$500(Linfo/flowersoft/theotown/tutorial/Tutorial;)Ljava/lang/Runnable;

    move-result-object v1

    const-string v2, "cmdRCI"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 415
    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$4;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$200(Linfo/flowersoft/theotown/tutorial/Tutorial;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial.AnonymousClass5 (info.flowersoft.theotown.tutorial.Tutorial$5)
.class public Linfo/flowersoft/theotown/tutorial/Tutorial$5;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tutorial/Tutorial;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 421
    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$5;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 424
    new-instance v0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;-><init>()V

    .line 425
    const-string v1, "cmdOk"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$5;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$200(Linfo/flowersoft/theotown/tutorial/Tutorial;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial.AnonymousClass6 (info.flowersoft.theotown.tutorial.Tutorial$6)
.class public Linfo/flowersoft/theotown/tutorial/Tutorial$6;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tutorial/Tutorial;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 431
    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$6;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 434
    new-instance v0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;-><init>()V

    .line 435
    const-string v1, "cmdOk"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$6;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$200(Linfo/flowersoft/theotown/tutorial/Tutorial;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial.AnonymousClass7 (info.flowersoft.theotown.tutorial.Tutorial$7)
.class public Linfo/flowersoft/theotown/tutorial/Tutorial$7;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tutorial/Tutorial;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 441
    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$7;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 444
    new-instance v0, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;-><init>()V

    .line 445
    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$7;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$500(Linfo/flowersoft/theotown/tutorial/Tutorial;)Ljava/lang/Runnable;

    move-result-object v1

    const-string v2, "cmdClose"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->addButton(Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 446
    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$7;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$200(Linfo/flowersoft/theotown/tutorial/Tutorial;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial.AnonymousClass8 (info.flowersoft.theotown.tutorial.Tutorial$8)
.class public Linfo/flowersoft/theotown/tutorial/Tutorial$8;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tutorial/Tutorial;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 448
    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$8;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 451
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$8;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$200(Linfo/flowersoft/theotown/tutorial/Tutorial;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial.AnonymousClass9 (info.flowersoft.theotown.tutorial.Tutorial$9)
.class public Linfo/flowersoft/theotown/tutorial/Tutorial$9;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tutorial/Tutorial;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 718
    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$9;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 721
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getRewardManager()Linfo/flowersoft/theotown/mechanics/RewardManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/RewardManager;->isTimeForReward()Z

    move-result v0

    if-nez v0, :cond_17

    .line 722
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$9;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->access$500(Linfo/flowersoft/theotown/tutorial/Tutorial;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_17
    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial.Stage (info.flowersoft.theotown.tutorial.Tutorial$Stage)
.class public Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;
.super Ljava/lang/Object;
.source "Tutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/tutorial/Tutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Stage"
.end annotation


# instance fields
.field public actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/NotificationAction;",
            ">;"
        }
    .end annotation
.end field

.field public icon:I

.field public id:Ljava/lang/String;

.field public saveable:Z

.field public setDown:Ljava/lang/Runnable;

.field public setUp:Ljava/lang/Runnable;

.field public showMask:I

.field public text:Ljava/lang/String;

.field public final synthetic this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

.field public update:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1348
    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->this$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1357
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->saveable:Z

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Linfo/flowersoft/theotown/tutorial/Tutorial$1;)V
    .registers 3

    .line 1348
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;-><init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    return-void
.end method


# virtual methods
.method public isActive()Z
    .registers 4

    const/4 v0, 0x1

    .line 1361
    :try_start_1
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "tutorial"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    const-string v2, "stages"

    .line 1362
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$Stage;->id:Ljava/lang/String;

    .line 1363
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    const-string v2, "active"

    invoke-virtual {v1, v2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1b
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_1 .. :try_end_1b} :catch_1b

    :catch_1b
    return v0
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda0 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$3YHgu9LiUF2VLQwpHEV4IMVRPDQ(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda1 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$u1Aw7P0RfF9G3rIta6MyZuJmPWw(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda10 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda10)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda10;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda10;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$TjDmtImYAVqLbg5bX7F-tNop_M0(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda11 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda11)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda11;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda11;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$Vb4295Hry85U0MoDSNN0gytR1XM(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda12 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda12)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda12;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda12;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$vrLRuuJGc63Pdxze7YwKcdwjTMA(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda13 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda13)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda13;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda13;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$rhqWAq7hLYIr5UrjfA58gWTsJbM(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda14 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda14)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda14;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda14;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$5K7ipZtr9nA4Re6SpYjnBQWCVoU(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda15 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda15)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda15;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method


# virtual methods
.method public final isFulfilled(Linfo/flowersoft/theotown/city/Tiles;II)Z
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda15;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0, p1, p2, p3}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$vnz3F1d8uwNdqb3vzz8ivOQXvgs(Linfo/flowersoft/theotown/tutorial/Tutorial;Linfo/flowersoft/theotown/city/Tiles;II)Z

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda16 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda16)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda16;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda16;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$I25SXWl6ZAe5r3ansbiCV9O-2Is(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda17 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda17)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda17;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda17;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$C2Hb8RDqasWxaZG4QeS3r2uZe4Y(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda18 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda18)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda18;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda18;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$eB9NHlwO3vYXjeZNqNWi0I0Lk40(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda19 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda19)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda19;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method


# virtual methods
.method public final isFulfilled(Linfo/flowersoft/theotown/city/Tiles;II)Z
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda19;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0, p1, p2, p3}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$Io_NYqDIZHkrEegB4fQxoRc4cUw(Linfo/flowersoft/theotown/tutorial/Tutorial;Linfo/flowersoft/theotown/city/Tiles;II)Z

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda2 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method


# virtual methods
.method public final isFulfilled(Linfo/flowersoft/theotown/city/Tiles;II)Z
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0, p1, p2, p3}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$5l0IOqPSc4s71tH4idBqGLCqP6M(Linfo/flowersoft/theotown/tutorial/Tutorial;Linfo/flowersoft/theotown/city/Tiles;II)Z

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda20 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda20)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda20;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda20;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$1RYc3yBcG6vZfrGhCFUPfZ3fKYg(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda21 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda21)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda21;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iput-object p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda21;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda21;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda21;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$Vid0ggH75iwS4uV6rUk_pmh6vk8(Linfo/flowersoft/theotown/tutorial/Tutorial;Ljava/util/List;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda22 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda22)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;IIIILinfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda22;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iput p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda22;->f$1:I

    iput p3, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda22;->f$2:I

    iput p4, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda22;->f$3:I

    iput p5, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda22;->f$4:I

    iput-object p6, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda22;->f$5:Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda22;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iget v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda22;->f$1:I

    iget v2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda22;->f$2:I

    iget v3, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda22;->f$3:I

    iget v4, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda22;->f$4:I

    iget-object v5, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda22;->f$5:Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;

    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$9m9_RkpMhRX77mV9c96e1QWTfG0(Linfo/flowersoft/theotown/tutorial/Tutorial;IIIILinfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda23 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda23)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda23;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda23;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$AoUAvW1G1_JEU7jpXRpBNoxDOiY(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda24 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda24)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lio/blueflower/stapel2d/util/IntList;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;ILio/blueflower/stapel2d/util/IntList;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda24;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iput p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda24;->f$1:I

    iput-object p3, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda24;->f$2:Lio/blueflower/stapel2d/util/IntList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda24;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iget v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda24;->f$1:I

    iget-object v2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda24;->f$2:Lio/blueflower/stapel2d/util/IntList;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$_DZobezgcpDrsKWSycdgbuK1TOQ(Linfo/flowersoft/theotown/tutorial/Tutorial;ILio/blueflower/stapel2d/util/IntList;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda25 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda25)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

.field public final synthetic f$1:Lio/blueflower/stapel2d/util/IntList;

.field public final synthetic f$2:Linfo/flowersoft/theotown/draft/BuildingDraft;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/draft/BuildingDraft;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda25;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iput-object p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda25;->f$1:Lio/blueflower/stapel2d/util/IntList;

    iput-object p3, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda25;->f$2:Linfo/flowersoft/theotown/draft/BuildingDraft;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda25;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda25;->f$1:Lio/blueflower/stapel2d/util/IntList;

    iget-object v2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda25;->f$2:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$7nWWFnIm4QIjoUZe95FxnR0WKLU(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/draft/BuildingDraft;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda26 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda26)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

.field public final synthetic f$1:Lio/blueflower/stapel2d/util/IntList;

.field public final synthetic f$2:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public final synthetic f$3:F

.field public final synthetic f$4:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/draft/BuildingDraft;FLjava/util/List;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda26;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iput-object p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda26;->f$1:Lio/blueflower/stapel2d/util/IntList;

    iput-object p3, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda26;->f$2:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iput p4, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda26;->f$3:F

    iput-object p5, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda26;->f$4:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda26;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda26;->f$1:Lio/blueflower/stapel2d/util/IntList;

    iget-object v2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda26;->f$2:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v3, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda26;->f$3:F

    iget-object v4, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda26;->f$4:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$4Ewe1FCwRpO24st5DMb_T3ZryrU(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/draft/BuildingDraft;FLjava/util/List;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda27 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda27)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

.field public final synthetic f$1:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/Getter;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda27;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iput-object p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda27;->f$1:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda27;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda27;->f$1:Lio/blueflower/stapel2d/util/Getter;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$Krj1H0YIEQeA7JA-Jt7EhAD3HXc(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/Getter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda28 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda28)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

.field public final synthetic f$1:Lio/blueflower/stapel2d/util/IntList;

.field public final synthetic f$2:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public final synthetic f$3:[I

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/draft/BuildingDraft;[IZ)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda28;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iput-object p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda28;->f$1:Lio/blueflower/stapel2d/util/IntList;

    iput-object p3, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda28;->f$2:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iput-object p4, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda28;->f$3:[I

    iput-boolean p5, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda28;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda28;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda28;->f$1:Lio/blueflower/stapel2d/util/IntList;

    iget-object v2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda28;->f$2:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v3, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda28;->f$3:[I

    iget-boolean v4, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda28;->f$4:Z

    invoke-static {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$W1ivT18K5fPIPlT6c4IIy4_oBP4(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/draft/BuildingDraft;[IZ)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda29 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda29)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

.field public final synthetic f$1:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/Getter;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda29;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iput-object p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda29;->f$1:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda29;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda29;->f$1:Lio/blueflower/stapel2d/util/Getter;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$UXiLJojYyoE0bIH6MfCBH5frpOs(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/Getter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda3 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$MLcg9vAqDZ50AKYH9b4YIJqVOCA(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda30 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda30)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

.field public final synthetic f$1:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Linfo/flowersoft/theotown/draft/BuildingDraft;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda30;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iput-object p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda30;->f$1:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iput p3, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda30;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda30;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda30;->f$1:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda30;->f$2:I

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$hPAIWkX1w_PpnsOgOndcSsGwYmc(Linfo/flowersoft/theotown/tutorial/Tutorial;Linfo/flowersoft/theotown/draft/BuildingDraft;I)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda31 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda31)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

.field public final synthetic f$1:Lio/blueflower/stapel2d/util/IntList;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/IntList;Ljava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda31;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iput-object p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda31;->f$1:Lio/blueflower/stapel2d/util/IntList;

    iput-object p3, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda31;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda31;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda31;->f$1:Lio/blueflower/stapel2d/util/IntList;

    iget-object v2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda31;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$neSrdkLiRO5TLg6vvGF25SFd3j8(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/IntList;Ljava/util/List;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda32 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda32)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

.field public final synthetic f$1:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Ljava/lang/Class;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda32;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iput-object p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda32;->f$1:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda32;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda32;->f$1:Ljava/lang/Class;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$B9afzinETLCN4kv8VUdpU8-XC1A(Linfo/flowersoft/theotown/tutorial/Tutorial;Ljava/lang/Class;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda33 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda33)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

.field public final synthetic f$1:Lio/blueflower/stapel2d/util/IntList;

.field public final synthetic f$2:Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda33;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iput-object p2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda33;->f$1:Lio/blueflower/stapel2d/util/IntList;

    iput-object p3, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda33;->f$2:Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda33;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    iget-object v1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda33;->f$1:Lio/blueflower/stapel2d/util/IntList;

    iget-object v2, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda33;->f$2:Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$OatcQEVBWXiT919_3NCnuDum42I(Linfo/flowersoft/theotown/tutorial/Tutorial;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda34 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda34)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda34;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda34;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$88kD_B4tXk5yPTtGUiALnryyMqY(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda35 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda35)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda35;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda35;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$3zCCBldjyGuxhNwlvC7B07r4aMs(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda4 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$eYyPRVv4JN3oGNGVvUV6VedarpI(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda5 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$R4Dje078GAqYoJ9xdY9V6MWAhrw(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda6 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$lVeBiSPO4VWLEjyXNE4qamGB_20(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda7 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda7)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$RHfD_E9GtTY_vkJAUNn8EdqVJHU(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda8 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda8)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$f1bp-GKpOWRhjvj_FX7UhPBWpRE(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda9 (info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda9)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tutorial/Tutorial;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda9;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/Tutorial$$ExternalSyntheticLambda9;->f$0:Linfo/flowersoft/theotown/tutorial/Tutorial;

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->$r8$lambda$J-bvz57Zbvxx5dbE76qTPtInf5Q(Linfo/flowersoft/theotown/tutorial/Tutorial;)V

    return-void
.end method

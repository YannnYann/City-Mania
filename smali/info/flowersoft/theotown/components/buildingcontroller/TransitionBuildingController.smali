###### Class info.flowersoft.theotown.components.buildingcontroller.TransitionBuildingController (info.flowersoft.theotown.components.buildingcontroller.TransitionBuildingController)
.class public Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;
.super Ljava/lang/Object;
.source "TransitionBuildingController.java"

# interfaces
.implements Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final dailyMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/MethodCluster;",
            ">;"
        }
    .end annotation
.end field

.field public final funRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

.field public isLuaInitialized:Z

.field public final onClickFunRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

.field public final randomFunItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation
.end field

.field public final randomFunRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

.field public final randomMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/MethodCluster;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 5

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->randomFunItems:Ljava/util/List;

    .line 32
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 33
    const-string v1, "daily"

    const-class v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClustersOrNull(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->dailyMethods:Ljava/util/List;

    .line 34
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "random"

    .line 35
    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClustersOrNull(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->randomMethods:Ljava/util/List;

    .line 40
    iput-object p1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->city:Linfo/flowersoft/theotown/city/City;

    .line 41
    new-instance v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->funRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    .line 42
    new-instance v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->onClickFunRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    .line 43
    new-instance v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->randomFunRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    const/4 p1, 0x0

    .line 45
    :goto_3c
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->BUILDINGS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_58

    .line 46
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->BUILDINGS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 47
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->randomTransitions:Ljava/util/List;

    if-eqz v1, :cond_55

    .line 48
    iget-object v1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->randomFunItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_55
    add-int/lit8 p1, p1, 0x1

    goto :goto_3c

    :cond_58
    return-void
.end method


# virtual methods
.method public accept(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 10

    .line 88
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    .line 89
    iget-object v2, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->transitions:Ljava/util/List;

    if-eqz v2, :cond_2f

    iget-boolean v1, v0, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    if-eqz v1, :cond_2f

    .line 90
    iget-object v1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->funRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accept "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    iget-object v6, v0, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    .line 92
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v7

    move-object v3, p1

    .line 90
    invoke-virtual/range {v1 .. v7}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->accept(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Building;Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    :cond_2f
    return-void
.end method

.method public afterPass()V
    .registers 8

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->funRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->run()V

    .line 100
    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->randomFunRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->run()V

    .line 102
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->isLuaInitialized:Z

    if-eqz v0, :cond_9d

    .line 103
    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->dailyMethods:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    move v0, v1

    .line 104
    :goto_14
    iget-object v2, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->dailyMethods:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_54

    .line 105
    iget-object v2, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->dailyMethods:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/scripting/MethodCluster;

    .line 106
    invoke-virtual {v2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 107
    iget-object v4, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v4

    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v3

    move v4, v1

    .line 108
    :goto_35
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_51

    .line 109
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v5, :cond_4e

    .line 111
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v6

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v5

    invoke-virtual {v2, v6, v5, v1}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(III)Z

    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 117
    :cond_54
    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->randomMethods:Ljava/util/List;

    if-eqz v0, :cond_9d

    move v0, v1

    .line 118
    :goto_59
    iget-object v2, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->randomMethods:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_9d

    .line 119
    iget-object v2, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->randomMethods:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/scripting/MethodCluster;

    .line 120
    invoke-virtual {v2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 122
    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result v4

    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getHeight(I)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 123
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v5, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 124
    iget-object v6, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v6

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 126
    invoke-virtual {v2, v5, v3, v1}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(III)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    :cond_9d
    return-void
.end method

.method public beforePass()V
    .registers 8

    const/4 v0, 0x0

    .line 74
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->randomFunItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 75
    iget-object v1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->randomFunItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 76
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->randomTransitions:Ljava/util/List;

    if-eqz v2, :cond_39

    iget-boolean v2, v1, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    if-eqz v2, :cond_39

    .line 77
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v2

    .line 78
    iget-object v3, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->randomFunRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    iget-object v4, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->randomTransitions:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "random "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    invoke-virtual {v3, v4, v5, v1, v2}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->acceptRandom(Ljava/util/List;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    :cond_3c
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getGlobals()Lvm2/Globals;

    move-result-object v0

    const-string v1, "City"

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->isLuaInitialized:Z

    return-void
.end method

.method public canHandle(Linfo/flowersoft/theotown/draft/BuildingDraft;)Z
    .registers 2

    .line 69
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->transitions:Ljava/util/List;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 155
    const-string v0, "MachineTransitionController"

    return-object v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    :cond_a
    return-void
.end method

.method public onClick(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 11

    .line 133
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    .line 135
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->onClickTransitions:Ljava/util/List;

    if-eqz v1, :cond_45

    iget-boolean v1, v0, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    if-eqz v1, :cond_45

    .line 136
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v8

    .line 137
    iget-object v2, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->onClickFunRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    .line 138
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v1

    iget-object v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->onClickTransitions:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on click "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v1

    iget-object v7, v1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    move-object v4, p1

    .line 137
    invoke-virtual/range {v2 .. v8}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->accept(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Building;Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    .line 142
    iget-object p1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->onClickFunRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->run()V

    goto :goto_46

    :cond_45
    move-object v4, p1

    .line 145
    :goto_46
    iget-object p1, v0, Linfo/flowersoft/theotown/draft/Draft;->luaScripts:Ljava/util/List;

    if-eqz p1, :cond_66

    iget-boolean p1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->isLuaInitialized:Z

    if-eqz p1, :cond_66

    .line 146
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p1

    const-string v1, "click"

    invoke-virtual {p1, v1, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object p1

    if-eqz p1, :cond_66

    .line 148
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(III)Z

    :cond_66
    return-void
.end method

.method public prepare()V
    .registers 1

    .line 0
    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.components.roadcontroller.TransitionRoadController (info.flowersoft.theotown.components.roadcontroller.TransitionRoadController)
.class public Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;
.super Ljava/lang/Object;
.source "TransitionRoadController.java"

# interfaces
.implements Linfo/flowersoft/theotown/components/roadcontroller/RoadController;


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final dailyDecoMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/MethodCluster;",
            ">;"
        }
    .end annotation
.end field

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

.field public final randomDecoMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/MethodCluster;",
            ">;"
        }
    .end annotation
.end field

.field public final randomFunDecos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/RoadDecorationDraft;",
            ">;"
        }
    .end annotation
.end field

.field public final randomFunRoads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/RoadDraft;",
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
    .registers 6

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->randomFunRoads:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->randomFunDecos:Ljava/util/List;

    .line 31
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 32
    const-string v1, "daily"

    const-class v2, Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClustersOrNull(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->dailyMethods:Ljava/util/List;

    .line 33
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 34
    const-class v3, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClustersOrNull(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->dailyDecoMethods:Ljava/util/List;

    .line 35
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 36
    const-string v1, "random"

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClustersOrNull(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->randomMethods:Ljava/util/List;

    .line 37
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClustersOrNull(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->randomDecoMethods:Ljava/util/List;

    .line 43
    iput-object p1, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->city:Linfo/flowersoft/theotown/city/City;

    .line 44
    new-instance v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->funRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    .line 45
    new-instance v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->onClickFunRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    .line 46
    new-instance v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->randomFunRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    const/4 p1, 0x0

    move v0, p1

    .line 48
    :goto_5a
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ROADS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_76

    .line 49
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ROADS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 50
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->randomTransitions:Ljava/util/List;

    if-eqz v2, :cond_73

    .line 51
    iget-object v2, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->randomFunRoads:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 55
    :cond_76
    :goto_76
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ROAD_DECORATIONS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_92

    .line 56
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ROAD_DECORATIONS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    .line 57
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->randomTransitions:Ljava/util/List;

    if-eqz v1, :cond_8f

    .line 58
    iget-object v1, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->randomFunDecos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8f
    add-int/lit8 p1, p1, 0x1

    goto :goto_76

    :cond_92
    return-void
.end method


# virtual methods
.method public accept(Linfo/flowersoft/theotown/city/objects/Road;)V
    .registers 16

    .line 98
    iget-object v0, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 99
    iget-object v2, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->transitions:Ljava/util/List;

    const-string v7, "accept "

    if-eqz v2, :cond_2a

    iget-boolean v1, v0, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    if-eqz v1, :cond_2a

    .line 100
    iget-object v1, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->funRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    .line 102
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v6

    move-object v3, p1

    .line 100
    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->accept(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Road;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    goto :goto_2b

    :cond_2a
    move-object v3, p1

    .line 105
    :goto_2b
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_31
    if-ltz p1, :cond_61

    .line 106
    invoke-virtual {v3, p1}, Linfo/flowersoft/theotown/city/objects/Road;->getDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 107
    iget-object v9, v1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->transitions:Ljava/util/List;

    if-eqz v9, :cond_5e

    iget-boolean v2, v0, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    if-eqz v2, :cond_5e

    .line 108
    iget-object v8, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->funRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    .line 110
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v13

    move-object v10, v3

    .line 108
    invoke-virtual/range {v8 .. v13}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->accept(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Road;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    :cond_5e
    add-int/lit8 p1, p1, -0x1

    goto :goto_31

    :cond_61
    return-void
.end method

.method public afterPass()V
    .registers 12

    .line 116
    iget-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->funRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->run()V

    .line 117
    iget-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->randomFunRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->run()V

    .line 119
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->isLuaInitialized:Z

    if-eqz v0, :cond_11d

    .line 120
    iget-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->dailyMethods:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    move v0, v1

    .line 121
    :goto_14
    iget-object v2, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->dailyMethods:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_58

    .line 122
    iget-object v2, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->dailyMethods:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/scripting/MethodCluster;

    .line 123
    invoke-virtual {v2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 124
    iget-object v4, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v4

    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/city/RoadList;->getRoadsOfDraft(Linfo/flowersoft/theotown/draft/RoadDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v3

    move v4, v1

    .line 125
    :goto_35
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_55

    .line 126
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/city/objects/Road;

    if-eqz v5, :cond_52

    .line 128
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v6

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v7

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Road;->getLevel()I

    move-result v5

    invoke-virtual {v2, v6, v7, v5}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(III)Z

    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 134
    :cond_58
    iget-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->dailyDecoMethods:Ljava/util/List;

    if-eqz v0, :cond_bb

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bb

    .line 135
    iget-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v0

    move v2, v1

    .line 136
    :goto_69
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_bb

    .line 137
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Road;

    if-eqz v3, :cond_b8

    move v4, v1

    .line 139
    :goto_78
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result v5

    if-ge v4, v5, :cond_b8

    .line 140
    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/city/objects/Road;->getDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    move-result-object v5

    if-eqz v5, :cond_b5

    move v6, v1

    .line 142
    :goto_85
    iget-object v7, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->dailyDecoMethods:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_b5

    .line 143
    iget-object v7, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->dailyDecoMethods:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/scripting/MethodCluster;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/scripting/MethodCluster;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v7

    if-ne v7, v5, :cond_b2

    .line 144
    iget-object v7, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->dailyDecoMethods:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/scripting/MethodCluster;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v8

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v9

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->getLevel()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(III)Z

    :cond_b2
    add-int/lit8 v6, v6, 0x1

    goto :goto_85

    :cond_b5
    add-int/lit8 v4, v4, 0x1

    goto :goto_78

    :cond_b8
    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    .line 153
    :cond_bb
    iget-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->randomMethods:Ljava/util/List;

    if-eqz v0, :cond_ec

    move v0, v1

    .line 154
    :goto_c0
    iget-object v2, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->randomMethods:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_ec

    .line 155
    iget-object v2, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->randomMethods:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/scripting/MethodCluster;

    .line 156
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v4, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 157
    iget-object v5, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 158
    invoke-virtual {v2, v4, v3, v1}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(III)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c0

    .line 162
    :cond_ec
    iget-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->randomDecoMethods:Ljava/util/List;

    if-eqz v0, :cond_11d

    move v0, v1

    .line 163
    :goto_f1
    iget-object v2, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->randomDecoMethods:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_11d

    .line 164
    iget-object v2, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->randomDecoMethods:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/scripting/MethodCluster;

    .line 165
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v4, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 166
    iget-object v5, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 167
    invoke-virtual {v2, v4, v3, v1}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(III)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_f1

    :cond_11d
    return-void
.end method

.method public beforePass()V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 75
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->randomFunRoads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "update "

    if-ge v1, v2, :cond_3b

    .line 76
    iget-object v2, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->randomFunRoads:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 77
    iget-object v4, v2, Linfo/flowersoft/theotown/draft/RoadDraft;->randomTransitions:Ljava/util/List;

    if-eqz v4, :cond_38

    iget-boolean v5, v2, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    if-eqz v5, :cond_38

    .line 78
    iget-object v5, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->randomFunRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v2, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    .line 80
    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v2

    .line 78
    invoke-virtual {v5, v4, v3, v6, v2}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->acceptRandom(Ljava/util/List;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 84
    :cond_3b
    :goto_3b
    iget-object v1, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->randomFunDecos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_72

    .line 85
    iget-object v1, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->randomFunDecos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    .line 86
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->randomTransitions:Ljava/util/List;

    if-eqz v2, :cond_6f

    iget-boolean v4, v1, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    if-eqz v4, :cond_6f

    .line 87
    iget-object v4, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->randomFunRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    .line 89
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v1

    .line 87
    invoke-virtual {v4, v2, v5, v6, v1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->acceptRandom(Ljava/util/List;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 93
    :cond_72
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

    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->isLuaInitialized:Z

    return-void
.end method

.method public canHandle(Linfo/flowersoft/theotown/draft/RoadDraft;)Z
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 216
    const-string v0, "RoadTransitionController"

    return-object v0
.end method

.method public onClick(Linfo/flowersoft/theotown/city/objects/Road;)V
    .registers 10

    .line 174
    iget-object v6, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 176
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_9
    const-string v0, "on click "

    if-ltz v7, :cond_46

    .line 177
    invoke-virtual {p1, v7}, Linfo/flowersoft/theotown/city/objects/Road;->getDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 179
    iget-object v3, v1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->onClickTransitions:Ljava/util/List;

    if-eqz v3, :cond_43

    iget-boolean v4, v1, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    if-eqz v4, :cond_43

    .line 180
    iget-object v4, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->onClickFunRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v3

    move-object v3, v0

    move-object v0, v4

    iget-object v4, v1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    .line 182
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v1

    move-object v2, v5

    move v5, v1

    move-object v1, v2

    move-object v2, p1

    .line 180
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->accept(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Road;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    .line 183
    iget-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->onClickFunRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->run()V

    :cond_43
    add-int/lit8 v7, v7, -0x1

    goto :goto_9

    .line 187
    :cond_46
    iget-object v1, v6, Linfo/flowersoft/theotown/draft/RoadDraft;->onClickTransitions:Ljava/util/List;

    if-eqz v1, :cond_71

    iget-boolean v2, v6, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    if-eqz v2, :cond_71

    .line 188
    iget-object v2, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->onClickFunRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v6, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    .line 190
    invoke-virtual {v6}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v5

    move-object v0, v2

    move-object v2, p1

    .line 188
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->accept(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Road;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    .line 191
    iget-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->onClickFunRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->run()V

    .line 194
    :cond_71
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->isLuaInitialized:Z

    if-eqz v0, :cond_c3

    .line 195
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_7b
    const-string v1, "click"

    if-ltz v0, :cond_a6

    .line 196
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Road;->getDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    move-result-object v3

    if-eqz v3, :cond_a3

    .line 197
    iget-object v4, v3, Linfo/flowersoft/theotown/draft/Draft;->luaScripts:Ljava/util/List;

    if-eqz v4, :cond_a3

    .line 198
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v0

    if-eqz v0, :cond_c3

    .line 200
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getLevel()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(III)Z

    return-void

    :cond_a3
    add-int/lit8 v0, v0, -0x1

    goto :goto_7b

    .line 205
    :cond_a6
    iget-object v0, v6, Linfo/flowersoft/theotown/draft/Draft;->luaScripts:Ljava/util/List;

    if-eqz v0, :cond_c3

    .line 206
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0, v1, v6}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v0

    if-eqz v0, :cond_c3

    .line 208
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getLevel()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(III)Z

    :cond_c3
    return-void
.end method

.method public prepare()V
    .registers 1

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.stages.commandhandler.ActionHandler (info.flowersoft.theotown.stages.commandhandler.ActionHandler)
.class public Linfo/flowersoft/theotown/stages/commandhandler/ActionHandler;
.super Ljava/lang/Object;
.source "ActionHandler.java"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandHandler;


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/ActionHandler;->city:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public canHandle(Ljava/lang/String;)Z
    .registers 3

    .line 25
    const-string v0, "action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "condition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x1

    return p1
.end method

.method public handle(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 30
    iget-object v3, v1, Linfo/flowersoft/theotown/stages/commandhandler/ActionHandler;->city:Linfo/flowersoft/theotown/city/City;

    if-nez v3, :cond_10

    .line 31
    const-string v0, "No city context"

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 34
    :cond_10
    :try_start_10
    new-instance v3, Linfo/flowersoft/theotown/draftloader/TransitionLoader;

    invoke-direct {v3}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;-><init>()V

    .line 35
    new-instance v4, Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/commandhandler/ActionHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v4, v5}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 37
    const-string v5, "action"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 38
    invoke-virtual/range {p1 .. p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->loadAction(Ljava/lang/Object;)Linfo/flowersoft/theotown/draft/Transition$Action;

    move-result-object v5

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "console "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v13}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->doAction(Linfo/flowersoft/theotown/draft/Transition$Action;IIIIIZLjava/lang/String;Lvm2/LuaValue;)Z

    move-result v0

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    :catch_5d
    move-exception v0

    goto :goto_95

    .line 41
    :cond_5f
    const-string v5, "condition"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 42
    invoke-virtual/range {p1 .. p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->loadCondition(Ljava/lang/Object;)Linfo/flowersoft/theotown/draft/Transition$Condition;

    move-result-object v5

    .line 43
    const-string v15, ""

    const/16 v16, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x1

    const-wide/16 v12, 0x1

    const/4 v14, -0x1

    invoke-virtual/range {v4 .. v16}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->checkCondition(Linfo/flowersoft/theotown/draft/Transition$Condition;JJJJILjava/lang/String;Lvm2/LuaValue;)Z

    move-result v0

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Condition result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_94} :catch_5d

    return-void

    .line 47
    :goto_95
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    :cond_9c
    return-void
.end method

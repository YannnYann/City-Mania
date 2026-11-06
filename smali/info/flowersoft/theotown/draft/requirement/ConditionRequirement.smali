###### Class info.flowersoft.theotown.draft.requirement.ConditionRequirement (info.flowersoft.theotown.draft.requirement.ConditionRequirement)
.class public Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;
.super Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;
.source "ConditionRequirement.java"


# instance fields
.field public condition:Linfo/flowersoft/theotown/draft/Transition$Condition;

.field public fulfilledText:Ljava/lang/String;

.field public fulfilledTextId:Ljava/lang/String;

.field public hideIfFulfilled:Z

.field public hideIfNotFulfilled:Z

.field public lastCity:Linfo/flowersoft/theotown/city/City;

.field public final privileged:Z

.field public text:Ljava/lang/String;

.field public textId:Ljava/lang/String;

.field public transitionRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;-><init>()V

    .line 39
    const-string v0, "hide if fulfilled"

    iget-boolean v1, p0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->hideIfFulfilled:Z

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->hideIfFulfilled:Z

    .line 40
    const-string v0, "hide if not fulfilled"

    iget-boolean v1, p0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->hideIfNotFulfilled:Z

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->hideIfNotFulfilled:Z

    .line 41
    new-instance v0, Linfo/flowersoft/theotown/draftloader/TransitionLoader;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;-><init>()V

    const-string v1, "condition"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->loadCondition(Ljava/lang/Object;)Linfo/flowersoft/theotown/draft/Transition$Condition;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->condition:Linfo/flowersoft/theotown/draft/Transition$Condition;

    .line 42
    const-string v0, "text"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->text:Ljava/lang/String;

    .line 43
    const-string v0, "text id"

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->textId:Ljava/lang/String;

    .line 44
    const-string v0, "text fulfilled"

    iget-object v1, p0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->text:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->fulfilledText:Ljava/lang/String;

    .line 45
    const-string v0, "text id fulfilled"

    iget-object v1, p0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->textId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->fulfilledTextId:Ljava/lang/String;

    .line 46
    iput-boolean p2, p0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->privileged:Z

    return-void
.end method


# virtual methods
.method public autoFulfilledInSandboxMode()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 120
    instance-of v0, p1, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;

    if-eqz v0, :cond_f

    .line 121
    check-cast p1, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;

    .line 122
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->condition:Linfo/flowersoft/theotown/draft/Transition$Condition;

    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->condition:Linfo/flowersoft/theotown/draft/Transition$Condition;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/draft/Transition$Condition;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public hideIfFulfilled()Z
    .registers 2

    .line 51
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->hideIfFulfilled:Z

    return v0
.end method

.method public hideIfNotFulfilled()Z
    .registers 2

    .line 56
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->hideIfNotFulfilled:Z

    return v0
.end method

.method public final interpolateString(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 106
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->transitionRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    if-eqz v0, :cond_13

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p1

    .line 107
    invoke-virtual/range {v0 .. v10}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->interpolateString(Ljava/lang/String;JJJJI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_13
    move-object v1, p1

    return-object v1
.end method

.method public isFulfilled(Linfo/flowersoft/theotown/city/City;)Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 61
    sget-boolean v2, Linfo/flowersoft/theotown/resources/Constants;->NO_REQUIREMENTS:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    return v3

    .line 62
    :cond_a
    iget-object v2, v0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->transitionRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    if-eqz v2, :cond_12

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->lastCity:Linfo/flowersoft/theotown/city/City;

    if-eq v2, v1, :cond_1b

    .line 63
    :cond_12
    new-instance v2, Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    invoke-direct {v2, v1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v2, v0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->transitionRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    .line 64
    iput-object v1, v0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->lastCity:Linfo/flowersoft/theotown/city/City;

    .line 73
    :cond_1b
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->context:Ljava/lang/Object;

    instance-of v2, v1, Linfo/flowersoft/theotown/city/objects/Building;

    const/4 v4, -0x1

    if-eqz v2, :cond_37

    .line 74
    check-cast v1, Linfo/flowersoft/theotown/city/objects/Building;

    .line 75
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v2

    .line 76
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v3

    .line 77
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v5

    .line 78
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v1

    move/from16 v16, v4

    goto :goto_4f

    .line 79
    :cond_37
    instance-of v2, v1, Linfo/flowersoft/theotown/city/objects/Road;

    if-eqz v2, :cond_49

    .line 80
    check-cast v1, Linfo/flowersoft/theotown/city/objects/Road;

    .line 81
    iget v2, v1, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    .line 82
    iget v4, v1, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    .line 83
    iget v1, v1, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    move/from16 v16, v1

    move v1, v3

    move v5, v1

    move v3, v4

    goto :goto_4f

    :cond_49
    const/4 v2, 0x0

    move v1, v3

    move v5, v1

    move/from16 v16, v4

    move v3, v2

    .line 86
    :goto_4f
    iget-object v6, v0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->transitionRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    iget-object v7, v0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->condition:Linfo/flowersoft/theotown/draft/Transition$Condition;

    int-to-long v8, v2

    int-to-long v10, v3

    int-to-long v12, v5

    int-to-long v14, v1

    const-string v17, ""

    const/16 v18, 0x0

    invoke-virtual/range {v6 .. v18}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->checkCondition(Linfo/flowersoft/theotown/draft/Transition$Condition;JJJJILjava/lang/String;Lvm2/LuaValue;)Z

    move-result v1

    return v1
.end method

.method public localize(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;
    .registers 6

    .line 91
    new-instance p1, Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-direct {p1, p2}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 92
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->isFulfilled(Linfo/flowersoft/theotown/city/City;)Z

    move-result p2

    const-string v0, " could be found!"

    if-eqz p2, :cond_3b

    .line 93
    iget-object p2, p0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->fulfilledTextId:Ljava/lang/String;

    if-eqz p2, :cond_30

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No fulfilled translation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->textId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->interpolateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 96
    :cond_30
    iget-object p2, p0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->fulfilledText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizePacked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->interpolateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 98
    :cond_3b
    iget-object p2, p0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->textId:Ljava/lang/String;

    if-eqz p2, :cond_5e

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No translation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->textId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->interpolateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 101
    :cond_5e
    iget-object p2, p0, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizePacked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->interpolateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public strongerOrEqualThan(Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;)Z
    .registers 2

    .line 130
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

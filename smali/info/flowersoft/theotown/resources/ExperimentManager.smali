###### Class info.flowersoft.theotown.resources.ExperimentManager (info.flowersoft.theotown.resources.ExperimentManager)
.class public Linfo/flowersoft/theotown/resources/ExperimentManager;
.super Ljava/lang/Object;
.source "ExperimentManager.java"


# static fields
.field public static instance:Linfo/flowersoft/theotown/resources/ExperimentManager;


# instance fields
.field public final experiments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final extraInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final finalValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public initialised:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/ExperimentManager;->experiments:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/ExperimentManager;->finalValues:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/ExperimentManager;->extraInfos:Ljava/util/Map;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Linfo/flowersoft/theotown/resources/ExperimentManager;->initialised:Z

    return-void
.end method

.method public static getInstance()Linfo/flowersoft/theotown/resources/ExperimentManager;
    .registers 1

    .line 189
    sget-object v0, Linfo/flowersoft/theotown/resources/ExperimentManager;->instance:Linfo/flowersoft/theotown/resources/ExperimentManager;

    if-nez v0, :cond_b

    .line 190
    new-instance v0, Linfo/flowersoft/theotown/resources/ExperimentManager;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/ExperimentManager;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/ExperimentManager;->instance:Linfo/flowersoft/theotown/resources/ExperimentManager;

    .line 192
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/resources/ExperimentManager;->instance:Linfo/flowersoft/theotown/resources/ExperimentManager;

    return-object v0
.end method


# virtual methods
.method public final considerExperiment(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 12

    .line 93
    const-string v0, "running"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 94
    const-string v2, "min version"

    invoke-virtual {p2, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 95
    const-string v3, "first version"

    invoke-virtual {p2, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 96
    const-string v4, "testers"

    invoke-virtual {p2, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    .line 97
    const-string v5, "options"

    invoke-virtual {p2, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 98
    const-string v6, "default value"

    invoke-virtual {p2, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 99
    const-string v7, "debug value"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    .line 101
    sget-boolean v7, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    if-eqz v7, :cond_42

    if-ltz p2, :cond_42

    .line 102
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ExperimentManager;->experiments:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ExperimentManager;->finalValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 106
    :cond_42
    sget-object p2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 107
    invoke-interface {p2}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object p2

    sget-object v7, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne p2, v7, :cond_123

    if-eqz v0, :cond_123

    const/4 p2, 0x1

    if-lt v5, p2, :cond_123

    sget v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    if-gt v2, v0, :cond_123

    sget v0, Linfo/flowersoft/theotown/resources/Settings;->firstVersion:I

    if-le v3, v0, :cond_5b

    goto/16 :goto_123

    .line 117
    :cond_5b
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ExperimentManager;->experiments:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 122
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_7b

    .line 123
    iget-object v2, p0, Linfo/flowersoft/theotown/resources/ExperimentManager;->experiments:Ljava/util/Map;

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_84

    .line 125
    :cond_7b
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ExperimentManager;->experiments:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_84
    move v1, p2

    .line 129
    :cond_85
    iget-object p2, p0, Linfo/flowersoft/theotown/resources/ExperimentManager;->experiments:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 131
    const-string v2, ""

    if-gez p2, :cond_ac

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Don\'t participate ("

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_bf

    :cond_ac
    or-int/lit8 v1, v1, 0x2

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v6, p2

    move-object p2, v3

    :goto_bf
    if-nez v0, :cond_d2

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "(init)"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 141
    :cond_d2
    iget-object v3, p0, Linfo/flowersoft/theotown/resources/ExperimentManager;->finalValues:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v3, p0, Linfo/flowersoft/theotown/resources/ExperimentManager;->extraInfos:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "experiment:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/blueflower/stapel2d/util/SessionLogger;->logGeneric(Ljava/lang/String;)V

    .line 146
    sget-object p2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v0, :cond_116

    const-string v2, " (init)"

    :cond_116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Experiment"

    invoke-interface {p2, v0, p1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 112
    :cond_123
    :goto_123
    iget-object p2, p0, Linfo/flowersoft/theotown/resources/ExperimentManager;->experiments:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object p2, p0, Linfo/flowersoft/theotown/resources/ExperimentManager;->finalValues:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dispose()V
    .registers 2

    const/4 v0, 0x0

    .line 53
    sput-object v0, Linfo/flowersoft/theotown/resources/ExperimentManager;->instance:Linfo/flowersoft/theotown/resources/ExperimentManager;

    return-void
.end method

.method public getValue(Ljava/lang/String;)I
    .registers 3

    .line 162
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ExperimentManager;->finalValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_f

    .line 164
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public init()V
    .registers 2

    .line 36
    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/ExperimentManager;->initialised:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Linfo/flowersoft/theotown/resources/ExperimentManager;->initialised:Z

    .line 41
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/ExperimentManager;->load()V

    .line 43
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/ExperimentManager;->parseExperiments()V

    .line 45
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/ExperimentManager;->save()V

    .line 47
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->loadCounter:I

    return-void
.end method

.method public final load()V
    .registers 5

    .line 57
    new-instance v0, Linfo/flowersoft/theotown/util/SSP;

    const-string v1, "info.flowersoft.theotown.theotown.experiments"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->load()Linfo/flowersoft/theotown/util/SSP$Reader;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Linfo/flowersoft/theotown/util/SSP$Reader;->getAll()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 60
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 61
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 62
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_19

    .line 63
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 64
    iget-object v3, p0, Linfo/flowersoft/theotown/resources/ExperimentManager;->experiments:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_42
    return-void
.end method

.method public final parseExperiments()V
    .registers 6

    .line 71
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "experiment"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_2a

    .line 76
    :cond_b
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->names()Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_12

    goto :goto_2a

    :cond_12
    const/4 v2, 0x0

    .line 81
    :goto_13
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 82
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_24

    goto :goto_27

    .line 88
    :cond_24
    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/resources/ExperimentManager;->considerExperiment(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final save()V
    .registers 5

    .line 150
    new-instance v0, Linfo/flowersoft/theotown/util/SSP;

    const-string v1, "info.flowersoft.theotown.theotown.experiments"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->edit()Linfo/flowersoft/theotown/util/SSP$Writer;

    move-result-object v0

    .line 152
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ExperimentManager;->experiments:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 154
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 155
    invoke-interface {v0, v3, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putInt(Ljava/lang/String;I)V

    goto :goto_15

    .line 158
    :cond_35
    invoke-interface {v0}, Linfo/flowersoft/theotown/util/SSP$Writer;->apply()V

    return-void
.end method

.method public setValue(Ljava/lang/String;I)V
    .registers 4

    .line 171
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ExperimentManager;->finalValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

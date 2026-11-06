###### Class info.flowersoft.theotown.components.notification.task.TaskManager (info.flowersoft.theotown.components.notification.task.TaskManager)
.class public Linfo/flowersoft/theotown/components/notification/task/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;

.field public currentTask:Linfo/flowersoft/theotown/components/notification/task/Task;

.field public currentTaskIndex:I

.field public disabled:Z

.field public hasNewTask:Z

.field public startValue:J

.field public tagToTask:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/components/notification/task/Task;",
            ">;"
        }
    .end annotation
.end field

.field public targetValue:J

.field public taskToTag:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/components/notification/task/Task;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/notification/task/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->tasks:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->taskToTag:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->tagToTask:Ljava/util/Map;

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->currentTaskIndex:I

    .line 46
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->city:Linfo/flowersoft/theotown/city/City;

    .line 48
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->buildTasks()V

    return-void
.end method


# virtual methods
.method public final addTask(Linfo/flowersoft/theotown/components/notification/task/Task;Ljava/lang/String;)V
    .registers 5

    .line 126
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->tagToTask:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 129
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->tasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->taskToTag:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->tagToTask:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 127
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final buildTasks()V
    .registers 16

    .line 52
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    .line 54
    new-instance v1, Linfo/flowersoft/theotown/components/notification/task/ZoneTask;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_RESIDENTIAL:I

    const/16 v3, 0x419

    .line 56
    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v4

    iget-object v4, v4, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v5

    iget-object v5, v5, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL1:Linfo/flowersoft/theotown/draft/ZoneDraft;

    filled-new-array {v4, v5}, [Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/16 v5, 0x1e

    iget-object v6, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct/range {v1 .. v6}, Linfo/flowersoft/theotown/components/notification/task/ZoneTask;-><init>(ILjava/lang/String;Ljava/util/List;ILinfo/flowersoft/theotown/city/City;)V

    const-string v2, "res zone00"

    .line 54
    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->addTask(Linfo/flowersoft/theotown/components/notification/task/Task;Ljava/lang/String;)V

    .line 61
    new-instance v3, Linfo/flowersoft/theotown/components/notification/task/ZoneTask;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_COMMERCIAL:I

    const/16 v1, 0xac

    .line 63
    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    .line 64
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/city/Zones;->COMMERCIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v2

    iget-object v2, v2, Linfo/flowersoft/theotown/city/Zones;->COMMERCIAL1:Linfo/flowersoft/theotown/draft/ZoneDraft;

    filled-new-array {v1, v2}, [Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/16 v7, 0xf

    iget-object v8, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct/range {v3 .. v8}, Linfo/flowersoft/theotown/components/notification/task/ZoneTask;-><init>(ILjava/lang/String;Ljava/util/List;ILinfo/flowersoft/theotown/city/City;)V

    const-string v1, "com zone00"

    .line 61
    invoke-virtual {p0, v3, v1}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->addTask(Linfo/flowersoft/theotown/components/notification/task/Task;Ljava/lang/String;)V

    .line 68
    new-instance v4, Linfo/flowersoft/theotown/components/notification/task/ZoneTask;

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_INDUSTRIAL:I

    const/16 v1, 0x388

    .line 70
    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/city/Zones;->INDUSTRIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v2

    iget-object v2, v2, Linfo/flowersoft/theotown/city/Zones;->INDUSTRIAL1:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 72
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/city/Zones;->FARM:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v7

    iget-object v7, v7, Linfo/flowersoft/theotown/city/Zones;->HARBOR:Linfo/flowersoft/theotown/draft/ZoneDraft;

    filled-new-array {v1, v2, v3, v7}, [Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v1

    .line 71
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/16 v8, 0xf

    iget-object v9, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct/range {v4 .. v9}, Linfo/flowersoft/theotown/components/notification/task/ZoneTask;-><init>(ILjava/lang/String;Ljava/util/List;ILinfo/flowersoft/theotown/city/City;)V

    const-string v1, "ind zone00"

    .line 68
    invoke-virtual {p0, v4, v1}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->addTask(Linfo/flowersoft/theotown/components/notification/task/Task;Ljava/lang/String;)V

    .line 76
    new-instance v5, Linfo/flowersoft/theotown/components/notification/task/RoadTask;

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROAD:I

    const/16 v1, 0x35f

    .line 78
    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0xa

    iget-object v10, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Linfo/flowersoft/theotown/components/notification/task/RoadTask;-><init>(ILjava/lang/String;Ljava/util/List;ILinfo/flowersoft/theotown/city/City;)V

    const-string v1, "road00"

    .line 76
    invoke-virtual {p0, v5, v1}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->addTask(Linfo/flowersoft/theotown/components/notification/task/Task;Ljava/lang/String;)V

    .line 83
    new-instance v6, Linfo/flowersoft/theotown/components/notification/task/BuildingTypeTask;

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_PARK:I

    const/16 v1, 0x8b6

    .line 85
    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->PARK:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 86
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x2

    iget-object v11, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct/range {v6 .. v11}, Linfo/flowersoft/theotown/components/notification/task/BuildingTypeTask;-><init>(ILjava/lang/String;Ljava/util/List;ILinfo/flowersoft/theotown/city/City;)V

    const-string v1, "park00"

    .line 83
    invoke-virtual {p0, v6, v1}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->addTask(Linfo/flowersoft/theotown/components/notification/task/Task;Ljava/lang/String;)V

    .line 90
    new-instance v7, Linfo/flowersoft/theotown/components/notification/task/PeopleTask;

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->ICON_INHABITANTS:I

    const/16 v1, 0xc7a

    .line 92
    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v9

    const/16 v11, 0x64

    iget-object v12, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v12}, Linfo/flowersoft/theotown/components/notification/task/PeopleTask;-><init>(ILjava/lang/String;[IILinfo/flowersoft/theotown/city/City;)V

    const-string v1, "people00"

    .line 90
    invoke-virtual {p0, v7, v1}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->addTask(Linfo/flowersoft/theotown/components/notification/task/Task;Ljava/lang/String;)V

    .line 97
    new-instance v8, Linfo/flowersoft/theotown/components/notification/task/BudgetTask;

    sget v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_MONEY:I

    const/16 v1, 0xbf2

    .line 99
    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v10

    const-wide/16 v12, 0x1388

    iget-object v14, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v11, 0x1

    invoke-direct/range {v8 .. v14}, Linfo/flowersoft/theotown/components/notification/task/BudgetTask;-><init>(ILjava/lang/String;IJLinfo/flowersoft/theotown/city/City;)V

    .line 102
    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->growOnly()Linfo/flowersoft/theotown/components/notification/task/DefaultTask;

    move-result-object v1

    const-string v2, "earn money00"

    .line 97
    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->addTask(Linfo/flowersoft/theotown/components/notification/task/Task;Ljava/lang/String;)V

    .line 104
    new-instance v3, Linfo/flowersoft/theotown/components/notification/task/BudgetTask;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_MONEY:I

    const/16 v1, 0x91

    .line 106
    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v7, 0x3e8

    iget-object v9, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v6, -0x1

    invoke-direct/range {v3 .. v9}, Linfo/flowersoft/theotown/components/notification/task/BudgetTask;-><init>(ILjava/lang/String;IJLinfo/flowersoft/theotown/city/City;)V

    .line 109
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->growOnly()Linfo/flowersoft/theotown/components/notification/task/DefaultTask;

    move-result-object v0

    const-string v1, "spend money00"

    .line 104
    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->addTask(Linfo/flowersoft/theotown/components/notification/task/Task;Ljava/lang/String;)V

    return-void
.end method

.method public dismissCurrentTask()V
    .registers 2

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->stopCurrentTask(Z)V

    return-void
.end method

.method public getCurrentTask()Linfo/flowersoft/theotown/components/notification/task/Task;
    .registers 2

    .line 207
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->currentTask:Linfo/flowersoft/theotown/components/notification/task/Task;

    return-object v0
.end method

.method public getCurrentTaskId()Ljava/lang/String;
    .registers 5

    .line 270
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->currentTask:Linfo/flowersoft/theotown/components/notification/task/Task;

    instance-of v1, v0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;

    if-eqz v1, :cond_d

    .line 271
    check-cast v0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->getLevel()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    .line 273
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->taskToTag:Ljava/util/Map;

    iget-object v3, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->currentTask:Linfo/flowersoft/theotown/components/notification/task/Task;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentValue()J
    .registers 3

    .line 219
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->currentTask:Linfo/flowersoft/theotown/components/notification/task/Task;

    invoke-interface {v0}, Linfo/flowersoft/theotown/components/notification/task/Task;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartValue()J
    .registers 3

    .line 211
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->startValue:J

    return-wide v0
.end method

.method public getTargetValue()J
    .registers 3

    .line 215
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->targetValue:J

    return-wide v0
.end method

.method public hasNewTask()Z
    .registers 3

    .line 246
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->hasNewTask:Z

    const/4 v1, 0x0

    .line 247
    iput-boolean v1, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->hasNewTask:Z

    return v0
.end method

.method public isActive()Z
    .registers 2

    .line 203
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->currentTask:Linfo/flowersoft/theotown/components/notification/task/Task;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isDisabled()Z
    .registers 2

    .line 257
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->disabled:Z

    return v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 138
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_ba

    goto :goto_4c

    :sswitch_16
    const-string v2, "current task"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_4c

    :cond_1f
    const/4 v1, 0x4

    goto :goto_4c

    :sswitch_21
    const-string v2, "disabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_4c

    :cond_2a
    const/4 v1, 0x3

    goto :goto_4c

    :sswitch_2c
    const-string v2, "tasks"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_4c

    :cond_35
    const/4 v1, 0x2

    goto :goto_4c

    :sswitch_37
    const-string v2, "current task index"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_4c

    :cond_40
    const/4 v1, 0x1

    goto :goto_4c

    :sswitch_42
    const-string v2, "values"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x0

    :goto_4c
    packed-switch v1, :pswitch_data_d0

    .line 171
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    .line 155
    :pswitch_53
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->tagToTask:Ljava/util/Map;

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/notification/task/Task;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->currentTask:Linfo/flowersoft/theotown/components/notification/task/Task;

    goto :goto_0

    .line 168
    :pswitch_62
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->disabled:Z

    goto :goto_0

    .line 140
    :pswitch_69
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 141
    :goto_6c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 142
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->tagToTask:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/notification/task/Task;

    if-eqz v0, :cond_8a

    .line 145
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 146
    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/util/Saveable;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 147
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_6c

    .line 149
    :cond_8a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_6c

    .line 152
    :cond_8e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto/16 :goto_0

    .line 158
    :pswitch_93
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->currentTaskIndex:I

    goto/16 :goto_0

    .line 161
    :pswitch_9b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 162
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->startValue:J

    .line 163
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->targetValue:J

    .line 164
    :goto_aa
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_aa

    .line 165
    :cond_b4
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_0

    :cond_b9
    return-void

    :sswitch_data_ba
    .sparse-switch
        -0x311a62de -> :sswitch_42
        -0x1338e082 -> :sswitch_37
        0x6907b8e -> :sswitch_2c
        0x10263a7c -> :sswitch_21
        0x5415ebcc -> :sswitch_16
    .end sparse-switch

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_93
        :pswitch_69
        :pswitch_62
        :pswitch_53
    .end packed-switch
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->stopCurrentTask(Z)V

    const/4 v0, -0x1

    .line 253
    iput v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->currentTaskIndex:I

    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    const-string v0, "tasks"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    .line 180
    :goto_a
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->tasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 181
    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->tasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/notification/task/Task;

    .line 182
    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->taskToTag:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-interface {v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 183
    invoke-interface {v1, p1}, Linfo/flowersoft/theotown/util/Saveable;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 184
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 186
    :cond_32
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 188
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->currentTask:Linfo/flowersoft/theotown/components/notification/task/Task;

    if-eqz v0, :cond_4c

    .line 189
    const-string v0, "current task"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->taskToTag:Ljava/util/Map;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->currentTask:Linfo/flowersoft/theotown/components/notification/task/Task;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 192
    :cond_4c
    const-string v0, "current task index"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->currentTaskIndex:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 194
    const-string v0, "values"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 195
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->startValue:J

    invoke-interface {p1, v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 196
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->targetValue:J

    invoke-interface {p1, v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 197
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 199
    const-string v0, "disabled"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->disabled:Z

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public setDisabled(Z)V
    .registers 2

    .line 261
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->disabled:Z

    return-void
.end method

.method public final stopCurrentTask(Z)V
    .registers 3

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->currentTask:Linfo/flowersoft/theotown/components/notification/task/Task;

    if-eqz v0, :cond_a

    .line 240
    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/components/notification/task/Task;->stop(Z)V

    const/4 p1, 0x0

    .line 241
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->currentTask:Linfo/flowersoft/theotown/components/notification/task/Task;

    :cond_a
    return-void
.end method

.method public update()V
    .registers 5

    .line 277
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "task"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 285
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->currentTask:Linfo/flowersoft/theotown/components/notification/task/Task;

    if-nez v0, :cond_c

    goto :goto_27

    .line 290
    :cond_c
    invoke-interface {v0}, Linfo/flowersoft/theotown/components/notification/task/Task;->isValid()Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x0

    .line 291
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->stopCurrentTask(Z)V

    return-void

    .line 292
    :cond_17
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->currentTask:Linfo/flowersoft/theotown/components/notification/task/Task;

    invoke-interface {v0}, Linfo/flowersoft/theotown/components/notification/task/Task;->getValue()J

    move-result-wide v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->targetValue:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_27

    const/4 v0, 0x1

    .line 293
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->stopCurrentTask(Z)V

    :cond_27
    :goto_27
    return-void
.end method

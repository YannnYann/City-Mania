###### Class info.flowersoft.theotown.components.management.DefaultManagement (info.flowersoft.theotown.components.management.DefaultManagement)
.class public final Linfo/flowersoft/theotown/components/management/DefaultManagement;
.super Linfo/flowersoft/theotown/city/components/CityComponent;
.source "DefaultManagement.java"


# instance fields
.field public final buildResults:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Linfo/flowersoft/theotown/components/BuildCommandResult;",
            ">;"
        }
    .end annotation
.end field

.field public buildingSurvey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

.field public final buildingWorker:Linfo/flowersoft/theotown/components/management/BuildingWorker;

.field public final coverageCalculator:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

.field public final decorationBuilder:Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;

.field public final finalActions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final happinessCalculator:Linfo/flowersoft/theotown/components/management/HappinessCalculator;

.field public final happinessModifier:Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;

.field public final happinessWorker:Linfo/flowersoft/theotown/components/management/HappinessWorker;

.field public modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

.field public peopleInfoGrid:Linfo/flowersoft/theotown/util/InfoGrid;

.field public final roadWorker:Linfo/flowersoft/theotown/components/management/RoadWorker;

.field public final treeWorker:Linfo/flowersoft/theotown/components/management/TreeWorker;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 66
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->finalActions:Ljava/util/Queue;

    .line 67
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 69
    new-instance v0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    invoke-direct {v0}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildingSurvey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    .line 70
    new-instance v0, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->happinessModifier:Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;

    .line 71
    new-instance v0, Linfo/flowersoft/theotown/components/management/HappinessCalculator;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/HappinessCalculator;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->happinessCalculator:Linfo/flowersoft/theotown/components/management/HappinessCalculator;

    .line 72
    new-instance v0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->coverageCalculator:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    .line 73
    new-instance v1, Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->decorationBuilder:Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;

    .line 74
    new-instance v1, Linfo/flowersoft/theotown/components/management/HappinessWorker;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/management/HappinessWorker;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->happinessWorker:Linfo/flowersoft/theotown/components/management/HappinessWorker;

    .line 75
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildResults:Ljava/util/ArrayDeque;

    .line 77
    new-instance v1, Linfo/flowersoft/theotown/components/management/BuildingWorker;

    invoke-direct {v1, p1, v0}, Linfo/flowersoft/theotown/components/management/BuildingWorker;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildingWorker:Linfo/flowersoft/theotown/components/management/BuildingWorker;

    .line 78
    new-instance v0, Linfo/flowersoft/theotown/components/management/RoadWorker;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/management/RoadWorker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->roadWorker:Linfo/flowersoft/theotown/components/management/RoadWorker;

    .line 79
    new-instance v0, Linfo/flowersoft/theotown/components/management/TreeWorker;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/management/TreeWorker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->treeWorker:Linfo/flowersoft/theotown/components/management/TreeWorker;

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/management/DefaultManagement;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 84
    iget-object p2, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildResults:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->clear()V

    .line 86
    :goto_8
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_10e

    .line 87
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_110

    goto :goto_6a

    :sswitch_1e
    const-string v1, "road worker"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_27

    goto :goto_6a

    :cond_27
    const/4 v0, 0x6

    goto :goto_6a

    :sswitch_29
    const-string v1, "people info grid"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_32

    goto :goto_6a

    :cond_32
    const/4 v0, 0x5

    goto :goto_6a

    :sswitch_34
    const-string v1, "build results"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3d

    goto :goto_6a

    :cond_3d
    const/4 v0, 0x4

    goto :goto_6a

    :sswitch_3f
    const-string v1, "building worker"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_48

    goto :goto_6a

    :cond_48
    const/4 v0, 0x3

    goto :goto_6a

    :sswitch_4a
    const-string v1, "attribute containers"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_53

    goto :goto_6a

    :cond_53
    const/4 v0, 0x2

    goto :goto_6a

    :sswitch_55
    const-string v1, "survey"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5e

    goto :goto_6a

    :cond_5e
    const/4 v0, 0x1

    goto :goto_6a

    :sswitch_60
    const-string v1, "happiness modifier"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_69

    goto :goto_6a

    :cond_69
    const/4 v0, 0x0

    :goto_6a
    packed-switch v0, :pswitch_data_12e

    .line 141
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_8

    .line 133
    :pswitch_71
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 134
    iget-object p2, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->roadWorker:Linfo/flowersoft/theotown/components/management/RoadWorker;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/management/RoadWorker;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 135
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_8

    .line 138
    :pswitch_7d
    new-instance p2, Linfo/flowersoft/theotown/util/InfoGrid;

    invoke-direct {p2, p1}, Linfo/flowersoft/theotown/util/InfoGrid;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    iput-object p2, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->peopleInfoGrid:Linfo/flowersoft/theotown/util/InfoGrid;

    goto :goto_8

    .line 94
    :pswitch_85
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 95
    :goto_88
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9f

    .line 96
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 97
    iget-object p2, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildResults:Ljava/util/ArrayDeque;

    new-instance v0, Linfo/flowersoft/theotown/components/BuildCommandResult;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/BuildCommandResult;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 98
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_88

    .line 100
    :cond_9f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_8

    .line 128
    :pswitch_a4
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 129
    iget-object p2, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildingWorker:Linfo/flowersoft/theotown/components/management/BuildingWorker;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/management/BuildingWorker;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 130
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto/16 :goto_8

    .line 103
    :pswitch_b1
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 104
    :goto_b4
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_ed

    .line 105
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 106
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result p2

    .line 107
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    .line 108
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, p2, v0}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p2

    .line 109
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    if-eqz p2, :cond_dc

    .line 111
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;-><init>()V

    .line 112
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 113
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/city/objects/Building;->setAttributeContainer(Linfo/flowersoft/theotown/city/objects/AttributeContainer;)V

    goto :goto_e6

    .line 115
    :cond_dc
    :goto_dc
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e6

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_dc

    .line 117
    :cond_e6
    :goto_e6
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    .line 118
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_b4

    .line 120
    :cond_ed
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_8

    .line 89
    :pswitch_f2
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 90
    new-instance p2, Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    invoke-direct {p2, p1}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    iput-object p2, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildingSurvey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    .line 91
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto/16 :goto_8

    .line 123
    :pswitch_101
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 124
    iget-object p2, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->happinessModifier:Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 125
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto/16 :goto_8

    :cond_10e
    return-void

    nop

    :sswitch_data_110
    .sparse-switch
        -0x679cba50 -> :sswitch_60
        -0x351c58a6 -> :sswitch_55
        -0x25d687ea -> :sswitch_4a
        -0x2550996 -> :sswitch_3f
        0x1b6e5044 -> :sswitch_34
        0x38258327 -> :sswitch_29
        0x69bcf87e -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_101
        :pswitch_f2
        :pswitch_b1
        :pswitch_a4
        :pswitch_85
        :pswitch_7d
        :pswitch_71
    .end packed-switch
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/components/management/DefaultManagement;)V
    .registers 1

    .line 41
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->manage()V

    return-void
.end method


# virtual methods
.method public final appendResult(Linfo/flowersoft/theotown/components/BuildCommandResult;)V
    .registers 5

    .line 383
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildResults:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 384
    :goto_3
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildResults:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_15

    .line 385
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildResults:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_3

    :catchall_13
    move-exception p1

    goto :goto_1c

    .line 387
    :cond_15
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildResults:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 388
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_13

    throw p1
.end method

.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 9

    .line 230
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/city/components/CityComponent;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 232
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->peopleInfoGrid:Linfo/flowersoft/theotown/util/InfoGrid;

    if-nez v0, :cond_46

    .line 233
    new-instance v0, Linfo/flowersoft/theotown/util/InfoGrid;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v2

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/InfoGrid;-><init>(III)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->peopleInfoGrid:Linfo/flowersoft/theotown/util/InfoGrid;

    .line 234
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/Building;

    .line 235
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v2

    .line 236
    iget-object v3, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->peopleInfoGrid:Linfo/flowersoft/theotown/util/InfoGrid;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v4

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    iget v5, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    iget v6, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    iget v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    add-int/2addr v6, v2

    mul-int/2addr v5, v6

    int-to-float v2, v5

    invoke-virtual {v3, v4, v1, v2}, Linfo/flowersoft/theotown/util/InfoGrid;->add(IIF)V

    goto :goto_1f

    .line 240
    :cond_46
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    .line 243
    new-instance p1, Lio/blueflower/stapel2d/util/CyclicWorker;

    new-instance v0, Linfo/flowersoft/theotown/components/management/DefaultManagement$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/management/DefaultManagement$1;-><init>(Linfo/flowersoft/theotown/components/management/DefaultManagement;)V

    invoke-direct {p1, v0, v1}, Lio/blueflower/stapel2d/util/CyclicWorker;-><init>(Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/components/CityComponent;->addWorker(Lio/blueflower/stapel2d/util/CyclicWorker;)V

    .line 249
    iget-object p1, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildingWorker:Linfo/flowersoft/theotown/components/management/BuildingWorker;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/components/CityComponent;->addWorker(Lio/blueflower/stapel2d/util/CyclicWorker;)V

    .line 250
    iget-object p1, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->roadWorker:Linfo/flowersoft/theotown/components/management/RoadWorker;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/components/CityComponent;->addWorker(Lio/blueflower/stapel2d/util/CyclicWorker;)V

    .line 251
    iget-object p1, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->treeWorker:Linfo/flowersoft/theotown/components/management/TreeWorker;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/components/CityComponent;->addWorker(Lio/blueflower/stapel2d/util/CyclicWorker;)V

    return-void
.end method

.method public finishPrepare()V
    .registers 3

    .line 344
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/CityComponent;->finishPrepare()V

    .line 346
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->coverageCalculator:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->calculate()V

    .line 348
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildingSurvey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->happinessWorker:Linfo/flowersoft/theotown/components/management/HappinessWorker;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/components/management/HappinessWorker;->work(Linfo/flowersoft/theotown/city/components/BuildingSurvey;)Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->set(Linfo/flowersoft/theotown/city/components/BuildingSurvey;)V

    .line 349
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildingWorker:Linfo/flowersoft/theotown/components/management/BuildingWorker;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/BuildingWorker;->prepare()V

    .line 350
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->roadWorker:Linfo/flowersoft/theotown/components/management/RoadWorker;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/RoadWorker;->prepare()V

    .line 351
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->treeWorker:Linfo/flowersoft/theotown/components/management/TreeWorker;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/TreeWorker;->prepare()V

    return-void
.end method

.method public getBuildResults()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/BuildCommandResult;",
            ">;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildResults:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 403
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildResults:Ljava/util/ArrayDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception v1

    .line 404
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public final getBuildingCommand(Linfo/flowersoft/theotown/draft/ZoneDraft;IF)Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;
    .registers 9

    .line 317
    new-instance v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->happinessCalculator:Linfo/flowersoft/theotown/components/management/HappinessCalculator;

    iget-object v3, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v4, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->decorationBuilder:Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/management/HappinessCalculator;Linfo/flowersoft/theotown/city/modifier/CityModifier;Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;)V

    .line 319
    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/components/management/BuildCommand;->setTarget(Linfo/flowersoft/theotown/draft/ZoneDraft;IF)V

    return-object v0
.end method

.method public getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;
    .registers 2

    .line 205
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildingSurvey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    return-object v0
.end method

.method public getBuildingWorker()Linfo/flowersoft/theotown/components/management/BuildingWorker;
    .registers 2

    .line 197
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildingWorker:Linfo/flowersoft/theotown/components/management/BuildingWorker;

    return-object v0
.end method

.method public getCoverageCalculator()Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;
    .registers 2

    .line 379
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->coverageCalculator:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    return-object v0
.end method

.method public getHappinessCalculator()Linfo/flowersoft/theotown/components/management/HappinessCalculator;
    .registers 2

    .line 375
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->happinessCalculator:Linfo/flowersoft/theotown/components/management/HappinessCalculator;

    return-object v0
.end method

.method public getHappinessModifier()Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;
    .registers 2

    .line 193
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->happinessModifier:Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;

    return-object v0
.end method

.method public getHappinessWorker()Linfo/flowersoft/theotown/components/management/HappinessWorker;
    .registers 2

    .line 209
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->happinessWorker:Linfo/flowersoft/theotown/components/management/HappinessWorker;

    return-object v0
.end method

.method public getLastBuildResult()Linfo/flowersoft/theotown/components/BuildCommandResult;
    .registers 3

    .line 392
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildResults:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 393
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildResults:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 394
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildResults:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/BuildCommandResult;

    monitor-exit v0

    return-object v1

    :catchall_15
    move-exception v1

    goto :goto_1a

    :cond_17
    const/4 v1, 0x0

    .line 396
    monitor-exit v0

    return-object v1

    .line 398
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_15

    throw v1
.end method

.method public final getLeaveCommand(Linfo/flowersoft/theotown/draft/ZoneDraft;IF)Linfo/flowersoft/theotown/components/management/LeaveBuildCommand;
    .registers 9

    .line 324
    new-instance v0, Linfo/flowersoft/theotown/components/management/LeaveBuildCommand;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->happinessCalculator:Linfo/flowersoft/theotown/components/management/HappinessCalculator;

    iget-object v3, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v4, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->decorationBuilder:Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/components/management/LeaveBuildCommand;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/management/HappinessCalculator;Linfo/flowersoft/theotown/city/modifier/CityModifier;Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;)V

    .line 326
    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/components/management/BuildCommand;->setTarget(Linfo/flowersoft/theotown/draft/ZoneDraft;IF)V

    return-object v0
.end method

.method public getLowestHappiness()Linfo/flowersoft/theotown/components/management/attribute/Attribute;
    .registers 2

    .line 213
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->happinessWorker:Linfo/flowersoft/theotown/components/management/HappinessWorker;

    iget-object v0, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->lowestHappiness:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    return-object v0
.end method

.method public getLowestHappinessBuilding()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 2

    .line 221
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->happinessWorker:Linfo/flowersoft/theotown/components/management/HappinessWorker;

    iget-object v0, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->lowestHappinessBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    return-object v0
.end method

.method public getLowestHappinessValue()F
    .registers 2

    .line 217
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->happinessWorker:Linfo/flowersoft/theotown/components/management/HappinessWorker;

    iget v0, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->lowestHappinessValue:F

    return v0
.end method

.method public getPeopleInfoGrid()Linfo/flowersoft/theotown/util/InfoGrid;
    .registers 2

    .line 225
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->peopleInfoGrid:Linfo/flowersoft/theotown/util/InfoGrid;

    return-object v0
.end method

.method public getRoadWorker()Linfo/flowersoft/theotown/components/management/RoadWorker;
    .registers 2

    .line 201
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->roadWorker:Linfo/flowersoft/theotown/components/management/RoadWorker;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 0
    const/4 v0, 0x3

    return v0
.end method

.method public final manage()V
    .registers 13

    .line 261
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->coverageCalculator:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->calculate()V

    .line 263
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildingSurvey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->happinessWorker:Linfo/flowersoft/theotown/components/management/HappinessWorker;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/components/management/HappinessWorker;->work(Linfo/flowersoft/theotown/city/components/BuildingSurvey;)Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->set(Linfo/flowersoft/theotown/city/components/BuildingSurvey;)V

    .line 265
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x6

    .line 266
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->isActive()Z

    move-result v0

    .line 269
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/components/Demand;

    .line 271
    new-instance v2, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-direct {v2, v3}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_30
    const/4 v5, 0x3

    if-ge v4, v5, :cond_af

    .line 274
    invoke-virtual {v1, v3, v4}, Linfo/flowersoft/theotown/city/components/Demand;->getBuildingDemand(II)F

    move-result v5

    const/4 v6, 0x1

    .line 275
    invoke-virtual {v1, v6, v4}, Linfo/flowersoft/theotown/city/components/Demand;->getBuildingDemand(II)F

    move-result v6

    const/4 v7, 0x2

    .line 276
    invoke-virtual {v1, v7, v4}, Linfo/flowersoft/theotown/city/components/Demand;->getBuildingDemand(II)F

    move-result v7

    .line 278
    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->weight(F)F

    move-result v8

    .line 279
    invoke-virtual {p0, v6}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->weight(F)F

    move-result v9

    .line 280
    invoke-virtual {p0, v7}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->weight(F)F

    move-result v10

    if-nez v0, :cond_76

    .line 283
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v11

    iget-object v11, v11, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {p0, v11, v4, v5}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingCommand(Linfo/flowersoft/theotown/draft/ZoneDraft;IF)Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;

    move-result-object v11

    invoke-virtual {v2, v11, v8}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    .line 284
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v11

    iget-object v11, v11, Linfo/flowersoft/theotown/city/Zones;->COMMERCIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {p0, v11, v4, v6}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingCommand(Linfo/flowersoft/theotown/draft/ZoneDraft;IF)Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;

    move-result-object v11

    invoke-virtual {v2, v11, v9}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    .line 285
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v11

    iget-object v11, v11, Linfo/flowersoft/theotown/city/Zones;->INDUSTRIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {p0, v11, v4, v7}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingCommand(Linfo/flowersoft/theotown/draft/ZoneDraft;IF)Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;

    move-result-object v11

    invoke-virtual {v2, v11, v10}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    .line 288
    :cond_76
    iget-object v11, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v11

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/GameMode;->peopleMayLeave()Z

    move-result v11

    if-eqz v11, :cond_ac

    .line 289
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v11

    iget-object v11, v11, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {p0, v11, v4, v5}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getLeaveCommand(Linfo/flowersoft/theotown/draft/ZoneDraft;IF)Linfo/flowersoft/theotown/components/management/LeaveBuildCommand;

    move-result-object v5

    neg-float v8, v8

    invoke-virtual {v2, v5, v8}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    .line 290
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v5

    iget-object v5, v5, Linfo/flowersoft/theotown/city/Zones;->COMMERCIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {p0, v5, v4, v6}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getLeaveCommand(Linfo/flowersoft/theotown/draft/ZoneDraft;IF)Linfo/flowersoft/theotown/components/management/LeaveBuildCommand;

    move-result-object v5

    neg-float v6, v9

    invoke-virtual {v2, v5, v6}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    .line 291
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v5

    iget-object v5, v5, Linfo/flowersoft/theotown/city/Zones;->INDUSTRIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {p0, v5, v4, v7}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getLeaveCommand(Linfo/flowersoft/theotown/draft/ZoneDraft;IF)Linfo/flowersoft/theotown/components/management/LeaveBuildCommand;

    move-result-object v5

    neg-float v6, v10

    invoke-virtual {v2, v5, v6}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :cond_ac
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 294
    :cond_af
    new-instance v0, Linfo/flowersoft/theotown/components/management/EmptyBuildCommand;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    iget-object v3, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->happinessCalculator:Linfo/flowersoft/theotown/components/management/HappinessCalculator;

    iget-object v4, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v5, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->decorationBuilder:Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;

    invoke-direct {v0, v1, v3, v4, v5}, Linfo/flowersoft/theotown/components/management/EmptyBuildCommand;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/management/HappinessCalculator;Linfo/flowersoft/theotown/city/modifier/CityModifier;Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0, v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    .line 297
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 298
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/BuildCommand;

    .line 299
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/BuildCommand;->run()Linfo/flowersoft/theotown/components/BuildCommandResult;

    move-result-object v1

    if-eqz v1, :cond_d6

    .line 301
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->appendResult(Linfo/flowersoft/theotown/components/BuildCommandResult;)V

    .line 303
    :cond_d6
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/BuildCommand;->hasFinalActions()Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 304
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->finalActions:Ljava/util/Queue;

    monitor-enter v1

    .line 305
    :try_start_df
    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->finalActions:Ljava/util/Queue;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/BuildCommand;->getFinalActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 306
    monitor-exit v1

    return-void

    :catchall_ea
    move-exception v0

    monitor-exit v1
    :try_end_ec
    .catchall {:try_start_df .. :try_end_ec} :catchall_ea

    throw v0

    :cond_ed
    return-void
.end method

.method public nextDay()V
    .registers 2

    .line 256
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->nextDay()V

    .line 257
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->happinessModifier:Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;->damp()V

    return-void
.end method

.method public prepare()V
    .registers 4

    .line 332
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->happinessCalculator:Linfo/flowersoft/theotown/components/management/HappinessCalculator;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->setCity(Linfo/flowersoft/theotown/city/City;)V

    .line 333
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->happinessCalculator:Linfo/flowersoft/theotown/components/management/HappinessCalculator;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->happinessModifier:Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->setHappinessModifier(Linfo/flowersoft/theotown/components/management/IHappinessModifier;)V

    .line 334
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->coverageCalculator:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->setCity(Linfo/flowersoft/theotown/city/City;)V

    .line 335
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->decorationBuilder:Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;->setCity(Linfo/flowersoft/theotown/city/City;)V

    .line 336
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->happinessWorker:Linfo/flowersoft/theotown/components/management/HappinessWorker;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->happinessCalculator:Linfo/flowersoft/theotown/components/management/HappinessCalculator;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/components/management/HappinessWorker;->setCity(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/management/HappinessCalculator;)V

    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    const-string v0, "survey"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 148
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildingSurvey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 149
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 151
    const-string v0, "build results"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 152
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildResults:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 153
    :try_start_1d
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildResults:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/BuildCommandResult;

    .line 154
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 155
    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/components/BuildCommandResult;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 156
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_23

    :catchall_39
    move-exception p1

    goto/16 :goto_c1

    .line 158
    :cond_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_1d .. :try_end_3d} :catchall_39

    .line 159
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 161
    const-string v0, "attribute containers"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    .line 162
    :goto_4a
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/BuildingList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8a

    .line 163
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v1

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/BuildingList;->get(I)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    if-eqz v1, :cond_87

    .line 165
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getAttributeContainer()Linfo/flowersoft/theotown/city/objects/AttributeContainer;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    if-eqz v2, :cond_87

    .line 167
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 168
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v3

    invoke-interface {p1, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 169
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 170
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 171
    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 172
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 173
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_87
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 177
    :cond_8a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 179
    const-string v0, "happiness modifier"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 180
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->happinessModifier:Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 181
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 183
    const-string v0, "building worker"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 184
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->buildingWorker:Linfo/flowersoft/theotown/components/management/BuildingWorker;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/management/BuildingWorker;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 185
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 187
    const-string v0, "road worker"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 188
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->roadWorker:Linfo/flowersoft/theotown/components/management/RoadWorker;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/management/RoadWorker;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 189
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void

    .line 158
    :goto_c1
    :try_start_c1
    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_39

    throw p1
.end method

.method public update()V
    .registers 9

    .line 356
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->update()V

    .line 359
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->finalActions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 360
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    .line 362
    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->finalActions:Ljava/util/Queue;

    monitor-enter v2

    const/4 v3, 0x0

    .line 363
    :goto_13
    :try_start_13
    iget-object v4, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->finalActions:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_29

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v6, 0x5

    cmp-long v4, v4, v6

    if-ltz v4, :cond_33

    goto :goto_29

    :catchall_27
    move-exception v0

    goto :goto_7b

    :cond_29
    :goto_29
    iget-object v4, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->finalActions:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    const/16 v5, 0x40

    if-le v4, v5, :cond_41

    .line 365
    :cond_33
    iget-object v4, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->finalActions:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    .line 366
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 369
    :cond_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_13 .. :try_end_42} :catchall_27

    .line 370
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "Management"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Spend overall time of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms in final actions, processed "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;->finalActions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " left"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 369
    :goto_7b
    :try_start_7b
    monitor-exit v2
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_27

    throw v0

    :cond_7d
    return-void
.end method

.method public final weight(F)F
    .registers 2

    .line 0
    return p1
.end method

###### Class info.flowersoft.theotown.components.management.DefaultManagement.AnonymousClass1 (info.flowersoft.theotown.components.management.DefaultManagement$1)
.class Linfo/flowersoft/theotown/components/management/DefaultManagement$1;
.super Ljava/lang/Object;
.source "DefaultManagement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/management/DefaultManagement;->bind(Linfo/flowersoft/theotown/city/City;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/management/DefaultManagement;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/management/DefaultManagement;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 243
    iput-object p1, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement$1;->this$0:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 246
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/DefaultManagement$1;->this$0:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->access$000(Linfo/flowersoft/theotown/components/management/DefaultManagement;)V

    return-void
.end method

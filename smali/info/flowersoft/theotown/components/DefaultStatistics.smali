###### Class info.flowersoft.theotown.components.DefaultStatistics (info.flowersoft.theotown.components.DefaultStatistics)
.class public final Linfo/flowersoft/theotown/components/DefaultStatistics;
.super Linfo/flowersoft/theotown/city/components/Statistics;
.source "DefaultStatistics.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# instance fields
.field public final data:[Lio/blueflower/stapel2d/util/IntList;

.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/statistics/StatisticsItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 57
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Statistics;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultStatistics;->items:Ljava/util/List;

    .line 58
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/InhabitantsAllItem;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/InhabitantsAllItem;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/InhabitantsLvl1Item;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/InhabitantsLvl1Item;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/InhabitantsLvl2Item;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/InhabitantsLvl2Item;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/InhabitantsLvl3Item;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/InhabitantsLvl3Item;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/ResidentialLvl1Item;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/ResidentialLvl1Item;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/ResidentialLvl2Item;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/ResidentialLvl2Item;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/ResidentialLvl3Item;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/ResidentialLvl3Item;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/CommercialLvl1Item;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/CommercialLvl1Item;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/CommercialLvl2Item;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/CommercialLvl2Item;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/CommercialLvl3Item;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/CommercialLvl3Item;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/IndustrialLvl1Item;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/IndustrialLvl1Item;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/IndustrialLvl2Item;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/IndustrialLvl2Item;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/IndustrialLvl3Item;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/IndustrialLvl3Item;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/MoneyItem;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/MoneyItem;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/IncomeItem;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/IncomeItem;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/HealthItem;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/HealthItem;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/EducationLowItem;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/EducationLowItem;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/EducationHighItem;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/EducationHighItem;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/BuildingsItem;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/BuildingsItem;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/RoadsItem;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/RoadsItem;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/CarsItem;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/CarsItem;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/RailsItem;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/RailsItem;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/EnergyNeedItem;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/EnergyNeedItem;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/EnergyProducedItem;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/EnergyProducedItem;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/WaterNeedItem;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/WaterNeedItem;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v1, Linfo/flowersoft/theotown/components/statistics/WaterProducedItem;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/statistics/WaterProducedItem;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v1, v0

    .line 92
    :goto_dc
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->TS_DRAFTS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_fd

    .line 93
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    .line 94
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultStatistics;->items:Ljava/util/List;

    new-instance v4, Linfo/flowersoft/theotown/components/statistics/TSPassengersItem;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getConfig()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;

    move-result-object v5

    iget-object v5, v5, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v4, v2, v5}, Linfo/flowersoft/theotown/components/statistics/TSPassengersItem;-><init>(Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;Lio/blueflower/stapel2d/drawing/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_dc

    .line 97
    :cond_fd
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultStatistics;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lio/blueflower/stapel2d/util/IntList;

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultStatistics;->data:[Lio/blueflower/stapel2d/util/IntList;

    .line 98
    :goto_107
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultStatistics;->data:[Lio/blueflower/stapel2d/util/IntList;

    array-length v2, v1

    if-ge v0, v2, :cond_116

    .line 99
    new-instance v2, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v2}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_107

    :cond_116
    return-void
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 170
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/city/components/CityComponent;->bind(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

.method public final compactifyList(Lio/blueflower/stapel2d/util/IntList;I)V
    .registers 13

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 211
    :goto_4
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v4

    if-ge v1, v4, :cond_44

    .line 212
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    sub-int v5, p2, v4

    .line 213
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 214
    div-int/lit16 v5, v5, 0xb4

    int-to-double v6, v5

    .line 215
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    if-lez v6, :cond_35

    const/4 v7, 0x1

    shl-int v6, v7, v6

    .line 216
    rem-int/2addr v4, v6

    if-eqz v4, :cond_35

    if-nez v3, :cond_32

    move v2, v1

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_35
    if-lez v3, :cond_3e

    mul-int/lit8 v3, v3, 0x2

    .line 220
    invoke-virtual {p1, v2, v3}, Lio/blueflower/stapel2d/util/IntList;->removeAt(II)I

    sub-int/2addr v1, v3

    move v3, v0

    :cond_3e
    :goto_3e
    if-nez v5, :cond_41

    goto :goto_44

    :cond_41
    add-int/lit8 v1, v1, 0x2

    goto :goto_4

    :cond_44
    :goto_44
    return-void
.end method

.method public countEntries(I)I
    .registers 3

    .line 241
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultStatistics;->data:[Lio/blueflower/stapel2d/util/IntList;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public getDay(II)I
    .registers 4

    .line 245
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultStatistics;->data:[Lio/blueflower/stapel2d/util/IntList;

    aget-object p2, v0, p2

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public getItem(I)Linfo/flowersoft/theotown/components/statistics/StatisticsItem;
    .registers 3

    .line 237
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultStatistics;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/statistics/StatisticsItem;

    return-object p1
.end method

.method public getItemIndices(Ljava/lang/Class;Lio/blueflower/stapel2d/util/IntList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Linfo/flowersoft/theotown/components/statistics/StatisticsItem;",
            ">;",
            "Lio/blueflower/stapel2d/util/IntList;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 229
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultStatistics;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 230
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultStatistics;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/statistics/StatisticsItem;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 231
    invoke-virtual {p2, v0}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    return-void
.end method

.method public getValue(II)I
    .registers 4

    .line 249
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultStatistics;->data:[Lio/blueflower/stapel2d/util/IntList;

    aget-object p2, v0, p2

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 106
    :goto_6
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultStatistics;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 107
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultStatistics;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/statistics/StatisticsItem;

    invoke-interface {v2}, Linfo/flowersoft/theotown/components/statistics/StatisticsItem;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 110
    :cond_24
    :goto_24
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 111
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 145
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_24

    .line 114
    :cond_3d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 115
    :cond_40
    :goto_40
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 116
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, -0x1

    if-eqz v1, :cond_58

    .line 118
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_59

    :cond_58
    move v1, v2

    :goto_59
    if-ltz v1, :cond_9c

    .line 121
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultStatistics;->data:[Lio/blueflower/stapel2d/util/IntList;

    aget-object v1, v3, v1

    .line 122
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 123
    :goto_62
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 124
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v3

    if-gez v3, :cond_87

    .line 125
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v4

    if-nez v4, :cond_87

    add-int/lit8 v3, v3, 0x1

    neg-int v3, v3

    .line 126
    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/util/IntList;->setCapacity(I)V

    .line 127
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->peek()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_82

    goto :goto_93

    .line 128
    :cond_82
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    goto :goto_88

    :cond_87
    move v2, v3

    .line 130
    :goto_88
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v3

    .line 132
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 133
    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_62

    .line 136
    :cond_93
    :goto_93
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    if-ltz v2, :cond_40

    .line 137
    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultStatistics;->compactifyList(Lio/blueflower/stapel2d/util/IntList;I)V

    goto :goto_40

    .line 139
    :cond_9c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_40

    .line 142
    :cond_a0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_24

    :cond_a4
    return-void
.end method

.method public nextDay()V
    .registers 6

    .line 191
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    long-to-int v0, v0

    if-ltz v0, :cond_4b

    const/4 v1, 0x0

    .line 194
    :goto_11
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultStatistics;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 195
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultStatistics;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/statistics/StatisticsItem;

    .line 196
    invoke-interface {v2}, Linfo/flowersoft/theotown/components/statistics/StatisticsItem;->evaluate()I

    move-result v2

    .line 197
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultStatistics;->data:[Lio/blueflower/stapel2d/util/IntList;

    aget-object v3, v3, v1

    .line 199
    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3b

    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    if-ge v4, v0, :cond_48

    .line 200
    :cond_3b
    rem-int/lit8 v4, v0, 0x1e

    if-nez v4, :cond_42

    invoke-virtual {p0, v3, v0}, Linfo/flowersoft/theotown/components/DefaultStatistics;->compactifyList(Lio/blueflower/stapel2d/util/IntList;I)V

    .line 201
    :cond_42
    invoke-virtual {v3, v0}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 202
    invoke-virtual {v3, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_4b
    return-void
.end method

.method public prepare()V
    .registers 4

    .line 175
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->prepare()V

    const/4 v0, 0x0

    .line 178
    :goto_4
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultStatistics;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 179
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultStatistics;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/statistics/StatisticsItem;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-interface {v1, v2}, Linfo/flowersoft/theotown/components/statistics/StatisticsItem;->bind(Linfo/flowersoft/theotown/city/City;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1c
    return-void
.end method

.method public reset()V
    .registers 4

    const/4 v0, 0x0

    .line 184
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultStatistics;->data:[Lio/blueflower/stapel2d/util/IntList;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 185
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    const-string v0, "data"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 154
    :goto_b
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultStatistics;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4a

    .line 155
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultStatistics;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/statistics/StatisticsItem;

    .line 156
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultStatistics;->data:[Lio/blueflower/stapel2d/util/IntList;

    aget-object v3, v3, v1

    .line 157
    invoke-interface {v2}, Linfo/flowersoft/theotown/components/statistics/StatisticsItem;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 158
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 159
    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/IntList;->getCapacity()I

    move-result v2

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move v2, v0

    .line 160
    :goto_34
    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v4

    if-ge v2, v4, :cond_44

    .line 161
    invoke-virtual {v3, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    invoke-interface {p1, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 163
    :cond_44
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 165
    :cond_4a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

###### Class info.flowersoft.theotown.components.management.attribute.ConcreteAttributeContainer (info.flowersoft.theotown.components.management.attribute.ConcreteAttributeContainer)
.class public Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;
.super Ljava/lang/Object;
.source "ConcreteAttributeContainer.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/objects/AttributeContainer;
.implements Linfo/flowersoft/theotown/util/Saveable;


# instance fields
.field public final deltas:[F

.field public final happinessIndex:I

.field public happinessMean:F

.field public happinessVariance:F

.field public maxHappinessValue:F

.field public minHappinessIndex:I

.field public minHappinessValue:F

.field public final values:[F


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 24
    iput v0, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->minHappinessValue:F

    const/4 v1, -0x1

    .line 25
    iput v1, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->minHappinessIndex:I

    .line 26
    iput v0, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->maxHappinessValue:F

    .line 27
    iput v0, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->happinessMean:F

    .line 33
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->countAttributes()I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->values:[F

    .line 34
    array-length v2, v1

    new-array v2, v2, [F

    iput-object v2, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->deltas:[F

    .line 36
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 38
    const-class v0, Linfo/flowersoft/theotown/components/management/attribute/GeneralHappiness;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getIndex(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->happinessIndex:I

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;)[F
    .registers 1

    .line 18
    iget-object p0, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->values:[F

    return-object p0
.end method


# virtual methods
.method public calculateStats()V
    .registers 8

    .line 128
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttributes()Ljava/util/List;

    move-result-object v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 129
    iput v1, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->minHappinessValue:F

    const/4 v1, -0x1

    .line 130
    iput v1, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->minHappinessIndex:I

    const/4 v1, 0x0

    .line 131
    iput v1, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->maxHappinessValue:F

    .line 132
    iput v1, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->happinessMean:F

    .line 133
    iput v1, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->happinessVariance:F

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 136
    :goto_16
    iget-object v5, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->values:[F

    array-length v6, v5

    if-ge v3, v6, :cond_49

    .line 137
    aget v5, v5, v3

    cmpl-float v6, v5, v1

    if-ltz v6, :cond_46

    .line 138
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->isHappiness()Z

    move-result v6

    if-eqz v6, :cond_46

    .line 139
    iget v6, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->minHappinessValue:F

    cmpg-float v6, v5, v6

    if-gez v6, :cond_37

    .line 140
    iput v5, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->minHappinessValue:F

    .line 141
    iput v3, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->minHappinessIndex:I

    .line 143
    :cond_37
    iget v6, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->maxHappinessValue:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->maxHappinessValue:F

    .line 144
    iget v6, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->happinessMean:F

    add-float/2addr v6, v5

    iput v6, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->happinessMean:F

    add-int/lit8 v4, v4, 0x1

    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_49
    if-lez v4, :cond_7a

    .line 150
    iget v3, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->happinessMean:F

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->happinessMean:F

    .line 152
    :goto_51
    iget-object v3, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->values:[F

    array-length v5, v3

    if-ge v2, v5, :cond_74

    .line 153
    aget v3, v3, v2

    cmpl-float v5, v3, v1

    if-ltz v5, :cond_71

    .line 154
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->isHappiness()Z

    move-result v5

    if-eqz v5, :cond_71

    .line 155
    iget v5, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->happinessMean:F

    sub-float/2addr v3, v5

    .line 156
    iget v5, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->happinessVariance:F

    mul-float/2addr v3, v3

    add-float/2addr v5, v3

    iput v5, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->happinessVariance:F

    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 160
    :cond_74
    iget v0, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->happinessVariance:F

    div-float/2addr v0, v4

    iput v0, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->happinessVariance:F

    return-void

    :cond_7a
    const/high16 v0, -0x40800000    # -1.0f

    .line 162
    iput v0, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->happinessMean:F

    .line 163
    iput v0, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->minHappinessValue:F

    .line 164
    iput v0, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->maxHappinessValue:F

    return-void
.end method

.method public getDeltas()[F
    .registers 2

    .line 46
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->deltas:[F

    return-object v0
.end method

.method public getHappiness()F
    .registers 3

    .line 124
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->values:[F

    iget v1, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->happinessIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getHappinessMean()F
    .registers 2

    .line 116
    iget v0, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->happinessMean:F

    return v0
.end method

.method public getHappinessVariance()F
    .registers 2

    .line 120
    iget v0, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->happinessVariance:F

    return v0
.end method

.method public getMaxHappinessValue()F
    .registers 2

    .line 112
    iget v0, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->maxHappinessValue:F

    return v0
.end method

.method public getMinHappinessIndex()I
    .registers 2

    .line 108
    iget v0, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->minHappinessIndex:I

    return v0
.end method

.method public getMinHappinessValue()F
    .registers 2

    .line 104
    iget v0, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->minHappinessValue:F

    return v0
.end method

.method public getSortedHappinesses()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttributes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 172
    :goto_a
    iget-object v3, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->values:[F

    array-length v4, v3

    if-ge v2, v4, :cond_2c

    .line 173
    aget v3, v3, v2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_29

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->isHappiness()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 174
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 178
    :cond_2c
    new-instance v1, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer$1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer$1;-><init>(Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public getValues()[F
    .registers 2

    .line 42
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->values:[F

    return-object v0
.end method

.method public isUnhappy()Z
    .registers 3

    .line 51
    iget v0, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->minHappinessValue:F

    const v1, 0x3e4ccccd    # 0.2f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_10

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 57
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "attributes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 78
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    .line 59
    :cond_19
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 60
    :goto_1c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 61
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 62
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    .line 64
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 65
    invoke-static {v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_45

    .line 68
    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->values:[F

    aput v1, v2, v0

    .line 69
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->deltas:[F

    aput v3, v1, v0

    .line 72
    :cond_45
    :goto_45
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_45

    .line 73
    :cond_4f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_1c

    .line 75
    :cond_53
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_0

    .line 82
    :cond_57
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->calculateStats()V

    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getTags()Ljava/util/List;

    move-result-object v0

    .line 89
    const-string v1, "attributes"

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 90
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v1, 0x0

    .line 91
    :goto_d
    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->values:[F

    array-length v3, v2

    if-ge v1, v3, :cond_3f

    .line 92
    aget v2, v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3c

    .line 93
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 94
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 95
    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->values:[F

    aget v2, v2, v1

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 96
    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->deltas:[F

    aget v2, v2, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 97
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 100
    :cond_3f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 191
    :goto_6
    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->values:[F

    array-length v2, v2

    if-ge v1, v2, :cond_67

    .line 192
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 193
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttributes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    .line 194
    iget-object v4, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->values:[F

    aget v4, v4, v1

    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-ltz v2, :cond_35

    .line 198
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_37

    :cond_35
    const-string v2, "None"

    :goto_37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->isHappiness()Z

    move-result v2

    if-eqz v2, :cond_53

    const-string v2, " (happiness)"

    goto :goto_55

    :cond_53
    const-string v2, ""

    :goto_55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->values:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_64

    const/16 v2, 0xa

    .line 204
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 208
    :cond_67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.management.attribute.ConcreteAttributeContainer.AnonymousClass1 (info.flowersoft.theotown.components.management.attribute.ConcreteAttributeContainer$1)
.class Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer$1;
.super Ljava/lang/Object;
.source "ConcreteAttributeContainer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getSortedHappinesses()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 178
    iput-object p1, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer$1;->this$0:Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 4

    .line 181
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer$1;->this$0:Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->access$000(Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;)[F

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget p2, v0, p2

    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer$1;->this$0:Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->access$000(Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;)[F

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget p1, v0, p1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 178
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer$1;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

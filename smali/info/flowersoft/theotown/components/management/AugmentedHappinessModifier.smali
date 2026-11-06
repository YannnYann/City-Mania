###### Class info.flowersoft.theotown.components.management.AugmentedHappinessModifier (info.flowersoft.theotown.components.management.AugmentedHappinessModifier)
.class public Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;
.super Ljava/lang/Object;
.source "AugmentedHappinessModifier.java"

# interfaces
.implements Linfo/flowersoft/theotown/components/management/IHappinessModifier;
.implements Linfo/flowersoft/theotown/util/Saveable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;
    }
.end annotation


# instance fields
.field public final modificatorsByAttrId:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->countAttributes()I

    move-result v0

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;->modificatorsByAttrId:[Ljava/util/List;

    const/4 v0, 0x0

    .line 20
    :goto_c
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;->modificatorsByAttrId:[Ljava/util/List;

    array-length v2, v1

    if-ge v0, v2, :cond_1b

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1b
    return-void
.end method


# virtual methods
.method public add(Linfo/flowersoft/theotown/components/management/attribute/Attribute;Ljava/lang/String;F)F
    .registers 7

    .line 118
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;->modificatorsByAttrId:[Ljava/util/List;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->getIndex()I

    move-result p1

    aget-object p1, v0, p1

    const/4 v0, 0x0

    .line 119
    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 120
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;

    .line 121
    iget-object v2, v1, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;->tag:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 122
    iget p1, v1, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;->value:F

    add-float/2addr p1, p3

    iput p1, v1, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;->value:F

    return p1

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 127
    :cond_26
    new-instance v0, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;

    invoke-direct {v0, p2, p3}, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;-><init>(Ljava/lang/String;F)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p3
.end method

.method public damp()V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 94
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;->modificatorsByAttrId:[Ljava/util/List;

    array-length v3, v2

    if-ge v1, v3, :cond_24

    .line 95
    aget-object v2, v2, v1

    move v3, v0

    .line 96
    :goto_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_21

    .line 97
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;

    .line 98
    iget v5, v4, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;->value:F

    const v6, 0x3f666666    # 0.9f

    mul-float/2addr v5, v6

    iput v5, v4, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;->value:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    return-void
.end method

.method public get(Linfo/flowersoft/theotown/components/management/attribute/Attribute;Ljava/lang/String;)F
    .registers 6

    .line 132
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;->modificatorsByAttrId:[Ljava/util/List;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->getIndex()I

    move-result p1

    aget-object p1, v0, p1

    const/4 v0, 0x0

    .line 133
    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 134
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;

    .line 135
    iget-object v2, v1, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;->tag:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 136
    iget p1, v1, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;->value:F

    return p1

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_23
    const/4 p1, 0x0

    return p1
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 27
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "mods"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_56

    .line 29
    :cond_16
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 30
    :goto_19
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 31
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttribute(Ljava/lang/String;)Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 34
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_19

    .line 36
    :cond_2d
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;->modificatorsByAttrId:[Ljava/util/List;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->getIndex()I

    move-result v0

    aget-object v0, v1, v0

    .line 37
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 38
    :goto_38
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 39
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v2

    .line 41
    new-instance v3, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;

    invoke-direct {v3, v1, v2}, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 43
    :cond_4f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_19

    .line 46
    :cond_53
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    .line 48
    :goto_56
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    :cond_5a
    return-void
.end method

.method public modify(Linfo/flowersoft/theotown/components/management/attribute/Attribute;FLinfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 6

    .line 74
    iget-object p3, p0, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;->modificatorsByAttrId:[Ljava/util/List;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->getIndex()I

    move-result p1

    aget-object p1, p3, p1

    const/4 p3, 0x0

    cmpg-float v0, p2, p3

    if-gez v0, :cond_15

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15

    const/high16 p2, 0x3f000000    # 0.5f

    :cond_15
    cmpl-float v0, p2, p3

    if-ltz v0, :cond_3b

    const/4 v0, 0x0

    .line 82
    :goto_1a
    :try_start_1a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 83
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;

    iget v1, v1, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;->value:F
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_28} :catch_2c

    add-float/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :catch_2c
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_30
    const/high16 p1, 0x3f800000    # 1.0f

    .line 88
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1

    :cond_3b
    return p2
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    const-string v0, "mods"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 56
    :goto_b
    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;->modificatorsByAttrId:[Ljava/util/List;

    array-length v3, v2

    if-ge v1, v3, :cond_51

    .line 57
    aget-object v2, v2, v1

    .line 58
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4e

    .line 59
    invoke-static {v1}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getTag(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v3

    invoke-interface {v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move v3, v0

    .line 60
    :goto_24
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4b

    .line 61
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;

    .line 62
    iget v5, v4, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;->value:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3c23d70a    # 0.01f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_48

    .line 63
    iget-object v5, v4, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;->tag:Ljava/lang/String;

    invoke-interface {p1, v5}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v5

    iget v4, v4, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;->value:F

    invoke-interface {v5, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 66
    :cond_4b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 69
    :cond_51
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public set(Linfo/flowersoft/theotown/components/management/attribute/Attribute;Ljava/lang/String;F)F
    .registers 7

    .line 104
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;->modificatorsByAttrId:[Ljava/util/List;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->getIndex()I

    move-result p1

    aget-object p1, v0, p1

    const/4 v0, 0x0

    .line 105
    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 106
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;

    .line 107
    iget-object v2, v1, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;->tag:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 108
    iput p3, v1, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;->value:F

    return p3

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 113
    :cond_23
    new-instance v0, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;

    invoke-direct {v0, p2, p3}, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;-><init>(Ljava/lang/String;F)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p3
.end method

###### Class info.flowersoft.theotown.components.management.AugmentedHappinessModifier.Modifier (info.flowersoft.theotown.components.management.AugmentedHappinessModifier$Modifier)
.class Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;
.super Ljava/lang/Object;
.source "AugmentedHappinessModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Modifier"
.end annotation


# instance fields
.field public tag:Ljava/lang/String;

.field public value:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .registers 3

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;->tag:Ljava/lang/String;

    .line 148
    iput p2, p0, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier$Modifier;->value:F

    return-void
.end method

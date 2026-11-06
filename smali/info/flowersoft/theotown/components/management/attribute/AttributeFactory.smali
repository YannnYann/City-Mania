###### Class info.flowersoft.theotown.components.management.attribute.AttributeFactory (info.flowersoft.theotown.components.management.attribute.AttributeFactory)
.class public Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;
.super Ljava/lang/Object;
.source "AttributeFactory.java"


# static fields
.field public static attributeToTag:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/components/management/attribute/Attribute;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/management/attribute/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public static classToIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Linfo/flowersoft/theotown/components/management/attribute/Attribute;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static tagToAttribute:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/components/management/attribute/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public static tagToIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V
    .registers 5

    .line 131
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->tagToAttribute:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 134
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->tags:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->tagToAttribute:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->classToIndex:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->attributes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->tagToIndex:Ljava/util/Map;

    sget-object v1, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->attributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->attributeToTag:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object p0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->attributes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->setIndex(I)V

    return-void

    .line 132
    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " already in use!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static countAttributes()I
    .registers 1

    .line 26
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->prepare()V

    .line 27
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static getAttribute(I)Linfo/flowersoft/theotown/components/management/attribute/Attribute;
    .registers 2

    .line 58
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->prepare()V

    if-ltz p0, :cond_17

    .line 59
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p0, v0, :cond_e

    goto :goto_17

    .line 62
    :cond_e
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->attributes:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    return-object p0

    :cond_17
    :goto_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAttribute(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/management/attribute/Attribute;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Linfo/flowersoft/theotown/components/management/attribute/Attribute;",
            ">;)",
            "Linfo/flowersoft/theotown/components/management/attribute/Attribute;"
        }
    .end annotation

    .line 66
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-static {p0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getIndex(Ljava/lang/Class;)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    return-object p0
.end method

.method public static getAttribute(Ljava/lang/String;)Linfo/flowersoft/theotown/components/management/attribute/Attribute;
    .registers 2

    .line 49
    invoke-static {p0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_f

    .line 51
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->attributes:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAttributes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/management/attribute/Attribute;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->prepare()V

    .line 81
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public static getIndex(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Linfo/flowersoft/theotown/components/management/attribute/Attribute;",
            ">;)I"
        }
    .end annotation

    .line 31
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->prepare()V

    .line 32
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->classToIndex:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 33
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->classToIndex:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_18
    const/4 p0, -0x1

    return p0
.end method

.method public static getIndex(Ljava/lang/String;)I
    .registers 2

    .line 40
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->prepare()V

    .line 41
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->tagToIndex:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 42
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->tagToIndex:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_18
    const/4 p0, -0x1

    return p0
.end method

.method public static getTag(I)Ljava/lang/String;
    .registers 2

    .line 75
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->prepare()V

    .line 76
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->tags:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getTag(Linfo/flowersoft/theotown/components/management/attribute/Attribute;)Ljava/lang/String;
    .registers 2

    .line 70
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->prepare()V

    .line 71
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->attributeToTag:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getTags()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->prepare()V

    .line 86
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->tags:Ljava/util/List;

    return-object v0
.end method

.method public static prepare()V
    .registers 2

    .line 90
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->attributes:Ljava/util/List;

    if-eqz v0, :cond_5

    return-void

    .line 92
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->attributes:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->tags:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->tagToAttribute:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->classToIndex:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->tagToIndex:Ljava/util/Map;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->attributeToTag:Ljava/util/Map;

    .line 100
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/EducationLowAttribute;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/EducationLowAttribute;-><init>()V

    const-string v1, "edl"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    .line 101
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/EducationHighAttribute;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/EducationHighAttribute;-><init>()V

    const-string v1, "edh"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    .line 102
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/CrimeAttribute;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/CrimeAttribute;-><init>()V

    const-string v1, "crm"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    .line 103
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/FireDangerAttribute;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/FireDangerAttribute;-><init>()V

    const-string v1, "fire"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    .line 104
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/WaterPollutionAttribute;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/WaterPollutionAttribute;-><init>()V

    const-string v1, "wp"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    .line 105
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/PollutionAttribute;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/PollutionAttribute;-><init>()V

    const-string v1, "plt"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    .line 106
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/ParkAttribute;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/ParkAttribute;-><init>()V

    const-string v1, "prk"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    .line 107
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/SportAttribute;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/SportAttribute;-><init>()V

    const-string v1, "sp"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    .line 110
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/ReligionHappiness;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/ReligionHappiness;-><init>()V

    const-string v1, "fth"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    .line 111
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/HealthHappiness;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/HealthHappiness;-><init>()V

    const-string v1, "hlth"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    .line 112
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/EducationHappiness;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/EducationHappiness;-><init>()V

    const-string v1, "hedu"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    .line 113
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/LevelHappiness;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/LevelHappiness;-><init>()V

    const-string v1, "hlvl"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    .line 114
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/TaxesHappiness;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/TaxesHappiness;-><init>()V

    const-string v1, "htx"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    .line 115
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/TransportationHappiness;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/TransportationHappiness;-><init>()V

    const-string v1, "htr"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    .line 116
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/ZoneHappiness;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/ZoneHappiness;-><init>()V

    const-string v1, "hzn"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    .line 117
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/SupplyHappiness;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/SupplyHappiness;-><init>()V

    const-string v1, "hspl"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    .line 118
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/FreeTimeHappiness;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/FreeTimeHappiness;-><init>()V

    const-string v1, "hft"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    .line 119
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/CultureHappiness;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/CultureHappiness;-><init>()V

    const-string v1, "clt"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    .line 120
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/EnvironmentHappiness;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/EnvironmentHappiness;-><init>()V

    const-string v1, "henv"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    .line 121
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/PoliceHappiness;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/PoliceHappiness;-><init>()V

    const-string v1, "hpd"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    .line 122
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/FireBrigadeHappiness;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/FireBrigadeHappiness;-><init>()V

    const-string v1, "hfd"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    .line 123
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/ParkHappiness;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/ParkHappiness;-><init>()V

    const-string v1, "hpk"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    .line 124
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/SportHappiness;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/SportHappiness;-><init>()V

    const-string v1, "hsp"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    .line 125
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/WasteHappiness;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/WasteHappiness;-><init>()V

    const-string v1, "wst"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    .line 127
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/GeneralHappiness;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/GeneralHappiness;-><init>()V

    const-string v1, "hgen"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->add(Ljava/lang/String;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    return-void
.end method

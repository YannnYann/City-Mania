###### Class info.flowersoft.theotown.components.management.attribute.HappinessContext (info.flowersoft.theotown.components.management.attribute.HappinessContext)
.class public Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;
.super Ljava/lang/Object;
.source "HappinessContext.java"


# instance fields
.field public attributeContainer:Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

.field public building:Linfo/flowersoft/theotown/city/objects/Building;

.field public city:Linfo/flowersoft/theotown/city/City;

.field public coverageCalculator:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

.field public density:F

.field public generalInfluences:[F

.field public influences:[F

.field public level:I

.field public people:I

.field public survey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

.field public zone:Linfo/flowersoft/theotown/draft/ZoneDraft;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    .line 39
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->generalInfluences:[F

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/draft/ZoneDraft;I[F[FLinfo/flowersoft/theotown/city/components/BuildingSurvey;Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;Linfo/flowersoft/theotown/city/City;)V
    .registers 8

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 45
    iput p2, p0, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->level:I

    .line 46
    iput-object p3, p0, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    .line 47
    iput-object p4, p0, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->generalInfluences:[F

    .line 48
    iput-object p5, p0, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->survey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    .line 49
    iput-object p6, p0, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->coverageCalculator:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    .line 50
    iput-object p7, p0, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->city:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public setBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 2

    .line 54
    iput-object p1, p0, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 55
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getAttributeContainer()Linfo/flowersoft/theotown/city/objects/AttributeContainer;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->attributeContainer:Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    return-void
.end method

.method public setFrom(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)V
    .registers 5

    .line 59
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 60
    iget v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->level:I

    iput v0, p0, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->level:I

    const/4 v0, 0x0

    .line 61
    :goto_9
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_23

    .line 62
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    iget-object v2, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 63
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->generalInfluences:[F

    iget-object v2, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->generalInfluences:[F

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 65
    :cond_23
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->survey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->survey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    .line 66
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_35

    .line 67
    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 68
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getAttributeContainer()Linfo/flowersoft/theotown/city/objects/AttributeContainer;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->attributeContainer:Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    .line 70
    :cond_35
    iget p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->density:F

    iput p1, p0, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->density:F

    return-void
.end method

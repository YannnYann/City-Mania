###### Class info.flowersoft.theotown.components.management.attribute.GeneralHappiness (info.flowersoft.theotown.components.management.attribute.GeneralHappiness)
.class public Linfo/flowersoft/theotown/components/management/attribute/GeneralHappiness;
.super Linfo/flowersoft/theotown/components/management/attribute/Attribute;
.source "GeneralHappiness.java"


# instance fields
.field public final averageCalculator:Linfo/flowersoft/theotown/util/WeightedAverageCalculator;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x6ca

    .line 18
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_RATING:I

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;-><init>(ZZII)V

    .line 15
    new-instance v0, Linfo/flowersoft/theotown/util/WeightedAverageCalculator;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/WeightedAverageCalculator;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/attribute/GeneralHappiness;->averageCalculator:Linfo/flowersoft/theotown/util/WeightedAverageCalculator;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->setAdjustRatio(F)V

    return-void
.end method


# virtual methods
.method public evaluate(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 9

    .line 24
    iget-object p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    const/high16 v0, -0x40800000    # -1.0f

    if-eqz p1, :cond_52

    .line 28
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getAttributeContainer()Linfo/flowersoft/theotown/city/objects/AttributeContainer;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    .line 29
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object p1

    .line 30
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttributes()Ljava/util/List;

    move-result-object v1

    .line 31
    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/attribute/GeneralHappiness;->averageCalculator:Linfo/flowersoft/theotown/util/WeightedAverageCalculator;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/WeightedAverageCalculator;->clear()V

    const/4 v2, 0x0

    move v3, v2

    .line 33
    :goto_1b
    array-length v4, p1

    if-ge v2, v4, :cond_43

    .line 34
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    .line 35
    aget v5, p1, v2

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_40

    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->isHappiness()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 36
    iget-object v4, p0, Linfo/flowersoft/theotown/components/management/attribute/GeneralHappiness;->averageCalculator:Linfo/flowersoft/theotown/util/WeightedAverageCalculator;

    aget v5, p1, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/util/WeightedAverageCalculator;->addValue(F)V

    .line 37
    aget v4, p1, v2

    add-int/lit8 v3, v3, 0x1

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_43
    if-lez v3, :cond_52

    .line 43
    iget-object p1, p0, Linfo/flowersoft/theotown/components/management/attribute/GeneralHappiness;->averageCalculator:Linfo/flowersoft/theotown/util/WeightedAverageCalculator;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/WeightedAverageCalculator;->getResult()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 44
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    :cond_52
    return v0
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableAirplaneDraft (info.flowersoft.theotown.ui.selectable.SelectableAirplaneDraft)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableAirplaneDraft.java"


# instance fields
.field public final airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

.field public final budget:Linfo/flowersoft/theotown/components/DefaultBudget;

.field public final draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

.field public frame:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/airport/DefaultAirport;Linfo/flowersoft/theotown/draft/FlyingObjectDraft;)V
    .registers 5

    .line 27
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/CityComponent;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 28
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultBudget;

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    .line 30
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    .line 31
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    return-void
.end method


# virtual methods
.method public buildLabels()V
    .registers 8

    .line 50
    new-instance v0, Lio/blueflower/stapel2d/gui/Label;

    sget-object v1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v1

    const/16 v2, 0xb9b

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iget v2, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->capacity:I

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 50
    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelHeight()I

    move-result v5

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getLabelList()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 52
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 54
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->buildLabels()V

    return-void
.end method

.method public countFrames()I
    .registers 2

    .line 36
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    if-eqz v0, :cond_a

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    return v0

    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method public getDiamondPrice()I
    .registers 2

    .line 59
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    return v0
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 73
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    return-object v0
.end method

.method public getFrame()I
    .registers 2

    .line 41
    iget v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;->frame:I

    return v0
.end method

.method public getPreviewFrame()I
    .registers 3

    .line 78
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    if-eqz v0, :cond_d

    iget v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;->frame:I

    mul-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public getPrice()J
    .registers 7

    .line 64
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/FlyingObjectDraft;I)J

    move-result-wide v0

    .line 65
    sget-boolean v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v2, :cond_25

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v2

    if-lez v2, :cond_25

    .line 66
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x186a0

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_25
    return-wide v0
.end method

.method public getSelectIcon()I
    .registers 2

    .line 88
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;->getDiamondPrice()I

    move-result v0

    if-lez v0, :cond_9

    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND:I

    return v0

    :cond_9
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_MONEY:I

    return v0
.end method

.method public getSelectText()Ljava/lang/String;
    .registers 3

    .line 83
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0xccd

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSelectable()Z
    .registers 4

    .line 93
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;->getPrice()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public select()V
    .registers 7

    .line 98
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;->draft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iget v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;->frame:I

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->addAirplane(Linfo/flowersoft/theotown/draft/FlyingObjectDraft;I)Linfo/flowersoft/theotown/components/airport/Airplane;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 100
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;->getPrice()J

    move-result-wide v2

    long-to-double v2, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buy airplane "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/airport/Airplane;->getId()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DLjava/lang/String;)V

    .line 102
    :cond_2b
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    return-void
.end method

.method public setFrame(I)V
    .registers 2

    .line 46
    iput p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;->frame:I

    return-void
.end method

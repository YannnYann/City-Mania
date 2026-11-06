###### Class info.flowersoft.theotown.ui.selectable.SelectableInfluence (info.flowersoft.theotown.ui.selectable.SelectableInfluence)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableInfluence;
.super Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;
.source "SelectableInfluence.java"


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;

.field public influenceType:Linfo/flowersoft/theotown/city/components/InfluenceType;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/InfluenceType;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;-><init>()V

    .line 21
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableInfluence;->city:Linfo/flowersoft/theotown/city/City;

    .line 22
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableInfluence;->influenceType:Linfo/flowersoft/theotown/city/components/InfluenceType;

    return-void
.end method


# virtual methods
.method public build(Lio/blueflower/stapel2d/gui/Panel;)V
    .registers 2

    .line 27
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->build(Lio/blueflower/stapel2d/gui/Panel;)V

    return-void
.end method

.method public getPreviewFrame()I
    .registers 2

    .line 52
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableInfluence;->influenceType:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/InfluenceType;->getIconId()I

    move-result v0

    if-nez v0, :cond_a

    .line 54
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    :cond_a
    return v0
.end method

.method public getSelectIcon()I
    .registers 2

    .line 47
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    return v0
.end method

.method public getSelectText()Ljava/lang/String;
    .registers 3

    .line 42
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableInfluence;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0xc8c

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .line 32
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableInfluence;->influenceType:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/InfluenceType;->getTextId()I

    move-result v0

    if-eqz v0, :cond_13

    .line 34
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableInfluence;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 36
    :cond_13
    const-string v0, "Some text..."

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 61
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableInfluence;->influenceType:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/InfluenceType;->getNameId()I

    move-result v0

    if-eqz v0, :cond_13

    .line 63
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableInfluence;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    :cond_13
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableInfluence;->influenceType:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public select()V
    .registers 3

    .line 71
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 73
    new-instance v0, Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableInfluence;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableInfluence;->influenceType:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/city/components/InfluenceType;)Linfo/flowersoft/theotown/tools/MarkTool;

    move-result-object v0

    .line 74
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableInfluence;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

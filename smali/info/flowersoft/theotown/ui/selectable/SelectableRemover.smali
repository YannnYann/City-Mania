###### Class info.flowersoft.theotown.ui.selectable.SelectableRemover (info.flowersoft.theotown.ui.selectable.SelectableRemover)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableRemover;
.super Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;
.source "SelectableRemover.java"


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;-><init>()V

    .line 16
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRemover;->city:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public getPreviewFrame()I
    .registers 2

    .line 46
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE_ANY:I

    return v0
.end method

.method public getSelectIcon()I
    .registers 2

    .line 36
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    return v0
.end method

.method public getSelectId()Ljava/lang/String;
    .registers 2

    .line 21
    const-string v0, "cmdSelectableSelect$Remove$All"

    return-object v0
.end method

.method public getSelectText()Ljava/lang/String;
    .registers 3

    .line 31
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRemover;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x13

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .line 26
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRemover;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x65

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 41
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRemover;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x208

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public select()V
    .registers 4

    .line 51
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 52
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRemover;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v1, Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRemover;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v1}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolveRemove()Linfo/flowersoft/theotown/tools/RemoveTool;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

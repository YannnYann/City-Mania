###### Class info.flowersoft.theotown.ui.selectable.SelectablePipeRemover (info.flowersoft.theotown.ui.selectable.SelectablePipeRemover)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectablePipeRemover;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableRemover;
.source "SelectablePipeRemover.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 14
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableRemover;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public getPreviewFrame()I
    .registers 2

    .line 34
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE_PIPE:I

    return v0
.end method

.method public getSelectId()Ljava/lang/String;
    .registers 2

    .line 24
    const-string v0, "cmdSelectableSelect$Remove$Pipe"

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .line 19
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRemover;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x89c

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 29
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRemover;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0xa53

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public select()V
    .registers 4

    .line 39
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableRemover;->select()V

    .line 40
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRemover;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v1, Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRemover;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v1}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolveRemovePipe()Linfo/flowersoft/theotown/tools/RemovePipeTool;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

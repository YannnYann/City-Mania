###### Class info.flowersoft.theotown.ui.selectable.SelectableMarker (info.flowersoft.theotown.ui.selectable.SelectableMarker)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableMarker.java"


# instance fields
.field public id:Ljava/lang/String;

.field public final marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

.field public name:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 27
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    return-void
.end method


# virtual methods
.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 5

    .line 41
    new-instance v0, Linfo/flowersoft/theotown/draft/Draft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/Draft;-><init>()V

    .line 42
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;->id:Ljava/lang/String;

    if-nez v1, :cond_29

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$marker_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    invoke-interface {v2}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->getTag()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    return-object v0

    .line 45
    :cond_29
    iput-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewFrame()I
    .registers 2

    .line 66
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    invoke-interface {v0}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->getIcon()I

    move-result v0

    return v0
.end method

.method public getPrice()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSelectIcon()I
    .registers 2

    .line 61
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    return v0
.end method

.method public getSelectText()Ljava/lang/String;
    .registers 3

    .line 56
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0xc8c

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public select()V
    .registers 3

    .line 71
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 73
    new-instance v0, Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)Linfo/flowersoft/theotown/tools/MarkTool;

    move-result-object v0

    .line 74
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;->name:Lio/blueflower/stapel2d/util/Getter;

    if-eqz v1, :cond_17

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tools/MarkTool;->setName(Lio/blueflower/stapel2d/util/Getter;)V

    .line 75
    :cond_17
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

.method public setDraftId(Ljava/lang/String;)V
    .registers 2

    .line 51
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Lio/blueflower/stapel2d/util/Getter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;->name:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableMoveBuilding (info.flowersoft.theotown.ui.selectable.SelectableMoveBuilding)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableMoveBuilding;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableMoveBuilding.java"


# instance fields
.field public final draft:Linfo/flowersoft/theotown/draft/ToolDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 20
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 17
    sget-object p1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v0, "$tool_movebuilding00"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/ToolDraft;

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableMoveBuilding;->draft:Linfo/flowersoft/theotown/draft/ToolDraft;

    return-void
.end method


# virtual methods
.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableMoveBuilding;->draft:Linfo/flowersoft/theotown/draft/ToolDraft;

    return-object v0
.end method

.method public getPrice()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSelectIcon()I
    .registers 2

    .line 40
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOCATE:I

    return v0
.end method

.method public getSelectText()Ljava/lang/String;
    .registers 3

    .line 35
    sget-object v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    const/16 v1, 0x2a9

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public select()V
    .registers 3

    .line 45
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 46
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v1, Linfo/flowersoft/theotown/tools/MoveBuildingTool;

    invoke-direct {v1}, Linfo/flowersoft/theotown/tools/MoveBuildingTool;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

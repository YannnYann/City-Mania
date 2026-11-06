###### Class info.flowersoft.theotown.ui.selectable.SelectableGenericTool (info.flowersoft.theotown.ui.selectable.SelectableGenericTool)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableGenericTool;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableGenericTool.java"


# instance fields
.field public cmdText:Ljava/lang/String;

.field public draft:Linfo/flowersoft/theotown/draft/ToolDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ToolDraft;)V
    .registers 4

    .line 16
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 17
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableGenericTool;->draft:Linfo/flowersoft/theotown/draft/ToolDraft;

    .line 19
    iget-object v0, p2, Linfo/flowersoft/theotown/draft/ToolDraft;->cmdText:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 20
    iget-object v0, p2, Linfo/flowersoft/theotown/draft/ToolDraft;->cmdText:Ljava/lang/String;

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableGenericTool;->cmdText:Ljava/lang/String;

    .line 22
    :cond_13
    iget-object v0, p2, Linfo/flowersoft/theotown/draft/ToolDraft;->cmdId:Ljava/lang/String;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 23
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object p1, p2, Linfo/flowersoft/theotown/draft/ToolDraft;->cmdId:Ljava/lang/String;

    const-string p2, "CMD"

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableGenericTool;->cmdText:Ljava/lang/String;

    :cond_2c
    return-void
.end method


# virtual methods
.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 44
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableGenericTool;->draft:Linfo/flowersoft/theotown/draft/ToolDraft;

    return-object v0
.end method

.method public getPrice()J
    .registers 3

    .line 39
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableGenericTool;->draft:Linfo/flowersoft/theotown/draft/ToolDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/ToolDraft;->price:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSelectIcon()I
    .registers 3

    .line 34
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableGenericTool;->draft:Linfo/flowersoft/theotown/draft/ToolDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->iconFrames:[I

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    :cond_a
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getSelectIcon()I

    move-result v0

    return v0
.end method

.method public getSelectText()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableGenericTool;->cmdText:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getSelectText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public select()V
    .registers 4

    .line 49
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v1, Linfo/flowersoft/theotown/tools/GenericTool;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableGenericTool;->draft:Linfo/flowersoft/theotown/draft/ToolDraft;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/tools/GenericTool;-><init>(Linfo/flowersoft/theotown/draft/ToolDraft;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

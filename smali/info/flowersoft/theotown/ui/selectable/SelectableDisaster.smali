###### Class info.flowersoft.theotown.ui.selectable.SelectableDisaster (info.flowersoft.theotown.ui.selectable.SelectableDisaster)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableDisaster.java"


# instance fields
.field public cmdText:Ljava/lang/String;

.field public disasterType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Linfo/flowersoft/theotown/city/components/Disaster;",
            ">;"
        }
    .end annotation
.end field

.field public draft:Linfo/flowersoft/theotown/draft/ToolDraft;

.field public icon:I

.field public text:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ToolDraft;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/City;",
            "Linfo/flowersoft/theotown/draft/ToolDraft;",
            "Ljava/lang/Class<",
            "+",
            "Linfo/flowersoft/theotown/city/components/Disaster;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 24
    iget-object v0, p2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;->icon:I

    .line 26
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;->draft:Linfo/flowersoft/theotown/draft/ToolDraft;

    .line 28
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 29
    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;->title:Ljava/lang/String;

    .line 30
    iget-object p1, p2, Linfo/flowersoft/theotown/draft/ToolDraft;->cmdId:Ljava/lang/String;

    const-string v1, "CMD"

    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;->cmdText:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getText(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;->text:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;->disasterType:Ljava/lang/Class;

    .line 34
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;->title:Ljava/lang/String;

    invoke-static {p3, p1}, Linfo/flowersoft/theotown/tools/ToolResolver;->setDisasterName(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 39
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;->draft:Linfo/flowersoft/theotown/draft/ToolDraft;

    return-object v0
.end method

.method public getPreviewFrame()I
    .registers 2

    .line 69
    iget v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;->icon:I

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

    .line 59
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOCATE:I

    return v0
.end method

.method public getSelectText()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;->cmdText:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;->title:Ljava/lang/String;

    return-object v0
.end method

.method public select()V
    .registers 4

    .line 74
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 76
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v1, Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDisaster;->disasterType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Ljava/lang/Class;)Linfo/flowersoft/theotown/tools/DisasterTool;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

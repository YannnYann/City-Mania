###### Class info.flowersoft.theotown.ui.selectable.SelectableAlert (info.flowersoft.theotown.ui.selectable.SelectableAlert)
.class public abstract Linfo/flowersoft/theotown/ui/selectable/SelectableAlert;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableAlert.java"


# instance fields
.field public draft:Linfo/flowersoft/theotown/draft/Draft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 19
    new-instance p1, Linfo/flowersoft/theotown/draft/Draft;

    invoke-direct {p1}, Linfo/flowersoft/theotown/draft/Draft;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableAlert;->draft:Linfo/flowersoft/theotown/draft/Draft;

    .line 20
    const-string v0, "no draft set"

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getAlertTool()Linfo/flowersoft/theotown/tools/AlertTool;
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 40
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableAlert;->draft:Linfo/flowersoft/theotown/draft/Draft;

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

    .line 35
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOCATE:I

    return v0
.end method

.method public getSelectText()Ljava/lang/String;
    .registers 3

    .line 45
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x380

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasRequirement()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isActive()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isUnlocked()Z
.end method

.method public select()V
    .registers 3

    .line 61
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 62
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableAlert;->getAlertTool()Linfo/flowersoft/theotown/tools/AlertTool;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

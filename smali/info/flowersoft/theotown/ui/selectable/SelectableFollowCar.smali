###### Class info.flowersoft.theotown.ui.selectable.SelectableFollowCar (info.flowersoft.theotown.ui.selectable.SelectableFollowCar)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableFollowCar;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableFollowCar.java"


# instance fields
.field public draft:Linfo/flowersoft/theotown/draft/Draft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 20
    new-instance p1, Linfo/flowersoft/theotown/draft/Draft;

    invoke-direct {p1}, Linfo/flowersoft/theotown/draft/Draft;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFollowCar;->draft:Linfo/flowersoft/theotown/draft/Draft;

    .line 21
    const-string v0, "$tool_car_follower00"

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 31
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFollowCar;->draft:Linfo/flowersoft/theotown/draft/Draft;

    return-object v0
.end method

.method public getPreviewFrame()I
    .registers 2

    .line 46
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_FOLLOW_CAR_TOOL:I

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

    .line 36
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAY:I

    return v0
.end method

.method public getSelectText()Ljava/lang/String;
    .registers 3

    .line 41
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

    .line 51
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 52
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v1, Linfo/flowersoft/theotown/tools/FollowCarTool;

    invoke-direct {v1}, Linfo/flowersoft/theotown/tools/FollowCarTool;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

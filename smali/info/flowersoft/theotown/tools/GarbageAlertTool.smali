###### Class info.flowersoft.theotown.tools.GarbageAlertTool (info.flowersoft.theotown.tools.GarbageAlertTool)
.class public Linfo/flowersoft/theotown/tools/GarbageAlertTool;
.super Linfo/flowersoft/theotown/tools/AlertTool;
.source "GarbageAlertTool.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    sget v0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;->GARBAGE:I

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/tools/AlertTool;-><init>(I)V

    return-void
.end method

.method public static getAlertId()Ljava/lang/String;
    .registers 1

    .line 32
    const-string v0, "$alert_garbage00"

    return-object v0
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 22
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 23
    new-instance v0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;

    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->WASTE_DISPOSAL:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/InfluenceType;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    return-void
.end method

.method public getIcon()I
    .registers 2

    .line 37
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_WASTE_DISPOSAL:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 17
    invoke-static {}, Linfo/flowersoft/theotown/tools/GarbageAlertTool;->getAlertId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 28
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/GarbageAlertTool;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

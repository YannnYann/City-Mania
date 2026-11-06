###### Class info.flowersoft.theotown.tools.SWATAlertTool (info.flowersoft.theotown.tools.SWATAlertTool)
.class public Linfo/flowersoft/theotown/tools/SWATAlertTool;
.super Linfo/flowersoft/theotown/tools/AlertTool;
.source "SWATAlertTool.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    sget v0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;->SWAT:I

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/tools/AlertTool;-><init>(I)V

    return-void
.end method

.method public static getAlertId()Ljava/lang/String;
    .registers 1

    .line 42
    const-string v0, "$alert_swat00"

    return-object v0
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 26
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 28
    new-instance v0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;

    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->POLICE:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/InfluenceType;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    return-void
.end method

.method public getIcon()I
    .registers 2

    .line 38
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_CALL_POLICE:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 21
    invoke-static {}, Linfo/flowersoft/theotown/tools/SWATAlertTool;->getAlertId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 33
    const-string v0, "SWAT"

    return-object v0
.end method

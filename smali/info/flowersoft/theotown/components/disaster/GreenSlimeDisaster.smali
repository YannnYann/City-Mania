###### Class info.flowersoft.theotown.components.disaster.GreenSlimeDisaster (info.flowersoft.theotown.components.disaster.GreenSlimeDisaster)
.class public Linfo/flowersoft/theotown/components/disaster/GreenSlimeDisaster;
.super Linfo/flowersoft/theotown/components/disaster/BuildingBasedDisaster;
.source "GreenSlimeDisaster.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 10
    const-string v0, "$disaster_green_slime01"

    const-string v1, "$disaster_green_slime02"

    const-string v2, "$disaster_green_slime00"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/components/disaster/BuildingBasedDisaster;-><init>([Ljava/lang/String;)V

    return-void
.end method

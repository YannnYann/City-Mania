###### Class info.flowersoft.theotown.components.disaster.PinkSlimeDisaster (info.flowersoft.theotown.components.disaster.PinkSlimeDisaster)
.class public Linfo/flowersoft/theotown/components/disaster/PinkSlimeDisaster;
.super Linfo/flowersoft/theotown/components/disaster/BuildingBasedDisaster;
.source "PinkSlimeDisaster.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 9
    const-string v0, "$disaster_pink_slime01"

    const-string v1, "$disaster_pink_slime02"

    const-string v2, "$disaster_pink_slime00"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/components/disaster/BuildingBasedDisaster;-><init>([Ljava/lang/String;)V

    return-void
.end method

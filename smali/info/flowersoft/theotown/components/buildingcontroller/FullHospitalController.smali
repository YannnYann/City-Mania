###### Class info.flowersoft.theotown.components.buildingcontroller.FullHospitalController (info.flowersoft.theotown.components.buildingcontroller.FullHospitalController)
.class public Linfo/flowersoft/theotown/components/buildingcontroller/FullHospitalController;
.super Linfo/flowersoft/theotown/components/buildingcontroller/AbstractOverloadedAspectController;
.source "FullHospitalController.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/buildingcontroller/AbstractOverloadedAspectController;-><init>()V

    const/4 v0, 0x2

    .line 12
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/buildingcontroller/AbstractOverloadedAspectController;->addAspect(I)V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .registers 2

    .line 17
    const-string v0, "full hospital"

    return-object v0
.end method

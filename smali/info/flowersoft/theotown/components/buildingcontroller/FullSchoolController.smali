###### Class info.flowersoft.theotown.components.buildingcontroller.FullSchoolController (info.flowersoft.theotown.components.buildingcontroller.FullSchoolController)
.class public Linfo/flowersoft/theotown/components/buildingcontroller/FullSchoolController;
.super Linfo/flowersoft/theotown/components/buildingcontroller/AbstractOverloadedAspectController;
.source "FullSchoolController.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/buildingcontroller/AbstractOverloadedAspectController;-><init>()V

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/buildingcontroller/AbstractOverloadedAspectController;->addAspect(I)V

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/buildingcontroller/AbstractOverloadedAspectController;->addAspect(I)V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .registers 2

    .line 18
    const-string v0, "full school"

    return-object v0
.end method

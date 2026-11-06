###### Class info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder (info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;
.super Lio/blueflower/stapel2d/util/Builder;
.source "DebugLayerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/blueflower/stapel2d/util/Builder<",
        "Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;",
        ">;"
    }
.end annotation


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final gui:Lio/blueflower/stapel2d/gui/Master;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/util/Builder;-><init>(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->city:Linfo/flowersoft/theotown/city/City;

    .line 54
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGUI()Lio/blueflower/stapel2d/gui/Master;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Ljava/lang/Object;
    .registers 1

    .line 45
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 45
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Lio/blueflower/stapel2d/gui/Master;
    .registers 1

    .line 45
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Ljava/lang/Object;
    .registers 1

    .line 45
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Ljava/lang/Object;
    .registers 1

    .line 45
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Ljava/lang/Object;
    .registers 1

    .line 45
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Ljava/lang/Object;
    .registers 1

    .line 45
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Ljava/lang/Object;
    .registers 1

    .line 45
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Ljava/lang/Object;
    .registers 1

    .line 45
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Ljava/lang/Object;
    .registers 1

    .line 45
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public build()V
    .registers 10

    .line 59
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$1;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, p0, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 114
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iput-object v0, v1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->debugLayer:Linfo/flowersoft/theotown/ui/DebugLayer;

    .line 116
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultDate;

    .line 117
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultTraffic;

    const/4 v2, 0x0

    .line 119
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 120
    new-instance v2, Linfo/flowersoft/theotown/ui/StaticDebugInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> Debug stats "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " <<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/ui/StaticDebugInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/DebugLayer;->addInfo(Linfo/flowersoft/theotown/ui/DebugInfo;)V

    .line 123
    new-instance v2, Linfo/flowersoft/theotown/ui/StaticDebugInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEVICE_MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEVICE_MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/ui/StaticDebugInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/DebugLayer;->addInfo(Linfo/flowersoft/theotown/ui/DebugInfo;)V

    .line 126
    const-string v2, "java.vendor"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    const-string v3, "java.version"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    new-instance v6, Linfo/flowersoft/theotown/ui/StaticDebugInfo;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Linfo/flowersoft/theotown/ui/StaticDebugInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Linfo/flowersoft/theotown/ui/DebugLayer;->addInfo(Linfo/flowersoft/theotown/ui/DebugInfo;)V

    .line 131
    new-instance v2, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$2;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$2;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/DebugLayer;->addInfo(Linfo/flowersoft/theotown/ui/DebugInfo;)V

    .line 139
    new-instance v2, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$3;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$3;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/DebugLayer;->addInfo(Linfo/flowersoft/theotown/ui/DebugInfo;)V

    .line 150
    new-instance v2, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$4;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$4;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/DebugLayer;->addInfo(Linfo/flowersoft/theotown/ui/DebugInfo;)V

    .line 171
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/components/Demand;

    .line 172
    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$5;

    invoke-direct {v3, p0, v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$5;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;Linfo/flowersoft/theotown/city/components/Demand;)V

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/ui/DebugLayer;->addInfo(Linfo/flowersoft/theotown/ui/DebugInfo;)V

    .line 179
    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$6;

    invoke-direct {v3, p0, v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$6;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;Linfo/flowersoft/theotown/city/components/Demand;)V

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/ui/DebugLayer;->addInfo(Linfo/flowersoft/theotown/ui/DebugInfo;)V

    .line 186
    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$7;

    invoke-direct {v3, p0, v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$7;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;Linfo/flowersoft/theotown/city/components/Demand;)V

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/ui/DebugLayer;->addInfo(Linfo/flowersoft/theotown/ui/DebugInfo;)V

    .line 193
    new-instance v2, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$8;

    invoke-direct {v2, p0, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$8;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;Linfo/flowersoft/theotown/components/DefaultTraffic;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/DebugLayer;->addInfo(Linfo/flowersoft/theotown/ui/DebugInfo;)V

    .line 201
    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$9;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$9;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/DebugLayer;->addInfo(Linfo/flowersoft/theotown/ui/DebugInfo;)V

    .line 212
    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$10;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$10;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/DebugLayer;->addInfo(Linfo/flowersoft/theotown/ui/DebugInfo;)V

    .line 219
    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$11;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$11;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/DebugLayer;->addInfo(Linfo/flowersoft/theotown/ui/DebugInfo;)V

    .line 226
    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$12;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$12;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/DebugLayer;->addInfo(Linfo/flowersoft/theotown/ui/DebugInfo;)V

    .line 238
    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$13;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$13;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/DebugLayer;->addInfo(Linfo/flowersoft/theotown/ui/DebugInfo;)V

    .line 250
    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$14;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$14;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/DebugLayer;->addInfo(Linfo/flowersoft/theotown/ui/DebugInfo;)V

    .line 257
    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$15;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$15;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/DebugLayer;->addInfo(Linfo/flowersoft/theotown/ui/DebugInfo;)V

    .line 265
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->buildMethodClusterInfo()Linfo/flowersoft/theotown/ui/DebugInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/DebugLayer;->addInfo(Linfo/flowersoft/theotown/ui/DebugInfo;)V

    .line 277
    new-instance v2, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$16;

    const/4 v7, 0x0

    iget-object v8, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$16;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

.method public final buildMethodClusterInfo()Linfo/flowersoft/theotown/ui/DebugInfo;
    .registers 2

    .line 289
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$17;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$17;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)V

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.AnonymousClass1 (info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder$1)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$1;
.super Linfo/flowersoft/theotown/ui/DebugLayer;
.source "DebugLayerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 59
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/ui/DebugLayer;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 20

    move-object/from16 v0, p0

    .line 62
    invoke-super/range {p0 .. p2}, Linfo/flowersoft/theotown/ui/DebugLayer;->draw(II)V

    .line 64
    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 65
    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 71
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    .line 72
    sget-object v4, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_ORANGE:Lio/blueflower/stapel2d/drawing/Color;

    .line 73
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->CYAN:Lio/blueflower/stapel2d/drawing/Color;

    .line 74
    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_BLUE:Lio/blueflower/stapel2d/drawing/Color;

    .line 75
    sget-object v7, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    .line 76
    sget-object v8, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    filled-new-array/range {v3 .. v8}, [Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v11

    .line 82
    const-string v7, "Waiting"

    .line 83
    const-string v8, "Other"

    const-string v3, "Draw city"

    const-string v4, "Update city"

    const-string v5, "Draw gui"

    const-string v6, "Flush"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v12

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v13, v3

    move v3, v4

    :goto_2f
    const/4 v14, 0x6

    if-ge v3, v14, :cond_3a

    .line 85
    invoke-static {v3}, Linfo/flowersoft/theotown/util/TimeLog;->getTime(I)F

    move-result v5

    add-float/2addr v13, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 87
    :cond_3a
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-static {v3}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->areaPanel:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v15

    const/high16 v3, -0x3d4c0000    # -90.0f

    move v8, v3

    move v3, v4

    :goto_4c
    if-ge v3, v14, :cond_d7

    .line 91
    aget-object v4, v11, v3

    invoke-virtual {v2, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/high16 v4, 0x43b40000    # 360.0f

    .line 92
    invoke-static {v3}, Linfo/flowersoft/theotown/util/TimeLog;->getTime(I)F

    move-result v5

    mul-float/2addr v5, v4

    div-float/2addr v5, v13

    move v4, v3

    .line 93
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    move v6, v4

    int-to-float v4, v15

    const/16 v7, 0x40

    int-to-float v7, v7

    add-float v9, v8, v5

    sget v10, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/4 v5, 0x0

    move/from16 v16, v6

    move v6, v7

    move/from16 v14, v16

    invoke-virtual/range {v2 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawOval(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v12, v14

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (%dms)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-static {v14}, Linfo/flowersoft/theotown/util/TimeLog;->getTime(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 95
    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 98
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v3, 0xa0

    .line 99
    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 100
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v4, v15, 0x42

    int-to-float v4, v4

    int-to-float v5, v14

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v6

    mul-float/2addr v6, v5

    move v7, v5

    move v5, v6

    invoke-virtual {v1, v10}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v6

    move v8, v7

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v7

    move/from16 v16, v8

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 101
    aget-object v3, v11, v14

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v3, 0xff

    .line 102
    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 103
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v3

    mul-float v5, v16, v3

    invoke-virtual {v2, v1, v10, v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    add-int/lit8 v3, v14, 0x1

    move v8, v9

    const/4 v14, 0x6

    goto/16 :goto_4c

    .line 105
    :cond_d7
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 107
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    .line 108
    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultTransportation;

    .line 109
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultTransportation;->getReachabilityMask()Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;

    move-result-object v1

    const/high16 v3, 0x41f00000    # 30.0f

    const/high16 v4, 0x42aa0000    # 85.0f

    .line 110
    invoke-virtual {v1, v2, v3, v4}, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->drawDebug(Lio/blueflower/stapel2d/drawing/Engine;FF)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.AnonymousClass10 (info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder$10)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$10;
.super Linfo/flowersoft/theotown/ui/DebugInfo;
.source "DebugLayerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 212
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$10;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/DebugInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 3

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#Buildings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$10;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/BuildingList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", #Roads: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$10;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/RoadList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.AnonymousClass11 (info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder$11)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$11;
.super Linfo/flowersoft/theotown/ui/DebugInfo;
.source "DebugLayerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 219
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$11;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/DebugInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 3

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Processor cores "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.AnonymousClass12 (info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder$12)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$12;
.super Linfo/flowersoft/theotown/ui/DebugInfo;
.source "DebugLayerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 226
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$12;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/DebugInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 10

    .line 229
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    .line 231
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    .line 232
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v5

    .line 233
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-wide/16 v7, 0x400

    div-long/2addr v3, v7

    .line 234
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    div-long/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 233
    const-string v2, "Memory free:%d, total: %d, max:%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.AnonymousClass13 (info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder$13)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$13;
.super Linfo/flowersoft/theotown/ui/DebugInfo;
.source "DebugLayerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 238
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$13;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/DebugInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 5

    .line 241
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$13;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 243
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v3

    div-float/2addr v3, v2

    .line 244
    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoX(FF)F

    move-result v2

    .line 245
    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoY(FF)F

    move-result v0

    .line 246
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Over tile: %f, %f"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.AnonymousClass14 (info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder$14)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$14;
.super Linfo/flowersoft/theotown/ui/DebugInfo;
.source "DebugLayerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 250
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$14;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/DebugInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 4

    .line 253
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$14;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getCurrentXp()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$14;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getTargetXp()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "City points: %d / %d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.AnonymousClass15 (info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder$15)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$15;
.super Linfo/flowersoft/theotown/ui/DebugInfo;
.source "DebugLayerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 257
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$15;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/DebugInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 3

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lua postponed functions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->countPostponedTasks()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.AnonymousClass16 (info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder$16)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$16;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "DebugLayerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 277
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$16;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public onUpdate()V
    .registers 1

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.AnonymousClass17 (info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder$17)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$17;
.super Linfo/flowersoft/theotown/ui/DebugInfo;
.source "DebugLayerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->buildMethodClusterInfo()Linfo/flowersoft/theotown/ui/DebugInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public lastMS:J

.field public lastResult:Ljava/lang/String;

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 289
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$17;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/DebugInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Ljava/lang/String;
    .registers 14

    .line 302
    invoke-static {}, Linfo/flowersoft/theotown/scripting/MethodCluster;->getActiveClusters()Ljava/util/ArrayList;

    move-result-object v0

    .line 303
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 305
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/scripting/MethodCluster;

    .line 306
    :goto_1a
    invoke-virtual {v2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->countMethods()I

    move-result v4

    if-ge v3, v4, :cond_d

    .line 307
    new-instance v4, Lio/blueflower/stapel2d/util/Tuple;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 311
    :cond_2f
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$17$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$17$1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$17;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lua function stats for 1s: active: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", calls: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Linfo/flowersoft/theotown/scripting/MethodCluster;->getAndResetCallCounter()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    move v5, v4

    .line 324
    :goto_67
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_e0

    const/4 v6, 0x5

    if-ge v5, v6, :cond_e0

    .line 325
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/blueflower/stapel2d/util/Tuple;

    .line 326
    invoke-virtual {v6}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/scripting/MethodCluster;

    .line 327
    invoke-virtual {v6}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 328
    invoke-virtual {v7, v6}, Linfo/flowersoft/theotown/scripting/MethodCluster;->getMethodScript(I)Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v8

    .line 329
    invoke-virtual {v8}, Linfo/flowersoft/theotown/scripting/Script;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v8

    .line 331
    invoke-virtual {v8}, Linfo/flowersoft/theotown/draft/Draft;->isSuperPrivileged()Z

    move-result v9

    if-nez v9, :cond_dd

    .line 332
    invoke-virtual {v7, v6}, Linfo/flowersoft/theotown/scripting/MethodCluster;->getMethodExecutionTime(I)I

    move-result v9

    int-to-long v9, v9

    .line 333
    invoke-virtual {v7, v6}, Linfo/flowersoft/theotown/scripting/MethodCluster;->getMethodExecutionCounter(I)I

    move-result v6

    long-to-float v11, v9

    const/4 v12, 0x1

    .line 334
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    .line 335
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v8, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/scripting/MethodCluster;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 336
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v7, v8, v9, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%s ~%.1fms[%d/%d]"

    invoke-static {v7, v6}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    :cond_dd
    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    .line 341
    :cond_e0
    :goto_e0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_102

    .line 342
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/util/Tuple;

    .line 343
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/scripting/MethodCluster;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->clearExecutionStats(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e0

    .line 345
    :cond_102
    invoke-static {}, Linfo/flowersoft/theotown/scripting/MethodCluster;->clearActiveClusters()V

    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 5

    .line 294
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$17;->lastResult:Ljava/lang/String;

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$17;->lastMS:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1d

    .line 295
    :cond_11
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$17;->lastMS:J

    .line 296
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$17;->build()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$17;->lastResult:Ljava/lang/String;

    .line 298
    :cond_1d
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$17;->lastResult:Ljava/lang/String;

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.AnonymousClass17.AnonymousClass1 (info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder$17$1)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$17$1;
.super Ljava/lang/Object;
.source "DebugLayerBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$17;->build()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/blueflower/stapel2d/util/Tuple<",
        "Linfo/flowersoft/theotown/scripting/MethodCluster;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$17;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$17;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 311
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$17$1;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lio/blueflower/stapel2d/util/Tuple;Lio/blueflower/stapel2d/util/Tuple;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Tuple<",
            "Linfo/flowersoft/theotown/scripting/MethodCluster;",
            "Ljava/lang/Integer;",
            ">;",
            "Lio/blueflower/stapel2d/util/Tuple<",
            "Linfo/flowersoft/theotown/scripting/MethodCluster;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 314
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/scripting/MethodCluster;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/MethodCluster;->getMethodExecutionTime(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/scripting/MethodCluster;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/scripting/MethodCluster;->getMethodExecutionCounter(I)I

    move-result p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 315
    invoke-virtual {p2}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/scripting/MethodCluster;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->getMethodExecutionTime(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/scripting/MethodCluster;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v2, p2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->getMethodExecutionCounter(I)I

    move-result p2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 316
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 311
    check-cast p1, Lio/blueflower/stapel2d/util/Tuple;

    check-cast p2, Lio/blueflower/stapel2d/util/Tuple;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$17$1;->compare(Lio/blueflower/stapel2d/util/Tuple;Lio/blueflower/stapel2d/util/Tuple;)I

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.AnonymousClass2 (info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder$2)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$2;
.super Linfo/flowersoft/theotown/ui/DebugInfo;
.source "DebugLayerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 131
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/DebugInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 4

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Orig. res. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", virt. res. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    .line 135
    invoke-static {v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.AnonymousClass3 (info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder$3)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$3;
.super Linfo/flowersoft/theotown/ui/DebugInfo;
.source "DebugLayerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 139
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/DebugInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 4

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getDrawCounter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " draw calls, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    .line 143
    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getBatchCounter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " batches, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    .line 144
    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->access$500(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getFPS()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " FPS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->energySaving:Z

    if-eqz v1, :cond_7d

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->access$600(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getFPS()F

    move-result v1

    const/high16 v2, 0x42200000    # 40.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (energy saving)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7d
    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.AnonymousClass4 (info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder$4)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$4;
.super Linfo/flowersoft/theotown/ui/DebugInfo;
.source "DebugLayerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public onAverage:F

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 150
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/DebugInfo;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 151
    iput p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$4;->onAverage:F

    return-void
.end method


# virtual methods
.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 4

    .line 166
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->access$900(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getDelimitedMS()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_13

    .line 167
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0

    :cond_13
    const/4 v1, 0x4

    if-le v0, v1, :cond_1f

    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-direct {v0, v2, v2, v1}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    return-object v0

    :cond_1f
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 6

    .line 154
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->access$700(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getDelimitedMS()I

    move-result v0

    .line 155
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->access$800(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getLastRenderTime()I

    move-result v1

    .line 156
    iget v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$4;->onAverage:F

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_23

    int-to-float v2, v1

    .line 157
    iput v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$4;->onAverage:F

    goto :goto_2f

    :cond_23
    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    const v3, 0x3dcccccd    # 0.1f

    int-to-float v4, v1

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    .line 159
    iput v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$4;->onAverage:F

    .line 161
    :goto_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "ms, render: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "ms (avg: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$4;->onAverage:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "ms)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.AnonymousClass5 (info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder$5)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$5;
.super Linfo/flowersoft/theotown/ui/DebugInfo;
.source "DebugLayerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

.field public final synthetic val$demand:Linfo/flowersoft/theotown/city/components/Demand;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;Linfo/flowersoft/theotown/city/components/Demand;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 172
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$5;->val$demand:Linfo/flowersoft/theotown/city/components/Demand;

    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/DebugInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 5

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "R: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$5;->val$demand:Linfo/flowersoft/theotown/city/components/Demand;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/components/Demand;->getResidential(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$5;->val$demand:Linfo/flowersoft/theotown/city/components/Demand;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/components/Demand;->getResidential(I)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$5;->val$demand:Linfo/flowersoft/theotown/city/components/Demand;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/components/Demand;->getResidential(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.AnonymousClass6 (info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder$6)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$6;
.super Linfo/flowersoft/theotown/ui/DebugInfo;
.source "DebugLayerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

.field public final synthetic val$demand:Linfo/flowersoft/theotown/city/components/Demand;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;Linfo/flowersoft/theotown/city/components/Demand;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 179
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$6;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$6;->val$demand:Linfo/flowersoft/theotown/city/components/Demand;

    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/DebugInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 5

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$6;->val$demand:Linfo/flowersoft/theotown/city/components/Demand;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/components/Demand;->getCommercial(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$6;->val$demand:Linfo/flowersoft/theotown/city/components/Demand;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/components/Demand;->getCommercial(I)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$6;->val$demand:Linfo/flowersoft/theotown/city/components/Demand;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/components/Demand;->getCommercial(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.AnonymousClass7 (info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder$7)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$7;
.super Linfo/flowersoft/theotown/ui/DebugInfo;
.source "DebugLayerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

.field public final synthetic val$demand:Linfo/flowersoft/theotown/city/components/Demand;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;Linfo/flowersoft/theotown/city/components/Demand;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 186
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$7;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$7;->val$demand:Linfo/flowersoft/theotown/city/components/Demand;

    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/DebugInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 5

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "I: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$7;->val$demand:Linfo/flowersoft/theotown/city/components/Demand;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/components/Demand;->getIndustrial(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$7;->val$demand:Linfo/flowersoft/theotown/city/components/Demand;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/components/Demand;->getIndustrial(I)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$7;->val$demand:Linfo/flowersoft/theotown/city/components/Demand;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/components/Demand;->getIndustrial(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.AnonymousClass8 (info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder$8)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$8;
.super Linfo/flowersoft/theotown/ui/DebugInfo;
.source "DebugLayerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

.field public final synthetic val$traffic:Linfo/flowersoft/theotown/components/DefaultTraffic;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;Linfo/flowersoft/theotown/components/DefaultTraffic;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 193
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$8;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$8;->val$traffic:Linfo/flowersoft/theotown/components/DefaultTraffic;

    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/DebugInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 3

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cars: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$8;->val$traffic:Linfo/flowersoft/theotown/components/DefaultTraffic;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultTraffic;->countCars()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Bus stops: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$8;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    .line 197
    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getBusStops()Linfo/flowersoft/theotown/city/BusStopList;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/BusStopList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder.AnonymousClass9 (info.flowersoft.theotown.stages.gameuibuilder.DebugLayerBuilder$9)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$9;
.super Linfo/flowersoft/theotown/ui/DebugInfo;
.source "DebugLayerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 201
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$9;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/DebugInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 5

    .line 204
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder$9;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/People;

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "People: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/People;->getPeople()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 206
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/components/People;->getPeople(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    .line 207
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/city/components/People;->getPeople(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    .line 208
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/components/People;->getPeople(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

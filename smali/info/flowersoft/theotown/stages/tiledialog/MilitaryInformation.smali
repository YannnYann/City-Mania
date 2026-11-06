###### Class info.flowersoft.theotown.stages.tiledialog.MilitaryInformation (info.flowersoft.theotown.stages.tiledialog.MilitaryInformation)
.class public Linfo/flowersoft/theotown/stages/tiledialog/MilitaryInformation;
.super Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;
.source "MilitaryInformation.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle()Z
    .registers 3

    .line 23
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v0, :cond_10

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-string v1, "$mltry_hq00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/ui/Dialog;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;)V"
        }
    .end annotation

    .line 33
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_48

    .line 35
    :cond_9
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    const/4 p3, 0x7

    invoke-virtual {p2, p3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/DefaultTraffic;

    .line 36
    const-class p3, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    invoke-virtual {p2, p3}, Linfo/flowersoft/theotown/components/DefaultTraffic;->getTrafficHandler(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/traffic/TrafficHandler;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    .line 37
    const-class p3, Linfo/flowersoft/theotown/components/traffic/carcontroller/TankController;

    invoke-virtual {p2, p3}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->getCarController(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;

    move-result-object p2

    move-object v9, p2

    check-cast v9, Linfo/flowersoft/theotown/components/traffic/carcontroller/TankController;

    if-eqz v9, :cond_48

    .line 39
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/MilitaryInformation$1;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_GENERAL:I

    iget-object p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p3, 0xd95

    .line 40
    invoke-interface {p2, p3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object p2

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    .line 42
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/stages/tiledialog/MilitaryInformation$1;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/MilitaryInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/components/traffic/carcontroller/TankController;)V

    :cond_48
    :goto_48
    return-void
.end method

.method public isMutualExclusive()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.MilitaryInformation.AnonymousClass1 (info.flowersoft.theotown.stages.tiledialog.MilitaryInformation$1)
.class public Linfo/flowersoft/theotown/stages/tiledialog/MilitaryInformation$1;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "MilitaryInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/MilitaryInformation;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/MilitaryInformation;

.field public final synthetic val$tankController:Linfo/flowersoft/theotown/components/traffic/carcontroller/TankController;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/MilitaryInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/components/traffic/carcontroller/TankController;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 42
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/MilitaryInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/MilitaryInformation;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/tiledialog/MilitaryInformation$1;->val$tankController:Linfo/flowersoft/theotown/components/traffic/carcontroller/TankController;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isPressed()Z
    .registers 2

    .line 45
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/MilitaryInformation$1;->val$tankController:Linfo/flowersoft/theotown/components/traffic/carcontroller/TankController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/TankController;->onPatrol()Z

    move-result v0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/MilitaryInformation$1;->val$tankController:Linfo/flowersoft/theotown/components/traffic/carcontroller/TankController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/TankController;->onPatrol()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/TankController;->setPatrol(Z)V

    return-void
.end method

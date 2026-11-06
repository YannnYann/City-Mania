###### Class info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation (info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation)
.class public Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;
.super Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;
.source "WeatherMachineInformation.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;)V
    .registers 1

    .line 25
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;->unlockAchievement()V

    return-void
.end method


# virtual methods
.method public canHandle()Z
    .registers 3

    .line 29
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v0, :cond_18

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-string v1, "$weather_machine00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 18
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

    .line 45
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 47
    :cond_9
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Linfo/flowersoft/theotown/components/DefaultWeather;

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getUpgrades()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 50
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$1;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_WEATHER_FOG:I

    .line 51
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    .line 52
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v9, p1

    invoke-direct/range {v0 .. v10}, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$1;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Dialog;Linfo/flowersoft/theotown/components/DefaultWeather;)V

    .line 69
    :cond_3e
    new-instance v9, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v9}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 74
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_WEATHER_SUNNY:I

    invoke-virtual {v9, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 75
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x6bd

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v3, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$2;

    invoke-direct {v3, p0, v10}, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$2;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;Linfo/flowersoft/theotown/components/DefaultWeather;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v3, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$3;

    invoke-direct {v3, p0, v10}, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$3;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;Linfo/flowersoft/theotown/components/DefaultWeather;)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_WEATHER_RAINY:I

    invoke-virtual {v9, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 93
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x469

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v3, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$4;

    invoke-direct {v3, p0, v10}, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$4;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;Linfo/flowersoft/theotown/components/DefaultWeather;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v3, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$5;

    invoke-direct {v3, p0, v10}, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$5;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;Linfo/flowersoft/theotown/components/DefaultWeather;)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_WEATHER_LIGHTING:I

    invoke-virtual {v9, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 111
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x724

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v3, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$6;

    invoke-direct {v3, p0, v10}, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$6;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;Linfo/flowersoft/theotown/components/DefaultWeather;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v3, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$7;

    invoke-direct {v3, p0, v10}, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$7;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;Linfo/flowersoft/theotown/components/DefaultWeather;)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAY:I

    invoke-virtual {v9, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 129
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xd16

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v3, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$8;

    invoke-direct {v3, p0, v10}, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$8;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;Linfo/flowersoft/theotown/components/DefaultWeather;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v3, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$9;

    invoke-direct {v3, p0, v10}, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$9;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;Linfo/flowersoft/theotown/components/DefaultWeather;)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 147
    :goto_d3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_ef

    .line 148
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v4}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_ec

    goto :goto_ef

    :cond_ec
    add-int/lit8 v3, v3, 0x1

    goto :goto_d3

    .line 150
    :cond_ef
    :goto_ef
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 152
    new-instance v2, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10;

    move-object v3, v2

    invoke-virtual {v9, v13}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v5

    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v5

    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    move-object v10, v0

    move-object v0, v3

    move-object v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v11, p1

    invoke-direct/range {v0 .. v13}, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/IntList;Ljava/util/List;Linfo/flowersoft/theotown/ui/Dialog;Ljava/util/List;I)V

    return-void
.end method

.method public isMutualExclusive()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final unlockAchievement()V
    .registers 3

    .line 38
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->canAchieve()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 39
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string v1, "weather_change"

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    :cond_f
    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation.AnonymousClass1 (info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation$1)
.class public Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$1;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "WeatherMachineInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Dialog;Linfo/flowersoft/theotown/components/DefaultWeather;)V
    .registers 11
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
            0x1010,
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
            null,
            null
        }
    .end annotation

    .line 52
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$1;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    iput-object p10, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$1;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isPressed()Z
    .registers 2

    .line 64
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$1;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultWeather;->isFogEnabled()Z

    move-result v0

    return v0
.end method

.method public onClick()V
    .registers 4

    .line 55
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 56
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$1;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 57
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$1;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultWeather;->isFogEnabled()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultWeather;->setFogEnabled(Z)V

    .line 58
    sput-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->weather:Z

    .line 59
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;->access$000(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation.AnonymousClass10 (info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation$10)
.class public Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "WeatherMachineInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

.field public final synthetic val$actions:Ljava/util/List;

.field public final synthetic val$activeIndex:I

.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic val$icons:Lio/blueflower/stapel2d/util/IntList;

.field public final synthetic val$labels:Ljava/util/List;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/IntList;Ljava/util/List;Linfo/flowersoft/theotown/ui/Dialog;Ljava/util/List;I)V
    .registers 14
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
            0x1010,
            0x1010,
            0x1010,
            0x1010,
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
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 152
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10;->val$icons:Lio/blueflower/stapel2d/util/IntList;

    iput-object p10, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10;->val$labels:Ljava/util/List;

    iput-object p11, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    iput-object p12, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10;->val$actions:Ljava/util/List;

    iput p13, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10;->val$activeIndex:I

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 8

    .line 155
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 156
    new-instance v0, Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/ui/PopupBuilder;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    const/4 v1, 0x0

    move v2, v1

    .line 157
    :goto_a
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10;->val$icons:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 159
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10;->val$icons:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10;->val$labels:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10$1;

    invoke-direct {v5, p0, v2}, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10$1;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10;I)V

    iget v6, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10;->val$activeIndex:I

    if-eq v2, v6, :cond_2b

    const/4 v6, 0x1

    goto :goto_2c

    :cond_2b
    move v6, v1

    :goto_2c
    invoke-virtual {v0, v3, v4, v5, v6}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;Z)Linfo/flowersoft/theotown/ui/PopupBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 167
    :cond_32
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->build()Lio/blueflower/stapel2d/gui/Panel;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation.AnonymousClass10.AnonymousClass1 (info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation$10$1)
.class public Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10$1;
.super Ljava/lang/Object;
.source "WeatherMachineInformation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10;

.field public final synthetic val$i0:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10;I)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10$1;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10;

    iput p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10$1;->val$i0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 162
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10$1;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 163
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10$1;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10;->val$actions:Ljava/util/List;

    iget v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$10$1;->val$i0:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation.AnonymousClass2 (info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation$2)
.class public Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$2;
.super Ljava/lang/Object;
.source "WeatherMachineInformation.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

.field public final synthetic val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;Linfo/flowersoft/theotown/components/DefaultWeather;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$2;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 3

    .line 79
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$2;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultWeather;->isTimeLocked()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$2;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultWeather;->getTime()I

    move-result v0

    const v1, 0x46e45

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 76
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$2;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation.AnonymousClass3 (info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation$3)
.class public Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$3;
.super Ljava/lang/Object;
.source "WeatherMachineInformation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

.field public final synthetic val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;Linfo/flowersoft/theotown/components/DefaultWeather;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$3;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$3;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 85
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$3;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    const v1, 0x46e45

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultWeather;->setTime(I)V

    .line 86
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$3;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultWeather;->setTimeLocked(Z)V

    .line 87
    sput-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->weather:Z

    .line 88
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$3;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;->access$000(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation.AnonymousClass4 (info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation$4)
.class public Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$4;
.super Ljava/lang/Object;
.source "WeatherMachineInformation.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

.field public final synthetic val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;Linfo/flowersoft/theotown/components/DefaultWeather;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$4;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$4;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 3

    .line 97
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$4;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultWeather;->isTimeLocked()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$4;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultWeather;->getTime()I

    move-result v0

    const v1, 0xcf72f

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 94
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$4;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation.AnonymousClass5 (info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation$5)
.class public Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$5;
.super Ljava/lang/Object;
.source "WeatherMachineInformation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

.field public final synthetic val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;Linfo/flowersoft/theotown/components/DefaultWeather;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$5;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$5;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 103
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$5;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    const v1, 0xcf72f

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultWeather;->setTime(I)V

    .line 104
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$5;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultWeather;->setTimeLocked(Z)V

    .line 105
    sput-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->weather:Z

    .line 106
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$5;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;->access$000(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation.AnonymousClass6 (info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation$6)
.class public Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$6;
.super Ljava/lang/Object;
.source "WeatherMachineInformation.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

.field public final synthetic val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;Linfo/flowersoft/theotown/components/DefaultWeather;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$6;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$6;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 3

    .line 115
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$6;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultWeather;->isTimeLocked()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$6;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultWeather;->getTime()I

    move-result v0

    const v1, 0x98069

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 112
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$6;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation.AnonymousClass7 (info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation$7)
.class public Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$7;
.super Ljava/lang/Object;
.source "WeatherMachineInformation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

.field public final synthetic val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;Linfo/flowersoft/theotown/components/DefaultWeather;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$7;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$7;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 121
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$7;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    const v1, 0x98069

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultWeather;->setTime(I)V

    .line 122
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$7;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultWeather;->setTimeLocked(Z)V

    .line 123
    sput-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->weather:Z

    .line 124
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$7;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;->access$000(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation.AnonymousClass8 (info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation$8)
.class public Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$8;
.super Ljava/lang/Object;
.source "WeatherMachineInformation.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

.field public final synthetic val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;Linfo/flowersoft/theotown/components/DefaultWeather;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$8;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$8;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 2

    .line 133
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$8;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultWeather;->isTimeLocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 130
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$8;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation.AnonymousClass9 (info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation$9)
.class public Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$9;
.super Ljava/lang/Object;
.source "WeatherMachineInformation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

.field public final synthetic val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;Linfo/flowersoft/theotown/components/DefaultWeather;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$9;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$9;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 139
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$9;->val$weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultWeather;->setTimeLocked(Z)V

    const/4 v0, 0x1

    .line 140
    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->weather:Z

    .line 141
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation$9;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;->access$000(Linfo/flowersoft/theotown/stages/tiledialog/WeatherMachineInformation;)V

    return-void
.end method

###### Class info.flowersoft.theotown.city.LoadCityGuard (info.flowersoft.theotown.city.LoadCityGuard)
.class public final Linfo/flowersoft/theotown/city/LoadCityGuard;
.super Ljava/lang/Object;
.source "LoadCityGuard.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;
    }
.end annotation


# instance fields
.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

.field public final gui:Lio/blueflower/stapel2d/gui/Master;


# direct methods
.method public static synthetic $r8$lambda$8TiIGxJwJ6ZJUeTLS0fb_R5S330(Linfo/flowersoft/theotown/city/LoadCityGuard;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Linfo/flowersoft/theotown/city/LoadCityGuard;->loadCityCheckForMissingPlugins$lambda$0(Linfo/flowersoft/theotown/city/LoadCityGuard;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BNg7CXrGfJMZ3nkmynNnZm5AmLY()V
    .registers 0

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/city/LoadCityGuard;->loadCityProtected$lambda$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$k8Dkyn_yMSI9Ye5sv8CdanvS5dM(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;Linfo/flowersoft/theotown/city/LoadCityGuard;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Linfo/flowersoft/theotown/city/LoadCityGuard;->loadCity$lambda$0(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;Linfo/flowersoft/theotown/city/LoadCityGuard;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lc-z6nYPAD3aIq4sK8IrKuvDvSw(Linfo/flowersoft/theotown/city/LoadCityGuard;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Linfo/flowersoft/theotown/city/LoadCityGuard;->loadCityProtected$lambda$1(Linfo/flowersoft/theotown/city/LoadCityGuard;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 5

    const-string v0, "gui"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gameStack"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Linfo/flowersoft/theotown/city/LoadCityGuard;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 30
    iput-object p2, p0, Linfo/flowersoft/theotown/city/LoadCityGuard;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 31
    iput-object p3, p0, Linfo/flowersoft/theotown/city/LoadCityGuard;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    return-void
.end method

.method public static final loadCity$lambda$0(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;Linfo/flowersoft/theotown/city/LoadCityGuard;)V
    .registers 10

    .line 132
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 133
    invoke-interface {p1, p0}, Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;->onLoadCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    .line 134
    iget-object p1, p2, Linfo/flowersoft/theotown/city/LoadCityGuard;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    new-instance v0, Linfo/flowersoft/theotown/stages/CityStage;

    iget-object v1, p2, Linfo/flowersoft/theotown/city/LoadCityGuard;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/CityStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/cityfile/RegionInformation;Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;)V

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void

    :cond_1b
    move-object v2, p0

    .line 136
    invoke-interface {p1, v2}, Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;->onError(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    return-void
.end method

.method public static final loadCityCheckForMissingPlugins$lambda$0(Linfo/flowersoft/theotown/city/LoadCityGuard;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V
    .registers 3

    .line 119
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/LoadCityGuard;->loadCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V

    return-void
.end method

.method public static final loadCityProtected$lambda$0()V
    .registers 0

    .line 0
    return-void
.end method

.method public static final loadCityProtected$lambda$1(Linfo/flowersoft/theotown/city/LoadCityGuard;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V
    .registers 3

    .line 79
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/LoadCityGuard;->loadCityCheckForMissingPlugins(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V

    return-void
.end method


# virtual methods
.method public final getContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;
    .registers 2

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/city/LoadCityGuard;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-object v0
.end method

.method public final getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;
    .registers 2

    .line 31
    iget-object v0, p0, Linfo/flowersoft/theotown/city/LoadCityGuard;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    return-object v0
.end method

.method public final getGui()Lio/blueflower/stapel2d/gui/Master;
    .registers 2

    .line 29
    iget-object v0, p0, Linfo/flowersoft/theotown/city/LoadCityGuard;->gui:Lio/blueflower/stapel2d/gui/Master;

    return-object v0
.end method

.method public final loadCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V
    .registers 6

    .line 125
    new-instance v0, Linfo/flowersoft/theotown/city/LoadCityGuard$loadCity$worker$1;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/city/LoadCityGuard$loadCity$worker$1;-><init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    .line 131
    new-instance v1, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2, p0}, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;Linfo/flowersoft/theotown/city/LoadCityGuard;)V

    .line 140
    new-instance p2, Linfo/flowersoft/theotown/stages/LoadWaitingStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/LoadCityGuard;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {p2, v2, v0, v1, p1}, Linfo/flowersoft/theotown/stages/LoadWaitingStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/Thread;Ljava/lang/Runnable;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    .line 141
    iget-object p1, p0, Linfo/flowersoft/theotown/city/LoadCityGuard;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public final loadCityCheckForMissingPlugins(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V
    .registers 9

    .line 93
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->isScenario()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 96
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getScenarioRequiredPlugins()Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v1

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getMissingPlugins(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 101
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/LoadCityGuard;->loadCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V

    return-void

    .line 103
    :cond_20
    new-instance p1, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;

    iget-object p2, p0, Linfo/flowersoft/theotown/city/LoadCityGuard;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/LoadCityGuard;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/LoadCityGuard;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    invoke-direct {p1, p2, v1, v2}, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    .line 104
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p1, v0, p2, v1}, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;->showMissingPluginsDialog(Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    return-void

    .line 108
    :cond_34
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getUsedPlugins()Ljava/util/List;

    move-result-object v1

    .line 109
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v2

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getMissingPlugins(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 110
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getUsedLocalPlugins()Ljava/util/List;

    move-result-object v0

    .line 111
    invoke-static {}, Linfo/flowersoft/theotown/store/PluginUnloader;->getInstance()Linfo/flowersoft/theotown/store/PluginUnloader;

    move-result-object v2

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/store/PluginUnloader;->getMissingPlugins(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 113
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 114
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/LoadCityGuard;->loadCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V

    return-void

    .line 116
    :cond_5c
    new-instance v2, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;

    iget-object v3, p0, Linfo/flowersoft/theotown/city/LoadCityGuard;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v4, p0, Linfo/flowersoft/theotown/city/LoadCityGuard;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v5, p0, Linfo/flowersoft/theotown/city/LoadCityGuard;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    invoke-direct {v2, v3, v4, v5}, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    .line 119
    new-instance v3, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, p2}, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/city/LoadCityGuard;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V

    .line 117
    invoke-virtual {v2, v1, v0, v3}, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;->showMissingPluginsDialog(Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final loadCityProtected(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V
    .registers 11

    const-string v0, "keeper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v0

    .line 43
    iget-object v1, p0, Linfo/flowersoft/theotown/city/LoadCityGuard;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v1

    .line 45
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->isScenario()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_75

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getScenarioMinVersion()I

    move-result v2

    if-lez v2, :cond_75

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getScenarioMinVersion()I

    move-result v2

    sget v5, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    if-le v2, v5, :cond_75

    .line 47
    new-instance p1, Linfo/flowersoft/theotown/ui/Dialog;

    .line 48
    sget p2, Linfo/flowersoft/theotown/resources/Resources;->FRAME_ZONE_OVERLOADED:I

    const/16 v2, 0x67

    .line 49
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x5b6

    .line 51
    invoke-interface {v1, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    .line 52
    sget-object v6, Linfo/flowersoft/theotown/util/VersionFormatter;->INSTANCE:Linfo/flowersoft/theotown/util/VersionFormatter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getScenarioMinVersion()I

    move-result v0

    invoke-virtual {v6, v0}, Linfo/flowersoft/theotown/util/VersionFormatter;->format(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    sget v7, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/util/VersionFormatter;->format(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 50
    invoke-static {v5, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v5, p0, Linfo/flowersoft/theotown/city/LoadCityGuard;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 47
    invoke-direct {p1, p2, v2, v0, v5}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 58
    sget p2, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 v0, 0x76b

    .line 59
    invoke-interface {v1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v1, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda0;-><init>()V

    .line 57
    invoke-virtual {p1, p2, v0, v3, v1}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p2

    .line 62
    invoke-virtual {p2, v4}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p2

    const/16 v0, 0x42

    .line 63
    invoke-virtual {p2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 64
    invoke-virtual {p1, v4}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void

    .line 66
    :cond_75
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getVersion()I

    move-result v0

    const/16 v2, 0xfb

    if-ge v0, v2, :cond_b5

    .line 68
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    .line 69
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->FRAME_ZONE_OVERLOADED:I

    const/16 v5, 0xf3

    .line 70
    invoke-interface {v1, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x4e5

    .line 71
    invoke-interface {v1, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Linfo/flowersoft/theotown/city/LoadCityGuard;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 68
    invoke-direct {v0, v2, v5, v6, v7}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 75
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 v5, 0x5a8

    .line 76
    invoke-interface {v1, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    .line 78
    new-instance v6, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, p1, p2}, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/city/LoadCityGuard;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V

    .line 74
    invoke-virtual {v0, v2, v5, v3, v6}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    .line 80
    invoke-virtual {p1, v4}, Lio/blueflower/stapel2d/gui/Button;->setMarked(Z)V

    .line 83
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    const/16 p2, 0xa51

    .line 84
    invoke-interface {v1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p2

    .line 82
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 86
    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void

    .line 88
    :cond_b5
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/LoadCityGuard;->loadCityCheckForMissingPlugins(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V

    return-void
.end method

###### Class info.flowersoft.theotown.city.LoadCityGuard.Handler (info.flowersoft.theotown.city.LoadCityGuard$Handler)
.class public interface abstract Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;
.super Ljava/lang/Object;
.source "LoadCityGuard.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/LoadCityGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Handler"
.end annotation


# virtual methods
.method public abstract onError(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
.end method

.method public abstract onLoadCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
.end method

###### Class info.flowersoft.theotown.city.LoadCityGuard$$ExternalSyntheticLambda0 (info.flowersoft.theotown.city.LoadCityGuard$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/city/LoadCityGuard;->$r8$lambda$BNg7CXrGfJMZ3nkmynNnZm5AmLY()V

    return-void
.end method

###### Class info.flowersoft.theotown.city.LoadCityGuard$$ExternalSyntheticLambda1 (info.flowersoft.theotown.city.LoadCityGuard$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/city/LoadCityGuard;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public final synthetic f$2:Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/city/LoadCityGuard;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/city/LoadCityGuard;

    iput-object p2, p0, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iput-object p3, p0, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda1;->f$2:Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/city/LoadCityGuard;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda1;->f$2:Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/city/LoadCityGuard;->$r8$lambda$lc-z6nYPAD3aIq4sK8IrKuvDvSw(Linfo/flowersoft/theotown/city/LoadCityGuard;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V

    return-void
.end method

###### Class info.flowersoft.theotown.city.LoadCityGuard$$ExternalSyntheticLambda2 (info.flowersoft.theotown.city.LoadCityGuard$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/city/LoadCityGuard;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public final synthetic f$2:Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/city/LoadCityGuard;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/city/LoadCityGuard;

    iput-object p2, p0, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda2;->f$1:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iput-object p3, p0, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda2;->f$2:Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/city/LoadCityGuard;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda2;->f$1:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda2;->f$2:Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/city/LoadCityGuard;->$r8$lambda$8TiIGxJwJ6ZJUeTLS0fb_R5S330(Linfo/flowersoft/theotown/city/LoadCityGuard;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V

    return-void
.end method

###### Class info.flowersoft.theotown.city.LoadCityGuard$$ExternalSyntheticLambda3 (info.flowersoft.theotown.city.LoadCityGuard$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public final synthetic f$1:Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;

.field public final synthetic f$2:Linfo/flowersoft/theotown/city/LoadCityGuard;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;Linfo/flowersoft/theotown/city/LoadCityGuard;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iput-object p2, p0, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda3;->f$1:Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;

    iput-object p3, p0, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda3;->f$2:Linfo/flowersoft/theotown/city/LoadCityGuard;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda3;->f$1:Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/LoadCityGuard$$ExternalSyntheticLambda3;->f$2:Linfo/flowersoft/theotown/city/LoadCityGuard;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/city/LoadCityGuard;->$r8$lambda$k8Dkyn_yMSI9Ye5sv8CdanvS5dM(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;Linfo/flowersoft/theotown/city/LoadCityGuard;)V

    return-void
.end method

###### Class info.flowersoft.theotown.city.LoadCityGuard$loadCity$worker$1 (info.flowersoft.theotown.city.LoadCityGuard$loadCity$worker$1)
.class public final Linfo/flowersoft/theotown/city/LoadCityGuard$loadCity$worker$1;
.super Ljava/lang/Thread;
.source "LoadCityGuard.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/city/LoadCityGuard;->loadCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $keeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/city/LoadCityGuard$loadCity$worker$1;->$keeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 125
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 127
    iget-object v0, p0, Linfo/flowersoft/theotown/city/LoadCityGuard$loadCity$worker$1;->$keeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->load()V

    return-void
.end method

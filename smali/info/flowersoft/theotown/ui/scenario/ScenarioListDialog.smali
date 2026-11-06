###### Class info.flowersoft.theotown.ui.scenario.ScenarioListDialog (info.flowersoft.theotown.ui.scenario.ScenarioListDialog)
.class public final Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;
.super Linfo/flowersoft/theotown/ui/Dialog;
.source "ScenarioListDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScenarioListDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScenarioListDialog.kt\ninfo/flowersoft/theotown/ui/scenario/ScenarioListDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,343:1\n1180#2,2:344\n1459#2,2:346\n1474#2,4:348\n*S KotlinDebug\n*F\n+ 1 ScenarioListDialog.kt\ninfo/flowersoft/theotown/ui/scenario/ScenarioListDialog\n*L\n70#1:344,2\n72#1:346,2\n72#1:348,4\n*E\n"
.end annotation


# static fields
.field public static final Companion:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$Companion;


# instance fields
.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

.field public final gui:Lio/blueflower/stapel2d/gui/Master;


# direct methods
.method public static $r8$lambda$AXsh9YA7ISDwgjs5QnbrcTw7S8g(Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;Linfo/flowersoft/theotown/util/DraftLocalizer;Ljava/util/Map;)V
    .registers 5

    .line 115
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->getSelectedScenario(Lio/blueflower/stapel2d/gui/ListBox;)Linfo/flowersoft/theotown/draft/ScenarioDraft;

    move-result-object v0

    .line 117
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->getSelectedScenario(Lio/blueflower/stapel2d/gui/ListBox;)Linfo/flowersoft/theotown/draft/ScenarioDraft;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 114
    invoke-virtual {p0, v0, p2, p1}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->showResetDialog(Linfo/flowersoft/theotown/draft/ScenarioDraft;Linfo/flowersoft/theotown/util/DraftLocalizer;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    return-void
.end method

.method public static $r8$lambda$Pm_bK3Jclw3s-V5oileix92nWoM()V
    .registers 0

    .line 0
    return-void
.end method

.method public static $r8$lambda$WV-pil46dfqNVO20Bd4VOkqh9Fo(Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;)V
    .registers 5

    .line 128
    sget-object v0, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog;->Companion:Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$Companion;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->getSelectedScenario(Lio/blueflower/stapel2d/gui/ListBox;)Linfo/flowersoft/theotown/draft/ScenarioDraft;

    move-result-object p1

    iget-object p0, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->gui:Lio/blueflower/stapel2d/gui/Master;

    new-instance v2, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1, p1, p0, v2}, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$Companion;->forDraft(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/draft/ScenarioDraft;Lio/blueflower/stapel2d/gui/Master;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog;

    move-result-object p0

    const/4 p1, 0x1

    .line 129
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$YIHAPfxKSn8OvQw8MQ9HDpawlxc(Ljava/util/Map;Linfo/flowersoft/theotown/draft/ScenarioDraft;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->_init_$lambda$2(Ljava/util/Map;Linfo/flowersoft/theotown/draft/ScenarioDraft;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bb-aLi0KpiOUyhPsgCRyCWXo9CA(Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;Ljava/util/Map;Linfo/flowersoft/theotown/util/DraftLocalizer;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)Lkotlin/Unit;
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->_init_$lambda$3(Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;Ljava/util/Map;Linfo/flowersoft/theotown/util/DraftLocalizer;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mvz_YknXcgkuznARQB6QJL1r7B0(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->showResetDialog$lambda$1(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ufZ6soXiYC442NZyLMZyn2Ew4AU(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->showResetDialog$lambda$0(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;)V

    return-void
.end method

.method public static $r8$lambda$yFBLzePzVaKAMVm-iIidJ7KcAkk(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;Linfo/flowersoft/theotown/draft/ScenarioDraft;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 6

    if-nez p0, :cond_16

    .line 144
    sget-object p0, Linfo/flowersoft/theotown/ScenarioIsNewlyStarted;->INSTANCE:Linfo/flowersoft/theotown/ScenarioIsNewlyStarted;

    iget-object v0, p2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-string v1, "id"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/ScenarioIsNewlyStarted;->setNewlyStarted(Ljava/lang/String;Z)V

    .line 145
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p3, p2}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->copyCity(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/draft/ScenarioDraft;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object p0

    .line 149
    :cond_16
    invoke-virtual {p1, p0}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->loadCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->Companion:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$Companion;

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 16

    move-object v8, p3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gui"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gameStack"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_SCENARIO:I

    .line 39
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    const/16 v2, 0x5d3

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x64

    sget-object v3, Linfo/flowersoft/theotown/resources/Drafts;->SCENARIOS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x28

    add-int/lit8 v3, v3, 0x50

    const/16 v4, 0xa0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 33
    const-string v3, ""

    const/16 v4, 0x12c

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 34
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 35
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 36
    iput-object v8, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    .line 50
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    .line 51
    invoke-virtual {p0, p2, p1}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->addInfoButton(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 53
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 55
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    new-instance v2, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;

    invoke-direct {v2, v6, v1}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/blueflower/stapel2d/gui/Panel;)V

    .line 61
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    .line 64
    invoke-static {p1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getScenario(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    move-result-object v5

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v5, v1, v1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->loadMaps(Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    .line 69
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->SCENARIOS:Ljava/util/List;

    const-string v3, "SCENARIOS"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 1180
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_7e

    new-instance v3, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$special$$inlined$sortBy$1;

    invoke-direct {v3}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$special$$inlined$sortBy$1;-><init>()V

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 72
    :cond_7e
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    .line 1459
    new-instance v4, Ljava/util/LinkedHashMap;

    const/16 v7, 0xa

    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-static {v7}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1474
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1475
    move-object v8, v7

    check-cast v8, Linfo/flowersoft/theotown/draft/ScenarioDraft;

    .line 72
    iget-object v8, v8, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v5, v8}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMapByScenarioId(Ljava/lang/String;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v8

    .line 1475
    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9a

    .line 75
    :cond_b1
    new-instance v3, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3, v4}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 77
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 79
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/Dialog;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/gui/Gadget;->setClientHeight(I)V

    .line 81
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->addEmptyItem(Lio/blueflower/stapel2d/gui/ListBox;)V

    return-void

    .line 83
    :cond_d3
    new-instance v3, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v7, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const-string v8, ""

    invoke-direct {v3, v7, v8}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    .line 86
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_109

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/draft/ScenarioDraft;

    .line 88
    new-instance v8, Linfo/flowersoft/theotown/ui/scenario/ScenarioListItem;

    .line 89
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 90
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 91
    iget-object v10, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v10}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v10

    const-string v11, "getTranslator(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {v8, v7, v9, v10, v3}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListItem;-><init>(Linfo/flowersoft/theotown/draft/ScenarioDraft;Linfo/flowersoft/theotown/cityloader/CityKeeper;Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/util/DraftLocalizer;)V

    .line 87
    invoke-virtual {v2, v8}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    goto :goto_e0

    .line 98
    :cond_109
    new-instance v1, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda1;

    move-object v0, v4

    move-object v4, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;Ljava/util/Map;Linfo/flowersoft/theotown/util/DraftLocalizer;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    iput-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 156
    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/gui/ListBox;->selectItemIndex(I)V

    .line 157
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final _init_$lambda$2(Ljava/util/Map;Linfo/flowersoft/theotown/draft/ScenarioDraft;)Z
    .registers 3

    .line 75
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/ScenarioDraft;->getCityFile()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static final _init_$lambda$3(Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;Ljava/util/Map;Linfo/flowersoft/theotown/util/DraftLocalizer;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)Lkotlin/Unit;
    .registers 14

    .line 99
    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->getSelectedScenario(Lio/blueflower/stapel2d/gui/ListBox;)Linfo/flowersoft/theotown/draft/ScenarioDraft;

    move-result-object v7

    .line 100
    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 103
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->clearButtons()V

    .line 104
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    if-eqz v8, :cond_35

    .line 106
    invoke-virtual {v7}, Linfo/flowersoft/theotown/draft/ScenarioDraft;->getCityFile()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 110
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_RESET:I

    .line 111
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v3

    const/16 v4, 0xde4

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 113
    new-instance v6, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, p1, p3, p2}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;Linfo/flowersoft/theotown/util/DraftLocalizer;Ljava/util/Map;)V

    move v1, v2

    move-object v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 109
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 124
    :cond_35
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_INFO:I

    .line 125
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v2

    const/16 v3, 0xa8f

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    new-instance v6, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, p1}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    .line 123
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 134
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAY:I

    if-nez v8, :cond_60

    .line 136
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v2

    const/16 v3, 0x8db

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6c

    .line 138
    :cond_60
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v2

    const/16 v3, 0xd74

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    :goto_6c
    new-instance v6, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda4;

    invoke-direct {v6, v8, p0, v7, p4}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda4;-><init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;Linfo/flowersoft/theotown/draft/ScenarioDraft;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    .line 133
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    const/4 v1, 0x1

    .line 151
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    const/16 v1, 0x42

    .line 152
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 154
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final showResetDialog$lambda$0(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;)V
    .registers 9

    .line 176
    new-instance v0, Ljava/io/File;

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getOldMapSaveDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x1

    move v2, v1

    .line 178
    :goto_13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 179
    new-instance v0, Ljava/io/File;

    .line 180
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getOldMapSaveDir()Ljava/io/File;

    move-result-object v3

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v5

    const-string v6, "getFile(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/io/FilesKt__UtilsKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x5f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/2addr v2, v1

    goto :goto_13

    .line 187
    :cond_4a
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/util/Files;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 192
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 195
    iget-object p0, p1, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    new-instance v0, Linfo/flowersoft/theotown/stages/LoadCityStage;

    iget-object p1, p1, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/stages/LoadCityStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void

    .line 188
    :cond_68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not copy "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 187
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final showResetDialog$lambda$1(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;)V
    .registers 4

    .line 202
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    const/4 p0, 0x0

    .line 205
    invoke-virtual {p1, p0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 206
    new-instance p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;

    iget-object v0, p1, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v1, p1, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object p1, p1, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    invoke-direct {p0, v0, v1, p1}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public final addEmptyItem(Lio/blueflower/stapel2d/gui/ListBox;)V
    .registers 4

    .line 225
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    const/16 v1, 0x3b5

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$addEmptyItem$1;

    invoke-direct {v1, p1, v0}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$addEmptyItem$1;-><init>(Lio/blueflower/stapel2d/gui/ListBox;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public final addInfoButton(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 6

    .line 254
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x32

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    new-instance v2, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$addInfoButton$1;

    invoke-direct {v2, p2, p1, v0, v1}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$addInfoButton$1;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;ILio/blueflower/stapel2d/gui/Panel;)V

    return-void
.end method

.method public final copyCity(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/draft/ScenarioDraft;)Linfo/flowersoft/theotown/cityloader/CityKeeper;
    .registers 10

    .line 294
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getDirectory()Ljava/io/File;

    move-result-object v0

    .line 295
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Linfo/flowersoft/theotown/draft/ScenarioDraft;->getNormalizedTargetFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".city"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x1

    move v4, v2

    .line 298
    :goto_20
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_55

    .line 300
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lkotlin/io/FilesKt__UtilsKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/2addr v4, v2

    const/16 v1, 0x3e8

    if-ge v4, v1, :cond_4d

    move-object v1, v5

    goto :goto_20

    .line 302
    :cond_4d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 303
    const-string p2, "Something went really wrong with scenario initialisation"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 307
    :cond_55
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_62

    goto :goto_7f

    .line 308
    :cond_62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not delete existing scenario file for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 307
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 310
    :cond_7f
    :goto_7f
    invoke-virtual {p2}, Linfo/flowersoft/theotown/draft/ScenarioDraft;->getCityFile()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/Files;->copyFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 315
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->collectCities()V

    const/4 v0, 0x0

    .line 316
    invoke-virtual {p1, v0, v0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->loadMaps(Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    .line 318
    iget-object v0, p2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMapByScenarioId(Ljava/lang/String;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object p1

    if-eqz p1, :cond_a0

    return-object p1

    .line 323
    :cond_a0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance p1, Ljava/lang/IllegalStateException;

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "City file not found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", maybe the id was not set correctly"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 311
    :cond_c5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not initiate scenario "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 310
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final getContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;
    .registers 2

    .line 34
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-object v0
.end method

.method public final getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;
    .registers 2

    .line 36
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    return-object v0
.end method

.method public final getGui()Lio/blueflower/stapel2d/gui/Master;
    .registers 2

    .line 35
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->gui:Lio/blueflower/stapel2d/gui/Master;

    return-object v0
.end method

.method public final getSelectedScenario(Lio/blueflower/stapel2d/gui/ListBox;)Linfo/flowersoft/theotown/draft/ScenarioDraft;
    .registers 3

    .line 219
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ListBox;->getSelectedItemIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gui/ListBox;->getItem(I)Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type info.flowersoft.theotown.ui.scenario.ScenarioListItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Linfo/flowersoft/theotown/ui/scenario/ScenarioListItem;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListItem;->getScenario()Linfo/flowersoft/theotown/draft/ScenarioDraft;

    move-result-object p1

    return-object p1
.end method

.method public final loadCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 6

    .line 336
    new-instance v0, Linfo/flowersoft/theotown/city/LoadCityGuard;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/city/LoadCityGuard;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    .line 337
    new-instance v1, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$loadCity$1;

    invoke-direct {v1}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$loadCity$1;-><init>()V

    .line 336
    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/city/LoadCityGuard;->loadCityProtected(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V

    return-void
.end method

.method public final showResetDialog(Linfo/flowersoft/theotown/draft/ScenarioDraft;Linfo/flowersoft/theotown/util/DraftLocalizer;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 11

    .line 164
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_RESET:I

    .line 165
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p1

    const/16 p2, 0x209

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 166
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p1

    const/16 p2, 0xc1

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x8c

    .line 169
    iget-object v6, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/16 v4, 0x104

    .line 164
    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 172
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOAD:I

    .line 173
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p2

    const/16 v1, 0x69d

    invoke-interface {p2, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p2

    .line 174
    new-instance v1, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda6;

    invoke-direct {v1, p3, p0}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda6;-><init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;)V

    .line 171
    invoke-virtual {v0, p1, p2, v1}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 198
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    .line 199
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p2

    const/16 v1, 0x125

    invoke-interface {p2, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p2

    .line 200
    new-instance v1, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda7;

    invoke-direct {v1, p3, p0}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda7;-><init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;)V

    .line 197
    invoke-virtual {v0, p1, p2, v1}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 209
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    .line 210
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p2

    const/16 p3, 0x5c5

    invoke-interface {p2, p3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p2

    .line 208
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    const/4 p2, 0x1

    .line 211
    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/gui/Button;->setMarked(Z)V

    .line 212
    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.scenario.ScenarioListDialog.Companion (info.flowersoft.theotown.ui.scenario.ScenarioListDialog$Companion)
.class public final Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$Companion;
.super Ljava/lang/Object;
.source "ScenarioListDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$Companion;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.scenario.ScenarioListDialog.AnonymousClass1 (info.flowersoft.theotown.ui.scenario.ScenarioListDialog$addEmptyItem$1)
.class public final Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$addEmptyItem$1;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "ScenarioListDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->addEmptyItem(Lio/blueflower/stapel2d/gui/ListBox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $this_addEmptyItem:Lio/blueflower/stapel2d/gui/ListBox;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gui/ListBox;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$addEmptyItem$1;->$this_addEmptyItem:Lio/blueflower/stapel2d/gui/ListBox;

    .line 225
    invoke-direct {p0, p2}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 17

    move-object/from16 p1, p7

    const-string p2, "skin"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 236
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 238
    iget-object v1, p1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 239
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    int-to-float v3, p3

    int-to-float v4, p4

    int-to-float v5, p5

    int-to-float v6, p6

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    .line 237
    invoke-virtual/range {v0 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 246
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$addEmptyItem$1;->$this_addEmptyItem:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    return p1
.end method

###### Class info.flowersoft.theotown.ui.scenario.ScenarioListDialog.C41001 (info.flowersoft.theotown.ui.scenario.ScenarioListDialog$addInfoButton$1)
.class public final Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$addInfoButton$1;
.super Lio/blueflower/stapel2d/gui/Button;
.source "ScenarioListDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->addInfoButton(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic $gui:Lio/blueflower/stapel2d/gui/Master;


# direct methods
.method public static synthetic $r8$lambda$h2YzJMEEeKIEYpuo3C9KJF0ysCQ()V
    .registers 0

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$addInfoButton$1;->onClick$lambda$0()V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;ILio/blueflower/stapel2d/gui/Panel;)V
    .registers 11

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$addInfoButton$1;->$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$addInfoButton$1;->$gui:Lio/blueflower/stapel2d/gui/Master;

    const/16 v3, 0x14

    const/16 v4, 0x1e

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p3

    move-object v5, p4

    .line 254
    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

.method public static final onClick$lambda$0()V
    .registers 0

    .line 0
    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 256
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const v0, 0x3f4ccccd    # 0.8f

    .line 257
    invoke-virtual {v1, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 259
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 260
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr p1, v0

    int-to-float v3, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p2, p1

    int-to-float v4, p2

    .line 261
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result p1

    int-to-float v5, p1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result p1

    int-to-float v6, p1

    const/high16 v8, 0x3f000000    # 0.5f

    .line 263
    sget v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_HELP:I

    const v7, 0x3f4ccccd    # 0.8f

    .line 258
    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 264
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    return-void
.end method

.method public onClick()V
    .registers 8

    .line 268
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 269
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_EDUCATION:I

    .line 270
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$addInfoButton$1;->$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v2

    const/16 v3, 0x252

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 271
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$addInfoButton$1;->$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v3

    const/16 v4, 0xc3d

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x8c

    .line 274
    iget-object v6, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$addInfoButton$1;->$gui:Lio/blueflower/stapel2d/gui/Master;

    const/16 v4, 0x104

    .line 269
    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 276
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$addInfoButton$1;->$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v2

    const/16 v3, 0x76b

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 277
    new-instance v3, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$addInfoButton$1$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$addInfoButton$1$$ExternalSyntheticLambda0;-><init>()V

    .line 275
    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    const/4 v2, 0x1

    .line 278
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    const/16 v3, 0x42

    .line 279
    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 280
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.scenario.ScenarioListDialog$addInfoButton$1$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.scenario.ScenarioListDialog$addInfoButton$1$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$addInfoButton$1$$ExternalSyntheticLambda0;
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
    invoke-static {}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$addInfoButton$1;->$r8$lambda$h2YzJMEEeKIEYpuo3C9KJF0ysCQ()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.scenario.ScenarioListDialog.C41011 (info.flowersoft.theotown.ui.scenario.ScenarioListDialog$loadCity$1)
.class public final Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$loadCity$1;
.super Ljava/lang/Object;
.source "ScenarioListDialog.kt"

# interfaces
.implements Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->loadCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 3

    .line 0
    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 3

    .line 0
    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    check-cast p1, Linfo/flowersoft/theotown/draft/ScenarioDraft;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->$r8$lambda$YIHAPfxKSn8OvQw8MQ9HDpawlxc(Ljava/util/Map;Linfo/flowersoft/theotown/draft/ScenarioDraft;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda1 (info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;

.field public final synthetic f$1:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;

.field public final synthetic f$2:Ljava/util/Map;

.field public final synthetic f$3:Linfo/flowersoft/theotown/util/DraftLocalizer;

.field public final synthetic f$4:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;Ljava/util/Map;Linfo/flowersoft/theotown/util/DraftLocalizer;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda1;->f$2:Ljava/util/Map;

    iput-object p4, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda1;->f$3:Linfo/flowersoft/theotown/util/DraftLocalizer;

    iput-object p5, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda1;->f$4:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda1;->f$2:Ljava/util/Map;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda1;->f$3:Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda1;->f$4:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-static {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->$r8$lambda$bb-aLi0KpiOUyhPsgCRyCWXo9CA(Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;Ljava/util/Map;Linfo/flowersoft/theotown/util/DraftLocalizer;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda2 (info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;

.field public final synthetic f$1:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;

.field public final synthetic f$2:Linfo/flowersoft/theotown/util/DraftLocalizer;

.field public final synthetic f$3:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;Linfo/flowersoft/theotown/util/DraftLocalizer;Ljava/util/Map;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda2;->f$1:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda2;->f$2:Linfo/flowersoft/theotown/util/DraftLocalizer;

    iput-object p4, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda2;->f$3:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda2;->f$1:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda2;->f$2:Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda2;->f$3:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->$r8$lambda$AXsh9YA7ISDwgjs5QnbrcTw7S8g(Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;Linfo/flowersoft/theotown/util/DraftLocalizer;Ljava/util/Map;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda3 (info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;

.field public final synthetic f$1:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda3;->f$1:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda3;->f$1:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->$r8$lambda$WV-pil46dfqNVO20Bd4VOkqh9Fo(Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda5 (info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda5;
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
    invoke-static {}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->$r8$lambda$Pm_bK3Jclw3s-V5oileix92nWoM()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda4 (info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public final synthetic f$1:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;

.field public final synthetic f$2:Linfo/flowersoft/theotown/draft/ScenarioDraft;

.field public final synthetic f$3:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;Linfo/flowersoft/theotown/draft/ScenarioDraft;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda4;->f$1:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda4;->f$2:Linfo/flowersoft/theotown/draft/ScenarioDraft;

    iput-object p4, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda4;->f$3:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda4;->f$1:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda4;->f$2:Linfo/flowersoft/theotown/draft/ScenarioDraft;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda4;->f$3:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->$r8$lambda$yFBLzePzVaKAMVm-iIidJ7KcAkk(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;Linfo/flowersoft/theotown/draft/ScenarioDraft;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda6 (info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public final synthetic f$1:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda6;->f$1:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda6;->f$1:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->$r8$lambda$ufZ6soXiYC442NZyLMZyn2Ew4AU(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda7 (info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda7)
.class public final synthetic Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public final synthetic f$1:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda7;->f$1:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$$ExternalSyntheticLambda7;->f$1:Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;->$r8$lambda$mvz_YknXcgkuznARQB6QJL1r7B0(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.scenario.ScenarioListDialog$listBox$1 (info.flowersoft.theotown.ui.scenario.ScenarioListDialog$listBox$1)
.class public final Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;
.super Lio/blueflower/stapel2d/gui/ListBox;
.source "ScenarioListDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $updateSelection:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/blueflower/stapel2d/gui/Panel;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;",
            "Lio/blueflower/stapel2d/gui/Panel;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;->$updateSelection:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p2

    .line 55
    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 2

    .line 57
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/ListBox;->onClick()V

    .line 58
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$listBox$1;->$updateSelection:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_e
    return-void
.end method

###### Class info.flowersoft.theotown.ui.scenario.ScenarioListDialog$special$$inlined$sortBy$1 (info.flowersoft.theotown.ui.scenario.ScenarioListDialog$special$$inlined$sortBy$1)
.class public final Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog$special$$inlined$sortBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 ScenarioListDialog.kt\ninfo/flowersoft/theotown/ui/scenario/ScenarioListDialog\n*L\n1#1,325:1\n70#2:326\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 101
    check-cast p1, Linfo/flowersoft/theotown/draft/ScenarioDraft;

    .line 70
    iget p1, p1, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 101
    check-cast p2, Linfo/flowersoft/theotown/draft/ScenarioDraft;

    .line 70
    iget p2, p2, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 101
    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

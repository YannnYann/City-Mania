###### Class info.flowersoft.theotown.stages.RecoveryStage (info.flowersoft.theotown.stages.RecoveryStage)
.class public final Linfo/flowersoft/theotown/stages/RecoveryStage;
.super Lio/blueflower/stapel2d/gamestack/Stage;
.source "RecoveryStage.kt"


# instance fields
.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public engine:Lio/blueflower/stapel2d/drawing/Engine;

.field public gui:Lio/blueflower/stapel2d/gui/Master;

.field public final startScreen:Linfo/flowersoft/theotown/ui/StartScreenDrawer;


# direct methods
.method public static synthetic $r8$lambda$BGFosHoO3X6F6ixn-OTshHchEBE(Linfo/flowersoft/theotown/stages/RecoveryStage;)V
    .registers 1

    .line 0
    invoke-static {p0}, Linfo/flowersoft/theotown/stages/RecoveryStage;->enter$lambda$1(Linfo/flowersoft/theotown/stages/RecoveryStage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ysQbodG4A0CU9WnLFU3wJfNI5II(Linfo/flowersoft/theotown/stages/RecoveryStage;)V
    .registers 1

    .line 0
    invoke-static {p0}, Linfo/flowersoft/theotown/stages/RecoveryStage;->enter$lambda$0(Linfo/flowersoft/theotown/stages/RecoveryStage;)V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/ui/StartScreenDrawer;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startScreen"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lio/blueflower/stapel2d/gamestack/Stage;-><init>()V

    .line 20
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 21
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->startScreen:Linfo/flowersoft/theotown/ui/StartScreenDrawer;

    return-void
.end method

.method public static final enter$lambda$0(Linfo/flowersoft/theotown/stages/RecoveryStage;)V
    .registers 3

    .line 49
    sget-object v0, Linfo/flowersoft/theotown/stages/RecoveryMode;->INSTANCE:Linfo/flowersoft/theotown/stages/RecoveryMode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/RecoveryMode;->setActive(Z)V

    .line 50
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

.method public static final enter$lambda$1(Linfo/flowersoft/theotown/stages/RecoveryStage;)V
    .registers 3

    .line 53
    sget-object v0, Linfo/flowersoft/theotown/stages/RecoveryMode;->INSTANCE:Linfo/flowersoft/theotown/stages/RecoveryMode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/RecoveryMode;->setActive(Z)V

    .line 54
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method


# virtual methods
.method public drop()V
    .registers 6

    .line 66
    invoke-super {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->drop()V

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v1, 0x0

    const-string v2, "engine"

    if-nez v0, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_e
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    if-nez v3, :cond_16

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_16
    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->getWidth()I

    move-result v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    if-nez v4, :cond_22

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_23

    :cond_22
    move-object v1, v4

    :goto_23
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setVirtualSize(II)V

    return-void
.end method

.method public enter()V
    .registers 13

    .line 31
    new-instance v0, Linfo/flowersoft/theotown/resources/ResolutionManager;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v2, 0x0

    const-string v3, "engine"

    if-nez v1, :cond_d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_d
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getWidth()I

    move-result v1

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    if-nez v4, :cond_19

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_19
    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v4}, Linfo/flowersoft/theotown/resources/ResolutionManager;-><init>(II)V

    .line 33
    sget v1, Linfo/flowersoft/theotown/resources/Settings;->displayResolution:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/ResolutionManager;->getWidth(I)I

    move-result v1

    .line 34
    sget v4, Linfo/flowersoft/theotown/resources/Settings;->displayResolution:I

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/resources/ResolutionManager;->getHeight(I)I

    move-result v0

    .line 35
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    if-nez v4, :cond_34

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_34
    invoke-virtual {v4, v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setVirtualSize(II)V

    .line 37
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    if-nez v1, :cond_41

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_41
    iput-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 38
    new-instance v0, Lio/blueflower/stapel2d/gui/Master;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    if-nez v4, :cond_4f

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_4f
    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v4

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    if-nez v5, :cond_5b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5c

    :cond_5b
    move-object v2, v5

    :goto_5c
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v2

    invoke-direct {v0, v1, v4, v2}, Lio/blueflower/stapel2d/gui/Master;-><init>(Lio/blueflower/stapel2d/gui/Skin;II)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 40
    new-instance v5, Linfo/flowersoft/theotown/ui/Dialog;

    .line 41
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_ALERT:I

    .line 42
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    const/16 v1, 0xe2

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    .line 43
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    const/16 v1, 0x428

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0xd2

    .line 46
    iget-object v11, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/16 v9, 0x12c

    .line 40
    invoke-direct/range {v5 .. v11}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 48
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v1

    const/16 v2, 0x25d

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/stages/RecoveryStage$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/stages/RecoveryStage$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/RecoveryStage;)V

    invoke-virtual {v5, v0, v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 52
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_MEDIC:I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v1

    const/16 v2, 0x3f4

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/stages/RecoveryStage$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/stages/RecoveryStage$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/RecoveryStage;)V

    invoke-virtual {v5, v0, v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 56
    invoke-virtual {v5}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    const/4 v0, 0x1

    .line 57
    invoke-virtual {v5, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setDrawBackground(Z)V

    .line 58
    invoke-virtual {v5, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public leave()V
    .registers 2

    .line 62
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->free()V

    return-void
.end method

.method public prepare()V
    .registers 3

    .line 27
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v0

    const-string v1, "getEngine(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 97
    const-string v0, "RecoveryStage"

    return-object v0
.end method

.method public update()V
    .registers 8

    .line 71
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTouch()Lio/blueflower/stapel2d/touch/TouchMapper;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchMapper;->getTouchUpdate()Lio/blueflower/stapel2d/touch/TouchUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;

    .line 72
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->updateKeyInput(Lio/blueflower/stapel2d/key/KeyMapper;)V

    .line 74
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->update()V

    .line 76
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v1, 0x0

    const-string v2, "engine"

    if-nez v0, :cond_33

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_33
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v0

    .line 77
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    if-nez v3, :cond_3f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_3f
    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v3

    .line 78
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    if-nez v4, :cond_4b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_4b
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->clear(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 79
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    if-nez v4, :cond_58

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_58
    iget-object v5, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    if-nez v5, :cond_60

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_60
    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Engine;->getWidth()I

    move-result v5

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    if-nez v6, :cond_6c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v1

    :cond_6c
    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setVirtualSize(II)V

    .line 80
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->startScreen:Linfo/flowersoft/theotown/ui/StartScreenDrawer;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->drawBackground()V

    .line 81
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    if-nez v4, :cond_80

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_80
    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    .line 82
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    if-nez v4, :cond_8b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_8b
    invoke-virtual {v4, v0, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setVirtualSize(II)V

    .line 84
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    if-nez v0, :cond_96

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_96
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 85
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Master;->draw()V

    .line 86
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RecoveryStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    if-nez v0, :cond_a9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_aa

    :cond_a9
    move-object v1, v0

    :goto_aa
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    const-wide/16 v0, 0x1e

    .line 90
    :try_start_af
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b2
    .catch Ljava/lang/InterruptedException; {:try_start_af .. :try_end_b2} :catch_b3

    return-void

    :catch_b3
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RecoveryStage$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.RecoveryStage$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/RecoveryStage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RecoveryStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RecoveryStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RecoveryStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/RecoveryStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RecoveryStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/RecoveryStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RecoveryStage;->$r8$lambda$ysQbodG4A0CU9WnLFU3wJfNI5II(Linfo/flowersoft/theotown/stages/RecoveryStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RecoveryStage$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.RecoveryStage$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/RecoveryStage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RecoveryStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RecoveryStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RecoveryStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/RecoveryStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RecoveryStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/RecoveryStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RecoveryStage;->$r8$lambda$BGFosHoO3X6F6ixn-OTshHchEBE(Linfo/flowersoft/theotown/stages/RecoveryStage;)V

    return-void
.end method

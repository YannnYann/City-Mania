###### Class info.flowersoft.theotown.stages.StarterPackOfferStage (info.flowersoft.theotown.stages.StarterPackOfferStage)
.class public Linfo/flowersoft/theotown/stages/StarterPackOfferStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "StarterPackOfferStage.java"


# instance fields
.field public final SHOW_INFO:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public final feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

.field public final icon:I


# direct methods
.method public constructor <init>(ILinfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 5

    .line 43
    invoke-direct {p0, p3}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 36
    const-string p3, "$anim_toolbar_showinfo00"

    const-class v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {p3, v0}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p3

    check-cast p3, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->SHOW_INFO:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 45
    iput p1, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->icon:I

    .line 46
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;
    .registers 1

    .line 34
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;)Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 1

    .line 34
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->SHOW_INFO:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;)V
    .registers 1

    .line 34
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->purchase()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 17

    move-object/from16 v1, p0

    .line 57
    invoke-super {v1}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    .line 59
    new-instance v8, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const-string v2, ""

    invoke-direct {v8, v0, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    .line 61
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    const/16 v2, 0x258

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 62
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v0

    const/16 v2, 0x190

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 63
    new-instance v9, Linfo/flowersoft/theotown/ui/Dialog;

    iget v10, v1, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->icon:I

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {v8, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    iget-object v15, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct/range {v9 .. v15}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    iput-object v9, v1, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    .line 66
    invoke-virtual {v9}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v6

    .line 67
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    .line 68
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    .line 70
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    .line 71
    new-instance v2, Linfo/flowersoft/theotown/ui/ColorRect;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cMenuBg:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Linfo/flowersoft/theotown/ui/ColorRect;-><init>(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 73
    new-instance v0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v7, v5

    move v9, v4

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;-><init>(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;IIIILio/blueflower/stapel2d/gui/Gadget;ILinfo/flowersoft/theotown/util/DraftLocalizer;I)V

    .line 191
    new-instance v0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$2;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOAN:I

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    .line 192
    invoke-virtual {v3}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const-string v3, "?"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$2;-><init>(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 v2, 0x1

    .line 204
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/GoldButton;->setGreen(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 206
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    .line 207
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/ui/Dialog;->setCanCloseViaBackground(Z)V

    .line 208
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public onUpdate()V
    .registers 2

    .line 237
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawBackground()V

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isUnlocked()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_15

    :cond_14
    return-void

    .line 240
    :cond_15
    :goto_15
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

.method public prepare()V
    .registers 2

    .line 51
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->prepare()V

    .line 52
    invoke-static {}, Linfo/flowersoft/theotown/InAppHandler;->getInstance()Linfo/flowersoft/theotown/InAppHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/InAppHandler;->fetch()V

    return-void
.end method

.method public final purchase()V
    .registers 5

    .line 212
    invoke-static {}, Linfo/flowersoft/theotown/InAppHandler;->getInstance()Linfo/flowersoft/theotown/InAppHandler;

    move-result-object v0

    .line 213
    new-instance v1, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$3;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$3;-><init>(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;)V

    .line 221
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isPurchased()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iget-boolean v2, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->consumable:Z

    if-eqz v2, :cond_1b

    .line 222
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 223
    :cond_1b
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isPurchased()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 224
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    new-instance v3, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$4;

    invoke-direct {v3, p0, v0, v1}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$4;-><init>(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;Linfo/flowersoft/theotown/InAppHandler;Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Linfo/flowersoft/theotown/InAppHandler;->requestPurchase(Linfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/util/Setter;Z)Z

    :cond_2e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 246
    const-string v0, "FullPageOfferStage"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.StarterPackOfferStage.AnonymousClass1 (info.flowersoft.theotown.stages.StarterPackOfferStage$1)
.class public Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "StarterPackOfferStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

.field public final synthetic val$localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

.field public final synthetic val$previewHeight:I

.field public final synthetic val$previewWidth:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;IIIILio/blueflower/stapel2d/gui/Gadget;ILinfo/flowersoft/theotown/util/DraftLocalizer;I)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    iput p7, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->val$previewHeight:I

    iput-object p8, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->val$localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    iput p9, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->val$previewWidth:I

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 22

    move-object/from16 v0, p0

    .line 109
    iget v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int v1, p1, v1

    .line 110
    iget v2, v0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int v2, p2, v2

    .line 111
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v4, v3, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    int-to-float v6, v1

    int-to-float v7, v2

    .line 112
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v6, v7, v3, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setClipRect(FFFF)V

    .line 113
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 115
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v13, 0x50

    .line 116
    invoke-virtual {v4, v13}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 117
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v8, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v8, v8

    iget v9, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v9, v9

    sget v10, Linfo/flowersoft/theotown/resources/Resources;->FRAME_SHOPITEM_BACKGROUND:I

    invoke-virtual/range {v4 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    move v11, v6

    .line 119
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    invoke-static {v5}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->access$000(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v5

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/FeatureDraft;->unlocks:[Linfo/flowersoft/theotown/draft/FeatureDraft;

    iget-object v6, v0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    invoke-static {v6}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->access$000(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v6

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/FeatureDraft;->unlocks:[Linfo/flowersoft/theotown/draft/FeatureDraft;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v14, 0x0

    aget v5, v5, v14

    const/high16 v15, 0x41200000    # 10.0f

    .line 120
    invoke-virtual {v4, v15, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    const/16 v6, 0x1e

    .line 121
    invoke-virtual {v4, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 122
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v4, v6, v11, v7, v5}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    const/16 v12, 0xff

    .line 123
    invoke-virtual {v4, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/high16 v5, 0x3f800000    # 1.0f

    .line 124
    invoke-virtual {v4, v5, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 125
    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 127
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v6, v0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->val$localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v7, v0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    invoke-static {v7}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->access$000(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v7

    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getText(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v1, 0x4

    int-to-float v7, v7

    add-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    invoke-virtual {v4, v3, v6, v7, v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 129
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    invoke-static {v3}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->access$000(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/FeatureDraft;->diamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v3

    if-lez v3, :cond_d0

    .line 130
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v6, v2, 0x14

    int-to-float v6, v6

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND:I

    invoke-virtual {v4, v3, v7, v6, v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 131
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    .line 132
    invoke-static {v7}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->access$000(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v7

    iget-object v7, v7, Linfo/flowersoft/theotown/draft/FeatureDraft;->diamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Linfo/flowersoft/theotown/util/Localizer;->localizeDiamonds(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v1, v1, 0x1c

    int-to-float v1, v1

    add-int/lit8 v7, v2, 0x16

    int-to-float v7, v7

    .line 131
    invoke-virtual {v4, v3, v6, v1, v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    :cond_d0
    move v1, v14

    .line 137
    :goto_d1
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    invoke-static {v3}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->access$000(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/FeatureDraft;->unlocks:[Linfo/flowersoft/theotown/draft/FeatureDraft;

    array-length v3, v3

    if-ge v1, v3, :cond_20f

    .line 138
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    invoke-static {v3}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->access$000(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/FeatureDraft;->unlocks:[Linfo/flowersoft/theotown/draft/FeatureDraft;

    aget-object v3, v3, v1

    .line 139
    iget-object v6, v3, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v10, v6, v14

    .line 140
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->val$localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-virtual {v6, v3}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v6

    .line 141
    iget-boolean v7, v3, Linfo/flowersoft/theotown/draft/FeatureDraft;->consumable:Z

    if-nez v7, :cond_10b

    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isUnlocked()Z

    move-result v3

    if-eqz v3, :cond_10b

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "*"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_10b
    move-object v3, v6

    .line 146
    iget v6, v0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->val$previewHeight:I

    add-int/lit8 v6, v6, -0x3c

    int-to-float v6, v6

    iget-object v7, v0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    invoke-static {v7}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->access$000(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v7

    iget-object v7, v7, Linfo/flowersoft/theotown/draft/FeatureDraft;->unlocks:[Linfo/flowersoft/theotown/draft/FeatureDraft;

    array-length v7, v7

    int-to-float v7, v7

    div-float v16, v6, v7

    add-int/lit8 v6, v2, 0x3c

    int-to-float v6, v6

    int-to-float v7, v1

    mul-float v7, v7, v16

    add-float/2addr v7, v6

    .line 151
    iget-object v6, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v6, v6, Lio/blueflower/stapel2d/gui/Skin;->cMenuItem:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v6, 0xa0

    .line 152
    invoke-virtual {v4, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move v6, v5

    .line 153
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/high16 v8, 0x40000000    # 2.0f

    move v9, v6

    add-float v6, v11, v8

    move/from16 p1, v8

    iget v8, v0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->val$previewWidth:I

    add-int/lit8 v8, v8, -0x4

    int-to-float v8, v8

    sub-float v17, v16, p1

    sget-object v9, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v9, v9, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectBordered:I

    move/from16 p2, v14

    move/from16 p1, v15

    const/high16 v14, 0x3f800000    # 1.0f

    move v15, v10

    move v10, v9

    move/from16 v9, v17

    invoke-virtual/range {v4 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    move/from16 v17, v7

    .line 155
    invoke-virtual {v4, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 156
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    move-object v6, v5

    .line 157
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    move-object v7, v6

    add-float v6, v11, p1

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v8, v8, v16

    add-float v18, v17, v8

    const/high16 v8, 0x42000000    # 32.0f

    sub-float v8, v18, v8

    .line 160
    invoke-virtual {v5, v15}, Lio/blueflower/stapel2d/drawing/Image;->getHandleY(I)F

    move-result v9

    move v10, v9

    const/high16 v9, 0x42800000    # 64.0f

    mul-float/2addr v10, v9

    sget-object v9, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v9, v15}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v9

    div-float/2addr v10, v9

    add-float/2addr v8, v10

    move-object v9, v7

    move v7, v8

    const/high16 v8, 0x43000000    # 128.0f

    move v10, v15

    move-object v15, v9

    const/high16 v9, 0x42800000    # 64.0f

    .line 157
    invoke-virtual/range {v4 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 165
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 166
    invoke-virtual {v4, v13}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 167
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/high16 v6, -0x41000000    # -0.5f

    mul-float v9, v16, v6

    sget v10, Linfo/flowersoft/theotown/resources/Resources;->FRAME_GRADIENT_Y:I

    const/high16 v8, 0x430f0000    # 143.0f

    move v6, v11

    move/from16 v7, v18

    invoke-virtual/range {v4 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    move/from16 v18, v6

    .line 170
    invoke-virtual {v4, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 171
    invoke-virtual {v4, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 173
    iget v5, v0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->val$previewWidth:I

    int-to-float v5, v5

    sub-float v5, v5, v18

    sub-float/2addr v5, v8

    .line 174
    iget-object v6, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v6, v6, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v6, v3}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v15

    div-float/2addr v5, v15

    .line 175
    invoke-static {v5, v14}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 177
    invoke-virtual {v4, v5, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 178
    iget-object v6, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v6, v6, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    add-float v7, v18, v8

    const/4 v11, 0x0

    move v8, v12

    const v12, 0x3e4ccccd    # 0.2f

    const/4 v9, 0x0

    move/from16 v10, v16

    move/from16 v16, v5

    move-object v5, v6

    move-object v6, v3

    move v3, v8

    move/from16 v8, v17

    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 179
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    mul-float v6, v16, v15

    add-float/2addr v7, v6

    const v6, 0x3e4ccccd    # 0.2f

    mul-float v16, v10, v6

    add-float v6, v17, v16

    iget-object v8, v0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    .line 182
    invoke-static {v8}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->access$100(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v8

    iget-object v8, v8, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v8, v8, p2

    invoke-virtual {v5, v8}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v8

    const/high16 v9, 0x3e800000    # 0.25f

    mul-float/2addr v8, v9

    sub-float/2addr v6, v8

    iget-object v8, v0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    .line 183
    invoke-static {v8}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->access$100(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v8

    iget-object v8, v8, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v8, v8, p2

    .line 179
    invoke-virtual {v4, v5, v7, v6, v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 184
    invoke-virtual {v4, v14, v14}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    add-int/lit8 v1, v1, 0x1

    move/from16 v15, p1

    move v12, v3

    move v5, v14

    move/from16 v11, v18

    move/from16 v14, p2

    goto/16 :goto_d1

    .line 187
    :cond_20f
    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Engine;->resetClipping()V

    return-void
.end method

.method public onClick()V
    .registers 9

    .line 76
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->getTouchPoint()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Master;->getHeightRatio()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 77
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->access$000(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/FeatureDraft;->unlocks:[Linfo/flowersoft/theotown/draft/FeatureDraft;

    const/high16 v2, 0x42700000    # 60.0f

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->val$previewHeight:I

    add-int/lit8 v2, v2, -0x3c

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    .line 78
    invoke-static {v3}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->access$000(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/FeatureDraft;->unlocks:[Linfo/flowersoft/theotown/draft/FeatureDraft;

    array-length v3, v3

    div-int/2addr v2, v3

    div-int/2addr v0, v2

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    .line 79
    invoke-static {v2}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->access$000(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v2

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->unlocks:[Linfo/flowersoft/theotown/draft/FeatureDraft;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 78
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    .line 77
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget-object v0, v1, v0

    .line 82
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->val$localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v1

    .line 83
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->val$localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getText(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {v0}, Linfo/flowersoft/theotown/ui/FeaturesShopDialog;->getExtraInfo(Linfo/flowersoft/theotown/draft/FeatureDraft;)Lio/blueflower/stapel2d/util/Tuple;

    move-result-object v4

    .line 86
    const-string v5, "\n\n"

    if-eqz v4, :cond_84

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v7, 0x75a

    invoke-interface {v2, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    :cond_84
    iget-boolean v4, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->consumable:Z

    if-nez v4, :cond_af

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isUnlocked()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    iget-object v4, v4, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x7bf

    invoke-interface {v4, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    :cond_af
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_INFO:I

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    iget-object v5, v5, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v4, v1, v2, v5}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 98
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x98f

    .line 99
    invoke-interface {v2, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    .line 100
    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    const/16 v2, 0x78

    .line 101
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    const/16 v2, 0x42

    .line 102
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 103
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    .line 104
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.StarterPackOfferStage.AnonymousClass2 (info.flowersoft.theotown.stages.StarterPackOfferStage$2)
.class public Linfo/flowersoft/theotown/stages/StarterPackOfferStage$2;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "StarterPackOfferStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
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
            null,
            null,
            null
        }
    .end annotation

    .line 192
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$2;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 2

    .line 201
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 202
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$2;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->access$200(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;)V

    return-void
.end method

.method public onUpdate()V
    .registers 3

    .line 195
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 196
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$2;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x4e

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$2;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->access$000(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/FeatureDraft;->formattedPrice:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/IconButton;->setText(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.StarterPackOfferStage.AnonymousClass3 (info.flowersoft.theotown.stages.StarterPackOfferStage$3)
.class public Linfo/flowersoft/theotown/stages/StarterPackOfferStage$3;
.super Ljava/lang/Object;
.source "StarterPackOfferStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->purchase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 213
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$3;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 216
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$3;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 217
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->get(I)Lio/blueflower/stapel2d/gamestack/Stage;

    move-result-object v1

    instance-of v1, v1, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    :cond_1f
    return-void
.end method

###### Class info.flowersoft.theotown.stages.StarterPackOfferStage.AnonymousClass4 (info.flowersoft.theotown.stages.StarterPackOfferStage$4)
.class public Linfo/flowersoft/theotown/stages/StarterPackOfferStage$4;
.super Ljava/lang/Object;
.source "StarterPackOfferStage.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->purchase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Linfo/flowersoft/theotown/draft/FeatureDraft;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

.field public final synthetic val$finalAction:Ljava/lang/Runnable;

.field public final synthetic val$inAppHandler:Linfo/flowersoft/theotown/InAppHandler;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;Linfo/flowersoft/theotown/InAppHandler;Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$4;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$4;->val$inAppHandler:Linfo/flowersoft/theotown/InAppHandler;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$4;->val$finalAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Linfo/flowersoft/theotown/draft/FeatureDraft;)V
    .registers 3

    .line 227
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$4;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->access$000(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v0

    if-ne p1, v0, :cond_25

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$4;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->access$000(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object p1

    iget-boolean p1, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->consumable:Z

    if-eqz p1, :cond_20

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$4;->val$inAppHandler:Linfo/flowersoft/theotown/InAppHandler;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$4;->this$0:Linfo/flowersoft/theotown/stages/StarterPackOfferStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage;->access$000(Linfo/flowersoft/theotown/stages/StarterPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/InAppHandler;->consume(Linfo/flowersoft/theotown/draft/FeatureDraft;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 228
    :cond_20
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$4;->val$finalAction:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_25
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 224
    check-cast p1, Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/StarterPackOfferStage$4;->set(Linfo/flowersoft/theotown/draft/FeatureDraft;)V

    return-void
.end method

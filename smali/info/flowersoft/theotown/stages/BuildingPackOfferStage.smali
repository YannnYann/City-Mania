###### Class info.flowersoft.theotown.stages.BuildingPackOfferStage (info.flowersoft.theotown.stages.BuildingPackOfferStage)
.class public Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "BuildingPackOfferStage.java"


# instance fields
.field public final SHOW_INFO:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final buildings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation
.end field

.field public dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public final feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

.field public final frames:Lio/blueflower/stapel2d/util/IntList;

.field public final icon:I

.field public oldPriceFeature:Linfo/flowersoft/theotown/draft/FeatureDraft;

.field public final task:Linfo/flowersoft/theotown/resources/TaskManager$Task;

.field public final taskVanishSeconds:I


# direct methods
.method public static synthetic $r8$lambda$aneu-pWFOFCEWCRpu8ArIANR7Zo(Linfo/flowersoft/theotown/draft/BuildingDraft;Linfo/flowersoft/theotown/draft/BuildingDraft;)I
    .registers 2

    .line 100
    iget p0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    iget p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public constructor <init>(ILinfo/flowersoft/theotown/draft/FeatureDraft;Linfo/flowersoft/theotown/resources/TaskManager$Task;ILio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 7

    .line 64
    invoke-direct {p0, p5}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 50
    const-string p5, "$anim_toolbar_showinfo00"

    const-class v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {p5, v0}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p5

    check-cast p5, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object p5, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->SHOW_INFO:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 58
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->buildings:Ljava/util/List;

    .line 59
    new-instance p5, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {p5}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object p5, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->frames:Lio/blueflower/stapel2d/util/IntList;

    .line 66
    iput p1, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->icon:I

    .line 67
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 68
    iput-object p3, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->task:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    .line 69
    iput p4, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->taskVanishSeconds:I

    .line 71
    iget-object p1, p2, Linfo/flowersoft/theotown/draft/Draft;->meta:Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz p1, :cond_52

    .line 72
    const-string p3, "tags"

    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_52

    .line 74
    const-string p3, "old price"

    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_52

    .line 76
    sget-object p3, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/FeatureDraft;

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->oldPriceFeature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    if-eqz p1, :cond_52

    .line 77
    iget p3, p2, Linfo/flowersoft/theotown/draft/FeatureDraft;->microPrice:I

    if-eqz p3, :cond_4f

    iget p1, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->microPrice:I

    if-eqz p1, :cond_4f

    if-gt p1, p3, :cond_52

    :cond_4f
    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->oldPriceFeature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 85
    :cond_52
    sget-object p1, Linfo/flowersoft/theotown/resources/Drafts;->BUILDINGS:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_58
    :goto_58
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_99

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 86
    invoke-virtual {p3}, Linfo/flowersoft/theotown/draft/Draft;->hasRequirement()Z

    move-result p5

    if-eqz p5, :cond_58

    .line 87
    invoke-virtual {p3}, Linfo/flowersoft/theotown/draft/Draft;->getRequirement()Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    move-result-object p5

    invoke-virtual {p5}, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->getSingleRequirements()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;

    .line 88
    instance-of p5, p4, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;

    if-eqz p5, :cond_58

    .line 89
    check-cast p4, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;

    .line 90
    invoke-virtual {p4}, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;->getFeature()Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object p4

    if-eqz p4, :cond_58

    .line 91
    iget-object p4, p4, Linfo/flowersoft/theotown/draft/FeatureDraft;->unlockedBy:[Linfo/flowersoft/theotown/draft/FeatureDraft;

    if-eqz p4, :cond_58

    .line 92
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_58

    .line 93
    iget-object p4, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->buildings:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 100
    :cond_99
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->buildings:Ljava/util/List;

    new-instance p2, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 102
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->buildings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_bf

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 103
    iget-object p3, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->frames:Lio/blueflower/stapel2d/util/IntList;

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget p2, p2, p4

    invoke-virtual {p3, p2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_a9

    :cond_bf
    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Lio/blueflower/stapel2d/util/IntList;
    .registers 1

    .line 48
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->frames:Lio/blueflower/stapel2d/util/IntList;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Ljava/util/List;
    .registers 1

    .line 48
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->buildings:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 1

    .line 48
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->SHOW_INFO:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;
    .registers 1

    .line 48
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->oldPriceFeature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;
    .registers 1

    .line 48
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Linfo/flowersoft/theotown/ui/Dialog;
    .registers 1

    .line 48
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    return-object p0
.end method


# virtual methods
.method public enter()V
    .registers 16

    .line 109
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    .line 111
    invoke-static {}, Linfo/flowersoft/theotown/InAppHandler;->getInstance()Linfo/flowersoft/theotown/InAppHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/InAppHandler;->fetch()V

    .line 113
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->task:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    if-eqz v0, :cond_1a

    .line 114
    iget v2, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->taskVanishSeconds:I

    if-lez v2, :cond_17

    int-to-long v2, v2

    .line 115
    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->completeForSeconds(J)V

    goto :goto_1a

    .line 117
    :cond_17
    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->complete()V

    .line 121
    :cond_1a
    :goto_1a
    new-instance v7, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const-string v2, ""

    invoke-direct {v7, v0, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    const/16 v2, 0x258

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 124
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v0

    const/16 v2, 0x190

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 125
    new-instance v8, Linfo/flowersoft/theotown/ui/Dialog;

    iget v9, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->icon:I

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {v7, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    iget-object v14, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct/range {v8 .. v14}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    iput-object v8, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    .line 128
    invoke-virtual {v8}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v6

    .line 129
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    .line 131
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    .line 132
    new-instance v2, Linfo/flowersoft/theotown/ui/ColorRect;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cMenuBg:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Linfo/flowersoft/theotown/ui/ColorRect;-><init>(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 134
    new-instance v0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;

    const/4 v3, 0x0

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    const/4 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;-><init>(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/util/DraftLocalizer;)V

    .line 296
    new-instance v0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOAN:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    .line 297
    invoke-virtual {v3}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const-string v3, "?"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2;-><init>(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 v2, 0x1

    .line 317
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/GoldButton;->setGreen(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 319
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    .line 320
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public onUpdate()V
    .registers 2

    .line 325
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawBackground()V

    .line 327
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isUnlocked()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_15

    :cond_14
    return-void

    .line 328
    :cond_15
    :goto_15
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialOfferStage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.BuildingPackOfferStage.AnonymousClass1 (info.flowersoft.theotown.stages.BuildingPackOfferStage$1)
.class public Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "BuildingPackOfferStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

.field public final synthetic val$localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;


# direct methods
.method public static synthetic $r8$lambda$3Epn4u8mZSJ_9G9xgWK9_DknF6M()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/util/DraftLocalizer;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 134
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->val$localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 26

    move-object/from16 v0, p0

    .line 137
    iget v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int v1, p1, v1

    .line 138
    iget v2, v0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int v2, p2, v2

    .line 139
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v4, v3, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    int-to-float v6, v1

    int-to-float v7, v2

    .line 140
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v6, v7, v3, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setClipRect(FFFF)V

    .line 143
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v3, 0x50

    .line 144
    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 145
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v8, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v8, v8

    iget v9, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v9, v9

    sget v10, Linfo/flowersoft/theotown/resources/Resources;->FRAME_SHOPITEM_BACKGROUND:I

    invoke-virtual/range {v4 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    const/high16 v13, 0x40000000    # 2.0f

    .line 147
    invoke-virtual {v4, v13, v13}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    const/16 v5, 0x28

    .line 148
    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 149
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v6, v1, -0x80

    int-to-float v6, v6

    iget v7, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    add-int/2addr v7, v2

    int-to-float v7, v7

    iget-object v8, v0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    .line 150
    invoke-static {v8}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->access$000(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Lio/blueflower/stapel2d/util/IntList;

    move-result-object v8

    iget-object v9, v0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    invoke-static {v9}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->access$000(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Lio/blueflower/stapel2d/util/IntList;

    move-result-object v9

    invoke-virtual {v9}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v9

    const/4 v14, 0x1

    sub-int/2addr v9, v14

    invoke-virtual {v8, v9}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v8

    .line 149
    invoke-virtual {v4, v5, v6, v7, v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    const/high16 v5, 0x41000000    # 8.0f

    .line 151
    invoke-virtual {v4, v5, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    const/16 v15, 0xff

    .line 153
    invoke-virtual {v4, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/4 v6, 0x0

    .line 157
    :goto_6b
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    invoke-static {v7}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->access$100(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_255

    .line 158
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    invoke-static {v7}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->access$100(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 159
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    invoke-static {v8}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->access$000(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Lio/blueflower/stapel2d/util/IntList;

    move-result-object v8

    invoke-virtual {v8, v6}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v12

    mul-int/lit8 v8, v6, 0x2

    add-int/2addr v8, v14

    .line 160
    iget v9, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    mul-int/2addr v8, v9

    iget-object v9, v0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    invoke-static {v9}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->access$100(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    div-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v1

    .line 161
    iget v9, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    add-int v16, v2, v9

    add-int/lit8 v9, v16, -0x14

    .line 162
    invoke-virtual {v7, v12}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x20

    int-to-float v10, v10

    .line 163
    sget-object v11, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v11, v12}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v11

    .line 164
    iget v5, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    mul-int/lit8 v5, v5, 0x8

    int-to-float v5, v5

    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    .line 166
    iget v5, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    mul-int/lit8 v5, v5, 0x8

    move/from16 p2, v13

    int-to-double v13, v5

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    mul-double v13, v13, v17

    iget v5, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    move-object v11, v4

    int-to-double v3, v5

    cmpl-double v3, v13, v3

    const/high16 v14, 0x3f000000    # 0.5f

    if-lez v3, :cond_19f

    move-object v4, v11

    const/16 v3, 0x50

    .line 167
    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 168
    invoke-virtual {v4, v14, v14}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 169
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    move v11, v6

    int-to-float v6, v8

    move-object/from16 v17, v7

    int-to-float v7, v9

    move/from16 v18, v10

    const/high16 v10, 0x3f000000    # 0.5f

    move/from16 v19, v11

    const/high16 v11, 0x3f800000    # 1.0f

    move/from16 v20, v8

    const/4 v8, 0x0

    move/from16 v21, v9

    const/4 v9, 0x0

    move/from16 p1, v18

    move/from16 v18, v14

    move/from16 v14, p1

    move-object/from16 v13, v17

    move/from16 v3, v20

    move/from16 v22, v21

    const/high16 p1, 0x40800000    # 4.0f

    const/16 v17, 0x0

    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 170
    iget-object v5, v13, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpots:Ljava/util/List;

    if-eqz v5, :cond_140

    move/from16 v5, v17

    .line 171
    :goto_108
    iget-object v8, v13, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpots:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_140

    .line 172
    iget-object v8, v13, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpots:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/draft/AnimationSpot;

    .line 173
    iget-object v9, v8, Linfo/flowersoft/theotown/draft/AnimationSpot;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v9, v9, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v9, v9, v17

    if-eq v12, v9, :cond_13b

    .line 174
    sget-object v10, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    neg-float v11, v14

    div-float v20, v11, p2

    iget v15, v8, Linfo/flowersoft/theotown/draft/AnimationSpot;->x:I

    int-to-float v15, v15

    add-float v20, v20, v15

    mul-float v20, v20, v18

    add-float v15, v6, v20

    div-float v11, v11, p1

    iget v8, v8, Linfo/flowersoft/theotown/draft/AnimationSpot;->y:I

    int-to-float v8, v8

    add-float/2addr v11, v8

    mul-float v11, v11, v18

    add-float v8, v7, v11

    invoke-virtual {v4, v10, v15, v8, v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_13b
    add-int/lit8 v5, v5, 0x1

    const/16 v15, 0xff

    goto :goto_108

    .line 177
    :cond_140
    invoke-virtual {v4, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/high16 v5, 0x3e800000    # 0.25f

    .line 179
    invoke-virtual {v4, v5, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    move v8, v5

    .line 180
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f800000    # 1.0f

    move v9, v8

    const/4 v8, 0x0

    move/from16 v20, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 181
    iget-object v5, v13, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpots:Ljava/util/List;

    if-eqz v5, :cond_199

    move/from16 v5, v17

    .line 182
    :goto_15d
    iget-object v8, v13, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpots:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_199

    .line 183
    iget-object v8, v13, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpots:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/draft/AnimationSpot;

    .line 184
    iget-object v9, v8, Linfo/flowersoft/theotown/draft/AnimationSpot;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v10, v9, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v10, v10, v17

    if-eq v12, v10, :cond_194

    iget-boolean v9, v9, Linfo/flowersoft/theotown/draft/AnimationDraft;->lightSwitching:Z

    if-nez v9, :cond_194

    .line 185
    sget-object v9, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    neg-float v11, v14

    div-float v21, v11, p2

    iget v15, v8, Linfo/flowersoft/theotown/draft/AnimationSpot;->x:I

    int-to-float v15, v15

    add-float v21, v21, v15

    mul-float v21, v21, v20

    add-float v15, v6, v21

    div-float v11, v11, p1

    iget v8, v8, Linfo/flowersoft/theotown/draft/AnimationSpot;->y:I

    int-to-float v8, v8

    add-float/2addr v11, v8

    mul-float v11, v11, v20

    add-float v8, v7, v11

    invoke-virtual {v4, v9, v15, v8, v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_194
    add-int/lit8 v5, v5, 0x1

    const/16 v15, 0xff

    goto :goto_15d

    :cond_199
    move/from16 v21, v1

    move/from16 v15, v22

    goto/16 :goto_209

    :cond_19f
    move/from16 v19, v6

    move-object v13, v7

    move v3, v8

    move/from16 v22, v9

    move-object v4, v11

    move v5, v14

    const/high16 p1, 0x40800000    # 4.0f

    const/16 v17, 0x0

    move v14, v10

    .line 190
    invoke-virtual {v4, v5, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 191
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v6, v3

    move/from16 v15, v22

    int-to-float v7, v15

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 193
    iget-object v5, v13, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpots:Ljava/util/List;

    if-eqz v5, :cond_207

    move/from16 v5, v17

    .line 194
    :goto_1c4
    iget-object v8, v13, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpots:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_207

    .line 195
    iget-object v8, v13, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpots:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/draft/AnimationSpot;

    .line 196
    iget-object v9, v8, Linfo/flowersoft/theotown/draft/AnimationSpot;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v10, v9, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v10, v10, v17

    if-eq v12, v10, :cond_200

    iget-boolean v9, v9, Linfo/flowersoft/theotown/draft/AnimationDraft;->lightSwitching:Z

    if-nez v9, :cond_200

    .line 197
    sget-object v9, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    neg-float v11, v14

    div-float v20, v11, p2

    move/from16 v21, v1

    iget v1, v8, Linfo/flowersoft/theotown/draft/AnimationSpot;->x:I

    int-to-float v1, v1

    add-float v20, v20, v1

    const/high16 v18, 0x3f000000    # 0.5f

    mul-float v20, v20, v18

    add-float v1, v6, v20

    div-float v11, v11, p1

    iget v8, v8, Linfo/flowersoft/theotown/draft/AnimationSpot;->y:I

    int-to-float v8, v8

    add-float/2addr v11, v8

    mul-float v11, v11, v18

    add-float v8, v7, v11

    invoke-virtual {v4, v9, v1, v8, v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    goto :goto_202

    :cond_200
    move/from16 v21, v1

    :goto_202
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v21

    goto :goto_1c4

    :cond_207
    move/from16 v21, v1

    .line 204
    :goto_209
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 205
    invoke-virtual {v4, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 206
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->val$localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-virtual {v1, v13}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v6

    .line 207
    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, v1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    int-to-float v7, v3

    int-to-float v8, v15

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 210
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 212
    invoke-virtual {v3, v6}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v3

    const/high16 v18, 0x3f000000    # 0.5f

    mul-float v3, v3, v18

    add-float/2addr v7, v3

    add-float v7, v7, p2

    add-int/lit8 v3, v16, -0x16

    int-to-float v3, v3

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    .line 214
    invoke-static {v5}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->access$200(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v5

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v5, v5, v17

    .line 210
    invoke-virtual {v4, v1, v7, v3, v5}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    add-int/lit8 v6, v19, 0x1

    move/from16 v13, p2

    move/from16 v1, v21

    const/16 v3, 0x50

    const/4 v14, 0x1

    const/16 v15, 0xff

    goto/16 :goto_6b

    :cond_255
    move/from16 v21, v1

    const/16 v17, 0x0

    .line 217
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->access$300(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v1

    if-eqz v1, :cond_2fa

    .line 218
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->access$300(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v1

    iget-object v6, v1, Linfo/flowersoft/theotown/draft/FeatureDraft;->formattedPrice:Ljava/lang/String;

    .line 219
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->access$400(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v1

    iget v1, v1, Linfo/flowersoft/theotown/draft/FeatureDraft;->microPrice:I

    int-to-double v7, v1

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double/2addr v7, v9

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->access$300(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v1

    iget v1, v1, Linfo/flowersoft/theotown/draft/FeatureDraft;->microPrice:I

    int-to-double v11, v1

    div-double/2addr v7, v11

    sub-double/2addr v9, v7

    double-to-int v1, v9

    .line 220
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, v3, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    .line 221
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 222
    iget v7, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int v7, v21, v7

    add-int/lit8 v7, v7, -0x2

    int-to-float v7, v7

    add-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 224
    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    move-object v10, v4

    .line 225
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    iget v7, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int v7, v21, v7

    add-int/lit8 v7, v7, -0x4

    int-to-float v7, v7

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v5

    sub-float v5, v7, v5

    add-int/lit8 v6, v2, 0x12

    int-to-float v6, v6

    iget v7, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int v7, v21, v7

    add-int/lit8 v7, v7, -0x3

    int-to-float v7, v7

    add-int/lit8 v8, v2, 0x6

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual/range {v4 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move-object v4, v10

    .line 233
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 234
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    iget-object v5, v5, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x33d

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int v1, v21, v1

    add-int/lit8 v1, v1, -0x2

    int-to-float v6, v1

    add-int/lit8 v1, v2, 0x14

    int-to-float v7, v1

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v8, v1, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    sget-object v9, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual/range {v4 .. v12}, Linfo/flowersoft/theotown/drawing/Drawing;->drawOutlinedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;FF)V

    move-object v4, v10

    .line 237
    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 240
    :cond_2fa
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 241
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->val$localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v6, v0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    invoke-static {v6}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->access$400(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v6

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getText(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v21, 0x2

    int-to-float v6, v6

    add-int/lit8 v7, v2, 0x2

    int-to-float v7, v7

    invoke-virtual {v4, v3, v5, v6, v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 243
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    iget-object v5, v5, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0xd57

    .line 245
    invoke-interface {v5, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    iget-object v8, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v8, v8, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    .line 246
    invoke-virtual {v8}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    .line 243
    invoke-virtual {v4, v3, v5, v6, v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 248
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    invoke-static {v3}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->access$400(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/FeatureDraft;->diamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v3

    if-lez v3, :cond_379

    .line 249
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v5, v2, 0x1e

    int-to-float v5, v5

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND:I

    invoke-virtual {v4, v3, v6, v5, v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 250
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    .line 251
    invoke-static {v6}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->access$400(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v6

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/FeatureDraft;->diamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Linfo/flowersoft/theotown/util/Localizer;->localizeDiamonds(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v21, 0x1a

    int-to-float v6, v6

    add-int/lit8 v7, v2, 0x20

    int-to-float v7, v7

    .line 250
    invoke-virtual {v4, v3, v5, v6, v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 255
    :cond_379
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    invoke-static {v3}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->access$400(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isTimeConstraint()Z

    move-result v3

    if-eqz v3, :cond_3d5

    .line 256
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    invoke-static {v3}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->access$400(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/FeatureDraft;->getRemainingUnlockedSeconds()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-gez v3, :cond_39a

    .line 258
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_39a
    const/4 v3, 0x1

    .line 260
    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setBlending(I)V

    .line 261
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v7, 0x6e2

    invoke-interface {v3, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 262
    iget-object v5, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, v5, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    iget v6, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int v6, v21, v6

    add-int/lit8 v6, v6, -0x2

    int-to-float v6, v6

    .line 263
    invoke-virtual {v5, v3}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v7

    sub-float/2addr v6, v7

    add-int/lit8 v2, v2, 0x48

    int-to-float v2, v2

    .line 262
    invoke-virtual {v4, v5, v3, v6, v2}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    move/from16 v2, v17

    .line 264
    invoke-virtual {v4, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setBlending(I)V

    .line 265
    invoke-virtual {v4, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 268
    :cond_3d5
    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Engine;->resetClipping()V

    return-void
.end method

.method public onClick()V
    .registers 7

    .line 273
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onClick()V

    .line 275
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    if-nez v0, :cond_8

    return-void

    .line 276
    :cond_8
    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v0

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Master;->getWidthRatio()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 277
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    .line 278
    invoke-static {v1}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->access$100(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    div-int/2addr v1, v0

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->access$100(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    .line 277
    invoke-static {v1, v3, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v0

    .line 279
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->access$100(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 281
    new-instance v1, Linfo/flowersoft/theotown/ui/Dialog;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_INFO:I

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->val$localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    .line 283
    invoke-virtual {v4, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->val$localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    .line 284
    invoke-virtual {v5, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getText(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    iget-object v5, v5, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v1, v3, v4, v0, v5}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 286
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x98f

    .line 287
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1$$ExternalSyntheticLambda0;-><init>()V

    .line 286
    invoke-virtual {v1, v0, v3, v2, v4}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    const/16 v3, 0x78

    .line 288
    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    .line 289
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    const/16 v3, 0x42

    .line 290
    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 291
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    .line 292
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.BuildingPackOfferStage$1$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.BuildingPackOfferStage$1$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1$$ExternalSyntheticLambda0;
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
    invoke-static {}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$1;->$r8$lambda$3Epn4u8mZSJ_9G9xgWK9_DknF6M()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.BuildingPackOfferStage.AnonymousClass2 (info.flowersoft.theotown.stages.BuildingPackOfferStage$2)
.class public Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "BuildingPackOfferStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 297
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 5

    .line 306
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 307
    invoke-static {}, Linfo/flowersoft/theotown/InAppHandler;->getInstance()Linfo/flowersoft/theotown/InAppHandler;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->access$400(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2$1;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2$1;-><init>(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/InAppHandler;->requestPurchase(Linfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/util/Setter;Z)Z

    return-void
.end method

.method public onUpdate()V
    .registers 3

    .line 300
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 301
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x4e

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->access$400(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/FeatureDraft;->formattedPrice:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/IconButton;->setText(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.BuildingPackOfferStage.AnonymousClass2.AnonymousClass1 (info.flowersoft.theotown.stages.BuildingPackOfferStage$2$1)
.class public Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2$1;
.super Ljava/lang/Object;
.source "BuildingPackOfferStage.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2;->onClick()V
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
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 307
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2$1;->this$1:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Linfo/flowersoft/theotown/draft/FeatureDraft;)V
    .registers 3

    .line 310
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2$1;->this$1:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->access$500(Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 312
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2$1;->this$1:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 313
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->get(I)Lio/blueflower/stapel2d/gamestack/Stage;

    move-result-object p1

    instance-of p1, p1, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    if-eqz p1, :cond_35

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2$1;->this$1:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2;->this$0:Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    :cond_35
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

    .line 307
    check-cast p1, Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$2$1;->set(Linfo/flowersoft/theotown/draft/FeatureDraft;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.BuildingPackOfferStage$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.BuildingPackOfferStage$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/BuildingPackOfferStage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    check-cast p2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/stages/BuildingPackOfferStage;->$r8$lambda$aneu-pWFOFCEWCRpu8ArIANR7Zo(Linfo/flowersoft/theotown/draft/BuildingDraft;Linfo/flowersoft/theotown/draft/BuildingDraft;)I

    move-result p1

    return p1
.end method

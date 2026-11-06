###### Class info.flowersoft.theotown.ui.FastForwardDialog (info.flowersoft.theotown.ui.FastForwardDialog)
.class public Linfo/flowersoft/theotown/ui/FastForwardDialog;
.super Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;
.source "FastForwardDialog.java"


# direct methods
.method public static synthetic $r8$lambda$yjjCDbKZbZfxFB36AoU3vQMwnSM(Linfo/flowersoft/theotown/city/City;I)Ljava/lang/Boolean;
    .registers 5

    .line 34
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getTimedEffectManager()Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getFastForwardDays()I

    move-result v1

    invoke-static {}, Linfo/flowersoft/theotown/ui/FastForwardDialog;->getTimeFeature()Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v2

    iget v2, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->time:I

    div-int/lit16 v2, v2, 0x1f4

    add-int/2addr v1, v2

    .line 35
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->setFastForwardDays(I)V

    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/DefaultDate;->setSpeed(I)V

    .line 38
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gui/Master;Linfo/flowersoft/theotown/city/City;I)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;",
            "Lio/blueflower/stapel2d/gui/Master;",
            "Linfo/flowersoft/theotown/city/City;",
            "I)V"
        }
    .end annotation

    .line 28
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_WIZARD:I

    .line 30
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    const/16 v2, 0x50c

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    const/16 v3, 0x50f

    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {}, Linfo/flowersoft/theotown/ui/FastForwardDialog;->getTimeFeature()Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v3

    iget v3, v3, Linfo/flowersoft/theotown/draft/FeatureDraft;->time:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 31
    invoke-static {v0, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-static {}, Linfo/flowersoft/theotown/ui/FastForwardDialog;->getTimeFeature()Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    int-to-long v5, v0

    new-instance v7, Linfo/flowersoft/theotown/ui/FastForwardDialog$$ExternalSyntheticLambda0;

    move-object/from16 v0, p4

    move/from16 v4, p5

    invoke-direct {v7, v0, v4}, Linfo/flowersoft/theotown/ui/FastForwardDialog$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/city/City;I)V

    .line 39
    invoke-static {}, Linfo/flowersoft/theotown/ui/FastForwardDialog;->getFreeTimeFeature()Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_52

    invoke-static {}, Linfo/flowersoft/theotown/ui/FastForwardDialog;->getFreeTimeFeature()Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v0

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->buyable:Z

    if-eqz v0, :cond_52

    const/4 v0, 0x1

    :goto_50
    move v12, v0

    goto :goto_54

    :cond_52
    const/4 v0, 0x0

    goto :goto_50

    .line 28
    :goto_54
    const-string v10, "fast forward2"

    const-string v11, "Fast_Speed"

    move-object v0, p0

    move-object v9, p1

    move-object v8, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v12}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static getFreeTimeFeature()Linfo/flowersoft/theotown/draft/FeatureDraft;
    .registers 1

    .line 47
    invoke-static {}, Linfo/flowersoft/theotown/resources/Features;->getInstance()Linfo/flowersoft/theotown/resources/Features;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_FREEFASTSPEED00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/LazyGetter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/FeatureDraft;

    return-object v0
.end method

.method public static getTimeFeature()Linfo/flowersoft/theotown/draft/FeatureDraft;
    .registers 1

    .line 43
    invoke-static {}, Linfo/flowersoft/theotown/resources/Features;->getInstance()Linfo/flowersoft/theotown/resources/Features;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_TIME00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/LazyGetter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/FeatureDraft;

    return-object v0
.end method

###### Class info.flowersoft.theotown.ui.FastForwardDialog$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.FastForwardDialog$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/FastForwardDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/city/City;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/city/City;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/FastForwardDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/city/City;

    iput p2, p0, Linfo/flowersoft/theotown/ui/FastForwardDialog$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/FastForwardDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/city/City;

    iget v1, p0, Linfo/flowersoft/theotown/ui/FastForwardDialog$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/FastForwardDialog;->$r8$lambda$yjjCDbKZbZfxFB36AoU3vQMwnSM(Linfo/flowersoft/theotown/city/City;I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

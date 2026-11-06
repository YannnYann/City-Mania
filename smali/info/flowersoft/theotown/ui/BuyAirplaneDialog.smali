###### Class info.flowersoft.theotown.ui.BuyAirplaneDialog (info.flowersoft.theotown.ui.BuyAirplaneDialog)
.class public Linfo/flowersoft/theotown/ui/BuyAirplaneDialog;
.super Linfo/flowersoft/theotown/ui/Dialog;
.source "BuyAirplaneDialog.java"


# direct methods
.method public static synthetic $r8$lambda$JuNeB7vMM5jeheJh4fT2a8kd5Zg(Linfo/flowersoft/theotown/ui/BuyAirplaneDialog;)V
    .registers 2

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/components/airport/DefaultAirport;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
    .registers 8

    .line 22
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_AIRPORT:I

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v1

    const/16 v2, 0xddd

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-direct {p0, v0, v1, v3, p3}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 24
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->removeControlLine()V

    .line 27
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 29
    :goto_1a
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->AIRPLANES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 30
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->AIRPLANES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    .line 31
    new-instance v3, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;

    invoke-direct {v3, p1, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableAirplaneDraft;-><init>(Linfo/flowersoft/theotown/components/airport/DefaultAirport;Linfo/flowersoft/theotown/draft/FlyingObjectDraft;)V

    .line 32
    new-instance v1, Linfo/flowersoft/theotown/ui/BuyAirplaneDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/ui/BuyAirplaneDialog$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/BuyAirplaneDialog;)V

    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->setOnSelect(Ljava/lang/Runnable;)V

    .line 33
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 36
    :cond_3d
    new-instance p1, Linfo/flowersoft/theotown/ui/Selector;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p2

    invoke-interface {p2, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v0

    invoke-direct {p1, p2, v0, p3}, Linfo/flowersoft/theotown/ui/Selector;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->abuseFor(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 40
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    return-void
.end method

###### Class info.flowersoft.theotown.ui.BuyAirplaneDialog$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.BuyAirplaneDialog$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/BuyAirplaneDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/BuyAirplaneDialog;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/BuyAirplaneDialog;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/BuyAirplaneDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/BuyAirplaneDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/BuyAirplaneDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/BuyAirplaneDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/BuyAirplaneDialog;->$r8$lambda$JuNeB7vMM5jeheJh4fT2a8kd5Zg(Linfo/flowersoft/theotown/ui/BuyAirplaneDialog;)V

    return-void
.end method

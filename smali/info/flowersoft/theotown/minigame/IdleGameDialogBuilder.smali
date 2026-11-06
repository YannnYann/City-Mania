###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder (info.flowersoft.theotown.minigame.IdleGameDialogBuilder)
.class public Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;
.super Ljava/lang/Object;
.source "IdleGameDialogBuilder.java"


# static fields
.field public static final gameShifts:Lcom/badlogic/gdx/utils/IntIntMap;


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final currency:Linfo/flowersoft/theotown/minigame/Currency;

.field public dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public final game:Linfo/flowersoft/theotown/minigame/IdleGame;

.field public final gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

.field public listBox:Lio/blueflower/stapel2d/gui/ListBox;


# direct methods
.method public static synthetic $r8$lambda$0h0KkbBXFC4wwcOOsBJ-kujn_yQ(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;Ljava/lang/Boolean;)V
    .registers 2

    .line 134
    iget-object p0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    .line 134
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$55UY7YWWoNxECtWcZ641sHc40qo(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;D)Ljava/lang/Boolean;
    .registers 3

    .line 166
    iget-object p0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->currency:Linfo/flowersoft/theotown/minigame/Currency;

    .line 166
    invoke-interface {p0, p1, p2}, Linfo/flowersoft/theotown/minigame/Currency;->canSpend(D)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8sg2zDo4juyp6-q9LBLmssm_eGo(Linfo/flowersoft/theotown/minigame/IdleGame$Property;I)Ljava/lang/Boolean;
    .registers 3

    .line 139
    invoke-interface {p0, p1}, Linfo/flowersoft/theotown/minigame/IdleGame$Property;->isNeeded(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p0, p1}, Linfo/flowersoft/theotown/minigame/IdleGame$Property;->isReady(I)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9HYFDvt02kZG6ldyrWJmc6a1VFA(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)V
    .registers 3

    .line 89
    sget-object v0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->gameShifts:Lcom/badlogic/gdx/utils/IntIntMap;

    .line 89
    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    .line 89
    invoke-virtual {v1}, Linfo/flowersoft/theotown/minigame/IdleGame;->getId()I

    move-result v1

    iget-object p0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ListBox;->getShiftY()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v0, v1, p0}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$PAxgXOsXkRxNoBKvoRhsXuDStSQ(Linfo/flowersoft/theotown/util/TimeUnlockable;IIII)V
    .registers 9

    if-nez p4, :cond_39

    int-to-long v0, p1

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    .line 240
    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/util/TimeUnlockable;->reduceWaitingTime(J)V

    .line 241
    sget-object p0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, ""

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "stage"

    const-string p4, "time"

    filled-new-array {p3, p1, p4, p2}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "Shorten time"

    invoke-interface {p0, p2, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_39
    return-void
.end method

.method public static synthetic $r8$lambda$PiEjdPh75DuKpDGGXjIlj2IKybo(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;I)Ljava/lang/Boolean;
    .registers 2

    .line 150
    iget-object p0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    .line 150
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/minigame/IdleGame;->propertiesFulfilled(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$T8Yd25D10Wj2_kV15N6d10njoAM(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;Linfo/flowersoft/theotown/util/TimeUnlockable;)Ljava/lang/Boolean;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/TimeUnlockable;->isUnlocked()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 253
    iget-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/minigame/IdleGame;->addStage()V

    .line 254
    invoke-virtual {p0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->update()V

    .line 256
    :cond_11
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic $r8$lambda$cBIgC-hUASX3OLRn52m3-g4efx8(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/util/TimeUnlockable;)Ljava/lang/String;
    .registers 4

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40b

    invoke-interface {p0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/TimeUnlockable;->getRemainingTimeMS()J

    move-result-wide p0

    invoke-static {p0, p1}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$g5AoQTHTWFOHydfzm5dnn5OM5kA(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;I)Ljava/lang/String;
    .registers 2

    .line 114
    iget-object p0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    .line 114
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/minigame/IdleGame;->getStageTitle(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hT1eDEmK7FQifGfqc5A7Xh0MC8s(Lio/blueflower/stapel2d/util/Getter;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 1

    .line 187
    invoke-interface {p0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_11

    .line 188
    sget-object p0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p0, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    return-object p0

    .line 190
    :cond_11
    sget-object p0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p0, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    return-object p0
.end method

.method public static synthetic $r8$lambda$kk7gKqxvyTmXKoiJOMQMmkAjOC4(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;I)V
    .registers 8

    .line 145
    new-instance v0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;

    .line 145
    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    .line 145
    iget-object v2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 147
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    iget-object v5, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->currency:Linfo/flowersoft/theotown/minigame/Currency;

    move v4, p1

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;-><init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/minigame/IdleGame;ILinfo/flowersoft/theotown/minigame/Currency;)V

    iget-object p0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    .line 149
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p0

    check-cast p0, Lio/blueflower/stapel2d/gui/Master;

    .line 148
    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->build(Lio/blueflower/stapel2d/gui/Master;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object p0

    const/4 p1, 0x1

    .line 149
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$kvSSl9PbYDgJBW85qr3sf9RdMdk(Linfo/flowersoft/theotown/util/TimeUnlockable;Linfo/flowersoft/theotown/crossplatform/VideoAdStage;)Ljava/lang/Boolean;
    .registers 2

    .line 250
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/TimeUnlockable;->isPaused()Z

    move-result p0

    if-nez p0, :cond_e

    invoke-interface {p1}, Linfo/flowersoft/theotown/util/Loadable;->isLoaded()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nDUGnqOlrLQyrjVGLloIbth-ef4(Linfo/flowersoft/theotown/util/TimeUnlockable;)Ljava/lang/Boolean;
    .registers 1

    .line 233
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/TimeUnlockable;->isPaused()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oeJmfZf7VCg7k95rmcB28cmbANU(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;I)Ljava/lang/String;
    .registers 2

    .line 115
    iget-object p0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    .line 115
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/minigame/IdleGame;->getStageSubTitle(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qUOyjSLgAgvhPVZ6CEPqbMy1Frs(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;I)Ljava/lang/Boolean;
    .registers 4

    .line 152
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->currency:Linfo/flowersoft/theotown/minigame/Currency;

    .line 152
    iget-object p0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/minigame/IdleGame;->getLevel(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Linfo/flowersoft/theotown/minigame/IdleGame;->priceOfUpgrade(II)D

    move-result-wide p0

    invoke-interface {v0, p0, p1}, Linfo/flowersoft/theotown/minigame/Currency;->canSpend(D)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$r4VimgsuFg6tZAEFVTkNWQMMD2A(Linfo/flowersoft/theotown/minigame/IdleGame$Property;ILio/blueflower/stapel2d/util/Setter;)V
    .registers 3

    .line 139
    invoke-interface {p0, p1, p2}, Linfo/flowersoft/theotown/minigame/IdleGame$Property;->onClick(ILio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->gameShifts:Lcom/badlogic/gdx/utils/IntIntMap;

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/minigame/IdleGame;)V
    .registers 5

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    .line 53
    iput-object p2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 54
    iput-object p3, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    .line 55
    iput-object p4, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    .line 56
    invoke-virtual {p4}, Linfo/flowersoft/theotown/minigame/IdleGame;->getCurrency()Linfo/flowersoft/theotown/minigame/Currency;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->currency:Linfo/flowersoft/theotown/minigame/Currency;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)Linfo/flowersoft/theotown/minigame/Currency;
    .registers 1

    .line 39
    iget-object p0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->currency:Linfo/flowersoft/theotown/minigame/Currency;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)Linfo/flowersoft/theotown/minigame/IdleGame;
    .registers 1

    .line 39
    iget-object p0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)V
    .registers 1

    .line 39
    invoke-virtual {p0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->update()V

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)Lio/blueflower/stapel2d/gui/ListBox;
    .registers 1

    .line 39
    iget-object p0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;
    .registers 1

    .line 39
    iget-object p0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)Lio/blueflower/stapel2d/gamestack/GameStack;
    .registers 1

    .line 39
    iget-object p0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    return-object p0
.end method


# virtual methods
.method public build(Lio/blueflower/stapel2d/gui/Master;)Linfo/flowersoft/theotown/ui/Dialog;
    .registers 10

    .line 60
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/minigame/IdleGame;->getIcon()I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/minigame/IdleGame;->getName()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v3

    const/16 v4, 0x140

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    const-string v3, ""

    const/16 v4, 0x12c

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 p1, 0x1

    .line 62
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setDrawBackground(Z)V

    .line 63
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 65
    iget-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    .line 67
    new-instance v0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$1;

    iget-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v7

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$1;-><init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 84
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    .line 86
    new-instance v2, Lio/blueflower/stapel2d/gui/ListBox;

    iget-object p1, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v2, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    .line 87
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    .line 89
    iget-object p1, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    new-instance v0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)V

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setOnClose(Ljava/lang/Runnable;)V

    .line 91
    invoke-virtual {p0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->update()V

    .line 93
    sget-object p1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->gameShifts:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-object v0, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/minigame/IdleGame;->getId()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result p1

    .line 94
    iget-object v0, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/ListBox;->setShiftY(F)V

    .line 95
    iget-object p1, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    return-object p1
.end method

.method public final buildItem(I)V
    .registers 11

    .line 113
    new-instance v0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;

    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;-><init>(Lio/blueflower/stapel2d/gui/ListBox;)V

    .line 114
    new-instance v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda8;-><init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;I)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setTitle(Lio/blueflower/stapel2d/util/Getter;)V

    .line 115
    new-instance v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda9;-><init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;I)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setSubTitle(Lio/blueflower/stapel2d/util/Getter;)V

    .line 116
    new-instance v1, Lio/blueflower/stapel2d/util/StaticGetter;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, v2}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setSubTitleColor(Lio/blueflower/stapel2d/util/Getter;)V

    .line 117
    new-instance v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$2;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$2;-><init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;I)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setIcon(Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Icon;)V

    .line 134
    new-instance v7, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda10;

    invoke-direct {v7, p0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda10;-><init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)V

    const/4 v1, 0x0

    move v8, v1

    .line 136
    :goto_32
    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/minigame/IdleGame;->countProperties()I

    move-result v1

    if-ge v8, v1, :cond_5d

    .line 137
    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    invoke-virtual {v1, v8}, Linfo/flowersoft/theotown/minigame/IdleGame;->getProperty(I)Linfo/flowersoft/theotown/minigame/IdleGame$Property;

    move-result-object v1

    move-object v2, v1

    .line 138
    invoke-interface {v2}, Linfo/flowersoft/theotown/minigame/IdleGame$Property;->getIcon()I

    move-result v1

    move-object v3, v2

    invoke-interface {v3}, Linfo/flowersoft/theotown/minigame/IdleGame$Property;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    new-instance v3, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda11;

    invoke-direct {v3, v4, p1, v7}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda11;-><init>(Linfo/flowersoft/theotown/minigame/IdleGame$Property;ILio/blueflower/stapel2d/util/Setter;)V

    new-instance v6, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda12;

    invoke-direct {v6, v4, p1}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda12;-><init>(Linfo/flowersoft/theotown/minigame/IdleGame$Property;I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    .line 142
    :cond_5d
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_UPGRADE:I

    iget-object v2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    .line 144
    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/minigame/IdleGame;->getUpgradeTitle(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0, p1}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda13;-><init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;I)V

    new-instance v4, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda14;

    invoke-direct {v4, p0, p1}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda14;-><init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;I)V

    new-instance v6, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda15;

    invoke-direct {v6, p0, p1}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda15;-><init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;I)V

    const/4 v5, 0x0

    .line 142
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;)V

    .line 154
    iget-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public final buildUnlockItem(I)V
    .registers 23

    move-object/from16 v1, p0

    move/from16 v4, p1

    .line 158
    const-string v0, "idle game"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 160
    iget-object v2, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/minigame/IdleGame;->priceOfStage(I)D

    move-result-wide v2

    .line 161
    const-string v5, "ad skip min"

    const/16 v6, 0x1e

    invoke-virtual {v0, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 162
    iget-object v5, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/minigame/IdleGame;->getStageLock()Linfo/flowersoft/theotown/util/TimeUnlockable;

    move-result-object v5

    const/4 v7, 0x0

    if-eqz v5, :cond_33

    .line 163
    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/TimeUnlockable;->getRemainingTimeMS()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    const-wide/16 v10, 0x0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    goto :goto_34

    :cond_33
    move v8, v7

    :goto_34
    if-eqz v5, :cond_3f

    .line 164
    const-string v9, "min to diamond ratio"

    invoke-virtual {v0, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    div-int v0, v8, v0

    goto :goto_40

    :cond_3f
    move v0, v7

    .line 166
    :goto_40
    new-instance v13, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v13, v1, v2, v3}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;D)V

    if-eqz v5, :cond_133

    .line 168
    sget-boolean v9, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v9, :cond_4d

    goto/16 :goto_133

    .line 182
    :cond_4d
    iget-object v9, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v9}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v9

    .line 183
    new-instance v14, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;

    iget-object v10, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-direct {v14, v10}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;-><init>(Lio/blueflower/stapel2d/gui/ListBox;)V

    .line 184
    sget v10, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOCKED:I

    invoke-virtual {v14, v10}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setIcon(I)V

    .line 185
    new-instance v10, Lio/blueflower/stapel2d/util/StaticGetter;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0xd61

    invoke-interface {v9, v12}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3, v7}, Linfo/flowersoft/theotown/util/Localizer;->localizeBigNumber(DZ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->currency:Linfo/flowersoft/theotown/minigame/Currency;

    invoke-interface {v12}, Linfo/flowersoft/theotown/minigame/Currency;->getUnit()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v14, v10}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setTitle(Lio/blueflower/stapel2d/util/Getter;)V

    .line 186
    new-instance v10, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v10, v13}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda2;-><init>(Lio/blueflower/stapel2d/util/Getter;)V

    invoke-virtual {v14, v10}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setTitleColor(Lio/blueflower/stapel2d/util/Getter;)V

    .line 193
    new-instance v10, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda3;

    invoke-direct {v10, v9, v5}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda3;-><init>(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/util/TimeUnlockable;)V

    invoke-virtual {v14, v10}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setSubTitle(Lio/blueflower/stapel2d/util/Getter;)V

    .line 194
    sget v10, Linfo/flowersoft/theotown/resources/Resources;->ICON_CLOCK:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3, v7}, Linfo/flowersoft/theotown/util/Localizer;->localizeBigNumber(DZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->currency:Linfo/flowersoft/theotown/minigame/Currency;

    invoke-interface {v7}, Linfo/flowersoft/theotown/minigame/Currency;->getUnit()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$4;

    invoke-direct {v12, v1, v2, v3, v5}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$4;-><init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;DLinfo/flowersoft/theotown/util/TimeUnlockable;)V

    move-object v9, v14

    new-instance v14, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$5;

    invoke-direct {v14, v1, v5}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$5;-><init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;Linfo/flowersoft/theotown/util/TimeUnlockable;)V

    move-object v15, v13

    invoke-virtual/range {v9 .. v15}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;)V

    move-object v14, v9

    .line 207
    sget v15, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;

    move v2, v0

    move-object v3, v5

    move v5, v8

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;-><init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;ILinfo/flowersoft/theotown/util/TimeUnlockable;II)V

    new-instance v2, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda4;

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda4;-><init>(Linfo/flowersoft/theotown/util/TimeUnlockable;)V

    const/16 v20, 0x1

    const/16 v18, 0x0

    move-object/from16 v19, v2

    invoke-virtual/range {v14 .. v20}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Z)V

    .line 235
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->videoAdStageFactory:Linfo/flowersoft/theotown/crossplatform/VideoAdStage$VideoAdStageFactory;

    iget-object v2, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    new-instance v7, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda5;

    invoke-direct {v7, v3, v6, v4, v5}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda5;-><init>(Linfo/flowersoft/theotown/util/TimeUnlockable;III)V

    const-string v4, "Idle_Game_Skip_Time"

    invoke-interface {v0, v2, v4, v7}, Linfo/flowersoft/theotown/crossplatform/VideoAdStage$VideoAdStageFactory;->create(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;)Linfo/flowersoft/theotown/crossplatform/VideoAdStage;

    move-result-object v0

    .line 245
    sget v15, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAY_AD_VIDEO:I

    neg-int v2, v6

    int-to-long v4, v2

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object v16

    new-instance v2, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$7;

    invoke-direct {v2, v1, v0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$7;-><init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;Linfo/flowersoft/theotown/crossplatform/VideoAdStage;)V

    new-instance v4, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda6;

    invoke-direct {v4, v3, v0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda6;-><init>(Linfo/flowersoft/theotown/util/TimeUnlockable;Linfo/flowersoft/theotown/crossplatform/VideoAdStage;)V

    move-object/from16 v17, v2

    move-object/from16 v19, v4

    invoke-virtual/range {v14 .. v20}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Z)V

    .line 251
    new-instance v0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda7;

    invoke-direct {v0, v1, v3}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda7;-><init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;Linfo/flowersoft/theotown/util/TimeUnlockable;)V

    invoke-virtual {v14, v0}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setVisibility(Lio/blueflower/stapel2d/util/Getter;)V

    .line 258
    iget-object v0, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0, v14}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void

    .line 169
    :cond_133
    :goto_133
    new-instance v9, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;

    iget-object v0, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-direct {v9, v0}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;-><init>(Lio/blueflower/stapel2d/gui/ListBox;)V

    .line 170
    iget-object v0, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/minigame/IdleGame;->getUnlockTitle(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setTitle(Ljava/lang/String;)V

    .line 171
    iget-object v0, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/minigame/IdleGame;->getUnlockSubTitle(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setSubTitle(Ljava/lang/String;)V

    .line 172
    sget v10, Linfo/flowersoft/theotown/resources/Resources;->ICON_UNLOCK:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3, v7}, Linfo/flowersoft/theotown/util/Localizer;->localizeBigNumber(DZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->currency:Linfo/flowersoft/theotown/minigame/Currency;

    invoke-interface {v4}, Linfo/flowersoft/theotown/minigame/Currency;->getUnit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$3;

    invoke-direct {v12, v1, v2, v3}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$3;-><init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;D)V

    const/4 v14, 0x0

    move-object v15, v13

    invoke-virtual/range {v9 .. v15}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;)V

    .line 180
    iget-object v0, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0, v9}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public final update()V
    .registers 3

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/minigame/IdleGame;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setTitle(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->removeAllItems()V

    const/4 v0, 0x0

    .line 103
    :goto_11
    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/minigame/IdleGame;->countStages()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 104
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->buildItem(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 107
    :cond_1f
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/minigame/IdleGame;->countStages()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/minigame/IdleGame;->maxStageCount()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 108
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/minigame/IdleGame;->countStages()I

    move-result v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->buildUnlockItem(I)V

    :cond_36
    return-void
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder.AnonymousClass1 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$1)
.class public Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$1;
.super Lio/blueflower/stapel2d/gui/Label;
.source "IdleGameDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->build(Lio/blueflower/stapel2d/gui/Master;)Linfo/flowersoft/theotown/ui/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 67
    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$1;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 70
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 71
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr p1, v0

    .line 72
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p2, v0

    .line 73
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    .line 74
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v2

    .line 75
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    move v4, v2

    iget-object v2, v3, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    .line 77
    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$1;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    invoke-static {v5}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->access$000(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)Linfo/flowersoft/theotown/minigame/Currency;

    move-result-object v5

    invoke-interface {v5}, Linfo/flowersoft/theotown/minigame/Currency;->getEstate()D

    move-result-wide v5

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Linfo/flowersoft/theotown/util/Localizer;->localizeBigNumber(DZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$1;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    invoke-static {v5}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->access$000(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)Linfo/flowersoft/theotown/minigame/Currency;

    move-result-object v5

    invoke-interface {v5}, Linfo/flowersoft/theotown/minigame/Currency;->getUnit()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$1;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    .line 79
    invoke-static {v5}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->access$100(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)Linfo/flowersoft/theotown/minigame/IdleGame;

    move-result-object v5

    invoke-virtual {v5}, Linfo/flowersoft/theotown/minigame/IdleGame;->getOverallIncome()D

    move-result-wide v5

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Linfo/flowersoft/theotown/util/Localizer;->localizeBigNumber(DZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$1;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    invoke-static {v5}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->access$000(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)Linfo/flowersoft/theotown/minigame/Currency;

    move-result-object v5

    invoke-interface {v5}, Linfo/flowersoft/theotown/minigame/Currency;->getUnit()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/s"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-float p1, p1

    int-to-float v5, p2

    int-to-float v6, v0

    int-to-float v7, v4

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    move v4, p1

    .line 78
    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 82
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder.AnonymousClass2 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$2)
.class public Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$2;
.super Ljava/lang/Object;
.source "IdleGameDialogBuilder.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Icon;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->buildItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

.field public final synthetic val$stage:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;I)V
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

    .line 117
    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$2;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    iput p2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$2;->val$stage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lio/blueflower/stapel2d/drawing/Engine;IIII)V
    .registers 14

    .line 130
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$2;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->access$100(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)Linfo/flowersoft/theotown/minigame/IdleGame;

    move-result-object v1

    iget v7, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$2;->val$stage:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Linfo/flowersoft/theotown/minigame/IdleGame;->drawStageIcon(Lio/blueflower/stapel2d/drawing/Engine;IIIII)V

    return-void
.end method

.method public getHeight()I
    .registers 2

    .line 0
    const/16 v0, 0x20

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 0
    const/16 v0, 0x40

    return v0
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder.AnonymousClass3 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$3)
.class public Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$3;
.super Ljava/lang/Object;
.source "IdleGameDialogBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->buildUnlockItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

.field public final synthetic val$price:D


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;D)V
    .registers 4
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

    .line 172
    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$3;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    iput-wide p2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$3;->val$price:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 175
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$3;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->access$000(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)Linfo/flowersoft/theotown/minigame/Currency;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$3;->val$price:D

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/minigame/Currency;->spend(D)V

    .line 176
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$3;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->access$100(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)Linfo/flowersoft/theotown/minigame/IdleGame;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/minigame/IdleGame;->addStage()V

    .line 177
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$3;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->access$200(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)V

    return-void
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder.AnonymousClass4 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$4)
.class public Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$4;
.super Ljava/lang/Object;
.source "IdleGameDialogBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->buildUnlockItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

.field public final synthetic val$lock:Linfo/flowersoft/theotown/util/TimeUnlockable;

.field public final synthetic val$price:D


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;DLinfo/flowersoft/theotown/util/TimeUnlockable;)V
    .registers 5
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

    .line 194
    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$4;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    iput-wide p2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$4;->val$price:D

    iput-object p4, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$4;->val$lock:Linfo/flowersoft/theotown/util/TimeUnlockable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 197
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$4;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->access$000(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)Linfo/flowersoft/theotown/minigame/Currency;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$4;->val$price:D

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/minigame/Currency;->spend(D)V

    .line 198
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$4;->val$lock:Linfo/flowersoft/theotown/util/TimeUnlockable;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/TimeUnlockable;->resume()V

    .line 199
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$4;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->access$200(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)V

    return-void
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder.AnonymousClass5 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$5)
.class public Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$5;
.super Ljava/lang/Object;
.source "IdleGameDialogBuilder.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->buildUnlockItem(I)V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

.field public final synthetic val$lock:Linfo/flowersoft/theotown/util/TimeUnlockable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;Linfo/flowersoft/theotown/util/TimeUnlockable;)V
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

    .line 201
    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$5;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$5;->val$lock:Linfo/flowersoft/theotown/util/TimeUnlockable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 2

    .line 204
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$5;->val$lock:Linfo/flowersoft/theotown/util/TimeUnlockable;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/TimeUnlockable;->isPaused()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 201
    invoke-virtual {p0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$5;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder.AnonymousClass6 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$6)
.class public Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;
.super Ljava/lang/Object;
.source "IdleGameDialogBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->buildUnlockItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

.field public final synthetic val$approxTimeMin:I

.field public final synthetic val$diamondPrice:I

.field public final synthetic val$lock:Linfo/flowersoft/theotown/util/TimeUnlockable;

.field public final synthetic val$stage:I


# direct methods
.method public static synthetic $r8$lambda$Qx9fIefl40tYVvrOKFcZIQcz1BY(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;Linfo/flowersoft/theotown/util/TimeUnlockable;Linfo/flowersoft/theotown/mechanics/GameHandler;II)Ljava/lang/Boolean;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/TimeUnlockable;->unlockImmediately()V

    .line 220
    iget-object p0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    invoke-static {p0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->access$200(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)V

    .line 221
    invoke-virtual {p2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result p0

    const p1, 0x186a0

    if-ge p0, p1, :cond_51

    sget p0, Linfo/flowersoft/theotown/resources/Constants;->VERDÄCHTIG:I

    if-nez p0, :cond_51

    invoke-static {}, Linfo/flowersoft/theotown/resources/Features;->getInstance()Linfo/flowersoft/theotown/resources/Features;

    move-result-object p0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/Features;->isProbablyTestUser()Z

    move-result p0

    if-nez p0, :cond_51

    .line 222
    sget-object p0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "stage"

    const-string p4, "time"

    filled-new-array {p3, p1, p4, p2}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unlock immediately"

    invoke-interface {p0, p2, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 225
    :cond_51
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic $r8$lambda$lYgvj1OTkfjK5xBMp1x-wJj9hQM(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 2

    .line 228
    iget-object p0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    .line 228
    invoke-static {p0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->access$500(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;ILinfo/flowersoft/theotown/util/TimeUnlockable;II)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    iput p2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;->val$diamondPrice:I

    iput-object p3, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;->val$lock:Linfo/flowersoft/theotown/util/TimeUnlockable;

    iput p4, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;->val$stage:I

    iput p5, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;->val$approxTimeMin:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    move-object/from16 v1, p0

    .line 210
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v3

    .line 211
    invoke-virtual {v3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v0

    iget v2, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;->val$diamondPrice:I

    const/4 v6, 0x1

    if-lt v0, v2, :cond_57

    .line 212
    new-instance v7, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->ICON_UNLOCK:I

    iget-object v0, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    .line 213
    invoke-static {v0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->access$100(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)Linfo/flowersoft/theotown/minigame/IdleGame;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/minigame/IdleGame;->getUnlockImmediatelyTitle()Ljava/lang/String;

    move-result-object v9

    iget-object v0, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    .line 214
    invoke-static {v0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->access$100(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)Linfo/flowersoft/theotown/minigame/IdleGame;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/minigame/IdleGame;->getUnlockImmediatelyText()Ljava/lang/String;

    move-result-object v10

    iget-object v0, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    .line 215
    invoke-static {v0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->access$300(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lio/blueflower/stapel2d/gui/Master;

    iget v0, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;->val$diamondPrice:I

    int-to-long v12, v0

    iget-object v2, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;->val$lock:Linfo/flowersoft/theotown/util/TimeUnlockable;

    iget v4, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;->val$stage:I

    iget v5, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;->val$approxTimeMin:I

    new-instance v0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6$$ExternalSyntheticLambda0;

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;Linfo/flowersoft/theotown/util/TimeUnlockable;Linfo/flowersoft/theotown/mechanics/GameHandler;II)V

    iget-object v2, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    .line 226
    invoke-static {v2}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->access$400(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v15, 0x0

    const-string v17, "unlock idle lane"

    move-object v14, v0

    invoke-direct/range {v7 .. v19}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v7, v6}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void

    .line 228
    :cond_57
    new-instance v0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;)V

    .line 229
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v3, "Open"

    const-string v4, "IdleGame"

    const-string v5, "Shop"

    invoke-interface {v2, v5, v3, v4}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v2, Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    iget-object v3, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    invoke-static {v3}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->access$300(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/gui/Master;

    iget-object v4, v1, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    invoke-static {v4}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->access$400(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {v2, v6}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder$6$$ExternalSyntheticLambda0 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$6$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;

.field public final synthetic f$1:Linfo/flowersoft/theotown/util/TimeUnlockable;

.field public final synthetic f$2:Linfo/flowersoft/theotown/mechanics/GameHandler;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;Linfo/flowersoft/theotown/util/TimeUnlockable;Linfo/flowersoft/theotown/mechanics/GameHandler;II)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;

    iput-object p2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/util/TimeUnlockable;

    iput-object p3, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6$$ExternalSyntheticLambda0;->f$2:Linfo/flowersoft/theotown/mechanics/GameHandler;

    iput p4, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;

    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/util/TimeUnlockable;

    iget-object v2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6$$ExternalSyntheticLambda0;->f$2:Linfo/flowersoft/theotown/mechanics/GameHandler;

    iget v3, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6$$ExternalSyntheticLambda0;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;->$r8$lambda$Qx9fIefl40tYVvrOKFcZIQcz1BY(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;Linfo/flowersoft/theotown/util/TimeUnlockable;Linfo/flowersoft/theotown/mechanics/GameHandler;II)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder$6$$ExternalSyntheticLambda1 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$6$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;

    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;->$r8$lambda$lYgvj1OTkfjK5xBMp1x-wJj9hQM(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$6;Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder.AnonymousClass7 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$7)
.class public Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$7;
.super Ljava/lang/Object;
.source "IdleGameDialogBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->buildUnlockItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

.field public final synthetic val$adStage:Linfo/flowersoft/theotown/crossplatform/VideoAdStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;Linfo/flowersoft/theotown/crossplatform/VideoAdStage;)V
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

    .line 245
    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$7;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$7;->val$adStage:Linfo/flowersoft/theotown/crossplatform/VideoAdStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 248
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$7;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->access$500(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$7;->val$adStage:Linfo/flowersoft/theotown/crossplatform/VideoAdStage;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda0 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->$r8$lambda$9HYFDvt02kZG6ldyrWJmc6a1VFA(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)V

    return-void
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda1 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

.field public final synthetic f$1:D


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;D)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    iput-wide p2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda1;->f$1:D

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    iget-wide v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda1;->f$1:D

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->$r8$lambda$55UY7YWWoNxECtWcZ641sHc40qo(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;D)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda10 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda10)
.class public final synthetic Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda10;->f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda10;->f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->$r8$lambda$0h0KkbBXFC4wwcOOsBJ-kujn_yQ(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;Ljava/lang/Boolean;)V

    return-void
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda11 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda11)
.class public final synthetic Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/minigame/IdleGame$Property;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/minigame/IdleGame$Property;ILio/blueflower/stapel2d/util/Setter;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda11;->f$0:Linfo/flowersoft/theotown/minigame/IdleGame$Property;

    iput p2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda11;->f$1:I

    iput-object p3, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda11;->f$2:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda11;->f$0:Linfo/flowersoft/theotown/minigame/IdleGame$Property;

    iget v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda11;->f$1:I

    iget-object v2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda11;->f$2:Lio/blueflower/stapel2d/util/Setter;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->$r8$lambda$r4VimgsuFg6tZAEFVTkNWQMMD2A(Linfo/flowersoft/theotown/minigame/IdleGame$Property;ILio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda12 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda12)
.class public final synthetic Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/minigame/IdleGame$Property;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/minigame/IdleGame$Property;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda12;->f$0:Linfo/flowersoft/theotown/minigame/IdleGame$Property;

    iput p2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda12;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda12;->f$0:Linfo/flowersoft/theotown/minigame/IdleGame$Property;

    iget v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda12;->f$1:I

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->$r8$lambda$8sg2zDo4juyp6-q9LBLmssm_eGo(Linfo/flowersoft/theotown/minigame/IdleGame$Property;I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda13 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda13)
.class public final synthetic Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda13;->f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    iput p2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda13;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda13;->f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda13;->f$1:I

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->$r8$lambda$kk7gKqxvyTmXKoiJOMQMmkAjOC4(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;I)V

    return-void
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda14 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda14)
.class public final synthetic Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda14;->f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    iput p2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda14;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda14;->f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda14;->f$1:I

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->$r8$lambda$PiEjdPh75DuKpDGGXjIlj2IKybo(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda15 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda15)
.class public final synthetic Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda15;->f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    iput p2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda15;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda15;->f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda15;->f$1:I

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->$r8$lambda$qUOyjSLgAgvhPVZ6CEPqbMy1Frs(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda2 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/util/Getter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda2;->f$0:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda2;->f$0:Lio/blueflower/stapel2d/util/Getter;

    invoke-static {v0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->$r8$lambda$hT1eDEmK7FQifGfqc5A7Xh0MC8s(Lio/blueflower/stapel2d/util/Getter;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda3 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/gamestack/Translator;

.field public final synthetic f$1:Linfo/flowersoft/theotown/util/TimeUnlockable;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/util/TimeUnlockable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda3;->f$0:Lio/blueflower/stapel2d/gamestack/Translator;

    iput-object p2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda3;->f$1:Linfo/flowersoft/theotown/util/TimeUnlockable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda3;->f$0:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda3;->f$1:Linfo/flowersoft/theotown/util/TimeUnlockable;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->$r8$lambda$cBIgC-hUASX3OLRn52m3-g4efx8(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/util/TimeUnlockable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda4 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/util/TimeUnlockable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/util/TimeUnlockable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/util/TimeUnlockable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/util/TimeUnlockable;

    invoke-static {v0}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->$r8$lambda$nDUGnqOlrLQyrjVGLloIbth-ef4(Linfo/flowersoft/theotown/util/TimeUnlockable;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda5 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/util/TimeUnlockable;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/util/TimeUnlockable;III)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/util/TimeUnlockable;

    iput p2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda5;->f$1:I

    iput p3, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda5;->f$2:I

    iput p4, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda5;->f$3:I

    return-void
.end method


# virtual methods
.method public final handle(I)V
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/util/TimeUnlockable;

    iget v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda5;->f$1:I

    iget v2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda5;->f$2:I

    iget v3, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda5;->f$3:I

    invoke-static {v0, v1, v2, v3, p1}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->$r8$lambda$PAxgXOsXkRxNoBKvoRhsXuDStSQ(Linfo/flowersoft/theotown/util/TimeUnlockable;IIII)V

    return-void
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda6 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/util/TimeUnlockable;

.field public final synthetic f$1:Linfo/flowersoft/theotown/crossplatform/VideoAdStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/util/TimeUnlockable;Linfo/flowersoft/theotown/crossplatform/VideoAdStage;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/util/TimeUnlockable;

    iput-object p2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda6;->f$1:Linfo/flowersoft/theotown/crossplatform/VideoAdStage;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/util/TimeUnlockable;

    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda6;->f$1:Linfo/flowersoft/theotown/crossplatform/VideoAdStage;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->$r8$lambda$kvSSl9PbYDgJBW85qr3sf9RdMdk(Linfo/flowersoft/theotown/util/TimeUnlockable;Linfo/flowersoft/theotown/crossplatform/VideoAdStage;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda7 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda7)
.class public final synthetic Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

.field public final synthetic f$1:Linfo/flowersoft/theotown/util/TimeUnlockable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;Linfo/flowersoft/theotown/util/TimeUnlockable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda7;->f$1:Linfo/flowersoft/theotown/util/TimeUnlockable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda7;->f$1:Linfo/flowersoft/theotown/util/TimeUnlockable;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->$r8$lambda$T8Yd25D10Wj2_kV15N6d10njoAM(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;Linfo/flowersoft/theotown/util/TimeUnlockable;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda8 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda8)
.class public final synthetic Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    iput p2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda8;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda8;->f$1:I

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->$r8$lambda$g5AoQTHTWFOHydfzm5dnn5OM5kA(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda9 (info.flowersoft.theotown.minigame.IdleGameDialogBuilder$$ExternalSyntheticLambda9)
.class public final synthetic Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda9;->f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    iput p2, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda9;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda9;->f$0:Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder$$ExternalSyntheticLambda9;->f$1:I

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->$r8$lambda$oeJmfZf7VCg7k95rmcB28cmbANU(Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameStageDialogBuilder (info.flowersoft.theotown.minigame.IdleGameStageDialogBuilder)
.class public Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;
.super Ljava/lang/Object;
.source "IdleGameStageDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder$SpecListItem;
    }
.end annotation


# instance fields
.field public final DIAMONDS_PER_MAJOR:I

.field public city:Linfo/flowersoft/theotown/city/City;

.field public currency:Linfo/flowersoft/theotown/minigame/Currency;

.field public dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public game:Linfo/flowersoft/theotown/minigame/IdleGame;

.field public lblDiamonds:Linfo/flowersoft/theotown/ui/IconLabel;

.field public lblMajor:Lio/blueflower/stapel2d/gui/Label;

.field public level:I

.field public listBox:Lio/blueflower/stapel2d/gui/ListBox;

.field public majorEventName:Ljava/lang/String;

.field public majorLevelRange:[I

.field public priceForUpgrade:J

.field public progressBar:Linfo/flowersoft/theotown/ui/ProgressBar;

.field public stage:I

.field public translator:Lio/blueflower/stapel2d/gamestack/Translator;

.field public upgradeLevels:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/minigame/IdleGame;ILinfo/flowersoft/theotown/minigame/Currency;)V
    .registers 8

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 30
    iput v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->DIAMONDS_PER_MAJOR:I

    const/4 v1, 0x1

    .line 37
    iput v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->upgradeLevels:I

    .line 40
    new-array v0, v0, [I

    iput-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->majorLevelRange:[I

    .line 50
    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    .line 51
    iput-object p2, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 52
    iput-object p3, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    .line 53
    iput p4, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->stage:I

    .line 54
    invoke-virtual {p3, p4}, Linfo/flowersoft/theotown/minigame/IdleGame;->getLevel(I)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->level:I

    .line 55
    iput-object p5, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->currency:Linfo/flowersoft/theotown/minigame/Currency;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;)V
    .registers 1

    .line 28
    invoke-virtual {p0}, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->upgrade()V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;)J
    .registers 3

    .line 28
    iget-wide v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->priceForUpgrade:J

    return-wide v0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;)Linfo/flowersoft/theotown/minigame/Currency;
    .registers 1

    .line 28
    iget-object p0, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->currency:Linfo/flowersoft/theotown/minigame/Currency;

    return-object p0
.end method


# virtual methods
.method public build(Lio/blueflower/stapel2d/gui/Master;)Linfo/flowersoft/theotown/ui/Dialog;
    .registers 13

    .line 59
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_UPGRADE:I

    iget-object v2, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    iget v3, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->stage:I

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/minigame/IdleGame;->getStageTitle(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x14a

    const/16 v5, 0xa0

    const-string v3, ""

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    .line 61
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    .line 63
    new-instance v1, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder$1;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_UPGRADE:I

    iget-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v8

    iget-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    .line 64
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v9

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder$1;-><init>(Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 86
    iget-object p1, v2, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setDrawBackground(Z)V

    .line 88
    new-instance v3, Lio/blueflower/stapel2d/gui/Label;

    iget-object p1, v2, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v9

    const-string v4, ""

    const/4 v6, 0x6

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v9}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v3, v2, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->lblMajor:Lio/blueflower/stapel2d/gui/Label;

    .line 89
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v3, p1}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 91
    new-instance p1, Linfo/flowersoft/theotown/ui/ProgressBar;

    iget-object v0, v2, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v3, 0xe

    const/16 v4, 0x64

    invoke-direct {p1, v1, v3, v4, v0}, Linfo/flowersoft/theotown/ui/ProgressBar;-><init>(IIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object p1, v2, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->progressBar:Linfo/flowersoft/theotown/ui/ProgressBar;

    .line 92
    new-instance v5, Linfo/flowersoft/theotown/ui/IconLabel;

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND_SMALL:I

    iget-object p1, v2, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    .line 93
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v10

    const-string v7, "+2"

    const/4 v9, 0x6

    invoke-direct/range {v5 .. v10}, Linfo/flowersoft/theotown/ui/IconLabel;-><init>(ILjava/lang/String;IILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v5, v2, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->lblDiamonds:Linfo/flowersoft/theotown/ui/IconLabel;

    .line 94
    invoke-virtual {v5}, Linfo/flowersoft/theotown/ui/IconLabel;->getLabel()Lio/blueflower/stapel2d/gui/Label;

    move-result-object p1

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 97
    new-instance v3, Lio/blueflower/stapel2d/gui/ListBox;

    iget-object p1, v2, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v8}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v3, v2, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    .line 98
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    .line 101
    invoke-virtual {p0}, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->update()V

    .line 103
    iget-object p1, v2, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    return-object p1
.end method

.method public final normalizeToThreeDigits(D)D
    .registers 9

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_29

    .line 180
    invoke-static {p1, p2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double/2addr v2, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    int-to-double v3, v0

    .line 181
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double/2addr p1, v0

    .line 182
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    mul-double/2addr v0, p1

    return-wide v0

    :cond_29
    return-wide p1
.end method

.method public final rebuildList()V
    .registers 13

    .line 145
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->removeAllItems()V

    .line 146
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/minigame/IdleGame;->getRank()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 148
    :goto_d
    iget-object v3, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/minigame/IdleGame;->countSpecs()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_8a

    .line 149
    iget-object v3, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/minigame/IdleGame;->getSpec(I)Linfo/flowersoft/theotown/minigame/IdleGame$Spec;

    move-result-object v3

    .line 150
    invoke-interface {v3}, Linfo/flowersoft/theotown/minigame/IdleGame$Spec;->getName()Ljava/lang/String;

    move-result-object v5

    .line 151
    invoke-interface {v3}, Linfo/flowersoft/theotown/minigame/IdleGame$Spec;->getUnit()Ljava/lang/String;

    move-result-object v6

    .line 152
    iget v7, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->stage:I

    iget v8, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->level:I

    invoke-interface {v3, v7, v8, v0}, Linfo/flowersoft/theotown/minigame/IdleGame$Spec;->getValue(III)D

    move-result-wide v7

    .line 153
    iget v9, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->stage:I

    iget v10, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->level:I

    iget v11, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->upgradeLevels:I

    add-int/2addr v10, v11

    invoke-interface {v3, v9, v10, v0}, Linfo/flowersoft/theotown/minigame/IdleGame$Spec;->getValue(III)D

    move-result-wide v9

    .line 154
    invoke-interface {v3}, Linfo/flowersoft/theotown/minigame/IdleGame$Spec;->isInt()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 158
    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-double v7, v7

    .line 159
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-double v9, v9

    sub-double/2addr v9, v7

    .line 160
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-double v9, v9

    goto :goto_57

    .line 162
    :cond_4e
    invoke-virtual {p0, v7, v8}, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->normalizeToThreeDigits(D)D

    move-result-wide v7

    .line 163
    invoke-virtual {p0, v7, v8}, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->normalizeToThreeDigits(D)D

    move-result-wide v9

    sub-double/2addr v9, v7

    .line 167
    :goto_57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v8, v1}, Linfo/flowersoft/theotown/util/Localizer;->localizeBigNumber(DZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9, v10, v4}, Linfo/flowersoft/theotown/util/Localizer;->localizeBigNumber(DZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 170
    iget-object v6, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v7, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder$SpecListItem;

    invoke-direct {v7, p0, v5, v3, v4}, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder$SpecListItem;-><init>(Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 173
    :cond_8a
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v2, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder$SpecListItem;

    iget-object v3, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/minigame/IdleGame;->getIncomeTitle()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    iget v7, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->stage:I

    iget v8, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->level:I

    .line 174
    invoke-virtual {v6, v7, v8}, Linfo/flowersoft/theotown/minigame/IdleGame;->income(II)D

    move-result-wide v6

    invoke-static {v6, v7, v1}, Linfo/flowersoft/theotown/util/Localizer;->localizeBigNumber(DZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->currency:Linfo/flowersoft/theotown/minigame/Currency;

    invoke-interface {v1}, Linfo/flowersoft/theotown/minigame/Currency;->getUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    iget v7, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->stage:I

    iget v8, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->level:I

    iget v9, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->upgradeLevels:I

    add-int/2addr v8, v9

    .line 175
    invoke-virtual {v6, v7, v8}, Linfo/flowersoft/theotown/minigame/IdleGame;->income(II)D

    move-result-wide v6

    iget-object v8, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    iget v9, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->stage:I

    iget v10, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->level:I

    invoke-virtual {v8, v9, v10}, Linfo/flowersoft/theotown/minigame/IdleGame;->income(II)D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-static {v6, v7, v4}, Linfo/flowersoft/theotown/util/Localizer;->localizeBigNumber(DZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->currency:Linfo/flowersoft/theotown/minigame/Currency;

    invoke-interface {v4}, Linfo/flowersoft/theotown/minigame/Currency;->getUnit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v1, v4}, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder$SpecListItem;-><init>(Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public final update()V
    .registers 8

    .line 107
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    iget v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->stage:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/minigame/IdleGame;->getLevel(I)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->level:I

    const-wide/16 v0, 0x0

    .line 108
    iput-wide v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->priceForUpgrade:J

    const/4 v0, 0x0

    move v1, v0

    .line 109
    :goto_10
    iget v2, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->upgradeLevels:I

    if-ge v1, v2, :cond_29

    .line 110
    iget-wide v2, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->priceForUpgrade:J

    long-to-double v2, v2

    iget-object v4, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    iget v5, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->stage:I

    iget v6, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->level:I

    add-int/2addr v6, v1

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/minigame/IdleGame;->priceOfUpgrade(II)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-long v2, v2

    iput-wide v2, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->priceForUpgrade:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 113
    :cond_29
    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    iget-object v2, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    iget v3, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->stage:I

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/minigame/IdleGame;->getStageTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setTitle(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->rebuildList()V

    .line 115
    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 116
    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(ZZ)V

    .line 118
    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    iget v3, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->stage:I

    iget v4, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->level:I

    iget-object v5, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->majorLevelRange:[I

    invoke-virtual {v1, v3, v4, v5}, Linfo/flowersoft/theotown/minigame/IdleGame;->getMajorLevelRange(II[I)V

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/minigame/IdleGame;->getId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->stage:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->majorLevelRange:[I

    aget v3, v3, v2

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->majorEventName:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->lblDiamonds:Linfo/flowersoft/theotown/ui/IconLabel;

    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->majorEventName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/mechanics/GameHandler;->isEventRedeemed(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ac

    iget-object v3, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    .line 121
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/GameMode;->hasInfiniteIdleMoney()Z

    move-result v3

    if-nez v3, :cond_ac

    sget-boolean v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v3, :cond_ac

    iget-object v3, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    .line 123
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v3

    if-nez v3, :cond_ac

    move v3, v2

    goto :goto_ad

    :cond_ac
    move v3, v0

    .line 120
    :goto_ad
    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 125
    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->progressBar:Linfo/flowersoft/theotown/ui/ProgressBar;

    iget v3, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->level:I

    iget-object v4, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->majorLevelRange:[I

    aget v0, v4, v0

    sub-int/2addr v3, v0

    int-to-float v3, v3

    aget v4, v4, v2

    sub-int/2addr v4, v0

    int-to-float v0, v4

    div-float/2addr v3, v0

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/ui/ProgressBar;->setProgress(F)V

    .line 126
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->lblMajor:Lio/blueflower/stapel2d/gui/Label;

    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x746

    invoke-interface {v1, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->majorLevelRange:[I

    aget v2, v3, v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public final upgrade()V
    .registers 6

    .line 130
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    iget v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->stage:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/minigame/IdleGame;->getLevel(I)I

    move-result v0

    .line 131
    iget v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->upgradeLevels:I

    add-int/2addr v0, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->majorLevelRange:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-le v0, v1, :cond_47

    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    .line 132
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfiniteIdleMoney()Z

    move-result v0

    if-nez v0, :cond_47

    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v0, :cond_47

    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    .line 134
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    if-nez v0, :cond_47

    .line 135
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    .line 136
    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->majorEventName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "idle upgrade "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->majorEventName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v3, v2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnDiamondsEvent(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 139
    :cond_47
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->currency:Linfo/flowersoft/theotown/minigame/Currency;

    iget-wide v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->priceForUpgrade:J

    long-to-double v1, v1

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/minigame/Currency;->spend(D)V

    .line 140
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->game:Linfo/flowersoft/theotown/minigame/IdleGame;

    iget v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->stage:I

    iget v2, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->upgradeLevels:I

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/minigame/IdleGame;->upgrade(II)V

    .line 141
    invoke-virtual {p0}, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->update()V

    return-void
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameStageDialogBuilder.AnonymousClass1 (info.flowersoft.theotown.minigame.IdleGameStageDialogBuilder$1)
.class public Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder$1;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "IdleGameStageDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->build(Lio/blueflower/stapel2d/gui/Master;)Linfo/flowersoft/theotown/ui/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 64
    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder$1;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 2

    .line 67
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder$1;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->access$000(Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;)V

    return-void
.end method

.method public onUpdate()V
    .registers 5

    .line 73
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder$1;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->access$100(Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;)J

    move-result-wide v1

    long-to-double v1, v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Linfo/flowersoft/theotown/util/Localizer;->localizeBigNumber(DZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder$1;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->access$200(Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;)Linfo/flowersoft/theotown/minigame/Currency;

    move-result-object v1

    invoke-interface {v1}, Linfo/flowersoft/theotown/minigame/Currency;->getUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/IconButton;->setText(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    .line 76
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder$1;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->access$200(Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;)Linfo/flowersoft/theotown/minigame/Currency;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder$1;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;->access$100(Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;)J

    move-result-wide v1

    long-to-double v1, v1

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/minigame/Currency;->canSpend(D)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 78
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_56

    .line 80
    :cond_4d
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 82
    :goto_56
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 83
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setEnabled(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.minigame.IdleGameStageDialogBuilder.SpecListItem (info.flowersoft.theotown.minigame.IdleGameStageDialogBuilder$SpecListItem)
.class public Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder$SpecListItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "IdleGameStageDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpecListItem"
.end annotation


# instance fields
.field public dValue:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public final synthetic this$0:Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 191
    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder$SpecListItem;->this$0:Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder;

    .line 192
    const-string p1, ""

    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 193
    iput-object p2, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder$SpecListItem;->name:Ljava/lang/String;

    .line 194
    iput-object p3, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder$SpecListItem;->value:Ljava/lang/String;

    .line 195
    iput-object p4, p0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder$SpecListItem;->dValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 25

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 200
    invoke-virtual/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 202
    iget-object v9, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    .line 203
    iget-object v8, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 206
    iget-object v1, v7, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 207
    iget-object v10, v0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder$SpecListItem;->name:Ljava/lang/String;

    add-int/lit8 v1, p3, 0x8

    int-to-float v11, v1

    int-to-float v12, v4

    add-int/lit8 v1, p5, -0x10

    int-to-float v13, v1

    int-to-float v14, v6

    const/4 v15, 0x0

    const/high16 v16, 0x3f000000    # 0.5f

    invoke-virtual/range {v8 .. v16}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move v6, v13

    .line 208
    iget-object v10, v0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder$SpecListItem;->value:Ljava/lang/String;

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-float v13, v1

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual/range {v8 .. v16}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 210
    iget-object v1, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 211
    iget-object v3, v0, Linfo/flowersoft/theotown/minigame/IdleGameStageDialogBuilder$SpecListItem;->dValue:Ljava/lang/String;

    move-object v1, v8

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, v9

    const/high16 v9, 0x3f000000    # 0.5f

    move v4, v11

    move v5, v12

    move v7, v14

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move-object v8, v1

    .line 213
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/16 p1, 0x18

    return p1
.end method

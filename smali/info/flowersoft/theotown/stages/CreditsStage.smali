###### Class info.flowersoft.theotown.stages.CreditsStage (info.flowersoft.theotown.stages.CreditsStage)
.class public Linfo/flowersoft/theotown/stages/CreditsStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "CreditsStage.java"


# direct methods
.method public static synthetic $r8$lambda$T9qtDttn9qnGV5hyRqnEdcvvqZ4(Linfo/flowersoft/theotown/stages/CreditsStage;)V
    .registers 2

    .line 66
    const-string v0, "https://theotown.com/"

    .line 66
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/CreditsStage;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/CreditsStage;Ljava/lang/String;)V
    .registers 2

    .line 16
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/CreditsStage;->openUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;
    .registers 5

    if-eqz p3, :cond_e

    .line 222
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 223
    new-instance v0, Linfo/flowersoft/theotown/stages/CreditsStage$4;

    invoke-direct {v0, p0, p3}, Linfo/flowersoft/theotown/stages/CreditsStage$4;-><init>(Linfo/flowersoft/theotown/stages/CreditsStage;Ljava/lang/String;)V

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 233
    :goto_f
    new-instance p3, Linfo/flowersoft/theotown/stages/CreditsStage$5;

    invoke-direct {p3, p0, p2, p1, v0}, Linfo/flowersoft/theotown/stages/CreditsStage$5;-><init>(Linfo/flowersoft/theotown/stages/CreditsStage;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-object p3
.end method

.method public drop()V
    .registers 1

    .line 205
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drop()V

    return-void
.end method

.method public enter()V
    .registers 16

    .line 32
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    .line 36
    invoke-static {}, Linfo/flowersoft/theotown/crossplatform/TheoTown;->isPickleBirthday()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 37
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->LOGO_JA:I

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/CreditsStage;->replaceLogos(I)V

    .line 38
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->LOGO_JA:I

    goto :goto_13

    :cond_12
    move v0, v1

    .line 41
    :goto_13
    new-instance v2, Linfo/flowersoft/theotown/ui/Page;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xaa2

    .line 42
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v5, v5, 0xb

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v2, v3, v4, v5, v6}, Linfo/flowersoft/theotown/ui/Page;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;ILio/blueflower/stapel2d/gui/Master;)V

    .line 43
    new-instance v3, Linfo/flowersoft/theotown/stages/CreditsStage$1;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/stages/CreditsStage$1;-><init>(Linfo/flowersoft/theotown/stages/CreditsStage;)V

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/ui/Page;->setOnBackgroundClick(Ljava/lang/Runnable;)V

    .line 50
    new-instance v4, Linfo/flowersoft/theotown/ui/Credits;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v3

    const/4 v11, -0x1

    rsub-int/lit8 v5, v3, -0x1

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v3

    rsub-int/lit8 v6, v3, -0x1

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v3

    add-int/lit8 v7, v3, 0x2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v3

    add-int/lit8 v8, v3, 0x2

    iget-object v9, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v10, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct/range {v4 .. v10}, Linfo/flowersoft/theotown/ui/Credits;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    const/16 v3, 0xa

    .line 51
    invoke-virtual {v4, v3, v1, v3, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(IIII)V

    .line 53
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_FLOWERSOFT:I

    const-string v3, "blueflower"

    const-string v5, "http://www.blueflower.io/"

    invoke-virtual {p0, v1, v3, v5}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    .line 54
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->LOGO_LOBBY:I

    const-string v5, "Lobby"

    const-string v6, "https://www.theotown.com/forum/memberlist.php?mode=viewprofile&u=15"

    invoke-virtual {p0, v3, v5, v6}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v3

    .line 55
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->LOGO_JA:I

    const-string v6, "JustAnyone"

    const-string v7, "https://www.theotown.com/forum/memberlist.php?mode=viewprofile&u=1880"

    invoke-virtual {p0, v5, v6, v7}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v5

    .line 56
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->LOGO_THEO:I

    const-string v7, "theotheoderich"

    const-string v8, "https://www.theotown.com/forum/memberlist.php?mode=viewprofile&u=2"

    invoke-virtual {p0, v6, v7, v8}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v6

    .line 57
    sget v7, Linfo/flowersoft/theotown/resources/Resources;->LOGO_PHOENIX:I

    const-string v8, "phoenix"

    const-string v9, ""

    invoke-virtual {p0, v7, v8, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v7

    .line 58
    sget v8, Linfo/flowersoft/theotown/resources/Resources;->LOGO_LUCAS:I

    const-string v10, "Lucas King"

    const-string v12, "https://www.youtube.com/user/LucasKingPiano"

    invoke-virtual {p0, v8, v10, v12}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v8

    .line 59
    sget v10, Linfo/flowersoft/theotown/resources/Resources;->LOGO_EVAN:I

    const-string v12, "Evan Wheeler"

    invoke-virtual {p0, v10, v12, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v10

    .line 63
    sget v12, Linfo/flowersoft/theotown/resources/Resources;->FRAME_LOGO_THEOTOWN:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TheoTown "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " is a product of"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Linfo/flowersoft/theotown/stages/CreditsStage$$ExternalSyntheticLambda0;

    invoke-direct {v14, p0}, Linfo/flowersoft/theotown/stages/CreditsStage$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/CreditsStage;)V

    invoke-virtual {v4, v12, v13, v14}, Linfo/flowersoft/theotown/ui/Credits;->addTopic(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 67
    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 68
    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 90
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x2f2

    invoke-interface {v1, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v4, v11, v1, v3}, Linfo/flowersoft/theotown/ui/Credits;->addTopic(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 91
    invoke-virtual {v4, v6}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 92
    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 93
    invoke-virtual {v4, v7}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 94
    const-string v1, "MONTEMARINO"

    const-string v6, "https://www.theotown.com/forum/memberlist.php?mode=viewprofile&u=2590"

    invoke-virtual {p0, v0, v1, v6}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 95
    const-string v1, "Kevin hung"

    const-string v6, "https://www.theotown.com/forum/memberlist.php?mode=viewprofile&u=2314"

    invoke-virtual {p0, v0, v1, v6}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 96
    const-string v1, "_Rock Fort_"

    const-string v6, "https://www.theotown.com/forum/memberlist.php?mode=viewprofile&u=4615"

    invoke-virtual {p0, v0, v1, v6}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 97
    const-string v1, "A Dutch Guy"

    const-string v6, "https://www.theotown.com/forum/memberlist.php?mode=viewprofile&u=2860"

    invoke-virtual {p0, v0, v1, v6}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 98
    const-string v1, "rjroldan1"

    const-string v6, "https://www.theotown.com/forum/memberlist.php?mode=viewprofile&u=1853"

    invoke-virtual {p0, v0, v1, v6}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 99
    const-string v1, "https://www.theotown.com/forum/memberlist.php?mode=viewprofile&u=1492"

    const-string v6, "Kulche"

    invoke-virtual {p0, v0, v6, v1}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 100
    const-string v1, "yusuf8a684"

    const-string v7, "https://theotown.com/forum/memberlist.php?mode=viewprofile&u=2730"

    invoke-virtual {p0, v0, v1, v7}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 101
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_SGG:I

    const-string v7, "SomeGermanGuy"

    const-string v12, "https://theotown.com/forum/memberlist.php?mode=viewprofile&u=4413"

    invoke-virtual {p0, v1, v7, v12}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 102
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_MDK:I

    const-string v7, "mdk_813"

    const-string v12, "https://theotown.com/forum/memberlist.php?mode=viewprofile&u=922"

    invoke-virtual {p0, v1, v7, v12}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 104
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v7, 0x2b5

    invoke-interface {v1, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v11, v1, v3}, Linfo/flowersoft/theotown/ui/Credits;->addTopic(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 105
    invoke-virtual {v4, v8}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 107
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v7, 0x8a5

    invoke-interface {v1, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v11, v1, v3}, Linfo/flowersoft/theotown/ui/Credits;->addTopic(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 108
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_MAXIME:I

    const-string v7, "Maxime [French]"

    const-string v8, "https://maximetanesie.com/"

    invoke-virtual {p0, v1, v7, v8}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 109
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_BLAZE:I

    const-string v7, "Blaze [Polish]"

    invoke-virtual {p0, v1, v7, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 110
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_AZULA:I

    const-string v7, "Azula [Chinese]"

    invoke-virtual {p0, v1, v7, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 111
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_HERNAN:I

    const-string v7, "Hernan585G [Spanish]"

    invoke-virtual {p0, v1, v7, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 112
    const-string v1, "Ciro Silvano (ExaTranslation team) [Italian]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 113
    const-string v1, "Team NOSE-CONE [Korean]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 114
    const-string v1, "yvelkram [Korean]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 116
    const-string v1, "Honza Mina\u0159\u00edk [Czech]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 117
    const-string v1, "Toko [Portuguese]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 118
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_HAKANUCKUS:I

    const-string v7, "Hakanuckus [Turkish]"

    invoke-virtual {p0, v1, v7, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 119
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_DANIIL:I

    const-string v7, "Daniil Usov [Russian]"

    invoke-virtual {p0, v1, v7, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 120
    const-string v1, "Ahmad Nur Aizat [Malaysian]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 121
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_RONNIE:I

    const-string v7, "Ronie Dzividzinsky [Ukrainian]"

    invoke-virtual {p0, v1, v7, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 122
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_Bearbear65:I

    const-string v7, "Bearbear65 [Japanese]"

    invoke-virtual {p0, v1, v7, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 123
    const-string v1, "KoalaGuy [Serbian]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 124
    const-string v1, "MomciloMilic [Serbian]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 125
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_KHADAFI:I

    const-string v7, "Khadafi Laidi [Indonesian]"

    invoke-virtual {p0, v1, v7, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 126
    const-string v1, "Mister Man [Turkish]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 127
    const-string v1, "mateosaidi13 [Dutch]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 128
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_REMAINSSTAY:I

    const-string v7, "RemainsStay [Dutch]"

    invoke-virtual {p0, v1, v7, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 129
    const-string v1, "smallg0at [Chinese]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 130
    const-string v1, "HendersonYAP [Chinese]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 131
    const-string v1, "CordylusLizard [Polish]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 132
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_RENO:I

    const-string v7, "Reno [Portuguese]"

    invoke-virtual {p0, v1, v7, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 133
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_CEPHUES:I

    const-string v7, "Cephues [Lithuanian]"

    invoke-virtual {p0, v1, v7, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 134
    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 135
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_LAKAN:I

    const-string v7, "Lakan Har\u00e1ya [Filipino]"

    invoke-virtual {p0, v1, v7, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 136
    const-string v1, "Kensvin28 [Indonesian]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 137
    const-string v1, "pxxxy99 [Thai]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 138
    const-string v1, "Alex [Arabic]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 139
    const-string v1, "MEHRDADsmj [Farsi]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 140
    const-string v1, "JournalInt [Thai]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 141
    const-string v1, "Bevise [Vietnamese]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 142
    const-string v1, "The Leaf [Vietnamese]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 143
    const-string v1, "Anhkatori2k [Vietnamese]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 144
    const-string v1, "Linhnhianni [Vietnamese]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 145
    const-string v1, "Lnquy065 [Vietnamese]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 146
    const-string v1, "Babiabeo [Vietnamese]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 147
    const-string v1, "VoKhoi [Vietnamese]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 148
    const-string v1, "foxpuff54 [Arabic]"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 150
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v7, 0xde3

    invoke-interface {v1, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v11, v1, v3}, Linfo/flowersoft/theotown/ui/Credits;->addTopic(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 151
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_AB:I

    const-string v3, "CommanderABab"

    invoke-virtual {p0, v1, v3, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 152
    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 153
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_Bearbear65:I

    const-string v3, "Bearbear65"

    invoke-virtual {p0, v1, v3, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 154
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_REMAINSSTAY:I

    const-string v3, "RemainsStay"

    invoke-virtual {p0, v1, v3, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 155
    invoke-virtual {v4, v10}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 156
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_BUNNY:I

    const-string v3, "Bunny"

    invoke-virtual {p0, v1, v3, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 157
    invoke-virtual {p0, v0, v6, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 158
    const-string v1, "Jesse"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 159
    const-string v1, "Ene7"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 162
    const-string v1, "Zoruzer0"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 163
    const-string v1, "unknownguy2002"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 164
    const-string v1, "josh"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v1

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 165
    const-string v1, "FranchuFranchu"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v0

    invoke-virtual {v4, v0}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 166
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->LOGO_WADERS:I

    const-string v1, "waders"

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v0

    invoke-virtual {v4, v0}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 167
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ACCOUNT:I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xaea

    invoke-interface {v1, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v9}, Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;

    move-result-object v0

    invoke-virtual {v4, v0}, Linfo/flowersoft/theotown/ui/Credits;->addCharacter(Linfo/flowersoft/theotown/ui/Credits$Character;)V

    .line 174
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_BACKWARD:I

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x740

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Linfo/flowersoft/theotown/stages/CreditsStage$2;

    invoke-direct {v7, p0}, Linfo/flowersoft/theotown/stages/CreditsStage$2;-><init>(Linfo/flowersoft/theotown/stages/CreditsStage;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v1

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    .line 182
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gui/Gadget;->addChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 184
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_CITY:I

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x851

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Linfo/flowersoft/theotown/stages/CreditsStage$3;

    invoke-direct {v7, p0}, Linfo/flowersoft/theotown/stages/CreditsStage$3;-><init>(Linfo/flowersoft/theotown/stages/CreditsStage;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    const/4 v1, 0x1

    .line 190
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 191
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v1

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    .line 192
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gui/Gadget;->addChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 194
    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/Page;->free()V

    return-void
.end method

.method public leave()V
    .registers 1

    .line 199
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->leave()V

    return-void
.end method

.method public onUpdate()V
    .registers 1

    .line 211
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawBackground()V

    return-void
.end method

.method public final openUrl(Ljava/lang/String;)V
    .registers 3

    .line 252
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->openURLInApp(Ljava/lang/String;)V

    return-void
.end method

.method public prepare()V
    .registers 1

    .line 26
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->prepare()V

    return-void
.end method

.method public final replaceLogos(I)V
    .registers 3

    .line 256
    sput p1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_FLOWERSOFT:I

    .line 257
    sput p1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_LOBBY:I

    .line 258
    sput p1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_THEO:I

    .line 259
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->LOGO_JA:I

    sput v0, Linfo/flowersoft/theotown/resources/Resources;->LOGO_PHOENIX:I

    .line 260
    sput p1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_LUCAS:I

    .line 261
    sput p1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_LIBGDX:I

    .line 262
    sput p1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_AB:I

    .line 263
    sput p1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_SGG:I

    .line 264
    sput p1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_MDK:I

    .line 265
    sput p1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_MAXIME:I

    .line 266
    sput p1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_BLAZE:I

    .line 267
    sput p1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_AZULA:I

    .line 268
    sput p1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_HERNAN:I

    .line 269
    sput p1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_HAKANUCKUS:I

    .line 270
    sput p1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_DANIIL:I

    .line 271
    sput p1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_RONNIE:I

    .line 272
    sput p1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_Bearbear65:I

    .line 273
    sput p1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_KHADAFI:I

    .line 274
    sput p1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_REMAINSSTAY:I

    .line 275
    sput p1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_RENO:I

    .line 276
    sput p1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_CEPHUES:I

    .line 277
    sput p1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_LAKAN:I

    .line 278
    sput p1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_WADERS:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 216
    const-string v0, "CreditsStage"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.CreditsStage.AnonymousClass1 (info.flowersoft.theotown.stages.CreditsStage$1)
.class public Linfo/flowersoft/theotown/stages/CreditsStage$1;
.super Ljava/lang/Object;
.source "CreditsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CreditsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CreditsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CreditsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 43
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreditsStage$1;->this$0:Linfo/flowersoft/theotown/stages/CreditsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 46
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreditsStage$1;->this$0:Linfo/flowersoft/theotown/stages/CreditsStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreditsStage.AnonymousClass2 (info.flowersoft.theotown.stages.CreditsStage$2)
.class public Linfo/flowersoft/theotown/stages/CreditsStage$2;
.super Ljava/lang/Object;
.source "CreditsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CreditsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CreditsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CreditsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 175
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreditsStage$2;->this$0:Linfo/flowersoft/theotown/stages/CreditsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 178
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreditsStage$2;->this$0:Linfo/flowersoft/theotown/stages/CreditsStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreditsStage.AnonymousClass3 (info.flowersoft.theotown.stages.CreditsStage$3)
.class public Linfo/flowersoft/theotown/stages/CreditsStage$3;
.super Ljava/lang/Object;
.source "CreditsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CreditsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CreditsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CreditsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 184
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreditsStage$3;->this$0:Linfo/flowersoft/theotown/stages/CreditsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 187
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreditsStage$3;->this$0:Linfo/flowersoft/theotown/stages/CreditsStage;

    const-string v1, "https://theotown.com/"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/CreditsStage;->access$000(Linfo/flowersoft/theotown/stages/CreditsStage;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreditsStage.AnonymousClass4 (info.flowersoft.theotown.stages.CreditsStage$4)
.class public Linfo/flowersoft/theotown/stages/CreditsStage$4;
.super Ljava/lang/Object;
.source "CreditsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CreditsStage;

.field public final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CreditsStage;Ljava/lang/String;)V
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

    .line 223
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreditsStage$4;->this$0:Linfo/flowersoft/theotown/stages/CreditsStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/CreditsStage$4;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 226
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreditsStage$4;->this$0:Linfo/flowersoft/theotown/stages/CreditsStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreditsStage$4;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/CreditsStage;->access$000(Linfo/flowersoft/theotown/stages/CreditsStage;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreditsStage.AnonymousClass5 (info.flowersoft.theotown.stages.CreditsStage$5)
.class public Linfo/flowersoft/theotown/stages/CreditsStage$5;
.super Ljava/lang/Object;
.source "CreditsStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/Credits$Character;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CreditsStage;->buildCharacter(ILjava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Credits$Character;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CreditsStage;

.field public final synthetic val$action:Ljava/lang/Runnable;

.field public final synthetic val$icon:I

.field public final synthetic val$name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CreditsStage;Ljava/lang/String;ILjava/lang/Runnable;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 233
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreditsStage$5;->this$0:Linfo/flowersoft/theotown/stages/CreditsStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/CreditsStage$5;->val$name:Ljava/lang/String;

    iput p3, p0, Linfo/flowersoft/theotown/stages/CreditsStage$5;->val$icon:I

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/CreditsStage$5;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 241
    iget v0, p0, Linfo/flowersoft/theotown/stages/CreditsStage$5;->val$icon:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 236
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreditsStage$5;->val$name:Ljava/lang/String;

    return-object v0
.end method

.method public onClick()Ljava/lang/Runnable;
    .registers 2

    .line 246
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreditsStage$5;->val$action:Ljava/lang/Runnable;

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.CreditsStage$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.CreditsStage$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreditsStage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreditsStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreditsStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreditsStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/CreditsStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreditsStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/CreditsStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreditsStage;->$r8$lambda$T9qtDttn9qnGV5hyRqnEdcvvqZ4(Linfo/flowersoft/theotown/stages/CreditsStage;)V

    return-void
.end method

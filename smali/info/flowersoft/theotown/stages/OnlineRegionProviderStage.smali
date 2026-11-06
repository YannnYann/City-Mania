###### Class info.flowersoft.theotown.stages.OnlineRegionProviderStage (info.flowersoft.theotown.stages.OnlineRegionProviderStage)
.class public Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;
.super Linfo/flowersoft/theotown/stages/AbstractStoreStage;
.source "OnlineRegionProviderStage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;,
        Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;
    }
.end annotation


# instance fields
.field public final orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

.field public targetAuthorName:Ljava/lang/String;

.field public targetCityId:I

.field public targetRegionId:I

.field public targetTagName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$4e807kQtLHvBS7Jfp6Pcxkdo3Fk(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;)V
    .registers 3

    .line 167
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    .line 167
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->setType(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;)V

    const/4 p1, 0x1

    .line 168
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->reload(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$As5QrTjvoJ023ScO__1GQO1ErF8()V
    .registers 2

    .line 307
    sget-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    invoke-static {}, Linfo/flowersoft/theotown/online/Multiplayer;->getRulesUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Net;->openURI(Ljava/lang/String;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$EG15uZI-ANvI4AGij3hEhJUPMqM(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;)Ljava/lang/Boolean;
    .registers 2

    .line 169
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    .line 169
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->getType()Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    move-result-object p0

    if-ne p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Q01a7d8Eu5uxOMoGA-DCAGllw-0(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_f

    .line 219
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$ss-8Rkh2l42-i0xe8Vk0b2oMypw(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;Linfo/flowersoft/theotown/online/VirtualRegion;)V
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getOwner()Linfo/flowersoft/theotown/online/VirtualUser;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->visitAuthor(Linfo/flowersoft/theotown/online/VirtualUser;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tUVsDWCgeZRG3PSmfkuWjI7_PL0()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$tjJm5_Bgta8u-hr4bwUaJGm1B2Y(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;I)V
    .registers 2

    .line 282
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->visitRegion(I)Linfo/flowersoft/theotown/stages/RegionStage;

    return-void
.end method

.method public static synthetic $r8$lambda$uBPndQ2a50Z4l8qu4Jahd3sspf0(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;Ljava/lang/String;)V
    .registers 2

    .line 218
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->visitSearch(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v1hmaTDODJouhFbmJCZIUVwmH0Q(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;ILjava/lang/String;)V
    .registers 3

    .line 255
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->visitTag(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 3

    .line 54
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 55
    new-instance v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    .line 57
    sget-object p1, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->PUBLIC:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->setType(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;)V

    const/4 p1, 0x1

    .line 58
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->reload(Z)V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;II)V
    .registers 5

    .line 71
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 72
    new-instance v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    .line 74
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->locateOnline(II)V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;JLjava/lang/String;)V
    .registers 7

    .line 62
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 63
    new-instance v0, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    .line 65
    sget-object p1, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->OTHER_USER_REGIONS:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    const-string v1, ""

    invoke-virtual {v0, p1, p2, p3, v1}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->setType(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;JLjava/lang/String;)V

    .line 66
    iput-object p4, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->targetAuthorName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 67
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->reload(Z)V

    return-void
.end method

.method private reload(Z)V
    .registers 4

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 86
    iput p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->lastShiftY:F

    .line 89
    :cond_5
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getRegionUnlockTime(I)J

    .line 91
    invoke-static {}, Linfo/flowersoft/theotown/online/Multiplayer;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 92
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ListBox;->removeAllItems()V

    .line 93
    :cond_1a
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    new-instance v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->loadLight(Ljava/lang/Runnable;)V

    .line 94
    invoke-static {}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->getInstance()Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->fetch(Z)V

    :cond_2b
    return-void
.end method


# virtual methods
.method public final addTypeButton(ILjava/lang/String;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;)V
    .registers 6

    .line 166
    new-instance v0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;)V

    new-instance v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p3}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;)V

    invoke-virtual {p0, p1, p2, v0, v1}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->addTabButton(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;

    return-void
.end method

.method public buildHeaderButtons(Lio/blueflower/stapel2d/gui/LineLayout;)V
    .registers 2

    .line 0
    return-void
.end method

.method public close()V
    .registers 2

    .line 234
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

.method public drop()V
    .registers 1

    .line 340
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drop()V

    return-void
.end method

.method public declared-synchronized enter()V
    .registers 7

    monitor-enter p0

    .line 107
    :try_start_1
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->enter()V

    .line 109
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_REGION:I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x9d8

    .line 110
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->PUBLIC:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 109
    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->addTypeButton(ILjava/lang/String;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;)V

    .line 113
    const-string v0, "$anim_ui_new00"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xd51

    .line 114
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->NEW:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 113
    invoke-virtual {p0, v0, v2, v3}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->addTypeButton(ILjava/lang/String;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;)V

    .line 117
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUS:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xd18

    .line 118
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->FREE:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 117
    invoke-virtual {p0, v0, v2, v3}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->addTypeButton(ILjava/lang/String;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;)V

    .line 121
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOCKED:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x19e

    .line 122
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->PROTECTED:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 121
    invoke-virtual {p0, v0, v2, v3}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->addTypeButton(ILjava/lang/String;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;)V

    .line 125
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_SIGN:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xb3c

    .line 126
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->LIST_TAGS:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 125
    invoke-virtual {p0, v0, v2, v3}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->addTypeButton(ILjava/lang/String;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;)V

    .line 129
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isForumConnected()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 131
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->addTabSeparator()V

    .line 133
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ACCOUNT:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xce9

    .line 134
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->USER:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 133
    invoke-virtual {p0, v0, v2, v3}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->addTypeButton(ILjava/lang/String;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;)V

    .line 137
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ACCOUNT:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xe5

    .line 138
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->USER_REGIONS:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    .line 137
    invoke-virtual {p0, v0, v2, v3}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->addTypeButton(ILjava/lang/String;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;)V

    goto :goto_94

    :catchall_92
    move-exception v0

    goto :goto_eb

    .line 143
    :cond_94
    :goto_94
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getAdmin()I

    move-result v0

    if-eqz v0, :cond_ae

    .line 144
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->addTabSeparator()V

    .line 145
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_REPORT:I

    const-string v2, "Reports"

    sget-object v3, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->REPORT:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    invoke-virtual {p0, v0, v2, v3}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->addTypeButton(ILjava/lang/String;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;)V

    .line 148
    :cond_ae
    invoke-static {}, Linfo/flowersoft/theotown/online/Multiplayer;->isSupported()Z

    move-result v0

    if-nez v0, :cond_e9

    .line 149
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_ALERT:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x330

    .line 150
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x49a

    .line 151
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v2, v3, v4, v5}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 153
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x76b

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$1;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$1;-><init>(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    const/16 v2, 0x42

    .line 158
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    const/4 v1, 0x1

    .line 159
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V
    :try_end_e9
    .catchall {:try_start_1 .. :try_end_e9} :catchall_92

    .line 161
    :cond_e9
    monitor-exit p0

    return-void

    :goto_eb
    :try_start_eb
    monitor-exit p0
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_92

    throw v0
.end method

.method public getFallbackIcon()I
    .registers 3

    .line 175
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->getType()Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->SEARCH:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    if-ne v0, v1, :cond_d

    .line 176
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->FRAME_SEARCH_BUTTON:I

    return v0

    .line 177
    :cond_d
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->getType()Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->TAG:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    if-ne v0, v1, :cond_1a

    .line 178
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_SIGN:I

    return v0

    .line 179
    :cond_1a
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->getType()Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->OTHER_USER_REGIONS:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    if-ne v0, v1, :cond_27

    .line 180
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ACCOUNT:I

    return v0

    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method public getFallbackTitle()Ljava/lang/String;
    .registers 3

    .line 188
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->getType()Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->SEARCH:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    if-ne v0, v1, :cond_d

    .line 189
    sget-object v0, Linfo/flowersoft/theotown/resources/Settings;->regionSearchTerm:Ljava/lang/String;

    return-object v0

    .line 190
    :cond_d
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->getType()Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->TAG:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    if-ne v0, v1, :cond_1a

    .line 191
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->targetTagName:Ljava/lang/String;

    return-object v0

    .line 192
    :cond_1a
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->getType()Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->OTHER_USER_REGIONS:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    if-ne v0, v1, :cond_27

    .line 193
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->targetAuthorName:Ljava/lang/String;

    return-object v0

    .line 195
    :cond_27
    const-string v0, ""

    return-object v0
.end method

.method public help()V
    .registers 5

    .line 228
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "Open (Region Store)"

    const-string v2, ""

    const-string v3, "Help"

    invoke-interface {v0, v3, v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {}, Linfo/flowersoft/theotown/util/OSUtil;->openHelp()V

    return-void
.end method

.method public isLoading()Z
    .registers 2

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->isLoaded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public leave()V
    .registers 1

    .line 335
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->leave()V

    return-void
.end method

.method public locateOnline(II)V
    .registers 5

    .line 78
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    sget-object v1, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->NOTIFICATIONS:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->setType(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;)V

    const/4 v0, 0x1

    .line 79
    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->reload(Z)V

    .line 80
    iput p1, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->targetRegionId:I

    .line 81
    iput p2, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->targetCityId:I

    return-void
.end method

.method public onUpdate()V
    .registers 14

    .line 244
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->isLoaded()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_ce

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v0

    if-nez v0, :cond_ce

    .line 245
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->getType()Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    move-result-object v0

    sget-object v3, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->LIST_TAGS:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    if-ne v0, v3, :cond_62

    .line 246
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->getAvailableTags()Linfo/flowersoft/theotown/online/RegionTagMap;

    move-result-object v0

    move v3, v2

    .line 247
    :goto_23
    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/RegionTagMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_5a

    .line 248
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/online/RegionTagMap;->getId(I)I

    move-result v7

    .line 249
    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/online/RegionTagMap;->getNameById(I)Ljava/lang/String;

    move-result-object v8

    .line 250
    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/online/RegionTagMap;->getThemedColorById(I)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v9

    .line 252
    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/online/RegionTagMap;->getRegionCountById(I)I

    move-result v10

    .line 253
    new-instance v4, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;

    new-instance v5, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    iget-object v11, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    new-instance v12, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda3;

    invoke-direct {v12, p0, v7, v8}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;ILjava/lang/String;)V

    invoke-direct/range {v5 .. v12}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;-><init>(Lio/blueflower/stapel2d/gui/Gadget;ILjava/lang/String;Lio/blueflower/stapel2d/drawing/Color;ILio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/Runnable;)V

    invoke-direct {v4, v5}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 256
    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->setDrawBackground(Z)V

    .line 257
    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->setCanBeSelected(Z)V

    .line 258
    iget-object v5, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v5, v4}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 260
    :cond_5a
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    iget v3, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->lastShiftY:F

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/gui/ListBox;->setShiftY(F)V

    goto :goto_ce

    .line 262
    :cond_62
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->getMapIds()Lio/blueflower/stapel2d/util/IntList;

    move-result-object v0

    .line 264
    iget v3, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->targetRegionId:I

    if-lez v3, :cond_84

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/util/IntList;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 265
    iget v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->targetRegionId:I

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->visitRegion(I)Linfo/flowersoft/theotown/stages/RegionStage;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->targetRegionId:I

    iget v3, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->targetCityId:I

    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/stages/RegionStage;->locateOnline(II)V

    .line 266
    iput v2, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->targetRegionId:I

    .line 267
    iput v2, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->targetCityId:I

    return-void

    .line 270
    :cond_84
    iput v2, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->targetRegionId:I

    .line 272
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ce

    move v3, v2

    .line 273
    :goto_8d
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v4

    if-ge v3, v4, :cond_c7

    .line 274
    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v9

    .line 275
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    invoke-virtual {v4, v9}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->getVirtualRegion(I)Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v7

    if-eqz v7, :cond_c4

    .line 277
    new-instance v4, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;

    new-instance v5, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    iget-object v8, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    iget-object v10, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    new-instance v11, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda4;

    invoke-direct {v11, p0, v9}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda4;-><init>(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;I)V

    new-instance v12, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda5;

    invoke-direct {v12, p0, v7}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda5;-><init>(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;Linfo/flowersoft/theotown/online/VirtualRegion;)V

    invoke-direct/range {v5 .. v12}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;-><init>(Lio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/online/VirtualRegion;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;ILio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-direct {v4, v5}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 284
    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->setDrawBackground(Z)V

    .line 285
    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->setCanBeSelected(Z)V

    .line 286
    iget-object v5, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v5, v4}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    :cond_c4
    add-int/lit8 v3, v3, 0x1

    goto :goto_8d

    .line 289
    :cond_c7
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    iget v3, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->lastShiftY:F

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/gui/ListBox;->setShiftY(F)V

    .line 294
    :cond_ce
    :goto_ce
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawBackground()V

    .line 296
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->isDialogOpen()Z

    move-result v0

    if-nez v0, :cond_147

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_147

    iget-wide v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->enteredTime:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_147

    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_ONLINE_REGIONS:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_147

    .line 297
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_ONLINE_REGIONS:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->complete()V

    .line 298
    new-instance v3, Linfo/flowersoft/theotown/ui/Dialog;

    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_REGION:I

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x3f9

    .line 299
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x151

    .line 300
    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v3, v0, v4, v5, v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 303
    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_ONLINE_REGIONS:I

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x673

    .line 305
    invoke-interface {v0, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda6;

    invoke-direct {v9}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda6;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 303
    invoke-virtual/range {v3 .. v9}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 310
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x76b

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v2, v5}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    .line 311
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    const/16 v2, 0x42

    .line 312
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 313
    invoke-virtual {v3}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    .line 314
    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    :cond_147
    return-void
.end method

.method public prepare()V
    .registers 5

    .line 100
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->prepare()V

    .line 102
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "list regions"

    const-string v2, ""

    const-string v3, "online"

    invoke-interface {v0, v3, v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public search()V
    .registers 6

    .line 216
    new-instance v0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;)V

    .line 217
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xdab

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOkText(Ljava/lang/String;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 218
    new-instance v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda7;-><init>(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOnOk(Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 219
    new-instance v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setFilter(Lio/blueflower/stapel2d/util/Predicate;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 220
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x5cd

    .line 221
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x45b

    .line 222
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Linfo/flowersoft/theotown/resources/Settings;->regionSearchTerm:Ljava/lang/String;

    .line 220
    invoke-virtual {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->build(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 223
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 345
    const-string v0, "OnlineRegionProviderStage"

    return-object v0
.end method

.method public final visitAuthor(Linfo/flowersoft/theotown/online/VirtualUser;)V
    .registers 7

    .line 319
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    sget-object v1, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->OTHER_USER_REGIONS:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualUser;->getId()I

    move-result v2

    int-to-long v2, v2

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->setType(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;JLjava/lang/String;)V

    .line 320
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualUser;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->targetAuthorName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 321
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->reload(Z)V

    return-void
.end method

.method public final visitRegion(I)Linfo/flowersoft/theotown/stages/RegionStage;
    .registers 6

    .line 325
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->getName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "online"

    const-string v3, "enter region"

    invoke-interface {v0, v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->setDefaultRegionId(I)V

    .line 327
    new-instance p1, Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    invoke-direct {p1, v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/cityfile/RegionProvider;)V

    const/4 v0, 0x1

    .line 328
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/stages/RegionStage;->setAllowToGoBack(Z)V

    .line 329
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-object p1
.end method

.method public final visitSearch(Ljava/lang/String;)V
    .registers 4

    .line 203
    sput-object p1, Linfo/flowersoft/theotown/resources/Settings;->regionSearchTerm:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    sget-object v1, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->SEARCH:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->setType(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 205
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->reload(Z)V

    return-void
.end method

.method public final visitTag(ILjava/lang/String;)V
    .registers 7

    .line 209
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    sget-object v1, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;->TAG:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->setType(Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;Ljava/lang/String;)V

    .line 210
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->targetTagName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 211
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->reload(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.OnlineRegionProviderStage.AnonymousClass1 (info.flowersoft.theotown.stages.OnlineRegionProviderStage$1)
.class public Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$1;
.super Ljava/lang/Object;
.source "OnlineRegionProviderStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 153
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$1;->this$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 156
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$1;->this$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.OnlineRegionProviderStage.RegionEntry (info.flowersoft.theotown.stages.OnlineRegionProviderStage$RegionEntry)
.class public Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "OnlineRegionProviderStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegionEntry"
.end annotation


# instance fields
.field public final availableTags:Linfo/flowersoft/theotown/online/RegionTagMap;

.field public final childIndex:I

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final id:I

.field public final orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

.field public final region:Linfo/flowersoft/theotown/online/VirtualRegion;

.field public final tags:[I


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/online/VirtualRegion;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;ILio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 15

    .line 442
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    add-int/lit8 v4, v0, -0x4

    const/16 v5, 0x28

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 443
    iput-object p2, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->region:Linfo/flowersoft/theotown/online/VirtualRegion;

    .line 444
    iput-object p3, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    .line 445
    iput p4, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->id:I

    .line 446
    iput-object p5, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 447
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result p1

    iput p1, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->childIndex:I

    .line 449
    invoke-virtual {p2}, Linfo/flowersoft/theotown/online/VirtualRegion;->getTags()[I

    move-result-object p1

    iput-object p1, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->tags:[I

    .line 450
    invoke-virtual {p3}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->getAvailableTags()Linfo/flowersoft/theotown/online/RegionTagMap;

    move-result-object p1

    iput-object p1, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->availableTags:Linfo/flowersoft/theotown/online/RegionTagMap;

    .line 452
    invoke-virtual {p0, p6, p7}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->build(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final build(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 27

    .line 456
    new-instance v0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry$1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v6, p0

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry$1;-><init>(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    .line 467
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setFillParent(Z)V

    .line 469
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->region:Linfo/flowersoft/theotown/online/VirtualRegion;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualRegion;->getTotalCities()I

    move-result v0

    .line 470
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->region:Linfo/flowersoft/theotown/online/VirtualRegion;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/online/VirtualRegion;->getFreeCities()I

    move-result v2

    .line 471
    iget-object v3, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->region:Linfo/flowersoft/theotown/online/VirtualRegion;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/online/VirtualRegion;->getUserCities()I

    move-result v3

    .line 472
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->region:Linfo/flowersoft/theotown/online/VirtualRegion;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/online/VirtualRegion;->getNewGifts()I

    move-result v4

    .line 473
    iget-object v5, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->region:Linfo/flowersoft/theotown/online/VirtualRegion;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/online/VirtualRegion;->getName()Ljava/lang/String;

    move-result-object v8

    .line 474
    sget-object v5, Linfo/flowersoft/theotown/region/RegionIcon;->Companion:Linfo/flowersoft/theotown/region/RegionIcon$Companion;

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->region:Linfo/flowersoft/theotown/online/VirtualRegion;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/online/VirtualRegion;->getIcon()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/region/RegionIcon$Companion;->resolveOrDefault(Ljava/lang/String;)Linfo/flowersoft/theotown/region/RegionIcon;

    move-result-object v5

    invoke-virtual {v5}, Linfo/flowersoft/theotown/region/RegionIcon;->getFrame()I

    move-result v10

    .line 477
    iget-object v5, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    iget v6, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->id:I

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->isPasswordProtected(I)Z

    move-result v5

    const/4 v9, 0x0

    if-eqz v5, :cond_5c

    .line 478
    iget-object v5, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->orp:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;

    iget v6, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->id:I

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider;->canBeEnteredWithoutPassword(I)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 479
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_UNLOCK:I

    goto :goto_5d

    .line 481
    :cond_59
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOCKED:I

    goto :goto_5d

    :cond_5c
    move v5, v9

    :goto_5d
    if-lez v3, :cond_61

    .line 485
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_STAR:I

    :cond_61
    if-lez v4, :cond_65

    .line 488
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_GOLDEN_PRESENT:I

    :cond_65
    move/from16 v16, v5

    .line 490
    iget-object v3, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 491
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v3

    const/16 v4, 0x8ee

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    sub-int v2, v0, v2

    .line 492
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 493
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 490
    invoke-static {v3, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 496
    new-instance v6, Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    move-object v0, v6

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v6

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v6, v0

    const/4 v0, 0x2

    .line 497
    invoke-virtual {v6, v0, v0, v0, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(IIII)V

    move v0, v9

    .line 499
    new-instance v9, Lio/blueflower/stapel2d/gui/Icon;

    const/16 v14, 0x1e

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v15

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x1e

    invoke-direct/range {v9 .. v15}, Lio/blueflower/stapel2d/gui/Icon;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    if-eqz v16, :cond_c7

    .line 501
    new-instance v11, Lio/blueflower/stapel2d/gui/Icon;

    const/16 v15, 0xc

    move/from16 v12, v16

    const/16 v16, 0xc

    const/16 v13, 0xf

    const/16 v14, 0xf

    move-object/from16 v17, v6

    invoke-direct/range {v11 .. v17}, Lio/blueflower/stapel2d/gui/Icon;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v11, v1}, Lio/blueflower/stapel2d/gui/Icon;->setScale(F)V

    goto :goto_c9

    :cond_c7
    move-object/from16 v17, v6

    .line 504
    :goto_c9
    new-instance v6, Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual/range {v17 .. v17}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v10

    invoke-virtual/range {v17 .. v17}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v11

    move-object v7, v8

    const/16 v8, 0x1e

    const/4 v9, 0x0

    move-object/from16 v12, v17

    invoke-direct/range {v6 .. v12}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v1, v6

    move-object v6, v12

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v8, 0x0

    .line 505
    invoke-virtual {v1, v8, v2}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    move v2, v0

    .line 506
    new-instance v0, Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v3

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Label;->getTextWidth()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v3, v1

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    const-string v1, " by "

    move v7, v2

    move v2, v3

    const/4 v3, 0x0

    move v10, v7

    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v9, v0

    const v11, 0x3e99999a    # 0.3f

    .line 507
    invoke-virtual {v9, v8, v11}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 508
    iget-object v0, v7, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v9, v0}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 509
    new-instance v0, Lio/blueflower/stapel2d/gui/Label;

    iget-object v1, v7, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->region:Linfo/flowersoft/theotown/online/VirtualRegion;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getOwner()Linfo/flowersoft/theotown/online/VirtualUser;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/VirtualUser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    invoke-virtual {v9}, Lio/blueflower/stapel2d/gui/Label;->getTextWidth()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 510
    invoke-virtual {v0, v8, v11}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 511
    sget-object v1, Linfo/flowersoft/theotown/util/ThemeManager;->INSTANCE:Linfo/flowersoft/theotown/util/ThemeManager;

    iget-object v2, v7, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->region:Linfo/flowersoft/theotown/online/VirtualRegion;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/online/VirtualRegion;->getOwner()Linfo/flowersoft/theotown/online/VirtualUser;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/online/VirtualUser;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/ThemeManager;->transformColor(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 512
    iget-object v1, v7, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    move-object v1, v0

    .line 515
    new-instance v0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry$2;

    .line 516
    invoke-virtual {v9}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    .line 517
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v3

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Label;->getTextWidth()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v3, v1

    invoke-virtual {v9}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v1

    sub-int/2addr v3, v1

    add-int/lit8 v4, v3, 0x4

    const/16 v5, 0x14

    const/4 v3, 0x0

    move-object v1, v7

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry$2;-><init>(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)V

    .line 529
    new-instance v0, Lio/blueflower/stapel2d/gui/LineLayout;

    const/4 v2, 0x5

    invoke-direct {v0, v8, v10, v2, v6}, Lio/blueflower/stapel2d/gui/LineLayout;-><init>(FIILio/blueflower/stapel2d/gui/Gadget;)V

    const/16 v2, 0x1e

    const/16 v3, 0x14

    .line 530
    invoke-virtual {v0, v2, v3, v10, v10}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(IIII)V

    .line 532
    new-instance v17, Lio/blueflower/stapel2d/gui/Label;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v23, v0

    invoke-direct/range {v17 .. v23}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object/from16 v0, v17

    move-object/from16 v17, v23

    .line 533
    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 534
    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 535
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Label;->adjustSizeToText()V

    move v9, v10

    .line 537
    :goto_1a5
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->tags:[I

    array-length v2, v0

    if-ge v9, v2, :cond_1da

    .line 538
    aget v0, v0, v9

    .line 539
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->availableTags:Linfo/flowersoft/theotown/online/RegionTagMap;

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/online/RegionTagMap;->containsIds(I)Z

    move-result v2

    if-eqz v2, :cond_1d7

    .line 540
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->availableTags:Linfo/flowersoft/theotown/online/RegionTagMap;

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/online/RegionTagMap;->getNameById(I)Ljava/lang/String;

    move-result-object v12

    .line 541
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->availableTags:Linfo/flowersoft/theotown/online/RegionTagMap;

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/online/RegionTagMap;->getThemedColorById(I)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    .line 542
    new-instance v11, Lio/blueflower/stapel2d/gui/Label;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v11 .. v17}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 543
    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v11, v2}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 544
    invoke-virtual {v11, v0}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 545
    invoke-virtual {v11}, Lio/blueflower/stapel2d/gui/Label;->adjustSizeToText()V

    :cond_1d7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a5

    .line 549
    :cond_1da
    new-instance v0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry$3;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_NEXT:I

    move-object/from16 v17, v6

    .line 550
    invoke-virtual/range {v17 .. v17}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v6

    invoke-virtual/range {v17 .. v17}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    invoke-virtual/range {v17 .. v17}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry$3;-><init>(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)V

    .line 556
    invoke-virtual {v0, v10}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 559
    invoke-virtual/range {p0 .. p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void
.end method

.method public draw(II)V
    .registers 3

    .line 564
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.OnlineRegionProviderStage.RegionEntry.AnonymousClass1 (info.flowersoft.theotown.stages.OnlineRegionProviderStage$RegionEntry$1)
.class public Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry$1;
.super Lio/blueflower/stapel2d/gui/Button;
.source "OnlineRegionProviderStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->build(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;

.field public final synthetic val$onClick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)V
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

    .line 456
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry$1;->this$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry$1;->val$onClick:Ljava/lang/Runnable;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 465
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public onClick()V
    .registers 2

    .line 459
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 460
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry$1;->val$onClick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.OnlineRegionProviderStage.RegionEntry.AnonymousClass2 (info.flowersoft.theotown.stages.OnlineRegionProviderStage$RegionEntry$2)
.class public Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry$2;
.super Lio/blueflower/stapel2d/gui/Button;
.source "OnlineRegionProviderStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->build(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;

.field public final synthetic val$onVisitAuthor:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)V
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

    .line 518
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry$2;->this$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry$2;->val$onVisitAuthor:Ljava/lang/Runnable;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public onClick()V
    .registers 2

    .line 524
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 525
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry$2;->val$onVisitAuthor:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.OnlineRegionProviderStage.RegionEntry.AnonymousClass3 (info.flowersoft.theotown.stages.OnlineRegionProviderStage$RegionEntry$3)
.class public Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry$3;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "OnlineRegionProviderStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;->build(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;

.field public final synthetic val$onClick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
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
            null,
            null,
            null
        }
    .end annotation

    .line 550
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry$3;->this$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry$3;->val$onClick:Ljava/lang/Runnable;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 2

    .line 553
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 554
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$RegionEntry$3;->val$onClick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.OnlineRegionProviderStage.TagEntry (info.flowersoft.theotown.stages.OnlineRegionProviderStage$TagEntry)
.class public Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "OnlineRegionProviderStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagEntry"
.end annotation


# instance fields
.field public final childIndex:I

.field public final color:Lio/blueflower/stapel2d/drawing/Color;

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final ctr:I

.field public final id:I

.field public final name:Ljava/lang/String;

.field public final onClick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gui/Gadget;ILjava/lang/String;Lio/blueflower/stapel2d/drawing/Color;ILio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/Runnable;)V
    .registers 15

    .line 362
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    add-int/lit8 v4, v0, -0x4

    const/16 v5, 0x28

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 363
    iput p2, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;->id:I

    .line 364
    iput-object p3, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;->name:Ljava/lang/String;

    .line 365
    iput-object p4, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;->color:Lio/blueflower/stapel2d/drawing/Color;

    .line 366
    iput p5, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;->ctr:I

    .line 367
    iput-object p6, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 368
    iput-object p7, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;->onClick:Ljava/lang/Runnable;

    .line 370
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result p1

    iput p1, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;->childIndex:I

    .line 372
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;->build()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;)Ljava/lang/Runnable;
    .registers 1

    .line 349
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;->onClick:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public final build()V
    .registers 17

    .line 376
    new-instance v0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry$1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v6, p0

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry$1;-><init>(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 v2, 0x1

    .line 387
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setFillParent(Z)V

    .line 389
    sget v8, Linfo/flowersoft/theotown/resources/Resources;->ICON_SIGN:I

    .line 390
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 391
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    const/16 v2, 0x703

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;->ctr:I

    .line 392
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 390
    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 394
    new-instance v15, Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v6

    const/4 v1, 0x0

    const/4 v2, 0x2

    move-object/from16 v7, p0

    move-object v0, v15

    invoke-direct/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v11, v7

    const/4 v0, 0x2

    .line 395
    invoke-virtual {v15, v0, v0, v0, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(IIII)V

    .line 397
    new-instance v3, Lio/blueflower/stapel2d/gui/Icon;

    move v4, v8

    const/16 v8, 0x1e

    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    invoke-direct/range {v3 .. v9}, Lio/blueflower/stapel2d/gui/Icon;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 399
    new-instance v0, Lio/blueflower/stapel2d/gui/Label;

    iget-object v1, v11, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;->name:Ljava/lang/String;

    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    const/16 v2, 0x1e

    const/4 v3, 0x0

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    .line 400
    invoke-virtual {v0, v2, v1}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 401
    iget-object v1, v11, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 403
    new-instance v9, Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v13

    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v14

    const/16 v11, 0x1e

    const/4 v12, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v9 .. v15}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 404
    iget-object v0, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v9, v0}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 405
    iget-object v0, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v9, v0}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const v0, 0x3f333333    # 0.7f

    .line 406
    invoke-virtual {v9, v2, v0}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 408
    new-instance v0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry$2;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_NEXT:I

    .line 409
    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v6

    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry$2;-><init>(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 v1, 0x0

    .line 415
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 417
    invoke-virtual/range {p0 .. p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void
.end method

.method public draw(II)V
    .registers 3

    .line 422
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.OnlineRegionProviderStage.TagEntry.AnonymousClass1 (info.flowersoft.theotown.stages.OnlineRegionProviderStage$TagEntry$1)
.class public Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry$1;
.super Lio/blueflower/stapel2d/gui/Button;
.source "OnlineRegionProviderStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 376
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry$1;->this$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 385
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public onClick()V
    .registers 2

    .line 379
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 380
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry$1;->this$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;->access$000(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.OnlineRegionProviderStage.TagEntry.AnonymousClass2 (info.flowersoft.theotown.stages.OnlineRegionProviderStage$TagEntry$2)
.class public Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry$2;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "OnlineRegionProviderStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 409
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry$2;->this$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 2

    .line 412
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 413
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry$2;->this$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;->access$000(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$TagEntry;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda0;
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
    invoke-static {}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->$r8$lambda$tUVsDWCgeZRG3PSmfkuWjI7_PL0()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->$r8$lambda$4e807kQtLHvBS7Jfp6Pcxkdo3Fk(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda2;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda2;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->$r8$lambda$EG15uZI-ANvI4AGij3hEhJUPMqM(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;Linfo/flowersoft/theotown/cityfile/OnlineRegionProvider$Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda3 (info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;

    iput p2, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;

    iget v1, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda3;->f$1:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->$r8$lambda$v1hmaTDODJouhFbmJCZIUVwmH0Q(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;ILjava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda4 (info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;

    iput p2, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;

    iget v1, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda4;->f$1:I

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->$r8$lambda$tjJm5_Bgta8u-hr4bwUaJGm1B2Y(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;I)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda5 (info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/online/VirtualRegion;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;Linfo/flowersoft/theotown/online/VirtualRegion;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda5;->f$1:Linfo/flowersoft/theotown/online/VirtualRegion;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda5;->f$1:Linfo/flowersoft/theotown/online/VirtualRegion;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->$r8$lambda$ss-8Rkh2l42-i0xe8Vk0b2oMypw(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;Linfo/flowersoft/theotown/online/VirtualRegion;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda6 (info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda6;
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
    invoke-static {}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->$r8$lambda$As5QrTjvoJ023ScO__1GQO1ErF8()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda7 (info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda7)
.class public final synthetic Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->$r8$lambda$uBPndQ2a50Z4l8qu4Jahd3sspf0(Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda8 (info.flowersoft.theotown.stages.OnlineRegionProviderStage$$ExternalSyntheticLambda8)
.class public final synthetic Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->$r8$lambda$Q01a7d8Eu5uxOMoGA-DCAGllw-0(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

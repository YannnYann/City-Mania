###### Class info.flowersoft.theotown.stages.gameuibuilder.NotificationBarBuilder (info.flowersoft.theotown.stages.gameuibuilder.NotificationBarBuilder)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;
.super Lio/blueflower/stapel2d/util/Builder;
.source "NotificationBarBuilder.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/blueflower/stapel2d/util/Builder<",
        "Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;",
        ">;",
        "Linfo/flowersoft/theotown/city/components/NotificationListener;"
    }
.end annotation


# instance fields
.field public final NOTIFICATION_MAX_SHOW_TIME:I

.field public barNotification:Linfo/flowersoft/theotown/city/components/Notification;

.field public final date:Linfo/flowersoft/theotown/components/DefaultDate;

.field public dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public lastSpeed:I

.field public modifiedSpeed:Z

.field public narrowMode:Z

.field public notificationBar:Linfo/flowersoft/theotown/ui/NotificationBar;

.field public final notificator:Linfo/flowersoft/theotown/city/components/Notificator;

.field public panel:Lio/blueflower/stapel2d/gui/Panel;

.field public startMS:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 3

    .line 56
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/util/Builder;-><init>(Ljava/lang/Object;)V

    const p1, 0xea60

    .line 33
    iput p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->NOTIFICATION_MAX_SHOW_TIME:I

    .line 57
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/components/Notificator;

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->notificator:Linfo/flowersoft/theotown/city/components/Notificator;

    .line 58
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getDate()Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;)Linfo/flowersoft/theotown/ui/NotificationBar;
    .registers 1

    .line 31
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->notificationBar:Linfo/flowersoft/theotown/ui/NotificationBar;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;)Linfo/flowersoft/theotown/city/components/Notification;
    .registers 1

    .line 31
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->barNotification:Linfo/flowersoft/theotown/city/components/Notification;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;)J
    .registers 3

    .line 31
    iget-wide v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->startMS:J

    return-wide v0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;Linfo/flowersoft/theotown/city/components/Notification;)V
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->buildNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    return-void
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;)Linfo/flowersoft/theotown/city/components/Notificator;
    .registers 1

    .line 31
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->notificator:Linfo/flowersoft/theotown/city/components/Notificator;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;)Ljava/lang/Object;
    .registers 1

    .line 31
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public build()V
    .registers 10

    .line 63
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGUI()Lio/blueflower/stapel2d/gui/Master;

    move-result-object v7

    .line 64
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->areaPanel:Lio/blueflower/stapel2d/gui/Panel;

    .line 66
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v1

    const/16 v2, 0x136

    const/4 v3, 0x0

    const/4 v8, 0x1

    if-ge v1, v2, :cond_1e

    move v2, v8

    goto :goto_1f

    :cond_1e
    move v2, v3

    .line 67
    :goto_1f
    iput-boolean v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->narrowMode:Z

    if-nez v2, :cond_25

    add-int/lit8 v1, v1, -0x30

    .line 74
    :cond_25
    new-instance v2, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$1;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    sget-boolean v5, Linfo/flowersoft/theotown/resources/Settings;->leftMinimap:Z

    if-eqz v5, :cond_33

    const/16 v3, 0x30

    :cond_33
    add-int/2addr v3, v4

    .line 75
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v4

    add-int/lit8 v5, v1, -0x4

    .line 77
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v1

    add-int/lit8 v6, v1, -0x2

    move-object v1, v2

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v1, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->panel:Lio/blueflower/stapel2d/gui/Panel;

    .line 122
    invoke-virtual {v1, v8}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->setTouchThrough(Z)V

    .line 124
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x24

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    .line 126
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->getInstance()Linfo/flowersoft/theotown/tutorial/Tutorial;

    move-result-object v0

    iget-object v1, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->panel:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0, v7, v1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->setGUI(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 128
    iget-object v0, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->notificator:Linfo/flowersoft/theotown/city/components/Notificator;

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/city/components/Notificator;->addListener(Linfo/flowersoft/theotown/city/components/NotificationListener;)V

    .line 130
    iget-object v0, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->notificator:Linfo/flowersoft/theotown/city/components/Notificator;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Notificator;->getCurrentNotification()Linfo/flowersoft/theotown/city/components/Notification;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 131
    iget-object v0, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->notificator:Linfo/flowersoft/theotown/city/components/Notificator;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Notificator;->getCurrentNotification()Linfo/flowersoft/theotown/city/components/Notification;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->recoverNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    return-void

    .line 133
    :cond_73
    iget-object v0, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->notificator:Linfo/flowersoft/theotown/city/components/Notificator;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Notificator;->unlock()V

    return-void
.end method

.method public final buildNotification(Linfo/flowersoft/theotown/city/components/Notification;)V
    .registers 6

    .line 163
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/Notification;->getActions()Ljava/util/List;

    move-result-object v0

    .line 164
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/components/NotificationAction;

    .line 165
    instance-of v3, v2, Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;

    if-eqz v3, :cond_8

    .line 166
    check-cast v2, Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;

    .line 167
    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$2;

    invoke-direct {v3, p0, v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$2;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;)V

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;->setAction(Ljava/lang/Runnable;)V

    goto :goto_8

    .line 177
    :cond_23
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/Notification;->isImmersive()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 178
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->buildNotificationDialog(Linfo/flowersoft/theotown/city/components/Notification;Ljava/util/List;)V

    return-void

    .line 180
    :cond_2d
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->buildNotificationBar(Linfo/flowersoft/theotown/city/components/Notification;Ljava/util/List;)V

    return-void
.end method

.method public final buildNotificationBar(Linfo/flowersoft/theotown/city/components/Notification;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/components/Notification;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/NotificationAction;",
            ">;)V"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->barNotification:Linfo/flowersoft/theotown/city/components/Notification;

    .line 187
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->notificationBar:Linfo/flowersoft/theotown/ui/NotificationBar;

    if-eqz v0, :cond_c

    .line 188
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/NotificationBar;->free()V

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->notificationBar:Linfo/flowersoft/theotown/ui/NotificationBar;

    .line 192
    :cond_c
    new-instance v0, Linfo/flowersoft/theotown/ui/NotificationBar;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->panel:Lio/blueflower/stapel2d/gui/Panel;

    iget-boolean v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->narrowMode:Z

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/ui/NotificationBar;-><init>(Lio/blueflower/stapel2d/gui/Gadget;Z)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->notificationBar:Linfo/flowersoft/theotown/ui/NotificationBar;

    .line 193
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/Notification;->getIconID()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/NotificationBar;->setIcon(I)V

    .line 194
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->notificationBar:Linfo/flowersoft/theotown/ui/NotificationBar;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/Notification;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/NotificationBar;->setText(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->notificationBar:Linfo/flowersoft/theotown/ui/NotificationBar;

    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/ui/NotificationBar;->setActions(Ljava/util/List;)V

    .line 196
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->notificationBar:Linfo/flowersoft/theotown/ui/NotificationBar;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/Notification;->isImportant()Z

    move-result p1

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/ui/NotificationBar;->setImportant(Z)V

    .line 197
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->notificationBar:Linfo/flowersoft/theotown/ui/NotificationBar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/ui/NotificationBar;->build(Z)V

    return-void
.end method

.method public final buildNotificationDialog(Linfo/flowersoft/theotown/city/components/Notification;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/components/Notification;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/NotificationAction;",
            ">;)V"
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/Notification;->getIconID()I

    move-result v0

    .line 214
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/Notification;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/Notification;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 217
    new-instance v3, Linfo/flowersoft/theotown/ui/Dialog;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->panel:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v4

    check-cast v4, Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v3, v0, v1, v2, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    iput-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    .line 218
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$3;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$3;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;Linfo/flowersoft/theotown/city/components/Notification;)V

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setOnClose(Ljava/lang/Runnable;)V

    .line 224
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/Notification;->isCloseable()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 225
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    .line 228
    :cond_2e
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_74

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/city/components/NotificationAction;

    .line 230
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/components/NotificationAction;->getNameId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5c

    .line 231
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/components/NotificationAction;->getNameId()I

    move-result v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5e

    .line 230
    :cond_5c
    const-string v0, ""

    :goto_5e
    const/4 v1, 0x1

    .line 233
    new-array v1, v1, [Lio/blueflower/stapel2d/gui/Button;

    .line 234
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/components/NotificationAction;->getIconId()I

    move-result v3

    new-instance v4, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$4;

    invoke-direct {v4, p0, p2, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$4;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;Linfo/flowersoft/theotown/city/components/NotificationAction;[Lio/blueflower/stapel2d/gui/Button;)V

    const/4 p2, 0x0

    invoke-virtual {v2, v3, v0, p2, v4}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    aput-object v0, v1, p2

    goto :goto_32

    :cond_74
    return-void
.end method

.method public close(Z)V
    .registers 4

    .line 246
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->modifiedSpeed:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->modifiedSpeed:Z

    .line 248
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getSpeed()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    iget v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->lastSpeed:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultDate;->setSpeed(I)V

    :cond_16
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    .line 252
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->barNotification:Linfo/flowersoft/theotown/city/components/Notification;

    if-eqz v1, :cond_20

    .line 253
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/Notification;->onClose()V

    .line 255
    :cond_20
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->notificationBar:Linfo/flowersoft/theotown/ui/NotificationBar;

    if-eqz v1, :cond_29

    .line 256
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/NotificationBar;->free()V

    .line 257
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->notificationBar:Linfo/flowersoft/theotown/ui/NotificationBar;

    :cond_29
    if-nez p1, :cond_2f

    .line 261
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->notificationBar:Linfo/flowersoft/theotown/ui/NotificationBar;

    if-nez p1, :cond_34

    .line 262
    :cond_2f
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->notificator:Linfo/flowersoft/theotown/city/components/Notificator;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/Notificator;->unlock()V

    .line 265
    :cond_34
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    if-eqz p1, :cond_3d

    .line 266
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->free()V

    .line 267
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    :cond_3d
    return-void
.end method

.method public onNotification(Linfo/flowersoft/theotown/city/components/Notification;)V
    .registers 5

    .line 139
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_NOTIFICATION:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 140
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->buildNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 141
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->getInstance()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_NOTIFICATION:I

    sget-object v2, Linfo/flowersoft/theotown/resources/SoundType;->UI:Linfo/flowersoft/theotown/resources/SoundType;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/resources/SoundPlayer;->play(ILinfo/flowersoft/theotown/resources/SoundType;)Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    .line 143
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->showNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 145
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/Notification;->isImportant()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 146
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultDate;->getSpeed()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_39

    .line 147
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultDate;->getSpeed()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->lastSpeed:I

    const/4 p1, 0x1

    .line 148
    iput-boolean p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->modifiedSpeed:Z

    .line 149
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/components/DefaultDate;->setSpeed(I)V

    :cond_39
    return-void
.end method

.method public final recoverNotification(Linfo/flowersoft/theotown/city/components/Notification;)V
    .registers 3

    .line 156
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_NOTIFICATION:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 157
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->buildNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 158
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->showNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    :cond_e
    return-void
.end method

.method public final showNotification(Linfo/flowersoft/theotown/city/components/Notification;)V
    .registers 4

    .line 201
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->notificator:Linfo/flowersoft/theotown/city/components/Notificator;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/components/Notificator;->lock(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 203
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/Notification;->isImmersive()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 204
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->showDialog(Linfo/flowersoft/theotown/ui/Dialog;)V

    goto :goto_1d

    .line 206
    :cond_17
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->startMS:J

    .line 209
    :goto_1d
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/Notification;->onShow()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.NotificationBarBuilder.AnonymousClass1 (info.flowersoft.theotown.stages.gameuibuilder.NotificationBarBuilder$1)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$1;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "NotificationBarBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 78
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 107
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public free()V
    .registers 3

    .line 112
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;)Linfo/flowersoft/theotown/city/components/Notificator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/Notificator;->lock(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 113
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;)Linfo/flowersoft/theotown/city/components/Notificator;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/Notificator;->removeListener(Linfo/flowersoft/theotown/city/components/NotificationListener;)V

    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 118
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onUpdate()V
    .registers 5

    .line 82
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 84
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->getInstance()Linfo/flowersoft/theotown/tutorial/Tutorial;

    move-result-object v0

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0, v1, p0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->setGUI(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 86
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;)Linfo/flowersoft/theotown/ui/NotificationBar;

    move-result-object v0

    if-eqz v0, :cond_94

    .line 87
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;)Linfo/flowersoft/theotown/city/components/Notification;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Notification;->update()V

    .line 88
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x476a6000    # 60000.0f

    div-float/2addr v0, v1

    .line 91
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;)Linfo/flowersoft/theotown/city/components/Notification;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/Notification;->rebuildMe()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 92
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;)Linfo/flowersoft/theotown/city/components/Notification;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 93
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;)Linfo/flowersoft/theotown/city/components/Notification;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Notification;->onShow()V

    return-void

    :cond_4c
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5e

    .line 94
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

    .line 95
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;)Linfo/flowersoft/theotown/city/components/Notification;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Notification;->keepOpen()Z

    move-result v0

    if-eqz v0, :cond_8e

    :cond_5e
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

    .line 96
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;)Linfo/flowersoft/theotown/city/components/Notification;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Notification;->closeMe()Z

    move-result v0

    if-nez v0, :cond_8e

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

    .line 97
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;)Linfo/flowersoft/theotown/city/components/Notification;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Notification;->isCloseable()Z

    move-result v0

    if-nez v0, :cond_82

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;)Linfo/flowersoft/theotown/city/components/Notification;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Notification;->checkCondition()Z

    move-result v0

    if-eqz v0, :cond_8e

    :cond_82
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

    .line 98
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;)Linfo/flowersoft/theotown/city/components/Notification;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Notification;->checkCondition()Z

    move-result v0

    if-nez v0, :cond_94

    .line 100
    :cond_8e
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->close(Z)V

    :cond_94
    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.NotificationBarBuilder.AnonymousClass2 (info.flowersoft.theotown.stages.gameuibuilder.NotificationBarBuilder$2)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$2;
.super Ljava/lang/Object;
.source "NotificationBarBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->buildNotification(Linfo/flowersoft/theotown/city/components/Notification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

.field public final synthetic val$cityInfoAction:Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;)V
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

    .line 168
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$2;->val$cityInfoAction:Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 171
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->access$500(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$2;->val$cityInfoAction:Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfoAction;->getType()Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->visitCityInfo(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.NotificationBarBuilder.AnonymousClass3 (info.flowersoft.theotown.stages.gameuibuilder.NotificationBarBuilder$3)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$3;
.super Ljava/lang/Object;
.source "NotificationBarBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->buildNotificationDialog(Linfo/flowersoft/theotown/city/components/Notification;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

.field public final synthetic val$notification:Linfo/flowersoft/theotown/city/components/Notification;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;Linfo/flowersoft/theotown/city/components/Notification;)V
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

    .line 218
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$3;->val$notification:Linfo/flowersoft/theotown/city/components/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 221
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$3;->val$notification:Linfo/flowersoft/theotown/city/components/Notification;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Notification;->onClose()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.NotificationBarBuilder.AnonymousClass4 (info.flowersoft.theotown.stages.gameuibuilder.NotificationBarBuilder$4)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$4;
.super Ljava/lang/Object;
.source "NotificationBarBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->buildNotificationDialog(Linfo/flowersoft/theotown/city/components/Notification;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

.field public final synthetic val$action:Linfo/flowersoft/theotown/city/components/NotificationAction;

.field public final synthetic val$cmd:[Lio/blueflower/stapel2d/gui/Button;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;Linfo/flowersoft/theotown/city/components/NotificationAction;[Lio/blueflower/stapel2d/gui/Button;)V
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

    .line 234
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$4;->val$action:Linfo/flowersoft/theotown/city/components/NotificationAction;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$4;->val$cmd:[Lio/blueflower/stapel2d/gui/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 237
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;->close(Z)V

    .line 238
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$4;->val$action:Linfo/flowersoft/theotown/city/components/NotificationAction;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$4;->val$cmd:[Lio/blueflower/stapel2d/gui/Button;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/NotificationAction;->setButton(Lio/blueflower/stapel2d/gui/Button;)V

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder$4;->val$action:Linfo/flowersoft/theotown/city/components/NotificationAction;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/NotificationAction;->getAction()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

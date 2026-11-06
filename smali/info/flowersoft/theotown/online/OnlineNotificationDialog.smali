###### Class info.flowersoft.theotown.online.OnlineNotificationDialog (info.flowersoft.theotown.online.OnlineNotificationDialog)
.class public Linfo/flowersoft/theotown/online/OnlineNotificationDialog;
.super Linfo/flowersoft/theotown/ui/Dialog;
.source "OnlineNotificationDialog.java"


# instance fields
.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

.field public final listBox:Lio/blueflower/stapel2d/gui/ListBox;

.field public final manager:Linfo/flowersoft/theotown/online/OnlineNotificationManager;

.field public notifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/online/VirtualNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;Lio/blueflower/stapel2d/gui/Master;)V
    .registers 12

    .line 40
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_NOTIFICATION:I

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    const/16 v2, 0x22f

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x12c

    const/16 v5, 0x12c

    const-string v3, ""

    move-object v0, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 31
    invoke-static {}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->getInstance()Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    move-result-object v7

    iput-object v7, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->manager:Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    .line 41
    iput-object p1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 42
    iput-object p2, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    .line 44
    new-instance v1, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$1;-><init>(Linfo/flowersoft/theotown/online/OnlineNotificationDialog;)V

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton(Ljava/lang/Runnable;)Lio/blueflower/stapel2d/gui/Button;

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v7, v1}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->fetch(Z)V

    .line 60
    invoke-virtual {v7}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->markAsRead()V

    .line 62
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    .line 63
    new-instance v0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$2;

    const/4 v5, 0x0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$2;-><init>(Linfo/flowersoft/theotown/online/OnlineNotificationDialog;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v1, v0

    iput-object v1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    .line 73
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    .line 75
    invoke-virtual {v7}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->getNotifications()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->notifications:Ljava/util/List;

    .line 76
    invoke-direct {p0}, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->build()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/online/OnlineNotificationDialog;)Ljava/util/List;
    .registers 1

    .line 29
    iget-object p0, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->notifications:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/online/OnlineNotificationDialog;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 29
    iput-object p1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->notifications:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/online/OnlineNotificationDialog;)Linfo/flowersoft/theotown/online/OnlineNotificationManager;
    .registers 1

    .line 29
    iget-object p0, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->manager:Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/online/OnlineNotificationDialog;)V
    .registers 1

    .line 29
    invoke-direct {p0}, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->build()V

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/online/OnlineNotificationDialog;Linfo/flowersoft/theotown/online/VirtualNotification;)V
    .registers 2

    .line 29
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->locate(Linfo/flowersoft/theotown/online/VirtualNotification;)V

    return-void
.end method

.method private build()V
    .registers 7

    .line 80
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->getShiftY()F

    move-result v0

    .line 81
    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ListBox;->removeAllItems()V

    .line 83
    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->notifications:Ljava/util/List;

    if-eqz v1, :cond_4c

    .line 84
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    const/4 v1, 0x0

    .line 85
    :goto_16
    iget-object v2, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->notifications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 86
    iget-object v2, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->notifications:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/online/VirtualNotification;

    .line 87
    iget-object v3, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->createNotificationItem(Linfo/flowersoft/theotown/online/VirtualNotification;)Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object v2

    invoke-virtual {v3, v2}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 90
    :cond_32
    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v2, Linfo/flowersoft/theotown/ui/FillingListItem;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_ONLINE_REGIONS:I

    iget-object v4, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 92
    invoke-virtual {v4}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-direct {v2, v3, v4, v5}, Linfo/flowersoft/theotown/ui/FillingListItem;-><init>(ILjava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 90
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 96
    :cond_4c
    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gui/ListBox;->setShiftY(F)V

    return-void
.end method


# virtual methods
.method public final createNotificationItem(Linfo/flowersoft/theotown/online/VirtualNotification;)Lio/blueflower/stapel2d/gui/ListItem;
    .registers 20

    move-object/from16 v1, p0

    .line 131
    new-instance v6, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$3;

    iget-object v0, v1, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    const/16 v5, 0x28

    move-object v0, v6

    iget-object v6, v1, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$3;-><init>(Linfo/flowersoft/theotown/online/OnlineNotificationDialog;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v6, v0

    move-object v7, v1

    const/4 v0, 0x5

    const/4 v10, 0x0

    .line 137
    invoke-virtual {v6, v10, v10, v0, v10}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(IIII)V

    .line 139
    new-instance v0, Lio/blueflower/stapel2d/gui/TextFrame;

    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/online/VirtualNotification;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    add-int/lit8 v4, v2, -0x50

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    const/16 v2, 0x28

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/TextFrame;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    .line 140
    invoke-virtual {v0, v8, v1}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 141
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/online/VirtualNotification;->getSeenTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v11, 0x1

    if-nez v1, :cond_43

    move v1, v11

    goto :goto_44

    :cond_43
    move v1, v10

    :goto_44
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/TextFrame;->setBold(Z)V

    .line 144
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/TextFrame;->calculateTextHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v6, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    .line 145
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    .line 147
    new-instance v0, Lio/blueflower/stapel2d/gui/Label;

    iget-object v1, v7, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 149
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v1

    const/16 v2, 0xbe7

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/online/VirtualNotification;->getTime()J

    move-result-wide v16

    mul-long v16, v16, v14

    sub-long v12, v12, v16

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 148
    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 152
    invoke-virtual {v0, v1, v8}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 153
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 154
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 156
    new-instance v0, Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->getNotificationIcon(Linfo/flowersoft/theotown/online/VirtualNotification;)I

    move-result v1

    const/16 v4, 0x1e

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    const/4 v2, 0x5

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Icon;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 158
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/online/VirtualNotification;->getAction()Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->DELETE_REGION:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    if-eq v0, v1, :cond_e0

    .line 159
    new-instance v0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$4;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOCATE:I

    .line 160
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    add-int/lit8 v4, v1, -0x28

    .line 161
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    const-string v3, ""

    const/16 v5, 0xc

    move-object v8, v6

    const/16 v6, 0x28

    move-object v9, v7

    move v7, v1

    move-object v1, v9

    move-object/from16 v9, p1

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$4;-><init>(Linfo/flowersoft/theotown/online/OnlineNotificationDialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/online/VirtualNotification;)V

    move-object v6, v8

    .line 171
    :cond_e0
    new-instance v0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;

    invoke-direct {v0, v6}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 172
    invoke-virtual {v0, v10}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->setCanBeSelected(Z)V

    .line 173
    invoke-virtual {v0, v11}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->setDrawBackground(Z)V

    return-object v0
.end method

.method public final getNotificationIcon(Linfo/flowersoft/theotown/online/VirtualNotification;)I
    .registers 3

    .line 108
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualNotification;->getAction()Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    move-result-object p1

    if-nez p1, :cond_9

    .line 109
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ONLINE_REGIONS:I

    return p1

    .line 111
    :cond_9
    sget-object v0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$5;->$SwitchMap$info$flowersoft$theotown$online$VirtualNotification$Action:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_26

    .line 126
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ONLINE_REGIONS:I

    return p1

    .line 124
    :pswitch_17
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    return p1

    .line 121
    :pswitch_1a
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_NEXT:I

    return p1

    .line 118
    :pswitch_1d
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    return p1

    .line 115
    :pswitch_20
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_GOLDEN_PRESENT:I

    return p1

    .line 113
    :pswitch_23
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_NOTIFICATION:I

    return p1

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1d
        :pswitch_1a
        :pswitch_1a
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method public final locate(Linfo/flowersoft/theotown/online/VirtualNotification;)V
    .registers 4

    .line 100
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualNotification;->getRegionId()I

    move-result v0

    .line 101
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualNotification;->getCityId()I

    move-result p1

    .line 102
    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->peek()Lio/blueflower/stapel2d/gamestack/Stage;

    move-result-object v1

    instance-of v1, v1, Linfo/flowersoft/theotown/stages/RegionStage;

    if-eqz v1, :cond_1d

    .line 103
    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->peek()Lio/blueflower/stapel2d/gamestack/Stage;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-virtual {v1, v0, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->locateOnline(II)V

    :cond_1d
    return-void
.end method

###### Class info.flowersoft.theotown.online.OnlineNotificationDialog.AnonymousClass1 (info.flowersoft.theotown.online.OnlineNotificationDialog$1)
.class public Linfo/flowersoft/theotown/online/OnlineNotificationDialog$1;
.super Ljava/lang/Object;
.source "OnlineNotificationDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/OnlineNotificationDialog;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/OnlineNotificationDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/OnlineNotificationDialog;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 44
    iput-object p1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$1;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 47
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$1;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->access$000(Linfo/flowersoft/theotown/online/OnlineNotificationDialog;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_45

    const/4 v0, 0x0

    .line 48
    :goto_9
    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$1;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationDialog;

    invoke-static {v1}, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->access$000(Linfo/flowersoft/theotown/online/OnlineNotificationDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 49
    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$1;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationDialog;

    invoke-static {v1}, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->access$000(Linfo/flowersoft/theotown/online/OnlineNotificationDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/online/VirtualNotification;

    .line 50
    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/VirtualNotification;->getSeenTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_39

    .line 51
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/online/VirtualNotification;->setSeenTime(J)V

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 54
    :cond_3c
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$1;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->access$100(Linfo/flowersoft/theotown/online/OnlineNotificationDialog;)Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->resetUnseenCounter()V

    :cond_45
    return-void
.end method

###### Class info.flowersoft.theotown.online.OnlineNotificationDialog.AnonymousClass2 (info.flowersoft.theotown.online.OnlineNotificationDialog$2)
.class public Linfo/flowersoft/theotown/online/OnlineNotificationDialog$2;
.super Lio/blueflower/stapel2d/gui/ListBox;
.source "OnlineNotificationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/OnlineNotificationDialog;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/OnlineNotificationDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/OnlineNotificationDialog;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 63
    iput-object p1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$2;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationDialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 3

    .line 66
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/ListBox;->onUpdate()V

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$2;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->access$100(Linfo/flowersoft/theotown/online/OnlineNotificationDialog;)Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->getNotifications()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$2;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationDialog;

    invoke-static {v1}, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->access$000(Linfo/flowersoft/theotown/online/OnlineNotificationDialog;)Ljava/util/List;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$2;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->access$100(Linfo/flowersoft/theotown/online/OnlineNotificationDialog;)Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->getNotifications()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->access$002(Linfo/flowersoft/theotown/online/OnlineNotificationDialog;Ljava/util/List;)Ljava/util/List;

    .line 69
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$2;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->access$200(Linfo/flowersoft/theotown/online/OnlineNotificationDialog;)V

    :cond_27
    return-void
.end method

###### Class info.flowersoft.theotown.online.OnlineNotificationDialog.AnonymousClass3 (info.flowersoft.theotown.online.OnlineNotificationDialog$3)
.class public Linfo/flowersoft/theotown/online/OnlineNotificationDialog$3;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "OnlineNotificationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->createNotificationItem(Linfo/flowersoft/theotown/online/VirtualNotification;)Lio/blueflower/stapel2d/gui/ListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/OnlineNotificationDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/OnlineNotificationDialog;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 131
    iput-object p1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$3;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationDialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 134
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.OnlineNotificationDialog.AnonymousClass4 (info.flowersoft.theotown.online.OnlineNotificationDialog$4)
.class public Linfo/flowersoft/theotown/online/OnlineNotificationDialog$4;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "OnlineNotificationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->createNotificationItem(Linfo/flowersoft/theotown/online/VirtualNotification;)Lio/blueflower/stapel2d/gui/ListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/OnlineNotificationDialog;

.field public final synthetic val$notification:Linfo/flowersoft/theotown/online/VirtualNotification;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/OnlineNotificationDialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/online/VirtualNotification;)V
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

    .line 161
    iput-object p1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$4;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationDialog;

    iput-object p9, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$4;->val$notification:Linfo/flowersoft/theotown/online/VirtualNotification;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 164
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 165
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$4;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$4;->val$notification:Linfo/flowersoft/theotown/online/VirtualNotification;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;->access$300(Linfo/flowersoft/theotown/online/OnlineNotificationDialog;Linfo/flowersoft/theotown/online/VirtualNotification;)V

    .line 166
    iget-object v0, p0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$4;->this$0:Linfo/flowersoft/theotown/online/OnlineNotificationDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.OnlineNotificationDialog.AnonymousClass5 (info.flowersoft.theotown.online.OnlineNotificationDialog$5)
.class public synthetic Linfo/flowersoft/theotown/online/OnlineNotificationDialog$5;
.super Ljava/lang/Object;
.source "OnlineNotificationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/online/OnlineNotificationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$info$flowersoft$theotown$online$VirtualNotification$Action:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 111
    invoke-static {}, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->values()[Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$5;->$SwitchMap$info$flowersoft$theotown$online$VirtualNotification$Action:[I

    :try_start_9
    sget-object v1, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->CITY_COMMENT:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$5;->$SwitchMap$info$flowersoft$theotown$online$VirtualNotification$Action:[I

    sget-object v1, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->CITY_PRESENT:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$5;->$SwitchMap$info$flowersoft$theotown$online$VirtualNotification$Action:[I

    sget-object v1, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->STEAL_CITY:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$5;->$SwitchMap$info$flowersoft$theotown$online$VirtualNotification$Action:[I

    sget-object v1, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->STEAL_REGION:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$5;->$SwitchMap$info$flowersoft$theotown$online$VirtualNotification$Action:[I

    sget-object v1, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->GIFT_CITY:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$5;->$SwitchMap$info$flowersoft$theotown$online$VirtualNotification$Action:[I

    sget-object v1, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->GIFT_REGION:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$5;->$SwitchMap$info$flowersoft$theotown$online$VirtualNotification$Action:[I

    sget-object v1, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->RESET_CITY:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog$5;->$SwitchMap$info$flowersoft$theotown$online$VirtualNotification$Action:[I

    sget-object v1, Linfo/flowersoft/theotown/online/VirtualNotification$Action;->DELETE_REGION:Linfo/flowersoft/theotown/online/VirtualNotification$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    return-void
.end method

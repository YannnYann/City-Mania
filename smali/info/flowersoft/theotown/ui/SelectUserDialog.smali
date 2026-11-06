###### Class info.flowersoft.theotown.ui.SelectUserDialog (info.flowersoft.theotown.ui.SelectUserDialog)
.class public Linfo/flowersoft/theotown/ui/SelectUserDialog;
.super Linfo/flowersoft/theotown/ui/Dialog;
.source "SelectUserDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/SelectUserDialog$User;,
        Linfo/flowersoft/theotown/ui/SelectUserDialog$UserReceiver;,
        Linfo/flowersoft/theotown/ui/SelectUserDialog$UserItem;
    }
.end annotation


# instance fields
.field public final cachedUsers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Linfo/flowersoft/theotown/ui/SelectUserDialog$User;",
            ">;"
        }
    .end annotation
.end field

.field public final cmdSelect:Linfo/flowersoft/theotown/ui/GoldButton;

.field public enteredText:Ljava/lang/String;

.field public fetchResult:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final forbiddenUserId:I

.field public lastRequestReturned:Z

.field public lastTextChange:J

.field public final listBox:Lio/blueflower/stapel2d/gui/ListBox;

.field public final ors:Linfo/flowersoft/theotown/online/OnlineRegionStore;

.field public final receiver:Linfo/flowersoft/theotown/ui/SelectUserDialog$UserReceiver;

.field public selectedUser:Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

.field public final userCache:Linfo/flowersoft/theotown/resources/PersistentData;


# direct methods
.method public static synthetic $r8$lambda$iMgIS87RRqcwHlX0t6-1Jcakwzw(Linfo/flowersoft/theotown/ui/SelectUserDialog;I)V
    .registers 7

    .line 102
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->selectedUser:Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

    if-eqz v0, :cond_e

    .line 102
    iget-wide v1, v0, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->id:J

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_e

    .line 103
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->finalUserSelection(Linfo/flowersoft/theotown/ui/SelectUserDialog$User;)V

    :cond_e
    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/ui/SelectUserDialog$UserReceiver;ILio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
    .registers 24

    move-object/from16 v7, p1

    move/from16 v8, p2

    .line 56
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ONLINE_REGIONS:I

    invoke-virtual/range {p3 .. p3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    const/16 v2, 0xd0a

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x12c

    const/16 v5, 0x140

    const-string v3, ""

    move-object/from16 v0, p0

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    move-object v1, v0

    .line 38
    new-instance v0, Linfo/flowersoft/theotown/online/OnlineRegionStore;

    invoke-direct {v0}, Linfo/flowersoft/theotown/online/OnlineRegionStore;-><init>()V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/SelectUserDialog;->ors:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    const/4 v9, 0x1

    .line 49
    iput-boolean v9, v1, Linfo/flowersoft/theotown/ui/SelectUserDialog;->lastRequestReturned:Z

    const/4 v0, 0x0

    .line 50
    iput-object v0, v1, Linfo/flowersoft/theotown/ui/SelectUserDialog;->fetchResult:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 52
    new-instance v0, Linfo/flowersoft/theotown/resources/PersistentData;

    const-string v2, "SelectUserDialog"

    invoke-direct {v0, v2}, Linfo/flowersoft/theotown/resources/PersistentData;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/SelectUserDialog;->userCache:Linfo/flowersoft/theotown/resources/PersistentData;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/SelectUserDialog;->cachedUsers:Ljava/util/Map;

    .line 57
    iput v8, v1, Linfo/flowersoft/theotown/ui/SelectUserDialog;->forbiddenUserId:I

    .line 58
    iput-object v7, v1, Linfo/flowersoft/theotown/ui/SelectUserDialog;->receiver:Linfo/flowersoft/theotown/ui/SelectUserDialog$UserReceiver;

    .line 60
    invoke-virtual/range {p3 .. p3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v10

    .line 62
    new-instance v11, Lio/blueflower/stapel2d/gui/Label;

    const/16 v0, 0xdc0

    invoke-interface {v10, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x1e

    iget-object v0, v1, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x50

    move-object/from16 v17, v0

    invoke-direct/range {v11 .. v17}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 v0, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 63
    invoke-virtual {v11, v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 64
    new-instance v0, Linfo/flowersoft/theotown/ui/SelectUserDialog$1;

    invoke-virtual {v11}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v2

    iget-object v3, v1, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    invoke-virtual {v11}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v4

    sub-int v4, v3, v4

    const/16 v5, 0x1e

    iget-object v6, v1, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/SelectUserDialog$1;-><init>(Linfo/flowersoft/theotown/ui/SelectUserDialog;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/16 v2, 0x28f

    .line 76
    invoke-interface {v10, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/TextField;->setHint(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/TextField;->setActive()V

    .line 79
    new-instance v11, Lio/blueflower/stapel2d/gui/ListBox;

    .line 80
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v2

    add-int/lit8 v13, v2, 0x5

    iget-object v2, v1, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    .line 81
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v14

    iget-object v2, v1, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    .line 82
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v2

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v15, v2, -0x5

    .line 83
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v16

    const/4 v12, 0x0

    invoke-direct/range {v11 .. v16}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v11, v1, Linfo/flowersoft/theotown/ui/SelectUserDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    .line 85
    new-instance v2, Linfo/flowersoft/theotown/ui/SelectUserDialog$2;

    invoke-direct {v2, v1, v0}, Linfo/flowersoft/theotown/ui/SelectUserDialog$2;-><init>(Linfo/flowersoft/theotown/ui/SelectUserDialog;Linfo/flowersoft/theotown/ui/TextField;)V

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setOnClose(Ljava/lang/Runnable;)V

    .line 92
    new-instance v0, Linfo/flowersoft/theotown/ui/SelectUserDialog$3;

    invoke-direct {v0, v1, v7}, Linfo/flowersoft/theotown/ui/SelectUserDialog$3;-><init>(Linfo/flowersoft/theotown/ui/SelectUserDialog;Linfo/flowersoft/theotown/ui/SelectUserDialog$UserReceiver;)V

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton(Ljava/lang/Runnable;)Lio/blueflower/stapel2d/gui/Button;

    .line 98
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 v2, 0x5a

    .line 100
    invoke-interface {v10, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Linfo/flowersoft/theotown/ui/SelectUserDialog$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1, v8}, Linfo/flowersoft/theotown/ui/SelectUserDialog$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/SelectUserDialog;I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v18, v1

    move v1, v0

    move-object/from16 v0, v18

    .line 98
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->cmdSelect:Linfo/flowersoft/theotown/ui/GoldButton;

    .line 106
    invoke-virtual {v1, v9}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    const/16 v2, 0x42

    .line 107
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    const/4 v2, 0x0

    .line 108
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setEnabled(Z)V

    .line 110
    new-instance v1, Linfo/flowersoft/theotown/ui/SelectUserDialog$4;

    const/4 v5, 0x0

    iget-object v6, v0, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    move-object/from16 v18, v1

    move-object v1, v0

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/SelectUserDialog$4;-><init>(Linfo/flowersoft/theotown/ui/SelectUserDialog;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/16 v2, 0x13

    .line 118
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 119
    new-instance v0, Linfo/flowersoft/theotown/ui/SelectUserDialog$5;

    iget-object v6, v1, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/SelectUserDialog$5;-><init>(Linfo/flowersoft/theotown/ui/SelectUserDialog;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/16 v2, 0x14

    .line 127
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 129
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->loadCachedUsers()V

    .line 130
    const-string v0, ""

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->changedInput(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/SelectUserDialog;Ljava/lang/String;)V
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->changedInput(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/ui/SelectUserDialog;)V
    .registers 1

    .line 35
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->tick()V

    return-void
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/ui/SelectUserDialog;)V
    .registers 1

    .line 35
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->selectPreviousUser()V

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/ui/SelectUserDialog;)V
    .registers 1

    .line 35
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->selectNextUser()V

    return-void
.end method

.method public static synthetic access$402(Linfo/flowersoft/theotown/ui/SelectUserDialog;Linfo/flowersoft/theotown/util/json/JSONObject;)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 2

    .line 35
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->fetchResult:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-object p1
.end method

.method public static synthetic access$502(Linfo/flowersoft/theotown/ui/SelectUserDialog;Z)Z
    .registers 2

    .line 35
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->lastRequestReturned:Z

    return p1
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/ui/SelectUserDialog;)Linfo/flowersoft/theotown/ui/SelectUserDialog$User;
    .registers 1

    .line 35
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->selectedUser:Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

    return-object p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/ui/SelectUserDialog;Linfo/flowersoft/theotown/ui/SelectUserDialog$User;)V
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->selectUser(Linfo/flowersoft/theotown/ui/SelectUserDialog$User;)V

    return-void
.end method


# virtual methods
.method public final changedInput(Ljava/lang/String;)V
    .registers 2

    .line 196
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->enteredText:Ljava/lang/String;

    return-void
.end method

.method public final createUser(Linfo/flowersoft/theotown/util/json/JSONObject;)Linfo/flowersoft/theotown/ui/SelectUserDialog$User;
    .registers 10

    .line 278
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    .line 280
    :try_start_2
    const-string v1, "color"

    const-string v2, "888888"

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_e

    :catch_e
    move-object v3, v0

    .line 284
    new-instance v1, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

    const-string v0, "name"

    .line 285
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "id"

    .line 287
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "forum_id"

    .line 288
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;JJ)V

    return-object v1
.end method

.method public final fillInListBox(Lio/blueflower/stapel2d/gui/ListBox;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 8

    .line 259
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ListBox;->removeAllItems()V

    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->selectUser(Linfo/flowersoft/theotown/ui/SelectUserDialog$User;)V

    .line 261
    const-string v0, "users"

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_39

    const/4 v0, 0x0

    move v1, v0

    .line 263
    :goto_11
    invoke-virtual {p2}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 264
    invoke-virtual {p2, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 266
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->createUser(Linfo/flowersoft/theotown/util/json/JSONObject;)Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

    move-result-object v2

    .line 267
    new-instance v3, Linfo/flowersoft/theotown/ui/SelectUserDialog$UserItem;

    invoke-direct {v3, v2, p0}, Linfo/flowersoft/theotown/ui/SelectUserDialog$UserItem;-><init>(Linfo/flowersoft/theotown/ui/SelectUserDialog$User;Linfo/flowersoft/theotown/ui/SelectUserDialog;)V

    invoke-virtual {p1, v3}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 268
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_36

    .line 269
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->selectUser(Linfo/flowersoft/theotown/ui/SelectUserDialog$User;)V

    .line 270
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gui/ListBox;->selectItemIndex(I)V

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_39
    return-void
.end method

.method public final fillWithCache()V
    .registers 6

    .line 238
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->removeAllItems()V

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->cachedUsers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 241
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->cachedUsers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 243
    new-instance v1, Linfo/flowersoft/theotown/ui/SelectUserDialog$7;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/ui/SelectUserDialog$7;-><init>(Linfo/flowersoft/theotown/ui/SelectUserDialog;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 249
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v4, Linfo/flowersoft/theotown/ui/SelectUserDialog$UserItem;

    invoke-direct {v4, v2, p0}, Linfo/flowersoft/theotown/ui/SelectUserDialog$UserItem;-><init>(Linfo/flowersoft/theotown/ui/SelectUserDialog$User;Linfo/flowersoft/theotown/ui/SelectUserDialog;)V

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    goto :goto_25

    :cond_3c
    const/4 v1, 0x0

    .line 250
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->selectUser(Linfo/flowersoft/theotown/ui/SelectUserDialog$User;)V

    return-void
.end method

.method public final finalUserSelection(Linfo/flowersoft/theotown/ui/SelectUserDialog$User;)V
    .registers 5

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->useTime:J

    .line 135
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->cachedUsers:Ljava/util/Map;

    iget-wide v1, p1, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->saveCachedUsers()V

    .line 138
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->receiver:Linfo/flowersoft/theotown/ui/SelectUserDialog$UserReceiver;

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->selectedUser:Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

    invoke-interface {p1, v0}, Linfo/flowersoft/theotown/ui/SelectUserDialog$UserReceiver;->select(Linfo/flowersoft/theotown/ui/SelectUserDialog$User;)V

    const/4 p1, 0x0

    .line 139
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final loadCachedUsers()V
    .registers 9

    .line 143
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->cachedUsers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 145
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->userCache:Linfo/flowersoft/theotown/resources/PersistentData;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/PersistentData;->read()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 146
    const-string v1, "users"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_46

    const/4 v1, 0x0

    .line 148
    :goto_14
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 149
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_43

    .line 152
    :try_start_20
    new-instance v3, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

    invoke-direct {v3, v2}, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->useTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x240c8400

    cmp-long v2, v4, v6

    if-gez v2, :cond_43

    .line 154
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->cachedUsers:Ljava/util/Map;

    iget-wide v4, v3, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_20 .. :try_end_3e} :catch_3f

    goto :goto_43

    :catch_3f
    move-exception v2

    .line 157
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_43
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_46
    return-void
.end method

.method public final saveCachedUsers()V
    .registers 6

    .line 165
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 167
    :try_start_5
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 168
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->cachedUsers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

    .line 169
    new-instance v4, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v4}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 170
    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->save(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 171
    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    goto :goto_14

    :catch_2c
    move-exception v1

    goto :goto_34

    .line 173
    :cond_2e
    const-string v2, "users"

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_33
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_5 .. :try_end_33} :catch_2c

    goto :goto_37

    .line 175
    :goto_34
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 177
    :goto_37
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->userCache:Linfo/flowersoft/theotown/resources/PersistentData;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/resources/PersistentData;->write(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

.method public final selectNextUser()V
    .registers 2

    const/4 v0, 0x1

    .line 185
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->selectRelativeUser(I)V

    return-void
.end method

.method public final selectPreviousUser()V
    .registers 2

    const/4 v0, -0x1

    .line 181
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->selectRelativeUser(I)V

    return-void
.end method

.method public final selectRelativeUser(I)V
    .registers 4

    .line 189
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2f

    .line 190
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->getSelectedItemIndex()I

    move-result v1

    add-int/2addr v1, p1

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result p1

    add-int/2addr v1, p1

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result p1

    rem-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->selectItemIndex(I)V

    .line 191
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ListBox;->getSelectedItemIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gui/ListBox;->getItem(I)Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lio/blueflower/stapel2d/gui/ListItem;->onClick(II)V

    :cond_2f
    return-void
.end method

.method public final selectUser(Linfo/flowersoft/theotown/ui/SelectUserDialog$User;)V
    .registers 7

    .line 254
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->selectedUser:Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

    .line 255
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->cmdSelect:Linfo/flowersoft/theotown/ui/GoldButton;

    if-eqz p1, :cond_11

    iget-wide v1, p1, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->id:J

    iget p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->forbiddenUserId:I

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setEnabled(Z)V

    return-void
.end method

.method public final tick()V
    .registers 8

    .line 200
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->fetchResult:Linfo/flowersoft/theotown/util/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 201
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {p0, v2, v0}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->fillInListBox(Lio/blueflower/stapel2d/gui/ListBox;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 202
    iput-object v1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->fetchResult:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 205
    :cond_c
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->enteredText:Ljava/lang/String;

    const/4 v2, 0x3

    if-eqz v0, :cond_48

    .line 206
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_48

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->lastTextChange:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    cmp-long v0, v3, v5

    if-lez v0, :cond_48

    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->lastRequestReturned:Z

    if-eqz v0, :cond_48

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->lastTextChange:J

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->lastRequestReturned:Z

    .line 212
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->ors:Linfo/flowersoft/theotown/online/OnlineRegionStore;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->enteredText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/ui/SelectUserDialog$6;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/ui/SelectUserDialog$6;-><init>(Linfo/flowersoft/theotown/ui/SelectUserDialog;)V

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->fetchUsersByName(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    .line 226
    iput-object v1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->enteredText:Ljava/lang/String;

    return-void

    .line 227
    :cond_48
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->enteredText:Ljava/lang/String;

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 228
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->fillWithCache()V

    .line 229
    iput-object v1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->enteredText:Ljava/lang/String;

    return-void

    .line 230
    :cond_58
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->enteredText:Ljava/lang/String;

    if-eqz v0, :cond_70

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_70

    .line 231
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->removeAllItems()V

    .line 232
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->selectUser(Linfo/flowersoft/theotown/ui/SelectUserDialog$User;)V

    .line 233
    iput-object v1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog;->enteredText:Ljava/lang/String;

    :cond_70
    return-void
.end method

###### Class info.flowersoft.theotown.ui.SelectUserDialog.AnonymousClass1 (info.flowersoft.theotown.ui.SelectUserDialog$1)
.class Linfo/flowersoft/theotown/ui/SelectUserDialog$1;
.super Linfo/flowersoft/theotown/ui/TextField;
.source "SelectUserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/SelectUserDialog;-><init>(Linfo/flowersoft/theotown/ui/SelectUserDialog$UserReceiver;ILio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/SelectUserDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/SelectUserDialog;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 64
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$1;->this$0:Linfo/flowersoft/theotown/ui/SelectUserDialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Linfo/flowersoft/theotown/ui/TextField;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onTextChange(Ljava/lang/String;)V
    .registers 3

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$1;->this$0:Linfo/flowersoft/theotown/ui/SelectUserDialog;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->access$000(Linfo/flowersoft/theotown/ui/SelectUserDialog;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdate()V
    .registers 2

    .line 72
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/TextField;->onUpdate()V

    .line 73
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$1;->this$0:Linfo/flowersoft/theotown/ui/SelectUserDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->access$100(Linfo/flowersoft/theotown/ui/SelectUserDialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.SelectUserDialog.AnonymousClass2 (info.flowersoft.theotown.ui.SelectUserDialog$2)
.class Linfo/flowersoft/theotown/ui/SelectUserDialog$2;
.super Ljava/lang/Object;
.source "SelectUserDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/SelectUserDialog;-><init>(Linfo/flowersoft/theotown/ui/SelectUserDialog$UserReceiver;ILio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/SelectUserDialog;

.field public final synthetic val$tf:Linfo/flowersoft/theotown/ui/TextField;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/SelectUserDialog;Linfo/flowersoft/theotown/ui/TextField;)V
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

    .line 85
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$2;->this$0:Linfo/flowersoft/theotown/ui/SelectUserDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$2;->val$tf:Linfo/flowersoft/theotown/ui/TextField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 88
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$2;->val$tf:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/TextField;->free()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.SelectUserDialog.AnonymousClass3 (info.flowersoft.theotown.ui.SelectUserDialog$3)
.class Linfo/flowersoft/theotown/ui/SelectUserDialog$3;
.super Ljava/lang/Object;
.source "SelectUserDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/SelectUserDialog;-><init>(Linfo/flowersoft/theotown/ui/SelectUserDialog$UserReceiver;ILio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/SelectUserDialog;

.field public final synthetic val$receiver:Linfo/flowersoft/theotown/ui/SelectUserDialog$UserReceiver;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/SelectUserDialog;Linfo/flowersoft/theotown/ui/SelectUserDialog$UserReceiver;)V
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

    .line 92
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$3;->this$0:Linfo/flowersoft/theotown/ui/SelectUserDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$3;->val$receiver:Linfo/flowersoft/theotown/ui/SelectUserDialog$UserReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 95
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$3;->val$receiver:Linfo/flowersoft/theotown/ui/SelectUserDialog$UserReceiver;

    invoke-interface {v0}, Linfo/flowersoft/theotown/ui/SelectUserDialog$UserReceiver;->canceled()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.SelectUserDialog.AnonymousClass4 (info.flowersoft.theotown.ui.SelectUserDialog$4)
.class Linfo/flowersoft/theotown/ui/SelectUserDialog$4;
.super Lio/blueflower/stapel2d/gui/Button;
.source "SelectUserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/SelectUserDialog;-><init>(Linfo/flowersoft/theotown/ui/SelectUserDialog$UserReceiver;ILio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/SelectUserDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/SelectUserDialog;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 110
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$4;->this$0:Linfo/flowersoft/theotown/ui/SelectUserDialog;

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

    .line 116
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$4;->this$0:Linfo/flowersoft/theotown/ui/SelectUserDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->access$200(Linfo/flowersoft/theotown/ui/SelectUserDialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.SelectUserDialog.AnonymousClass5 (info.flowersoft.theotown.ui.SelectUserDialog$5)
.class Linfo/flowersoft/theotown/ui/SelectUserDialog$5;
.super Lio/blueflower/stapel2d/gui/Button;
.source "SelectUserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/SelectUserDialog;-><init>(Linfo/flowersoft/theotown/ui/SelectUserDialog$UserReceiver;ILio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/SelectUserDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/SelectUserDialog;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 119
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$5;->this$0:Linfo/flowersoft/theotown/ui/SelectUserDialog;

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

    .line 125
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$5;->this$0:Linfo/flowersoft/theotown/ui/SelectUserDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->access$300(Linfo/flowersoft/theotown/ui/SelectUserDialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.SelectUserDialog.AnonymousClass6 (info.flowersoft.theotown.ui.SelectUserDialog$6)
.class Linfo/flowersoft/theotown/ui/SelectUserDialog$6;
.super Ljava/lang/Object;
.source "SelectUserDialog.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/SelectUserDialog;->tick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/SelectUserDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/SelectUserDialog;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 212
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$6;->this$0:Linfo/flowersoft/theotown/ui/SelectUserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    .line 221
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    .line 222
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$6;->this$0:Linfo/flowersoft/theotown/ui/SelectUserDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->access$502(Linfo/flowersoft/theotown/ui/SelectUserDialog;Z)Z

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    .line 215
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$6;->this$0:Linfo/flowersoft/theotown/ui/SelectUserDialog;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->access$402(Linfo/flowersoft/theotown/ui/SelectUserDialog;Linfo/flowersoft/theotown/util/json/JSONObject;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 216
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$6;->this$0:Linfo/flowersoft/theotown/ui/SelectUserDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->access$502(Linfo/flowersoft/theotown/ui/SelectUserDialog;Z)Z

    return-void
.end method

###### Class info.flowersoft.theotown.ui.SelectUserDialog.AnonymousClass7 (info.flowersoft.theotown.ui.SelectUserDialog$7)
.class Linfo/flowersoft/theotown/ui/SelectUserDialog$7;
.super Ljava/lang/Object;
.source "SelectUserDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/SelectUserDialog;->fillWithCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Linfo/flowersoft/theotown/ui/SelectUserDialog$User;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/SelectUserDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/SelectUserDialog;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 243
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$7;->this$0:Linfo/flowersoft/theotown/ui/SelectUserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Linfo/flowersoft/theotown/ui/SelectUserDialog$User;Linfo/flowersoft/theotown/ui/SelectUserDialog$User;)I
    .registers 5

    .line 246
    iget-wide v0, p2, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->useTime:J

    iget-wide p1, p1, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->useTime:J

    sub-long/2addr v0, p1

    long-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 243
    check-cast p1, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

    check-cast p2, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/ui/SelectUserDialog$7;->compare(Linfo/flowersoft/theotown/ui/SelectUserDialog$User;Linfo/flowersoft/theotown/ui/SelectUserDialog$User;)I

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.ui.SelectUserDialog.User (info.flowersoft.theotown.ui.SelectUserDialog$User)
.class public Linfo/flowersoft/theotown/ui/SelectUserDialog$User;
.super Ljava/lang/Object;
.source "SelectUserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/SelectUserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "User"
.end annotation


# instance fields
.field public final color:Lio/blueflower/stapel2d/drawing/Color;

.field public final forumId:J

.field public final id:J

.field public final name:Ljava/lang/String;

.field public useTime:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    const-string v0, "name"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->name:Ljava/lang/String;

    .line 343
    const-string v0, "color"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->color:Lio/blueflower/stapel2d/drawing/Color;

    .line 344
    const-string v0, "id"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->id:J

    .line 345
    const-string v0, "forumId"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->forumId:J

    .line 346
    const-string v0, "use time"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->useTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;JJ)V
    .registers 7

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->name:Ljava/lang/String;

    .line 336
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->color:Lio/blueflower/stapel2d/drawing/Color;

    .line 337
    iput-wide p3, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->id:J

    .line 338
    iput-wide p5, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->forumId:J

    return-void
.end method


# virtual methods
.method public save(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 350
    const-string v0, "name"

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 351
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->toHexRGB()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {p1, v1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 352
    const-string v0, "id"

    iget-wide v1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->id:J

    invoke-virtual {p1, v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 353
    const-string v0, "forumId"

    iget-wide v1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->forumId:J

    invoke-virtual {p1, v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 354
    const-string v0, "use time"

    iget-wide v1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->useTime:J

    invoke-virtual {p1, v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;

    return-void
.end method

###### Class info.flowersoft.theotown.ui.SelectUserDialog.UserItem (info.flowersoft.theotown.ui.SelectUserDialog$UserItem)
.class Linfo/flowersoft/theotown/ui/SelectUserDialog$UserItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "SelectUserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/SelectUserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserItem"
.end annotation


# instance fields
.field public final selectUserDialog:Linfo/flowersoft/theotown/ui/SelectUserDialog;

.field public final user:Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

.field public final userColor:Lio/blueflower/stapel2d/drawing/Color;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/SelectUserDialog$User;Linfo/flowersoft/theotown/ui/SelectUserDialog;)V
    .registers 4

    .line 299
    iget-object v0, p1, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 300
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$UserItem;->user:Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

    .line 301
    sget-object v0, Linfo/flowersoft/theotown/util/ThemeManager;->INSTANCE:Linfo/flowersoft/theotown/util/ThemeManager;

    iget-object p1, p1, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/ThemeManager;->transformColor(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$UserItem;->userColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 302
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$UserItem;->selectUserDialog:Linfo/flowersoft/theotown/ui/SelectUserDialog;

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 18

    .line 307
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$UserItem;->selectUserDialog:Linfo/flowersoft/theotown/ui/SelectUserDialog;

    invoke-static {p1}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->access$600(Linfo/flowersoft/theotown/ui/SelectUserDialog;)Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$UserItem;->user:Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

    if-ne p1, v0, :cond_16

    const/4 p1, 0x1

    :goto_b
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    goto :goto_18

    :cond_16
    const/4 p1, 0x0

    goto :goto_b

    .line 308
    :goto_18
    invoke-super/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 310
    iget-object v1, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 311
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$UserItem;->userColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 312
    iget-object v2, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    add-int/lit8 p3, p3, 0x5

    int-to-float p1, p3

    int-to-float p2, p4

    int-to-float v6, p5

    move/from16 p3, p6

    int-to-float v7, p3

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/16 p1, 0x1e

    return p1
.end method

.method public onClick(II)V
    .registers 3

    .line 322
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/ListItem;->onClick(II)V

    .line 323
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$UserItem;->selectUserDialog:Linfo/flowersoft/theotown/ui/SelectUserDialog;

    iget-object p2, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$UserItem;->user:Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->access$700(Linfo/flowersoft/theotown/ui/SelectUserDialog;Linfo/flowersoft/theotown/ui/SelectUserDialog$User;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.SelectUserDialog.UserReceiver (info.flowersoft.theotown.ui.SelectUserDialog$UserReceiver)
.class public interface abstract Linfo/flowersoft/theotown/ui/SelectUserDialog$UserReceiver;
.super Ljava/lang/Object;
.source "SelectUserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/SelectUserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserReceiver"
.end annotation


# virtual methods
.method public abstract canceled()V
.end method

.method public abstract select(Linfo/flowersoft/theotown/ui/SelectUserDialog$User;)V
.end method

###### Class info.flowersoft.theotown.ui.SelectUserDialog$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.SelectUserDialog$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/SelectUserDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/SelectUserDialog;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/SelectUserDialog;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/SelectUserDialog;

    iput p2, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/SelectUserDialog;

    iget v1, p0, Linfo/flowersoft/theotown/ui/SelectUserDialog$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/SelectUserDialog;->$r8$lambda$iMgIS87RRqcwHlX0t6-1Jcakwzw(Linfo/flowersoft/theotown/ui/SelectUserDialog;I)V

    return-void
.end method

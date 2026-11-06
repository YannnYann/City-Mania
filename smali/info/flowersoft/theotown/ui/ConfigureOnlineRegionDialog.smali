###### Class info.flowersoft.theotown.ui.ConfigureOnlineRegionDialog (info.flowersoft.theotown.ui.ConfigureOnlineRegionDialog)
.class public Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;
.super Linfo/flowersoft/theotown/ui/Dialog;
.source "ConfigureOnlineRegionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem;
    }
.end annotation


# instance fields
.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final gui:Lio/blueflower/stapel2d/gui/Master;

.field public final omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final onChanged:Ljava/lang/Runnable;

.field public originalSettings:Linfo/flowersoft/theotown/online/RegionSettings;

.field public settings:Linfo/flowersoft/theotown/online/RegionSettings;

.field public final translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public static synthetic $r8$lambda$ADcinz9GCCL12uFb52vjZz0p4Ow(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)V
    .registers 20

    move-object/from16 v0, p0

    .line 65
    new-instance v1, Linfo/flowersoft/theotown/ui/RegionRulesDialog;

    .line 65
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->settings:Linfo/flowersoft/theotown/online/RegionSettings;

    .line 65
    iget-object v2, v2, Linfo/flowersoft/theotown/online/RegionSettings;->icon:Linfo/flowersoft/theotown/region/RegionIcon;

    .line 66
    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/RegionIcon;->getFrame()I

    move-result v2

    iget-object v3, v0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    .line 67
    invoke-virtual {v3}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->settings:Linfo/flowersoft/theotown/online/RegionSettings;

    move-object v5, v1

    move v1, v2

    move-object v2, v3

    iget-object v3, v4, Linfo/flowersoft/theotown/online/RegionSettings;->rules:Ljava/lang/String;

    iget-object v6, v4, Linfo/flowersoft/theotown/online/RegionSettings;->infos:Ljava/lang/String;

    move-object v7, v5

    iget-boolean v5, v4, Linfo/flowersoft/theotown/online/RegionSettings;->allowPlugins:Z

    iget-boolean v4, v4, Linfo/flowersoft/theotown/online/RegionSettings;->allowSandbox:Z

    iget-object v8, v0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    .line 73
    invoke-virtual {v8}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getOwnerId()I

    move-result v8

    int-to-long v9, v8

    iget-object v8, v0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    .line 74
    invoke-virtual {v8}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getAuthorName()Ljava/lang/String;

    move-result-object v11

    iget-object v8, v0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    .line 75
    invoke-virtual {v8}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getAuthorColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v12

    iget-object v8, v0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->settings:Linfo/flowersoft/theotown/online/RegionSettings;

    iget-object v13, v8, Linfo/flowersoft/theotown/online/RegionSettings;->tags:Lio/blueflower/stapel2d/util/IntList;

    iget-object v14, v8, Linfo/flowersoft/theotown/online/RegionSettings;->availableTags:Linfo/flowersoft/theotown/online/RegionTagMap;

    iget-object v15, v0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    .line 80
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lio/blueflower/stapel2d/gui/Master;

    move-object v0, v7

    const-wide/16 v7, 0x3e8

    const/16 v16, 0x0

    move-object/from16 v18, v6

    move v6, v4

    move-object/from16 v4, v18

    invoke-direct/range {v0 .. v17}, Linfo/flowersoft/theotown/ui/RegionRulesDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJJLjava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/online/RegionTagMap;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gui/Master;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$fkm3Tzaiu8YGqgvQdMnXhi7Ad8g(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->apply()V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Ljava/lang/Runnable;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
    .registers 12

    .line 40
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_SETTINGS:I

    invoke-virtual {p3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    const/16 v2, 0x3cf

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x12c

    const/16 v5, 0xd5

    const-string v3, ""

    move-object v0, p0

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 41
    iput-object p1, v0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    .line 42
    iput-object p2, v0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->onChanged:Ljava/lang/Runnable;

    .line 43
    iput-object p3, v0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 44
    invoke-virtual {p3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p1

    iput-object p1, v0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 45
    iput-object v6, v0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 47
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->extractSettings()V

    .line 48
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->setup()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)Linfo/flowersoft/theotown/online/RegionSettings;
    .registers 1

    .line 27
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->settings:Linfo/flowersoft/theotown/online/RegionSettings;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;
    .registers 1

    .line 27
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)Ljava/lang/Runnable;
    .registers 1

    .line 27
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->onChanged:Ljava/lang/Runnable;

    return-object p0
.end method

.method private buildContent()V
    .registers 8

    .line 97
    new-instance v0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 98
    invoke-interface {v1}, Lio/blueflower/stapel2d/gamestack/Translator;->prefersRTL()Z

    move-result v1

    const/4 v5, 0x0

    .line 99
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;-><init>(ZIIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 100
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    .line 101
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->settings:Linfo/flowersoft/theotown/online/RegionSettings;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->setTargetObject(Ljava/lang/Object;)V

    .line 104
    :try_start_1b
    new-instance v1, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->settings:Linfo/flowersoft/theotown/online/RegionSettings;

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem;-><init>(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/online/RegionSettings;Lio/blueflower/stapel2d/gui/Master;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 106
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x37b

    .line 107
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->settings:Linfo/flowersoft/theotown/online/RegionSettings;

    .line 108
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "allowPlugins"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v6, 0x0

    .line 106
    invoke-virtual {v0, v1, v2, v6}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 110
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xdbf

    .line 111
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->settings:Linfo/flowersoft/theotown/online/RegionSettings;

    .line 112
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "allowSandbox"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 110
    invoke-virtual {v0, v1, v2, v6}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 114
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xb31

    .line 115
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x5c0

    .line 116
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->settings:Linfo/flowersoft/theotown/online/RegionSettings;

    .line 117
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "infos"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v4, 0x0

    .line 114
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addEditableTextItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;ZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 119
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xbc

    .line 120
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x6ff

    .line 121
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->settings:Linfo/flowersoft/theotown/online/RegionSettings;

    .line 122
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "rules"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v4, 0x0

    .line 119
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addEditableTextItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;ZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 124
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->settings:Linfo/flowersoft/theotown/online/RegionSettings;

    iget-object v1, v1, Linfo/flowersoft/theotown/online/RegionSettings;->availableTags:Linfo/flowersoft/theotown/online/RegionTagMap;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/RegionTagMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    move v2, v6

    .line 125
    :goto_a7
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->settings:Linfo/flowersoft/theotown/online/RegionSettings;

    iget-object v3, v3, Linfo/flowersoft/theotown/online/RegionSettings;->availableTags:Linfo/flowersoft/theotown/online/RegionTagMap;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/online/RegionTagMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_c8

    .line 126
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->settings:Linfo/flowersoft/theotown/online/RegionSettings;

    iget-object v3, v3, Linfo/flowersoft/theotown/online/RegionSettings;->availableTags:Linfo/flowersoft/theotown/online/RegionTagMap;

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/online/RegionTagMap;->getId(I)I

    move-result v3

    .line 127
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->settings:Linfo/flowersoft/theotown/online/RegionSettings;

    iget-object v4, v4, Linfo/flowersoft/theotown/online/RegionSettings;->availableTags:Linfo/flowersoft/theotown/online/RegionTagMap;

    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/online/RegionTagMap;->getNameById(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    :catch_c6
    move-exception v0

    goto :goto_118

    .line 130
    :cond_c8
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xe1

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$1;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$1;-><init>(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)V

    invoke-virtual {v0, v2, v1, v6, v3}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;ZLinfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;)V

    .line 150
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->settings:Linfo/flowersoft/theotown/online/RegionSettings;

    iget-boolean v1, v1, Linfo/flowersoft/theotown/online/RegionSettings;->hasPasswordDefined:Z

    if-eqz v1, :cond_11b

    .line 151
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xce0

    .line 152
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x9fc

    .line 153
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->settings:Linfo/flowersoft/theotown/online/RegionSettings;

    .line 154
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "password"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v4, 0x0

    .line 151
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addEditableTextItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;ZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 155
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x58e

    .line 156
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->settings:Linfo/flowersoft/theotown/online/RegionSettings;

    .line 157
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "enforcePassword"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 155
    invoke-virtual {v0, v1, v2, v6}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    :try_end_117
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1b .. :try_end_117} :catch_c6

    return-void

    .line 161
    :goto_118
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_11b
    return-void
.end method


# virtual methods
.method public final apply()V
    .registers 4

    .line 166
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->settings:Linfo/flowersoft/theotown/online/RegionSettings;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->originalSettings:Linfo/flowersoft/theotown/online/RegionSettings;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/online/RegionSettings;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 167
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->onChanged:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 169
    :cond_10
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->settings:Linfo/flowersoft/theotown/online/RegionSettings;

    new-instance v2, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$2;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$2;-><init>(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)V

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->applySettings(Linfo/flowersoft/theotown/online/RegionSettings;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

.method public final extractSettings()V
    .registers 4

    .line 52
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getVirtualRegion()Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v0

    .line 53
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegionStore()Linfo/flowersoft/theotown/online/OnlineRegionStore;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getTags()Linfo/flowersoft/theotown/online/RegionTagMap;

    move-result-object v1

    .line 54
    new-instance v2, Linfo/flowersoft/theotown/online/RegionSettings;

    invoke-direct {v2, v0, v1}, Linfo/flowersoft/theotown/online/RegionSettings;-><init>(Linfo/flowersoft/theotown/online/VirtualRegion;Linfo/flowersoft/theotown/online/RegionTagMap;)V

    iput-object v2, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->originalSettings:Linfo/flowersoft/theotown/online/RegionSettings;

    .line 55
    new-instance v2, Linfo/flowersoft/theotown/online/RegionSettings;

    invoke-direct {v2, v0, v1}, Linfo/flowersoft/theotown/online/RegionSettings;-><init>(Linfo/flowersoft/theotown/online/VirtualRegion;Linfo/flowersoft/theotown/online/RegionTagMap;)V

    iput-object v2, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->settings:Linfo/flowersoft/theotown/online/RegionSettings;

    return-void
.end method

.method public final setup()V
    .registers 15

    .line 59
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    .line 61
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xca0

    .line 63
    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    .line 61
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 83
    sget v8, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v1, v0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xd80

    .line 85
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$$ExternalSyntheticLambda1;

    invoke-direct {v13, p0}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)V

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v0

    .line 83
    invoke-virtual/range {v7 .. v13}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    const/16 v1, 0x42

    .line 89
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 91
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    .line 93
    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->buildContent()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.ConfigureOnlineRegionDialog.AnonymousClass1 (info.flowersoft.theotown.ui.ConfigureOnlineRegionDialog$1)
.class Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$1;
.super Ljava/lang/Object;
.source "ConfigureOnlineRegionDialog.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->buildContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 130
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$1;->this$0:Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSelected(I)Z
    .registers 4

    .line 133
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$1;->this$0:Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->access$000(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)Linfo/flowersoft/theotown/online/RegionSettings;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/online/RegionSettings;->tags:Lio/blueflower/stapel2d/util/IntList;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$1;->this$0:Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;

    invoke-static {v1}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->access$000(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)Linfo/flowersoft/theotown/online/RegionSettings;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/online/RegionSettings;->availableTags:Linfo/flowersoft/theotown/online/RegionTagMap;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/online/RegionTagMap;->getId(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->contains(I)Z

    move-result p1

    return p1
.end method

.method public select(I)V
    .registers 3

    .line 137
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$1;->this$0:Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->access$000(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)Linfo/flowersoft/theotown/online/RegionSettings;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/online/RegionSettings;->availableTags:Linfo/flowersoft/theotown/online/RegionTagMap;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/online/RegionTagMap;->getId(I)I

    move-result p1

    .line 138
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$1;->this$0:Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->access$000(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)Linfo/flowersoft/theotown/online/RegionSettings;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/online/RegionSettings;->tags:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 139
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$1;->this$0:Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->access$000(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)Linfo/flowersoft/theotown/online/RegionSettings;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/online/RegionSettings;->tags:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->removeValue(I)Z

    return-void

    .line 141
    :cond_26
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$1;->this$0:Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->access$000(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)Linfo/flowersoft/theotown/online/RegionSettings;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/online/RegionSettings;->tags:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 142
    :goto_31
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$1;->this$0:Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;

    invoke-static {p1}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->access$000(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)Linfo/flowersoft/theotown/online/RegionSettings;

    move-result-object p1

    iget-object p1, p1, Linfo/flowersoft/theotown/online/RegionSettings;->tags:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result p1

    const/4 v0, 0x3

    if-le p1, v0, :cond_4d

    .line 143
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$1;->this$0:Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;

    invoke-static {p1}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->access$000(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)Linfo/flowersoft/theotown/online/RegionSettings;

    move-result-object p1

    iget-object p1, p1, Linfo/flowersoft/theotown/online/RegionSettings;->tags:Lio/blueflower/stapel2d/util/IntList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    goto :goto_31

    :cond_4d
    return-void
.end method

###### Class info.flowersoft.theotown.ui.ConfigureOnlineRegionDialog.AnonymousClass2 (info.flowersoft.theotown.ui.ConfigureOnlineRegionDialog$2)
.class Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$2;
.super Ljava/lang/Object;
.source "ConfigureOnlineRegionDialog.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->apply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 169
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$2;->this$0:Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 6

    .line 178
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "status"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hint"

    invoke-virtual {p1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 172
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$2;->this$0:Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->access$100(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    const-string v2, "configure region"

    invoke-interface {p1, v1, v2, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$2;->this$0:Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;

    invoke-static {p1}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->access$200(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.ConfigureOnlineRegionDialog.EditIconListItem (info.flowersoft.theotown.ui.ConfigureOnlineRegionDialog$EditIconListItem)
.class Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "ConfigureOnlineRegionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditIconListItem"
.end annotation


# instance fields
.field public final gui:Lio/blueflower/stapel2d/gui/Master;

.field public final settings:Linfo/flowersoft/theotown/online/RegionSettings;

.field public final translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/online/RegionSettings;Lio/blueflower/stapel2d/gui/Master;)V
    .registers 5

    const/16 v0, 0xbb4

    .line 193
    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 194
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 195
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem;->settings:Linfo/flowersoft/theotown/online/RegionSettings;

    .line 196
    iput-object p3, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem;->gui:Lio/blueflower/stapel2d/gui/Master;

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem;)Linfo/flowersoft/theotown/online/RegionSettings;
    .registers 1

    .line 184
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem;->settings:Linfo/flowersoft/theotown/online/RegionSettings;

    return-object p0
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

    .line 201
    invoke-super/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 202
    iget-object v8, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 204
    iget-object v1, v7, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 205
    iget-object v9, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v10, v0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    add-int/lit8 v1, p3, 0x5

    int-to-float v11, v1

    int-to-float v12, v4

    int-to-float v14, v6

    const/4 v15, 0x0

    const/high16 v16, 0x3f000000    # 0.5f

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v16}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 207
    invoke-virtual {v8}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 208
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem;->settings:Linfo/flowersoft/theotown/online/RegionSettings;

    iget-object v1, v1, Linfo/flowersoft/theotown/online/RegionSettings;->icon:Linfo/flowersoft/theotown/region/RegionIcon;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/RegionIcon;->getFrame()I

    move-result v1

    .line 209
    iget-object v2, v7, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    add-int v3, p3, p5

    add-int/lit8 v3, v3, -0x5

    int-to-float v3, v3

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v8, v2, v3, v12, v1}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/16 p1, 0x1a

    return p1
.end method

.method public onClick(II)V
    .registers 13

    .line 214
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/ListItem;->onClick(II)V

    .line 216
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem;->settings:Linfo/flowersoft/theotown/online/RegionSettings;

    iget-object p1, p1, Linfo/flowersoft/theotown/online/RegionSettings;->icon:Linfo/flowersoft/theotown/region/RegionIcon;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionIcon;->getFrame()I

    move-result v1

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p2, 0x924

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc8

    iget-object v6, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem;->gui:Lio/blueflower/stapel2d/gui/Master;

    const-string v3, ""

    const/16 v4, 0x104

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 217
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    .line 218
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->removeControlLine()V

    .line 219
    new-instance v1, Lio/blueflower/stapel2d/gui/ListBox;

    const/4 v5, 0x0

    iget-object v6, v0, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object p1, v1

    .line 220
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    .line 222
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x1a

    .line 224
    invoke-static {}, Linfo/flowersoft/theotown/region/RegionIcon;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v7, 0x0

    move v8, v7

    .line 226
    :goto_42
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_72

    .line 227
    rem-int v2, v8, p2

    if-nez v2, :cond_54

    .line 228
    new-instance v1, Linfo/flowersoft/theotown/ui/listitem/GroupItem;

    invoke-direct {v1}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;-><init>()V

    .line 229
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    :cond_54
    move-object v9, v1

    .line 231
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Linfo/flowersoft/theotown/region/RegionIcon;

    .line 233
    invoke-virtual {v3}, Linfo/flowersoft/theotown/region/RegionIcon;->getFrame()I

    move-result v4

    move-object v5, v0

    .line 234
    new-instance v0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem$1;

    const-string v2, ""

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem$1;-><init>(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem;Ljava/lang/String;Linfo/flowersoft/theotown/region/RegionIcon;ILinfo/flowersoft/theotown/ui/Dialog;)V

    move-object v1, v0

    move-object v0, v5

    invoke-virtual {v9, v1}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->add(Lio/blueflower/stapel2d/gui/ListItem;)V

    add-int/lit8 v8, v8, 0x1

    move-object v1, v9

    goto :goto_42

    :cond_72
    if-eqz v1, :cond_8a

    .line 260
    :goto_74
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p1

    rem-int/2addr p1, p2

    sub-int p1, p2, p1

    if-ge v7, p1, :cond_8a

    .line 261
    new-instance p1, Lio/blueflower/stapel2d/gui/ListItem;

    const-string v2, ""

    invoke-direct {p1, v2}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->add(Lio/blueflower/stapel2d/gui/ListItem;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_74

    :cond_8a
    const/4 p1, 0x1

    .line 265
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.ConfigureOnlineRegionDialog.EditIconListItem.AnonymousClass1 (info.flowersoft.theotown.ui.ConfigureOnlineRegionDialog$EditIconListItem$1)
.class Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem$1;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "ConfigureOnlineRegionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem;->onClick(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem;

.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic val$frame:I

.field public final synthetic val$icon:Linfo/flowersoft/theotown/region/RegionIcon;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem;Ljava/lang/String;Linfo/flowersoft/theotown/region/RegionIcon;ILinfo/flowersoft/theotown/ui/Dialog;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
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

    .line 234
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem$1;->this$0:Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem$1;->val$icon:Linfo/flowersoft/theotown/region/RegionIcon;

    iput p4, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem$1;->val$frame:I

    iput-object p5, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem$1;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-direct {p0, p2}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 16

    .line 237
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem$1;->val$icon:Linfo/flowersoft/theotown/region/RegionIcon;

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem$1;->this$0:Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem;->access$300(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem;)Linfo/flowersoft/theotown/online/RegionSettings;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/online/RegionSettings;->icon:Linfo/flowersoft/theotown/region/RegionIcon;

    if-ne p1, v0, :cond_16

    const/4 p1, 0x1

    :goto_d
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    goto :goto_18

    :cond_16
    const/4 p1, 0x0

    goto :goto_d

    :goto_18
    invoke-super/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 238
    iget-object p1, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 240
    iget-object p2, v7, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    iget p3, v0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem$1;->val$frame:I

    invoke-virtual {p2, p3}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result p2

    .line 241
    iget-object p3, v7, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    iget p4, v0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem$1;->val$frame:I

    invoke-virtual {p3, p4}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result p3

    .line 242
    iget-object p4, v7, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float p5, v3

    int-to-float p6, v5

    sub-float/2addr p6, p2

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p6, p2

    add-float/2addr p5, p6

    int-to-float p6, v4

    int-to-float p7, v6

    sub-float/2addr p7, p3

    mul-float/2addr p7, p2

    add-float/2addr p6, p7

    iget p2, v0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem$1;->val$frame:I

    invoke-virtual {p1, p4, p5, p6, p2}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/16 p1, 0x1a

    return p1
.end method

.method public onClick(II)V
    .registers 3

    .line 246
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/ListItem;->onClick(II)V

    .line 247
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem$1;->this$0:Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem;

    invoke-static {p1}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem;->access$300(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem;)Linfo/flowersoft/theotown/online/RegionSettings;

    move-result-object p1

    iget-object p2, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem$1;->val$icon:Linfo/flowersoft/theotown/region/RegionIcon;

    iput-object p2, p1, Linfo/flowersoft/theotown/online/RegionSettings;->icon:Linfo/flowersoft/theotown/region/RegionIcon;

    .line 248
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$EditIconListItem$1;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.ConfigureOnlineRegionDialog$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.ConfigureOnlineRegionDialog$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->$r8$lambda$ADcinz9GCCL12uFb52vjZz0p4Ow(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.ConfigureOnlineRegionDialog$$ExternalSyntheticLambda1 (info.flowersoft.theotown.ui.ConfigureOnlineRegionDialog$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;->$r8$lambda$fkm3Tzaiu8YGqgvQdMnXhi7Ad8g(Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.createcity.CreateCityDialogs (info.flowersoft.theotown.stages.createcity.CreateCityDialogs)
.class public final Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs;
.super Ljava/lang/Object;
.source "CreateCityDialogs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;,
        Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$ActionListItem;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$4akE6z7rJf00MEQ5JFwROBBFZaA(Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 1

    .line 307
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 308
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

.method public static synthetic $r8$lambda$HX7WOJO7WLxl7xOYdAh-K2Jw1iU(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 2

    .line 153
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MjbfmNFgk73idrW9sN5udMAJOhg(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 2

    .line 155
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UYHKTVtoRIKe82LxeC7MNjm76Ac(Ljava/util/List;Ljava/util/List;Linfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Boolean;)V
    .registers 4

    .line 132
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 133
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_c

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    :cond_c
    invoke-virtual {p2}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->rebuild()V

    return-void
.end method

.method public static synthetic $r8$lambda$_8hOHGlIanCCNK4kYOvCheFI7mA(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/util/Setter;Ljava/util/ArrayList;Lio/blueflower/stapel2d/gui/ListBox;)V
    .registers 5

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 288
    invoke-virtual {p3}, Lio/blueflower/stapel2d/gui/ListBox;->getSelectedItemIndex()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1, p0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jiOPC8cPdojoCuMViVMxHrgAnd4(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3

    .line 256
    new-instance v0, Linfo/flowersoft/theotown/store/StoreStage;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/store/StoreStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 257
    sget-object p0, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Heightmaps:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/store/StoreStage;->configureCategory(Linfo/flowersoft/theotown/store/StoreCategory$Builtins;)V

    .line 258
    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kmx0Xo0xp3Cri534jKQprNxade4(Ljava/util/List;[Lio/blueflower/stapel2d/util/ValueProperty;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 6

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 203
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 204
    aget-object v2, p1, v1

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/ValueProperty;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_27

    .line 205
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BiomeDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 208
    :cond_2a
    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oP1Cv2jw7I3Ydm8hH6ykf5uDlxE(Linfo/flowersoft/theotown/ui/settings/SettingsListbox;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/util/Setter;Ljava/util/List;[Lio/blueflower/stapel2d/util/ValueProperty;Ljava/util/List;Linfo/flowersoft/theotown/util/DraftLocalizer;Ljava/lang/reflect/Field;)V
    .registers 15

    .line 149
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ListBox;->removeAllItems()V

    .line 151
    new-instance v0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;-><init>(Lio/blueflower/stapel2d/gui/ListBox;)V

    .line 152
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v1, v1, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOn:I

    const/16 v2, 0x708

    .line 153
    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda7;

    invoke-direct {v3, p2}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda7;-><init>(Lio/blueflower/stapel2d/util/Setter;)V

    .line 152
    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 154
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v1, v1, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOff:I

    const/16 v2, 0xddb

    .line 155
    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda8;

    invoke-direct {v2, p2}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda8;-><init>(Lio/blueflower/stapel2d/util/Setter;)V

    .line 154
    invoke-virtual {v0, v1, p1, v2}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 156
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    const/4 p1, 0x0

    .line 158
    :goto_30
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_74

    .line 159
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Linfo/flowersoft/theotown/draft/BiomeDraft;

    .line 160
    iget-boolean p2, v6, Linfo/flowersoft/theotown/draft/BiomeDraft;->spawnable:Z

    if-eqz p2, :cond_45

    iget-boolean p2, v6, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    if-eqz p2, :cond_48

    :cond_45
    move-object v4, p0

    move-object v2, p7

    goto :goto_6f

    .line 161
    :cond_48
    new-instance p2, Lio/blueflower/stapel2d/util/ValueProperty;

    iget-object v0, v6, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {p5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p2, v0}, Lio/blueflower/stapel2d/util/ValueProperty;-><init>(Ljava/lang/Object;)V

    aput-object p2, p4, p1

    .line 163
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->setTargetObject(Ljava/lang/Object;)V

    .line 164
    new-instance v0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$1;

    .line 165
    invoke-virtual {p6, v6}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v5, p4, p1

    move-object v4, p0

    move-object v2, p7

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$1;-><init>(Ljava/lang/String;Ljava/lang/reflect/Field;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;Linfo/flowersoft/theotown/draft/BiomeDraft;)V

    .line 164
    invoke-virtual {v4, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    :goto_6f
    add-int/lit8 p1, p1, 0x1

    move-object p7, v2

    move-object p0, v4

    goto :goto_30

    :cond_74
    return-void
.end method

.method public static synthetic $r8$lambda$yQMPwLKPjZtpDTo2BG7Z8LusQc0(Lio/blueflower/stapel2d/util/Setter;Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;)V
    .registers 2

    .line 104
    invoke-interface {p0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static showBiomeSelectionDialog(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Ljava/util/List;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/gui/Master;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 v1, 0x1

    .line 118
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v4

    .line 119
    new-instance v5, Linfo/flowersoft/theotown/ui/Dialog;

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_DESERT:I

    const/16 v0, 0x49f

    invoke-interface {v4, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x12c

    const/16 v10, 0x1c2

    const-string v8, ""

    move-object v11, p1

    invoke-direct/range {v5 .. v11}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    move-object p1, v5

    .line 120
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v11

    .line 121
    new-instance v3, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    .line 122
    invoke-interface {v4}, Lio/blueflower/stapel2d/gamestack/Translator;->prefersRTL()Z

    move-result v6

    .line 123
    invoke-virtual {v11}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v9

    invoke-virtual {v11}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;-><init>(ZIIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 125
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p2, 0x0

    .line 126
    invoke-static {p2}, Linfo/flowersoft/theotown/creation/CityCreator;->collectAvailableBiomes(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 128
    :goto_42
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_55

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/draft/BiomeDraft;

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v1

    goto :goto_42

    .line 129
    :cond_55
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    new-array v7, v2, [Lio/blueflower/stapel2d/util/ValueProperty;

    .line 131
    new-instance v5, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda4;

    invoke-direct {v5, v8, v0, v3}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;Ljava/util/List;Linfo/flowersoft/theotown/ui/settings/SettingsListbox;)V

    .line 137
    new-instance v9, Linfo/flowersoft/theotown/util/DraftLocalizer;

    const-string v0, ""

    invoke-direct {v9, p0, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    .line 141
    :try_start_67
    const-class p0, Lio/blueflower/stapel2d/util/ValueProperty;

    const-string v0, "value"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 142
    invoke-virtual {p2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_72} :catch_74

    :goto_72
    move-object v10, p2

    goto :goto_7a

    :catch_74
    move-exception v0

    move-object p0, v0

    .line 144
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_72

    .line 148
    :goto_7a
    new-instance v2, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda5;

    invoke-direct/range {v2 .. v10}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda5;-><init>(Linfo/flowersoft/theotown/ui/settings/SettingsListbox;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/util/Setter;Ljava/util/List;[Lio/blueflower/stapel2d/util/ValueProperty;Ljava/util/List;Linfo/flowersoft/theotown/util/DraftLocalizer;Ljava/lang/reflect/Field;)V

    .line 197
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 198
    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->setRebuildFunction(Ljava/lang/Runnable;)V

    .line 200
    sget p0, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    const/16 p2, 0x5c5

    invoke-interface {v4, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 201
    sget p0, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 p2, 0xb6f

    invoke-interface {v4, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda6;

    invoke-direct {v0, v6, v7, p3}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;[Lio/blueflower/stapel2d/util/ValueProperty;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {p1, p0, p2, v0}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p0

    const/16 p2, 0x42

    .line 210
    invoke-virtual {p0, p2}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 211
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 212
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    .line 213
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static showNoPermissionsDialog(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 7

    .line 302
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p0

    .line 303
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_SAVE:I

    const/16 v2, 0x19c

    .line 304
    invoke-interface {p0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x651

    .line 305
    invoke-interface {p0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 306
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 v1, 0x76b

    invoke-interface {p0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda0;-><init>(Lio/blueflower/stapel2d/gamestack/GameStack;)V

    invoke-virtual {v0, p1, p0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p0

    const/4 p1, 0x1

    .line 310
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    const/16 p2, 0x42

    .line 311
    invoke-virtual {p0, p2}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 312
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static showSeedDialog(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/resources/HeightMapManager;Lio/blueflower/stapel2d/gui/Master;Ljava/lang/String;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Linfo/flowersoft/theotown/resources/HeightMapManager;",
            "Lio/blueflower/stapel2d/gui/Master;",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;)V"
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    .line 250
    new-instance v1, Linfo/flowersoft/theotown/ui/Dialog;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_MAP:I

    const/16 v3, 0x725

    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x12c

    const/16 v6, 0x1c2

    const-string v4, ""

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 251
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v7

    .line 252
    new-instance v2, Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 253
    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/HeightMapManager;->getAvailableMaps()Ljava/util/ArrayList;

    move-result-object p2

    .line 255
    new-instance v3, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$ActionListItem;

    const/16 v4, 0x73b

    invoke-interface {v0, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, p5}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda1;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-direct {v3, v4, v5}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$ActionListItem;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 261
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_46
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_5b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 262
    new-instance v3, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$2;

    invoke-direct {v3, p5, p1, p5}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$2;-><init>(Ljava/lang/String;Linfo/flowersoft/theotown/resources/HeightMapManager;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    goto :goto_46

    :cond_5b
    const/16 p0, 0x23

    .line 282
    invoke-virtual {p3, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_6c

    const/4 p1, 0x0

    invoke-virtual {p3, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    invoke-virtual {p3, p1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 283
    :cond_6c
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, 0x1

    add-int/2addr p0, p1

    invoke-virtual {v2, p0}, Lio/blueflower/stapel2d/gui/ListBox;->selectItemIndex(I)V

    .line 285
    sget p0, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    const/16 p3, 0x5c5

    invoke-interface {v0, p3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p0, p3}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 286
    sget p0, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 p3, 0xb6f

    invoke-interface {v0, p3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p3

    new-instance p5, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda2;

    invoke-direct {p5, v1, p4, p2, v2}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/util/Setter;Ljava/util/ArrayList;Lio/blueflower/stapel2d/gui/ListBox;)V

    invoke-virtual {v1, p0, p3, p5}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p0

    const/16 p2, 0x42

    .line 290
    invoke-virtual {p0, p2}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 291
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 292
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    .line 293
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static showTerrainDialog(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/gui/Master;",
            "Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;",
            ">;)V"
        }
    .end annotation

    .line 68
    const-class v0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p0

    .line 69
    new-instance v1, Linfo/flowersoft/theotown/ui/Dialog;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_TERRAIN:I

    const/16 v3, 0x7bc

    invoke-interface {p0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x12c

    const/16 v6, 0xa0

    const-string v4, ""

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 70
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v8

    .line 71
    new-instance v2, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    .line 72
    invoke-interface {p0}, Lio/blueflower/stapel2d/gamestack/Translator;->prefersRTL()Z

    move-result v3

    .line 73
    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v6

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;-><init>(ZIIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 75
    invoke-virtual {v2, p2}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->setTargetObject(Ljava/lang/Object;)V

    const/16 p1, 0x4a8

    const/4 v8, 0x1

    .line 79
    :try_start_37
    invoke-interface {p0, p1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "terrain"

    .line 80
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    .line 78
    invoke-virtual {v2, p1, v3, v4}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    const/16 p1, 0x8d5

    .line 83
    invoke-interface {p0, p1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "rivers"

    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 82
    invoke-virtual {v2, p1, v3, v4}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    const/16 p1, 0x5f6

    .line 87
    invoke-interface {p0, p1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/16 p1, 0x87d

    .line 89
    invoke-interface {p0, p1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    const/16 v5, 0x92a

    .line 90
    invoke-interface {p0, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x238

    .line 91
    invoke-interface {p0, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x6bf

    .line 92
    invoke-interface {p0, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0xbd0

    .line 93
    invoke-interface {p0, v9}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {p1, v5, v6, v7, v9}, [Ljava/lang/String;

    move-result-object p1

    const/4 v5, -0x2

    .line 95
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v5, v6, v4, v7, v9}, [Ljava/lang/Integer;

    move-result-object v5

    const-string v4, "roughness"

    .line 96
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    move-object v4, p1

    .line 86
    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V
    :try_end_a2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_37 .. :try_end_a2} :catch_a3

    goto :goto_a8

    :catch_a3
    move-exception v0

    move-object p1, v0

    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    :goto_a8
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    const/16 v0, 0x5c5

    invoke-interface {p0, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 103
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 v0, 0xb6f

    invoke-interface {p0, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda3;

    invoke-direct {v0, p3, p2}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda3;-><init>(Lio/blueflower/stapel2d/util/Setter;Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;)V

    invoke-virtual {v1, p1, p0, v0}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p0

    const/16 p1, 0x42

    .line 106
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 107
    invoke-virtual {p0, v8}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 108
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    .line 109
    invoke-virtual {v1, v8}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.createcity.CreateCityDialogs.AnonymousClass1 (info.flowersoft.theotown.stages.createcity.CreateCityDialogs$1)
.class public Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$1;
.super Linfo/flowersoft/theotown/ui/settings/BinarySettingsItem;
.source "CreateCityDialogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs;->showBiomeSelectionDialog(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Ljava/util/List;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$biome:Linfo/flowersoft/theotown/draft/BiomeDraft;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Field;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;Linfo/flowersoft/theotown/draft/BiomeDraft;)V
    .registers 7

    .line 170
    iput-object p6, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$1;->val$biome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    invoke-direct/range {p0 .. p5}, Linfo/flowersoft/theotown/ui/settings/BinarySettingsItem;-><init>(Ljava/lang/String;Ljava/lang/reflect/Field;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 15

    .line 173
    invoke-super/range {p0 .. p7}, Linfo/flowersoft/theotown/ui/settings/BinarySettingsItem;->draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    move-object p1, p0

    .line 175
    iget-object v0, p7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 176
    iget-object p2, p1, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$1;->val$biome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    const/high16 p5, 0x41500000    # 13.0f

    const/high16 p7, 0x40000000    # 2.0f

    if-eqz p2, :cond_32

    array-length p2, p2

    if-lez p2, :cond_32

    .line 177
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 178
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 p3, p3, 0x2

    int-to-float v2, p3

    int-to-float p2, p4

    int-to-float p3, p6

    div-float/2addr p3, p7

    add-float/2addr p2, p3

    sub-float v3, p2, p5

    iget-object p2, p1, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$1;->val$biome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    const/4 p3, 0x0

    aget v6, p2, p3

    const/high16 v4, 0x41d00000    # 26.0f

    const/high16 v5, 0x41d00000    # 26.0f

    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    return-void

    .line 180
    :cond_32
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 181
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 p3, p3, 0x2

    int-to-float v2, p3

    int-to-float p2, p4

    int-to-float p3, p6

    div-float/2addr p3, p7

    add-float/2addr p2, p3

    sub-float v3, p2, p5

    const/high16 v5, 0x41d00000    # 26.0f

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/16 p1, 0x1e

    return p1
.end method

.method public getPaddingLeft()I
    .registers 2

    .line 0
    const/16 v0, 0x1e

    return v0
.end method

###### Class info.flowersoft.theotown.stages.createcity.CreateCityDialogs.AnonymousClass2 (info.flowersoft.theotown.stages.createcity.CreateCityDialogs$2)
.class public Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$2;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "CreateCityDialogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs;->showSeedDialog(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/resources/HeightMapManager;Lio/blueflower/stapel2d/gui/Master;Ljava/lang/String;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final isPlugin:Z

.field public final synthetic val$heightMapManager:Linfo/flowersoft/theotown/resources/HeightMapManager;

.field public final synthetic val$id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Linfo/flowersoft/theotown/resources/HeightMapManager;Ljava/lang/String;)V
    .registers 4

    .line 262
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$2;->val$heightMapManager:Linfo/flowersoft/theotown/resources/HeightMapManager;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$2;->val$id:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2, p3}, Linfo/flowersoft/theotown/resources/HeightMapManager;->isPlugin(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$2;->isPlugin:Z

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 19

    move-object/from16 v1, p7

    .line 267
    invoke-virtual/range {p0 .. p7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 269
    iget-boolean p2, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$2;->isPlugin:Z

    if-eqz p2, :cond_27

    .line 270
    iget-object p2, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 271
    iget-object p2, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p2, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 272
    iget-object p2, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v2, p3, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p6, 0x2

    add-int/2addr v3, p4

    add-int/lit8 v3, v3, -0x7

    int-to-float v3, v3

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUGIN:I

    invoke-virtual {p2, v0, v2, v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 275
    :cond_27
    iget-object p2, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 276
    iget-object p2, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    if-eqz p1, :cond_33

    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_35

    :cond_33
    iget-object p1, v1, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    :goto_35
    invoke-virtual {p2, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 277
    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    add-int/lit8 v4, p3, 0x10

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v10}, Lio/blueflower/stapel2d/gui/ListItem;->drawText(Lio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;IIIIFFZ)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.createcity.CreateCityDialogs.ActionListItem (info.flowersoft.theotown.stages.createcity.CreateCityDialogs$ActionListItem)
.class public Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$ActionListItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "CreateCityDialogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionListItem"
.end annotation


# instance fields
.field public final action:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    .line 221
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 222
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$ActionListItem;->action:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 19

    move-object/from16 v1, p7

    .line 227
    iget-object p1, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object p2, v1, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 228
    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v10}, Lio/blueflower/stapel2d/gui/ListItem;->drawText(Lio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;IIIIFFZ)V

    return-void
.end method

.method public onClick(II)V
    .registers 3

    .line 233
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/ListItem;->onClick(II)V

    .line 234
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$ActionListItem;->action:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.createcity.CreateCityDialogs.TerrainSettings (info.flowersoft.theotown.stages.createcity.CreateCityDialogs$TerrainSettings)
.class public Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;
.super Ljava/lang/Object;
.source "CreateCityDialogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TerrainSettings"
.end annotation


# instance fields
.field public rivers:Z

.field public roughness:I

.field public terrain:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/CityGenerator;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/CityGenerator;->isTerrain()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;->terrain:Z

    .line 53
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/CityGenerator;->isRivers()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;->rivers:Z

    .line 54
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/CityGenerator;->getRoughness()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;->roughness:I

    return-void
.end method


# virtual methods
.method public apply(Linfo/flowersoft/theotown/util/CityGenerator;)V
    .registers 3

    .line 58
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;->terrain:Z

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/CityGenerator;->setTerrain(Z)V

    .line 59
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;->rivers:Z

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/CityGenerator;->setRivers(Z)V

    .line 60
    iget v0, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;->roughness:I

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/CityGenerator;->setRoughness(I)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/gamestack/GameStack;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda0;->f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda0;->f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs;->$r8$lambda$4akE6z7rJf00MEQ5JFwROBBFZaA(Lio/blueflower/stapel2d/gamestack/GameStack;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic f$1:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda1;->f$0:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda1;->f$1:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda1;->f$0:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda1;->f$1:Lio/blueflower/stapel2d/util/Setter;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs;->$r8$lambda$jiOPC8cPdojoCuMViVMxHrgAnd4(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic f$1:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Lio/blueflower/stapel2d/gui/ListBox;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/util/Setter;Ljava/util/ArrayList;Lio/blueflower/stapel2d/gui/ListBox;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/ui/Dialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda2;->f$1:Lio/blueflower/stapel2d/util/Setter;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda2;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda2;->f$3:Lio/blueflower/stapel2d/gui/ListBox;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/ui/Dialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda2;->f$1:Lio/blueflower/stapel2d/util/Setter;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda2;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda2;->f$3:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs;->$r8$lambda$_8hOHGlIanCCNK4kYOvCheFI7mA(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/util/Setter;Ljava/util/ArrayList;Lio/blueflower/stapel2d/gui/ListBox;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda3 (info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic f$1:Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/util/Setter;Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda3;->f$0:Lio/blueflower/stapel2d/util/Setter;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda3;->f$1:Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda3;->f$0:Lio/blueflower/stapel2d/util/Setter;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda3;->f$1:Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs;->$r8$lambda$yQMPwLKPjZtpDTo2BG7Z8LusQc0(Lio/blueflower/stapel2d/util/Setter;Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda4 (info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Linfo/flowersoft/theotown/ui/settings/SettingsListbox;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda4;->f$0:Ljava/util/List;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda4;->f$2:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda4;->f$0:Ljava/util/List;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda4;->f$2:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p1}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs;->$r8$lambda$UYHKTVtoRIKe82LxeC7MNjm76Ac(Ljava/util/List;Ljava/util/List;Linfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Boolean;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda5 (info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

.field public final synthetic f$1:Lio/blueflower/stapel2d/gamestack/Translator;

.field public final synthetic f$2:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:[Lio/blueflower/stapel2d/util/ValueProperty;

.field public final synthetic f$5:Ljava/util/List;

.field public final synthetic f$6:Linfo/flowersoft/theotown/util/DraftLocalizer;

.field public final synthetic f$7:Ljava/lang/reflect/Field;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/settings/SettingsListbox;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/util/Setter;Ljava/util/List;[Lio/blueflower/stapel2d/util/ValueProperty;Ljava/util/List;Linfo/flowersoft/theotown/util/DraftLocalizer;Ljava/lang/reflect/Field;)V
    .registers 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda5;->f$1:Lio/blueflower/stapel2d/gamestack/Translator;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda5;->f$2:Lio/blueflower/stapel2d/util/Setter;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda5;->f$3:Ljava/util/List;

    iput-object p5, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda5;->f$4:[Lio/blueflower/stapel2d/util/ValueProperty;

    iput-object p6, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda5;->f$5:Ljava/util/List;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda5;->f$6:Linfo/flowersoft/theotown/util/DraftLocalizer;

    iput-object p8, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda5;->f$7:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda5;->f$1:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda5;->f$2:Lio/blueflower/stapel2d/util/Setter;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda5;->f$3:Ljava/util/List;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda5;->f$4:[Lio/blueflower/stapel2d/util/ValueProperty;

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda5;->f$5:Ljava/util/List;

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda5;->f$6:Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v7, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda5;->f$7:Ljava/lang/reflect/Field;

    invoke-static/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs;->$r8$lambda$oP1Cv2jw7I3Ydm8hH6ykf5uDlxE(Linfo/flowersoft/theotown/ui/settings/SettingsListbox;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/util/Setter;Ljava/util/List;[Lio/blueflower/stapel2d/util/ValueProperty;Ljava/util/List;Linfo/flowersoft/theotown/util/DraftLocalizer;Ljava/lang/reflect/Field;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda6 (info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:[Lio/blueflower/stapel2d/util/ValueProperty;

.field public final synthetic f$2:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;[Lio/blueflower/stapel2d/util/ValueProperty;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda6;->f$0:Ljava/util/List;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda6;->f$1:[Lio/blueflower/stapel2d/util/ValueProperty;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda6;->f$2:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda6;->f$0:Ljava/util/List;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda6;->f$1:[Lio/blueflower/stapel2d/util/ValueProperty;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda6;->f$2:Lio/blueflower/stapel2d/util/Setter;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs;->$r8$lambda$kmx0Xo0xp3Cri534jKQprNxade4(Ljava/util/List;[Lio/blueflower/stapel2d/util/ValueProperty;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda7 (info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda7)
.class public final synthetic Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda7;->f$0:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda7;->f$0:Lio/blueflower/stapel2d/util/Setter;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs;->$r8$lambda$HX7WOJO7WLxl7xOYdAh-K2Jw1iU(Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda8 (info.flowersoft.theotown.stages.createcity.CreateCityDialogs$$ExternalSyntheticLambda8)
.class public final synthetic Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda8;->f$0:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$$ExternalSyntheticLambda8;->f$0:Lio/blueflower/stapel2d/util/Setter;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs;->$r8$lambda$MjbfmNFgk73idrW9sN5udMAJOhg(Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

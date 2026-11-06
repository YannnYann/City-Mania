###### Class info.flowersoft.theotown.ui.RegionRulesDialog (info.flowersoft.theotown.ui.RegionRulesDialog)
.class public Linfo/flowersoft/theotown/ui/RegionRulesDialog;
.super Linfo/flowersoft/theotown/ui/Dialog;
.source "RegionRulesDialog.java"


# direct methods
.method public static synthetic $r8$lambda$6KXcXPckUeYbWW6mGjzEeuGzoMQ()V
    .registers 2

    .line 163
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-static {}, Linfo/flowersoft/theotown/online/Multiplayer;->getRulesUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->openURLInApp(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QJnwC0kK70nlvxn_wIDbxm4y4zs()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJJLjava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/online/RegionTagMap;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gui/Master;)V
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZJJ",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/drawing/Color;",
            "Lio/blueflower/stapel2d/util/IntList;",
            "Linfo/flowersoft/theotown/online/RegionTagMap;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;",
            "Lio/blueflower/stapel2d/gui/Master;",
            ")V"
        }
    .end annotation

    move-object/from16 v12, p14

    .line 46
    const-string v13, ""

    move/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p17

    invoke-direct {p0, v0, v2, v13, v3}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 48
    invoke-virtual/range {p15 .. p15}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v14

    .line 50
    sget-object v0, Linfo/flowersoft/theotown/util/ThemeManager;->INSTANCE:Linfo/flowersoft/theotown/util/ThemeManager;

    move-object/from16 v2, p12

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/ThemeManager;->transformColor(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v9

    .line 52
    new-instance v0, Linfo/flowersoft/theotown/ui/RegionRulesDialog$1;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblTitle:Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v3

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblTitle:Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v2

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblTitle:Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v4, v2, -0x5

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblTitle:Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v8, p11

    move-object v1, p0

    move-wide/from16 v10, p7

    move-object/from16 v2, p11

    invoke-direct/range {v0 .. v11}, Linfo/flowersoft/theotown/ui/RegionRulesDialog$1;-><init>(Linfo/flowersoft/theotown/ui/RegionRulesDialog;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;J)V

    .line 81
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    if-eqz p16, :cond_78

    move-object v2, v0

    .line 85
    new-instance v0, Linfo/flowersoft/theotown/ui/RegionRulesDialog$2;

    move-object v3, v2

    .line 86
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    .line 87
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Label;->getTextWidth()F

    move-result v3

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x10

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblTitle:Lio/blueflower/stapel2d/gui/Label;

    .line 88
    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v6

    const/16 v5, 0x12

    move v1, v4

    move v4, v3

    move v3, v1

    move-object v1, p0

    move-wide/from16 v8, p9

    move-object/from16 v10, p11

    move-object/from16 v7, p15

    move-object/from16 v11, p16

    invoke-direct/range {v0 .. v11}, Linfo/flowersoft/theotown/ui/RegionRulesDialog$2;-><init>(Linfo/flowersoft/theotown/ui/RegionRulesDialog;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;JLjava/lang/String;Lio/blueflower/stapel2d/util/Setter;)V

    goto :goto_7a

    :cond_78
    move-object/from16 v7, p15

    .line 102
    :goto_7a
    const-string v0, "\\n"

    const-string v2, "\n"

    move-object/from16 v3, p4

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 103
    new-instance v4, Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-direct {v4, v7, v13}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizePacked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p3

    .line 104
    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v4, Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-direct {v4, v7, v13}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizePacked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const-string v6, "\n\n"

    if-nez v5, :cond_b0

    .line 109
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bc

    :cond_b0
    const/16 v0, 0x9ab

    .line 111
    invoke-interface {v14, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_bc
    if-nez p5, :cond_cb

    const/16 v0, 0xcaf

    .line 114
    invoke-interface {v14, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d7

    :cond_cb
    const/16 v0, 0xd9a

    .line 116
    invoke-interface {v14, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d7
    if-nez p6, :cond_e6

    const/16 v0, 0x507

    .line 119
    invoke-interface {v14, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f2

    :cond_e6
    const/16 v0, 0x109

    .line 121
    invoke-interface {v14, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :goto_f2
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->getListBox()Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->removeAllItems()V

    .line 128
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12e

    .line 129
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    const/16 v2, 0x903

    invoke-interface {v14, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/Gadget;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v5

    iget-object v5, v5, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v2, v5}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->addStaticTextFrame(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Font;)Lio/blueflower/stapel2d/gui/TextFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/RegionRulesDialog;->markHeader(Lio/blueflower/stapel2d/gui/TextFrame;)V

    .line 130
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v2

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v3, v2}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->addStaticTextFrame(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Font;)Lio/blueflower/stapel2d/gui/TextFrame;

    .line 131
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v2

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v13, v2}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->addStaticTextFrame(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Font;)Lio/blueflower/stapel2d/gui/TextFrame;

    .line 134
    :cond_12e
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    const/16 v2, 0xce7

    invoke-interface {v14, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v3

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->addStaticTextFrame(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Font;)Lio/blueflower/stapel2d/gui/TextFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/RegionRulesDialog;->markHeader(Lio/blueflower/stapel2d/gui/TextFrame;)V

    .line 135
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v3

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->addStaticTextFrame(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Font;)Lio/blueflower/stapel2d/gui/TextFrame;

    .line 137
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    const/16 v2, 0x2ce

    invoke-interface {v14, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v3

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->addStaticTextFrame(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Font;)Lio/blueflower/stapel2d/gui/TextFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/RegionRulesDialog;->markHeader(Lio/blueflower/stapel2d/gui/TextFrame;)V

    .line 138
    invoke-virtual/range {p13 .. p13}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_187

    .line 139
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    const/16 v2, 0x9a9

    invoke-interface {v14, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v3

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->addStaticTextFrame(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Font;)Lio/blueflower/stapel2d/gui/TextFrame;

    goto :goto_1b4

    :cond_187
    const/4 v0, 0x0

    .line 141
    :goto_188
    invoke-virtual/range {p13 .. p13}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1b4

    move-object/from16 v2, p13

    .line 142
    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    .line 143
    invoke-virtual {v12, v3}, Linfo/flowersoft/theotown/online/RegionTagMap;->containsIds(I)Z

    move-result v4

    if-eqz v4, :cond_1b1

    .line 145
    invoke-virtual {v12, v3}, Linfo/flowersoft/theotown/online/RegionTagMap;->getNameById(I)Ljava/lang/String;

    move-result-object v4

    .line 146
    iget-object v5, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/Gadget;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v6

    iget-object v6, v6, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v5, v4, v6}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->addStaticTextFrame(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Font;)Lio/blueflower/stapel2d/gui/TextFrame;

    move-result-object v4

    .line 147
    invoke-virtual {v12, v3}, Linfo/flowersoft/theotown/online/RegionTagMap;->getThemedColorById(I)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_1b1
    add-int/lit8 v0, v0, 0x1

    goto :goto_188

    .line 152
    :cond_1b4
    :goto_1b4
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getWidth()I

    move-result v0

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->getTextHeight()I

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0xf

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setSize(II)V

    .line 154
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setY(I)V

    .line 155
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    .line 159
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ONLINE_REGIONS:I

    const/16 v2, 0x673

    .line 161
    invoke-interface {v14, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/ui/RegionRulesDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Linfo/flowersoft/theotown/ui/RegionRulesDialog$$ExternalSyntheticLambda0;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 p1, p0

    move/from16 p2, v0

    move-object/from16 p3, v2

    move-object/from16 p7, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    .line 159
    invoke-virtual/range {p1 .. p7}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 165
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 v1, 0x76b

    .line 167
    invoke-interface {v14, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/ui/RegionRulesDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Linfo/flowersoft/theotown/ui/RegionRulesDialog$$ExternalSyntheticLambda1;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move/from16 p2, v0

    move-object/from16 p3, v1

    move-object/from16 p7, v2

    move/from16 p4, v3

    move/from16 p5, v4

    move/from16 p6, v5

    .line 165
    invoke-virtual/range {p1 .. p7}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    const/4 v1, 0x1

    .line 169
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    const/16 v1, 0x42

    .line 170
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 172
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    return-void
.end method


# virtual methods
.method public final markHeader(Lio/blueflower/stapel2d/gui/TextFrame;)V
    .registers 3

    const/4 v0, 0x1

    .line 176
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gui/TextFrame;->setBold(Z)V

    .line 177
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionRulesDialog.AnonymousClass1 (info.flowersoft.theotown.ui.RegionRulesDialog$1)
.class Linfo/flowersoft/theotown/ui/RegionRulesDialog$1;
.super Lio/blueflower/stapel2d/gui/Label;
.source "RegionRulesDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionRulesDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJJLjava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/online/RegionTagMap;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionRulesDialog;

.field public final synthetic val$authorName:Ljava/lang/String;

.field public final synthetic val$finalAuthorColor:Lio/blueflower/stapel2d/drawing/Color;

.field public final synthetic val$lastChange:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionRulesDialog;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;J)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 52
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionRulesDialog$1;->this$0:Linfo/flowersoft/theotown/ui/RegionRulesDialog;

    iput-object p8, p0, Linfo/flowersoft/theotown/ui/RegionRulesDialog$1;->val$authorName:Ljava/lang/String;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/RegionRulesDialog$1;->val$finalAuthorColor:Lio/blueflower/stapel2d/drawing/Color;

    iput-wide p10, p0, Linfo/flowersoft/theotown/ui/RegionRulesDialog$1;->val$lastChange:J

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 9

    .line 55
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr p1, v0

    .line 56
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p2, v0

    .line 57
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 58
    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    iput-object v2, p0, Lio/blueflower/stapel2d/gui/Label;->font:Lio/blueflower/stapel2d/drawing/Font;

    .line 62
    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 63
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Label;->font:Lio/blueflower/stapel2d/drawing/Font;

    int-to-float v2, p1

    int-to-float p2, p2

    const-string v3, "by "

    invoke-virtual {v1, v0, v3, v2, p2}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 64
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Label;->font:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr p1, v0

    .line 66
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionRulesDialog$1;->val$authorName:Ljava/lang/String;

    .line 67
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionRulesDialog$1;->val$finalAuthorColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 68
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Label;->font:Lio/blueflower/stapel2d/drawing/Font;

    int-to-float v3, p1

    invoke-virtual {v1, v2, v0, v3, p2}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 69
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Label;->font:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr p1, v0

    .line 71
    iget-wide v2, p0, Linfo/flowersoft/theotown/ui/RegionRulesDialog$1;->val$lastChange:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_74

    const-wide/32 v4, 0x989680

    cmp-long v0, v2, v4

    if-gez v0, :cond_74

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updated "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Linfo/flowersoft/theotown/ui/RegionRulesDialog$1;->val$lastChange:J

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ago"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 74
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Label;->font:Lio/blueflower/stapel2d/drawing/Font;

    int-to-float p1, p1

    invoke-virtual {v1, v2, v0, p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 75
    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Label;->font:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    .line 78
    :cond_74
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionRulesDialog.AnonymousClass2 (info.flowersoft.theotown.ui.RegionRulesDialog$2)
.class Linfo/flowersoft/theotown/ui/RegionRulesDialog$2;
.super Lio/blueflower/stapel2d/gui/Button;
.source "RegionRulesDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionRulesDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJJLjava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/online/RegionTagMap;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionRulesDialog;

.field public final synthetic val$authorId:J

.field public final synthetic val$authorName:Ljava/lang/String;

.field public final synthetic val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionRulesDialog;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;JLjava/lang/String;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 88
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionRulesDialog$2;->this$0:Linfo/flowersoft/theotown/ui/RegionRulesDialog;

    iput-object p7, p0, Linfo/flowersoft/theotown/ui/RegionRulesDialog$2;->val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iput-wide p8, p0, Linfo/flowersoft/theotown/ui/RegionRulesDialog$2;->val$authorId:J

    iput-object p10, p0, Linfo/flowersoft/theotown/ui/RegionRulesDialog$2;->val$authorName:Ljava/lang/String;

    iput-object p11, p0, Linfo/flowersoft/theotown/ui/RegionRulesDialog$2;->val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

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
    .registers 6

    .line 94
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 95
    new-instance v0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionRulesDialog$2;->val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-wide v2, p0, Linfo/flowersoft/theotown/ui/RegionRulesDialog$2;->val$authorId:J

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/RegionRulesDialog$2;->val$authorName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;JLjava/lang/String;)V

    .line 97
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionRulesDialog$2;->val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    invoke-interface {v1, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionRulesDialog$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.RegionRulesDialog$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/RegionRulesDialog$$ExternalSyntheticLambda0;
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
    invoke-static {}, Linfo/flowersoft/theotown/ui/RegionRulesDialog;->$r8$lambda$6KXcXPckUeYbWW6mGjzEeuGzoMQ()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionRulesDialog$$ExternalSyntheticLambda1 (info.flowersoft.theotown.ui.RegionRulesDialog$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/ui/RegionRulesDialog$$ExternalSyntheticLambda1;
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
    invoke-static {}, Linfo/flowersoft/theotown/ui/RegionRulesDialog;->$r8$lambda$QJnwC0kK70nlvxn_wIDbxm4y4zs()V

    return-void
.end method

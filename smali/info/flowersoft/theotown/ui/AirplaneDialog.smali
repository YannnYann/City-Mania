###### Class info.flowersoft.theotown.ui.AirplaneDialog (info.flowersoft.theotown.ui.AirplaneDialog)
.class public Linfo/flowersoft/theotown/ui/AirplaneDialog;
.super Linfo/flowersoft/theotown/ui/Dialog;
.source "AirplaneDialog.java"


# instance fields
.field public final airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final lane:Linfo/flowersoft/theotown/components/airport/Lane;

.field public final listBox:Lio/blueflower/stapel2d/gui/ListBox;


# direct methods
.method public static synthetic $r8$lambda$2lezud2KpQy43ezlizAyjNKDfA4(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;)Ljava/lang/Boolean;
    .registers 3

    .line 128
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->lane:Linfo/flowersoft/theotown/components/airport/Lane;

    if-eqz v0, :cond_e

    .line 128
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->isAirplaneAssigned(Linfo/flowersoft/theotown/components/airport/Airplane;)Z

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

.method public static synthetic $r8$lambda$3hWm3Bbt28ZWJhtZsN5jq-G7vjY(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;Lio/blueflower/stapel2d/key/KeyMapper;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/components/airport/Airplane;->setName(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/ui/AirplaneDialog;->rebuildListBoxItems(Lio/blueflower/stapel2d/key/KeyMapper;)V

    return-void
.end method

.method public static synthetic $r8$lambda$55uuihVoapAapDpwbmdkG8jp7zw(Ljava/lang/String;)Z
    .registers 1

    .line 108
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ltz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$8jPWIoVmzwXNYZlbEjbum9b79w8(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;)V
    .registers 2

    .line 134
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    .line 134
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->unassignAirplaneToLane(Linfo/flowersoft/theotown/components/airport/Airplane;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ABa-4HBc2EJ23HzaOWrSalAM4_o(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;)Ljava/lang/Boolean;
    .registers 3

    .line 136
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->lane:Linfo/flowersoft/theotown/components/airport/Lane;

    if-eqz v0, :cond_10

    .line 136
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->getLaneOfAirplane(Linfo/flowersoft/theotown/components/airport/Airplane;)Linfo/flowersoft/theotown/components/airport/Lane;

    move-result-object p1

    iget-object p0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->lane:Linfo/flowersoft/theotown/components/airport/Lane;

    if-ne p1, p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LvcYhlFwWuZB9XOp1uh7xmSjcdo(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;)Ljava/lang/Boolean;
    .registers 3

    .line 143
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->lane:Linfo/flowersoft/theotown/components/airport/Lane;

    if-eqz v0, :cond_18

    .line 143
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->isAirplaneAssigned(Linfo/flowersoft/theotown/components/airport/Airplane;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->getLaneOfAirplane(Linfo/flowersoft/theotown/components/airport/Airplane;)Linfo/flowersoft/theotown/components/airport/Lane;

    move-result-object p1

    iget-object p0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->lane:Linfo/flowersoft/theotown/components/airport/Lane;

    if-eq p1, p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Rq849LPnlNU7fJbpyaHdEvGnILY(Linfo/flowersoft/theotown/ui/AirplaneDialog;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;Linfo/flowersoft/theotown/components/airport/Airplane;)V
    .registers 6

    .line 104
    new-instance v0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 105
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, p1, p2}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;)V

    .line 108
    new-instance v1, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setFilter(Lio/blueflower/stapel2d/util/Predicate;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 109
    new-instance v1, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p3, p2}, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda8;-><init>(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;Lio/blueflower/stapel2d/key/KeyMapper;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOnOk(Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 113
    sget p0, Linfo/flowersoft/theotown/resources/Resources;->ICON_AIRPORT:I

    const/16 p2, 0xb1e

    .line 114
    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x981

    .line 115
    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-virtual {p3}, Linfo/flowersoft/theotown/components/airport/Airplane;->getName()Ljava/lang/String;

    move-result-object p3

    .line 113
    invoke-virtual {v0, p0, p2, p1, p3}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->build(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object p0

    const/4 p1, 0x1

    .line 117
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$kincAF08o_jBTWpOIEcTM2tsQFk(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;)V
    .registers 4

    .line 124
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    .line 124
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->lane:Linfo/flowersoft/theotown/components/airport/Lane;

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->assignAirplaneToLane(Linfo/flowersoft/theotown/components/airport/Lane;Linfo/flowersoft/theotown/components/airport/Airplane;)V

    const/4 p1, 0x0

    .line 125
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$pXaJHBYFbhGGHI9O9rvtKWBN684(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;)V
    .registers 2

    .line 141
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    .line 141
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->unassignAirplaneToLane(Linfo/flowersoft/theotown/components/airport/Airplane;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/components/airport/Lane;Linfo/flowersoft/theotown/components/airport/DefaultAirport;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
    .registers 17

    .line 38
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_AIRPORT:I

    invoke-virtual {p3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    const/16 v2, 0x11e

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x12c

    const/16 v5, 0x11d

    const-string v3, ""

    move-object v0, p0

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 39
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/components/CityComponent;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->city:Linfo/flowersoft/theotown/city/City;

    .line 40
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    .line 41
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->lane:Linfo/flowersoft/theotown/components/airport/Lane;

    .line 43
    new-instance v1, Lio/blueflower/stapel2d/gui/ListBox;

    const/4 v5, 0x0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    .line 44
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    .line 46
    invoke-virtual {p3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/ui/AirplaneDialog;->rebuildListBoxItems(Lio/blueflower/stapel2d/key/KeyMapper;)V

    .line 48
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    .line 50
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/components/CityComponent;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v1

    if-nez v1, :cond_71

    .line 51
    new-instance v0, Linfo/flowersoft/theotown/ui/AirplaneDialog$1;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUS:I

    .line 53
    invoke-virtual {p3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v1

    const/16 v3, 0x727

    invoke-interface {v1, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    .line 56
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v9, p2

    move-object v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v0 .. v11}, Linfo/flowersoft/theotown/ui/AirplaneDialog$1;-><init>(Linfo/flowersoft/theotown/ui/AirplaneDialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/components/airport/DefaultAirport;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V

    :cond_71
    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/AirplaneDialog;Lio/blueflower/stapel2d/key/KeyMapper;)V
    .registers 2

    .line 27
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/AirplaneDialog;->rebuildListBoxItems(Lio/blueflower/stapel2d/key/KeyMapper;)V

    return-void
.end method


# virtual methods
.method public final rebuildListBoxItems(Lio/blueflower/stapel2d/key/KeyMapper;)V
    .registers 14

    .line 69
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->removeAllItems()V

    .line 70
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->getAirplanes()Ljava/util/List;

    move-result-object v0

    .line 71
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 73
    :goto_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_be

    .line 74
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/components/airport/Airplane;

    .line 76
    new-instance v5, Linfo/flowersoft/theotown/ui/AirplaneDialog$2;

    iget-object v6, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-direct {v5, p0, v6, v4}, Linfo/flowersoft/theotown/ui/AirplaneDialog$2;-><init>(Linfo/flowersoft/theotown/ui/AirplaneDialog;Lio/blueflower/stapel2d/gui/ListBox;Linfo/flowersoft/theotown/components/airport/Airplane;)V

    .line 97
    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/airport/Airplane;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setTitle(Ljava/lang/String;)V

    .line 98
    new-instance v6, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v7, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v6, v7}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/airport/Airplane;->getDraft()Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    move-result-object v7

    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setSubTitle(Ljava/lang/String;)V

    .line 100
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_EDIT:I

    const/16 v7, 0x10e

    .line 102
    invoke-interface {v1, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v1, p1, v4}, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/AirplaneDialog;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;Linfo/flowersoft/theotown/components/airport/Airplane;)V

    .line 100
    invoke-virtual {v5, v6, v7, v8}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 120
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOCATE:I

    const/16 v7, 0x3df

    .line 122
    invoke-interface {v1, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, v4}, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;)V

    new-instance v10, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda2;

    invoke-direct {v10, p0, v4}, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;)V

    iget-object v9, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->lane:Linfo/flowersoft/theotown/components/airport/Lane;

    if-eqz v9, :cond_6e

    .line 129
    invoke-virtual {v9}, Linfo/flowersoft/theotown/components/airport/Lane;->getAirplane()Linfo/flowersoft/theotown/components/airport/Airplane;

    move-result-object v9

    if-nez v9, :cond_6e

    const/4 v9, 0x1

    move v11, v9

    goto :goto_6f

    :cond_6e
    move v11, v2

    :goto_6f
    const/4 v9, 0x0

    .line 120
    invoke-virtual/range {v5 .. v11}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Z)V

    .line 131
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 v7, 0x23

    .line 133
    invoke-interface {v1, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0, v4}, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;)V

    new-instance v10, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda4;

    invoke-direct {v10, p0, v4}, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda4;-><init>(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;)V

    .line 131
    invoke-virtual/range {v5 .. v10}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;)V

    .line 138
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    const/16 v7, 0x527

    .line 140
    invoke-interface {v1, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda5;

    invoke-direct {v8, p0, v4}, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda5;-><init>(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;)V

    new-instance v10, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda6;

    invoke-direct {v10, p0, v4}, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda6;-><init>(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;)V

    .line 138
    invoke-virtual/range {v5 .. v10}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;)V

    .line 145
    iget-object v6, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v6, v5}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 147
    iget-object v5, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->lane:Linfo/flowersoft/theotown/components/airport/Lane;

    if-eqz v5, :cond_ba

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-virtual {v5, v4}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->getLaneOfAirplane(Linfo/flowersoft/theotown/components/airport/Airplane;)Linfo/flowersoft/theotown/components/airport/Lane;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->lane:Linfo/flowersoft/theotown/components/airport/Lane;

    if-ne v4, v5, :cond_ba

    .line 148
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ListBox;->getContentHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/gui/ListBox;->setShiftY(F)V

    :cond_ba
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_13

    :cond_be
    return-void
.end method

###### Class info.flowersoft.theotown.ui.AirplaneDialog.AnonymousClass1 (info.flowersoft.theotown.ui.AirplaneDialog$1)
.class public Linfo/flowersoft/theotown/ui/AirplaneDialog$1;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "AirplaneDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/AirplaneDialog;-><init>(Linfo/flowersoft/theotown/components/airport/Lane;Linfo/flowersoft/theotown/components/airport/DefaultAirport;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

.field public final synthetic val$airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

.field public final synthetic val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic val$gui:Lio/blueflower/stapel2d/gui/Master;


# direct methods
.method public static synthetic $r8$lambda$gR92rvzbOcxs-gzn5e-KUwGxYUo(Linfo/flowersoft/theotown/ui/AirplaneDialog$1;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 2

    .line 61
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$1;->this$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

    .line 61
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object p1

    invoke-static {p0, p1}, Linfo/flowersoft/theotown/ui/AirplaneDialog;->access$000(Linfo/flowersoft/theotown/ui/AirplaneDialog;Lio/blueflower/stapel2d/key/KeyMapper;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/ui/AirplaneDialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/components/airport/DefaultAirport;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
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
            null,
            null
        }
    .end annotation

    .line 56
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$1;->this$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$1;->val$airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    iput-object p10, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$1;->val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iput-object p11, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$1;->val$gui:Lio/blueflower/stapel2d/gui/Master;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 5

    .line 59
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 60
    new-instance v0, Linfo/flowersoft/theotown/ui/BuyAirplaneDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$1;->val$airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$1;->val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$1;->val$gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/BuyAirplaneDialog;-><init>(Linfo/flowersoft/theotown/components/airport/DefaultAirport;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V

    .line 61
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$1;->val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    new-instance v2, Linfo/flowersoft/theotown/ui/AirplaneDialog$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Linfo/flowersoft/theotown/ui/AirplaneDialog$1$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/AirplaneDialog$1;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setOnClose(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    .line 62
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.AirplaneDialog$1$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.AirplaneDialog$1$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/AirplaneDialog$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog$1;

.field public final synthetic f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/AirplaneDialog$1;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$1$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog$1;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$1$$ExternalSyntheticLambda0;->f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$1$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog$1;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$1$$ExternalSyntheticLambda0;->f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/AirplaneDialog$1;->$r8$lambda$gR92rvzbOcxs-gzn5e-KUwGxYUo(Linfo/flowersoft/theotown/ui/AirplaneDialog$1;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.AirplaneDialog.AnonymousClass2 (info.flowersoft.theotown.ui.AirplaneDialog$2)
.class Linfo/flowersoft/theotown/ui/AirplaneDialog$2;
.super Linfo/flowersoft/theotown/ui/listitem/ActionListItem;
.source "AirplaneDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/AirplaneDialog;->rebuildListBoxItems(Lio/blueflower/stapel2d/key/KeyMapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

.field public final synthetic val$airplane:Linfo/flowersoft/theotown/components/airport/Airplane;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/AirplaneDialog;Lio/blueflower/stapel2d/gui/ListBox;Linfo/flowersoft/theotown/components/airport/Airplane;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 76
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$2;->this$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$2;->val$airplane:Linfo/flowersoft/theotown/components/airport/Airplane;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;-><init>(Lio/blueflower/stapel2d/gui/ListBox;)V

    return-void
.end method


# virtual methods
.method public drawIcon(IIIILio/blueflower/stapel2d/gui/Skin;)I
    .registers 8

    .line 79
    iget-object p3, p5, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 81
    iget-object p5, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$2;->val$airplane:Linfo/flowersoft/theotown/components/airport/Airplane;

    invoke-virtual {p5}, Linfo/flowersoft/theotown/components/airport/Airplane;->getDraft()Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    move-result-object p5

    iget-object p5, p5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$2;->val$airplane:Linfo/flowersoft/theotown/components/airport/Airplane;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/airport/Airplane;->getFrame()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    aget p5, p5, v0

    .line 83
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float p1, p1

    .line 85
    invoke-virtual {v0, p5}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v1

    add-float/2addr p1, v1

    add-int/2addr p2, p4

    add-int/lit8 p2, p2, -0x10

    int-to-float p2, p2

    .line 83
    invoke-virtual {p3, v0, p1, p2, p5}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    const/16 p1, 0x60

    return p1
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/16 p1, 0x28

    return p1
.end method

###### Class info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

.field public final synthetic f$1:Lio/blueflower/stapel2d/gamestack/Translator;

.field public final synthetic f$2:Lio/blueflower/stapel2d/key/KeyMapper;

.field public final synthetic f$3:Linfo/flowersoft/theotown/components/airport/Airplane;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/AirplaneDialog;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;Linfo/flowersoft/theotown/components/airport/Airplane;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda0;->f$1:Lio/blueflower/stapel2d/gamestack/Translator;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda0;->f$2:Lio/blueflower/stapel2d/key/KeyMapper;

    iput-object p4, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda0;->f$3:Linfo/flowersoft/theotown/components/airport/Airplane;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda0;->f$1:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda0;->f$2:Lio/blueflower/stapel2d/key/KeyMapper;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda0;->f$3:Linfo/flowersoft/theotown/components/airport/Airplane;

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/AirplaneDialog;->$r8$lambda$Rq849LPnlNU7fJbpyaHdEvGnILY(Linfo/flowersoft/theotown/ui/AirplaneDialog;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;Linfo/flowersoft/theotown/components/airport/Airplane;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda1 (info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

.field public final synthetic f$1:Linfo/flowersoft/theotown/components/airport/Airplane;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/components/airport/Airplane;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/components/airport/Airplane;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/AirplaneDialog;->$r8$lambda$kincAF08o_jBTWpOIEcTM2tsQFk(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda2 (info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

.field public final synthetic f$1:Linfo/flowersoft/theotown/components/airport/Airplane;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda2;->f$1:Linfo/flowersoft/theotown/components/airport/Airplane;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda2;->f$1:Linfo/flowersoft/theotown/components/airport/Airplane;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/AirplaneDialog;->$r8$lambda$2lezud2KpQy43ezlizAyjNKDfA4(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda3 (info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

.field public final synthetic f$1:Linfo/flowersoft/theotown/components/airport/Airplane;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda3;->f$1:Linfo/flowersoft/theotown/components/airport/Airplane;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda3;->f$1:Linfo/flowersoft/theotown/components/airport/Airplane;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/AirplaneDialog;->$r8$lambda$8jPWIoVmzwXNYZlbEjbum9b79w8(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda4 (info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

.field public final synthetic f$1:Linfo/flowersoft/theotown/components/airport/Airplane;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda4;->f$1:Linfo/flowersoft/theotown/components/airport/Airplane;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda4;->f$1:Linfo/flowersoft/theotown/components/airport/Airplane;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/AirplaneDialog;->$r8$lambda$ABa-4HBc2EJ23HzaOWrSalAM4_o(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda5 (info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

.field public final synthetic f$1:Linfo/flowersoft/theotown/components/airport/Airplane;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda5;->f$1:Linfo/flowersoft/theotown/components/airport/Airplane;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda5;->f$1:Linfo/flowersoft/theotown/components/airport/Airplane;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/AirplaneDialog;->$r8$lambda$pXaJHBYFbhGGHI9O9rvtKWBN684(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda6 (info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

.field public final synthetic f$1:Linfo/flowersoft/theotown/components/airport/Airplane;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda6;->f$1:Linfo/flowersoft/theotown/components/airport/Airplane;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda6;->f$1:Linfo/flowersoft/theotown/components/airport/Airplane;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/AirplaneDialog;->$r8$lambda$LvcYhlFwWuZB9XOp1uh7xmSjcdo(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda7 (info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda7)
.class public final synthetic Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda7;
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

    invoke-static {p1}, Linfo/flowersoft/theotown/ui/AirplaneDialog;->$r8$lambda$55uuihVoapAapDpwbmdkG8jp7zw(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda8 (info.flowersoft.theotown.ui.AirplaneDialog$$ExternalSyntheticLambda8)
.class public final synthetic Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

.field public final synthetic f$1:Linfo/flowersoft/theotown/components/airport/Airplane;

.field public final synthetic f$2:Lio/blueflower/stapel2d/key/KeyMapper;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;Lio/blueflower/stapel2d/key/KeyMapper;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda8;->f$1:Linfo/flowersoft/theotown/components/airport/Airplane;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda8;->f$2:Lio/blueflower/stapel2d/key/KeyMapper;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/ui/AirplaneDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda8;->f$1:Linfo/flowersoft/theotown/components/airport/Airplane;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/AirplaneDialog$$ExternalSyntheticLambda8;->f$2:Lio/blueflower/stapel2d/key/KeyMapper;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Linfo/flowersoft/theotown/ui/AirplaneDialog;->$r8$lambda$3hWm3Bbt28ZWJhtZsN5jq-G7vjY(Linfo/flowersoft/theotown/ui/AirplaneDialog;Linfo/flowersoft/theotown/components/airport/Airplane;Lio/blueflower/stapel2d/key/KeyMapper;Ljava/lang/String;)V

    return-void
.end method

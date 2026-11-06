###### Class io.blueflower.stapel2d.gui.Skin (io.blueflower.stapel2d.gui.Skin)
.class public final Lio/blueflower/stapel2d/gui/Skin;
.super Ljava/lang/Object;
.source "Skin.kt"


# instance fields
.field public cBg:Lio/blueflower/stapel2d/drawing/Color;

.field public cIndicatorRank:Lio/blueflower/stapel2d/drawing/Color;

.field public cIndicatorSelection:Lio/blueflower/stapel2d/drawing/Color;

.field public cIndicatorText:Lio/blueflower/stapel2d/drawing/Color;

.field public cIndicatorTextGreen:Lio/blueflower/stapel2d/drawing/Color;

.field public cIndicatorTextRed:Lio/blueflower/stapel2d/drawing/Color;

.field public cIndicatorTextUber:Lio/blueflower/stapel2d/drawing/Color;

.field public cIndicatorTextYellow:Lio/blueflower/stapel2d/drawing/Color;

.field public cItemBg0:Lio/blueflower/stapel2d/drawing/Color;

.field public cItemBg1:Lio/blueflower/stapel2d/drawing/Color;

.field public cMenuBg:Lio/blueflower/stapel2d/drawing/Color;

.field public cMenuItem:Lio/blueflower/stapel2d/drawing/Color;

.field public cMenuText:Lio/blueflower/stapel2d/drawing/Color;

.field public cMenuTitle:Lio/blueflower/stapel2d/drawing/Color;

.field public cText:Lio/blueflower/stapel2d/drawing/Color;

.field public cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

.field public cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

.field public cTextOrange:Lio/blueflower/stapel2d/drawing/Color;

.field public cTextRed:Lio/blueflower/stapel2d/drawing/Color;

.field public cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

.field public cTextSelected:Lio/blueflower/stapel2d/drawing/Color;

.field public cTextYellow:Lio/blueflower/stapel2d/drawing/Color;

.field public cWindowTitle:Lio/blueflower/stapel2d/drawing/Color;

.field public engine:Lio/blueflower/stapel2d/drawing/Engine;

.field public fCheckboxOff:I

.field public fCheckboxOn:I

.field public fCloseButton:I

.field public fRadioOff:I

.field public fRadioOn:I

.field public fontBig:Lio/blueflower/stapel2d/drawing/Font;

.field public fontDefault:Lio/blueflower/stapel2d/drawing/Font;

.field public fontSmall:Lio/blueflower/stapel2d/drawing/Font;

.field public img:Lio/blueflower/stapel2d/drawing/Image;

.field public npButton:I

.field public npButtonBlue:I

.field public npButtonBlueDown:I

.field public npButtonDown:I

.field public npButtonGold:[I

.field public npButtonGreen:[I

.field public npButtonMarked:I

.field public npIndicator:I

.field public npListBox:I

.field public npListItemDefault:I

.field public npListItemSelected:I

.field public npNotificationBar:I

.field public npPanel:I

.field public npProgressBar:I

.field public npProgressBarFilled:I

.field public npRect:I

.field public npRectShadow:I

.field public npWhiteRect:I

.field public npWhiteRectBordered:I

.field public npWhiteRectEmpty:I

.field public npWindow:I


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;Lio/blueflower/stapel2d/drawing/Font;)V
    .registers 63

    const-string v0, "engine"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageWorld"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "font"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v57, 0x3fffff

    const/16 v58, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, -0x20

    move-object/from16 v5, p3

    move-object/from16 v6, p3

    move-object/from16 v1, p0

    .line 139
    invoke-direct/range {v1 .. v58}, Lio/blueflower/stapel2d/gui/Skin;-><init>(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;IIIIIIIIIIIIIIII[I[IIIIIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;IIIIIIIIIIIIIIII[I[IIIIIIIII)V
    .registers 71

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    const-string v0, "engine"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "img"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontSmall"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontDefault"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontBig"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cText"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cTextSelected"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cTextSecondary"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cTextAccent"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cTextRed"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cTextGreen"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cTextYellow"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cTextOrange"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cBg"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cItemBg0"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cItemBg1"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cMenuBg"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cMenuItem"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cMenuText"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cMenuTitle"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cWindowTitle"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cIndicatorRank"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cIndicatorText"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cIndicatorTextGreen"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cIndicatorTextRed"

    move-object/from16 v15, p25

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cIndicatorTextYellow"

    move-object/from16 v15, p26

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cIndicatorTextUber"

    move-object/from16 v15, p27

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cIndicatorSelection"

    move-object/from16 v15, p28

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "npButtonGold"

    move-object/from16 v15, p45

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "npButtonGreen"

    move-object/from16 v15, p46

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    .line 13
    iput-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 15
    iput-object v2, v0, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    .line 18
    iput-object v3, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 20
    iput-object v4, v0, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    .line 22
    iput-object v5, v0, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    .line 26
    iput-object v6, v0, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    .line 28
    iput-object v7, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextSelected:Lio/blueflower/stapel2d/drawing/Color;

    .line 30
    iput-object v8, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    .line 32
    iput-object v9, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    .line 34
    iput-object v10, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    .line 36
    iput-object v11, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    .line 38
    iput-object v12, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    .line 40
    iput-object v13, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextOrange:Lio/blueflower/stapel2d/drawing/Color;

    .line 42
    iput-object v14, v0, Lio/blueflower/stapel2d/gui/Skin;->cBg:Lio/blueflower/stapel2d/drawing/Color;

    move-object/from16 v1, p15

    .line 44
    iput-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cItemBg0:Lio/blueflower/stapel2d/drawing/Color;

    move-object/from16 v1, p16

    .line 46
    iput-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cItemBg1:Lio/blueflower/stapel2d/drawing/Color;

    move-object/from16 v1, p17

    .line 48
    iput-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cMenuBg:Lio/blueflower/stapel2d/drawing/Color;

    move-object/from16 v1, p18

    .line 50
    iput-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cMenuItem:Lio/blueflower/stapel2d/drawing/Color;

    move-object/from16 v1, p19

    .line 52
    iput-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cMenuText:Lio/blueflower/stapel2d/drawing/Color;

    move-object/from16 v1, p20

    .line 54
    iput-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cMenuTitle:Lio/blueflower/stapel2d/drawing/Color;

    move-object/from16 v1, p21

    .line 56
    iput-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cWindowTitle:Lio/blueflower/stapel2d/drawing/Color;

    move-object/from16 v1, p22

    .line 58
    iput-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorRank:Lio/blueflower/stapel2d/drawing/Color;

    move-object/from16 v1, p23

    .line 60
    iput-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorText:Lio/blueflower/stapel2d/drawing/Color;

    move-object/from16 v1, p24

    .line 62
    iput-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    move-object/from16 v1, p25

    .line 64
    iput-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextRed:Lio/blueflower/stapel2d/drawing/Color;

    move-object/from16 v1, p26

    .line 66
    iput-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    move-object/from16 v1, p27

    .line 68
    iput-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextUber:Lio/blueflower/stapel2d/drawing/Color;

    move-object/from16 v1, p28

    .line 70
    iput-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorSelection:Lio/blueflower/stapel2d/drawing/Color;

    move/from16 v1, p29

    .line 74
    iput v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npPanel:I

    move/from16 v1, p30

    .line 76
    iput v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npWindow:I

    move/from16 v1, p31

    .line 78
    iput v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npButton:I

    move/from16 v1, p32

    .line 80
    iput v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonDown:I

    move/from16 v1, p33

    .line 82
    iput v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npListItemSelected:I

    move/from16 v1, p34

    .line 84
    iput v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npListBox:I

    move/from16 v1, p35

    .line 86
    iput v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npNotificationBar:I

    move/from16 v1, p36

    .line 90
    iput v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npListItemDefault:I

    move/from16 v1, p37

    .line 92
    iput v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonMarked:I

    move/from16 v1, p38

    .line 94
    iput v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npProgressBar:I

    move/from16 v1, p39

    .line 96
    iput v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npProgressBarFilled:I

    move/from16 v1, p40

    .line 98
    iput v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npRect:I

    move/from16 v1, p41

    .line 100
    iput v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npRectShadow:I

    move/from16 v1, p42

    .line 102
    iput v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectBordered:I

    move/from16 v1, p43

    .line 104
    iput v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRect:I

    move/from16 v1, p44

    .line 106
    iput v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectEmpty:I

    move-object/from16 v1, p45

    .line 109
    iput-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonGold:[I

    .line 111
    iput-object v15, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonGreen:[I

    move/from16 v1, p47

    .line 114
    iput v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    move/from16 v1, p48

    .line 116
    iput v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    move/from16 v1, p49

    .line 118
    iput v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npIndicator:I

    move/from16 v1, p50

    .line 121
    iput v1, v0, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOff:I

    move/from16 v1, p51

    .line 123
    iput v1, v0, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOn:I

    move/from16 v1, p52

    .line 125
    iput v1, v0, Lio/blueflower/stapel2d/gui/Skin;->fRadioOff:I

    move/from16 v1, p53

    .line 127
    iput v1, v0, Lio/blueflower/stapel2d/gui/Skin;->fRadioOn:I

    move/from16 v1, p54

    .line 129
    iput v1, v0, Lio/blueflower/stapel2d/gui/Skin;->fCloseButton:I

    return-void
.end method

.method public synthetic constructor <init>(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;IIIIIIIIIIIIIIII[I[IIIIIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 117

    move/from16 v0, p55

    move/from16 v1, p56

    and-int/lit8 v2, v0, 0x20

    .line 12
    const-string v3, "BLACK"

    if-eqz v2, :cond_11

    .line 27
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v2

    goto :goto_13

    :cond_11
    move-object/from16 v10, p6

    :goto_13
    and-int/lit8 v2, v0, 0x40

    .line 12
    const-string v4, "WHITE"

    if-eqz v2, :cond_20

    .line 29
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v2

    goto :goto_22

    :cond_20
    move-object/from16 v11, p7

    :goto_22
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_2f

    .line 31
    new-instance v2, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v5, 0x8c

    invoke-direct {v2, v5, v5, v5}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    move-object v12, v2

    goto :goto_31

    :cond_2f
    move-object/from16 v12, p8

    :goto_31
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_3e

    .line 33
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE:Lio/blueflower/stapel2d/drawing/Color;

    const-string v5, "MARINE_BLUE"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v2

    goto :goto_40

    :cond_3e
    move-object/from16 v13, p9

    :goto_40
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_4d

    .line 35
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->DARK_RED:Lio/blueflower/stapel2d/drawing/Color;

    const-string v5, "DARK_RED"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v2

    goto :goto_4f

    :cond_4d
    move-object/from16 v14, p10

    :goto_4f
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_5c

    .line 37
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->DARK_GREEN:Lio/blueflower/stapel2d/drawing/Color;

    const-string v5, "DARK_GREEN"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v15, v2

    goto :goto_5e

    :cond_5c
    move-object/from16 v15, p11

    :goto_5e
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_6c

    .line 39
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->DARK_YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    const-string v5, "DARK_YELLOW"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v2

    goto :goto_6e

    :cond_6c
    move-object/from16 v16, p12

    :goto_6e
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_7c

    .line 41
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->DARK_ORANGE:Lio/blueflower/stapel2d/drawing/Color;

    const-string v5, "DARK_ORANGE"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v2

    goto :goto_7e

    :cond_7c
    move-object/from16 v17, p13

    :goto_7e
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_8a

    .line 43
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v18, v2

    goto :goto_8c

    :cond_8a
    move-object/from16 v18, p14

    :goto_8c
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_98

    .line 45
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v19, v2

    goto :goto_9a

    :cond_98
    move-object/from16 v19, p15

    :goto_9a
    const v2, 0x8000

    and-int v5, v0, v2

    if-eqz v5, :cond_ab

    .line 47
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE_ULTRA_LIGHT:Lio/blueflower/stapel2d/drawing/Color;

    const-string v6, "MARINE_BLUE_ULTRA_LIGHT"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v20, v5

    goto :goto_ad

    :cond_ab
    move-object/from16 v20, p16

    :goto_ad
    const/high16 v5, 0x10000

    and-int v6, v0, v5

    .line 12
    const-string v7, "copy(...)"

    if-eqz v6, :cond_ca

    .line 49
    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE:Lio/blueflower/stapel2d/drawing/Color;

    sget-object v8, Lio/blueflower/stapel2d/drawing/Colors;->DARK_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    const v9, 0x3f19999a    # 0.6f

    invoke-static {v9, v6, v8}, Lio/blueflower/stapel2d/drawing/Colors;->interpolate(FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v6

    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v6

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v21, v6

    goto :goto_cc

    :cond_ca
    move-object/from16 v21, p17

    :goto_cc
    const/high16 v6, 0x20000

    and-int v8, v0, v6

    if-eqz v8, :cond_e9

    .line 51
    sget-object v8, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE:Lio/blueflower/stapel2d/drawing/Color;

    sget-object v9, Lio/blueflower/stapel2d/drawing/Colors;->DARK_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    move/from16 p6, v2

    const v2, 0x3e4ccccd    # 0.2f

    invoke-static {v2, v8, v9}, Lio/blueflower/stapel2d/drawing/Colors;->interpolate(FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v22, v2

    goto :goto_ed

    :cond_e9
    move/from16 p6, v2

    move-object/from16 v22, p18

    :goto_ed
    const/high16 v2, 0x40000

    and-int v7, v0, v2

    if-eqz v7, :cond_fb

    .line 53
    sget-object v7, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v23, v7

    goto :goto_fd

    :cond_fb
    move-object/from16 v23, p19

    :goto_fd
    const/high16 v7, 0x80000

    and-int v8, v0, v7

    if-eqz v8, :cond_10b

    .line 55
    sget-object v8, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v24, v8

    goto :goto_10d

    :cond_10b
    move-object/from16 v24, p20

    :goto_10d
    const/high16 v8, 0x100000

    and-int v9, v0, v8

    if-eqz v9, :cond_11b

    .line 57
    sget-object v9, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v25, v9

    goto :goto_11d

    :cond_11b
    move-object/from16 v25, p21

    :goto_11d
    const/high16 v3, 0x200000

    and-int/2addr v3, v0

    if-eqz v3, :cond_12c

    .line 59
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    const-string v9, "YELLOW"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v26, v3

    goto :goto_12e

    :cond_12c
    move-object/from16 v26, p22

    :goto_12e
    const/high16 v3, 0x400000

    and-int/2addr v3, v0

    if-eqz v3, :cond_13b

    .line 61
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v27, v3

    goto :goto_13d

    :cond_13b
    move-object/from16 v27, p23

    :goto_13d
    const/high16 v3, 0x800000

    and-int/2addr v3, v0

    if-eqz v3, :cond_14c

    .line 63
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    const-string v4, "GREEN"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v28, v3

    goto :goto_14e

    :cond_14c
    move-object/from16 v28, p24

    :goto_14e
    const/high16 v3, 0x1000000

    and-int/2addr v3, v0

    if-eqz v3, :cond_15d

    .line 65
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    const-string v4, "RED"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v29, v3

    goto :goto_15f

    :cond_15d
    move-object/from16 v29, p25

    :goto_15f
    const/high16 v3, 0x2000000

    and-int/2addr v3, v0

    if-eqz v3, :cond_16e

    .line 67
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    const-string v4, "YELLOW"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v30, v3

    goto :goto_170

    :cond_16e
    move-object/from16 v30, p26

    :goto_170
    const/high16 v3, 0x4000000

    and-int/2addr v3, v0

    if-eqz v3, :cond_17f

    .line 69
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->TURQUOISE:Lio/blueflower/stapel2d/drawing/Color;

    const-string v4, "TURQUOISE"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v31, v3

    goto :goto_181

    :cond_17f
    move-object/from16 v31, p27

    :goto_181
    const/high16 v3, 0x8000000

    and-int/2addr v3, v0

    if-eqz v3, :cond_192

    .line 71
    new-instance v3, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v4, 0x64

    const/16 v9, 0xff

    invoke-direct {v3, v9, v9, v9, v4}, Lio/blueflower/stapel2d/drawing/Color;-><init>(IIII)V

    move-object/from16 v32, v3

    goto :goto_194

    :cond_192
    move-object/from16 v32, p28

    :goto_194
    const/high16 v3, 0x10000000

    and-int/2addr v3, v0

    const/4 v4, 0x0

    if-eqz v3, :cond_19d

    move/from16 v33, v4

    goto :goto_19f

    :cond_19d
    move/from16 v33, p29

    :goto_19f
    const/high16 v3, 0x20000000

    and-int/2addr v3, v0

    if-eqz v3, :cond_1a7

    move/from16 v34, v4

    goto :goto_1a9

    :cond_1a7
    move/from16 v34, p30

    :goto_1a9
    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, v0

    if-eqz v3, :cond_1b1

    move/from16 v35, v4

    goto :goto_1b3

    :cond_1b1
    move/from16 v35, p31

    :goto_1b3
    const/high16 v3, -0x80000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_1bb

    move/from16 v36, v4

    goto :goto_1bd

    :cond_1bb
    move/from16 v36, p32

    :goto_1bd
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_1c4

    move/from16 v37, v4

    goto :goto_1c6

    :cond_1c4
    move/from16 v37, p33

    :goto_1c6
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_1cd

    move/from16 v38, v4

    goto :goto_1cf

    :cond_1cd
    move/from16 v38, p34

    :goto_1cf
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_1d6

    move/from16 v39, v4

    goto :goto_1d8

    :cond_1d6
    move/from16 v39, p35

    :goto_1d8
    and-int/lit8 v0, v1, 0x8

    if-eqz v0, :cond_1df

    move/from16 v40, v4

    goto :goto_1e1

    :cond_1df
    move/from16 v40, p36

    :goto_1e1
    and-int/lit8 v0, v1, 0x10

    if-eqz v0, :cond_1e8

    move/from16 v41, v4

    goto :goto_1ea

    :cond_1e8
    move/from16 v41, p37

    :goto_1ea
    and-int/lit8 v0, v1, 0x20

    if-eqz v0, :cond_1f1

    move/from16 v42, v4

    goto :goto_1f3

    :cond_1f1
    move/from16 v42, p38

    :goto_1f3
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_1fa

    move/from16 v43, v4

    goto :goto_1fc

    :cond_1fa
    move/from16 v43, p39

    :goto_1fc
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_203

    move/from16 v44, v4

    goto :goto_205

    :cond_203
    move/from16 v44, p40

    :goto_205
    and-int/lit16 v0, v1, 0x100

    if-eqz v0, :cond_20c

    move/from16 v45, v4

    goto :goto_20e

    :cond_20c
    move/from16 v45, p41

    :goto_20e
    and-int/lit16 v0, v1, 0x200

    if-eqz v0, :cond_215

    move/from16 v46, v4

    goto :goto_217

    :cond_215
    move/from16 v46, p42

    :goto_217
    and-int/lit16 v0, v1, 0x400

    if-eqz v0, :cond_21e

    move/from16 v47, v4

    goto :goto_220

    :cond_21e
    move/from16 v47, p43

    :goto_220
    and-int/lit16 v0, v1, 0x800

    if-eqz v0, :cond_227

    move/from16 v48, v4

    goto :goto_229

    :cond_227
    move/from16 v48, p44

    :goto_229
    and-int/lit16 v0, v1, 0x1000

    if-eqz v0, :cond_234

    const/16 v0, 0x9

    .line 110
    new-array v0, v0, [I

    move-object/from16 v49, v0

    goto :goto_236

    :cond_234
    move-object/from16 v49, p45

    :goto_236
    and-int/lit16 v0, v1, 0x2000

    if-eqz v0, :cond_241

    const/16 v0, 0x9

    .line 112
    new-array v0, v0, [I

    move-object/from16 v50, v0

    goto :goto_243

    :cond_241
    move-object/from16 v50, p46

    :goto_243
    and-int/lit16 v0, v1, 0x4000

    if-eqz v0, :cond_24a

    move/from16 v51, v4

    goto :goto_24c

    :cond_24a
    move/from16 v51, p47

    :goto_24c
    and-int v0, v1, p6

    if-eqz v0, :cond_253

    move/from16 v52, v4

    goto :goto_255

    :cond_253
    move/from16 v52, p48

    :goto_255
    and-int v0, v1, v5

    if-eqz v0, :cond_25c

    move/from16 v53, v4

    goto :goto_25e

    :cond_25c
    move/from16 v53, p49

    :goto_25e
    and-int v0, v1, v6

    if-eqz v0, :cond_265

    move/from16 v54, v4

    goto :goto_267

    :cond_265
    move/from16 v54, p50

    :goto_267
    and-int v0, v1, v2

    if-eqz v0, :cond_26e

    move/from16 v55, v4

    goto :goto_270

    :cond_26e
    move/from16 v55, p51

    :goto_270
    and-int v0, v1, v7

    if-eqz v0, :cond_277

    move/from16 v56, v4

    goto :goto_279

    :cond_277
    move/from16 v56, p52

    :goto_279
    and-int v0, v1, v8

    if-eqz v0, :cond_280

    move/from16 v57, v4

    goto :goto_282

    :cond_280
    move/from16 v57, p53

    :goto_282
    const/high16 v0, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_296

    move/from16 v58, v4

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v4, p0

    goto :goto_2a4

    :cond_296
    move/from16 v58, p54

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 12
    :goto_2a4
    invoke-direct/range {v4 .. v58}, Lio/blueflower/stapel2d/gui/Skin;-><init>(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;IIIIIIIIIIIIIIII[I[IIIIIIIII)V

    return-void
.end method

.method public static synthetic copy$default(Lio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;IIIIIIIIIIIIIIII[I[IIIIIIIIIIILjava/lang/Object;)Lio/blueflower/stapel2d/gui/Skin;
    .registers 82

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p55

    move/from16 v2, p56

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_d

    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    goto :goto_f

    :cond_d
    move-object/from16 v3, p1

    :goto_f
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_16

    iget-object v4, v0, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    goto :goto_18

    :cond_16
    move-object/from16 v4, p2

    :goto_18
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_1f

    iget-object v5, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    goto :goto_21

    :cond_1f
    move-object/from16 v5, p3

    :goto_21
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_28

    iget-object v6, v0, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    goto :goto_2a

    :cond_28
    move-object/from16 v6, p4

    :goto_2a
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_31

    iget-object v7, v0, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    goto :goto_33

    :cond_31
    move-object/from16 v7, p5

    :goto_33
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_3a

    iget-object v8, v0, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_3c

    :cond_3a
    move-object/from16 v8, p6

    :goto_3c
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_43

    iget-object v9, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextSelected:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_45

    :cond_43
    move-object/from16 v9, p7

    :goto_45
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_4c

    iget-object v10, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_4e

    :cond_4c
    move-object/from16 v10, p8

    :goto_4e
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_55

    iget-object v11, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_57

    :cond_55
    move-object/from16 v11, p9

    :goto_57
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_5e

    iget-object v12, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_60

    :cond_5e
    move-object/from16 v12, p10

    :goto_60
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_67

    iget-object v13, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_69

    :cond_67
    move-object/from16 v13, p11

    :goto_69
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_70

    iget-object v14, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_72

    :cond_70
    move-object/from16 v14, p12

    :goto_72
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_79

    iget-object v15, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextOrange:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_7b

    :cond_79
    move-object/from16 v15, p13

    :goto_7b
    move-object/from16 p1, v3

    and-int/lit16 v3, v1, 0x2000

    if-eqz v3, :cond_84

    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Skin;->cBg:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_86

    :cond_84
    move-object/from16 v3, p14

    :goto_86
    move-object/from16 p2, v3

    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_8f

    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Skin;->cItemBg0:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_91

    :cond_8f
    move-object/from16 v3, p15

    :goto_91
    const v16, 0x8000

    and-int v17, v1, v16

    if-eqz v17, :cond_9b

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cItemBg1:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_9d

    :cond_9b
    move-object/from16 v1, p16

    :goto_9d
    const/high16 v17, 0x10000

    and-int v18, p55, v17

    move-object/from16 p3, v1

    if-eqz v18, :cond_a8

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cMenuBg:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_aa

    :cond_a8
    move-object/from16 v1, p17

    :goto_aa
    const/high16 v18, 0x20000

    and-int v19, p55, v18

    move-object/from16 p4, v1

    if-eqz v19, :cond_b5

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cMenuItem:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_b7

    :cond_b5
    move-object/from16 v1, p18

    :goto_b7
    const/high16 v19, 0x40000

    and-int v20, p55, v19

    move-object/from16 p5, v1

    if-eqz v20, :cond_c2

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cMenuText:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_c4

    :cond_c2
    move-object/from16 v1, p19

    :goto_c4
    const/high16 v20, 0x80000

    and-int v21, p55, v20

    move-object/from16 p6, v1

    if-eqz v21, :cond_cf

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cMenuTitle:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_d1

    :cond_cf
    move-object/from16 v1, p20

    :goto_d1
    const/high16 v21, 0x100000

    and-int v22, p55, v21

    move-object/from16 p7, v1

    if-eqz v22, :cond_dc

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cWindowTitle:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_de

    :cond_dc
    move-object/from16 v1, p21

    :goto_de
    const/high16 v22, 0x200000

    and-int v23, p55, v22

    move-object/from16 p8, v1

    if-eqz v23, :cond_e9

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorRank:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_eb

    :cond_e9
    move-object/from16 v1, p22

    :goto_eb
    const/high16 v23, 0x400000

    and-int v23, p55, v23

    move-object/from16 p9, v1

    if-eqz v23, :cond_f6

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorText:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_f8

    :cond_f6
    move-object/from16 v1, p23

    :goto_f8
    const/high16 v23, 0x800000

    and-int v23, p55, v23

    move-object/from16 p10, v1

    if-eqz v23, :cond_103

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_105

    :cond_103
    move-object/from16 v1, p24

    :goto_105
    const/high16 v23, 0x1000000

    and-int v23, p55, v23

    move-object/from16 p11, v1

    if-eqz v23, :cond_110

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextRed:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_112

    :cond_110
    move-object/from16 v1, p25

    :goto_112
    const/high16 v23, 0x2000000

    and-int v23, p55, v23

    move-object/from16 p12, v1

    if-eqz v23, :cond_11d

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_11f

    :cond_11d
    move-object/from16 v1, p26

    :goto_11f
    const/high16 v23, 0x4000000

    and-int v23, p55, v23

    move-object/from16 p13, v1

    if-eqz v23, :cond_12a

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextUber:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_12c

    :cond_12a
    move-object/from16 v1, p27

    :goto_12c
    const/high16 v23, 0x8000000

    and-int v23, p55, v23

    move-object/from16 p14, v1

    if-eqz v23, :cond_137

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorSelection:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_139

    :cond_137
    move-object/from16 v1, p28

    :goto_139
    const/high16 v23, 0x10000000

    and-int v23, p55, v23

    move-object/from16 p15, v1

    if-eqz v23, :cond_144

    iget v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npPanel:I

    goto :goto_146

    :cond_144
    move/from16 v1, p29

    :goto_146
    const/high16 v23, 0x20000000

    and-int v23, p55, v23

    move/from16 p16, v1

    if-eqz v23, :cond_151

    iget v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npWindow:I

    goto :goto_153

    :cond_151
    move/from16 v1, p30

    :goto_153
    const/high16 v23, 0x40000000    # 2.0f

    and-int v23, p55, v23

    move/from16 p17, v1

    if-eqz v23, :cond_15e

    iget v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npButton:I

    goto :goto_160

    :cond_15e
    move/from16 v1, p31

    :goto_160
    const/high16 v23, -0x80000000

    and-int v23, p55, v23

    move/from16 p18, v1

    if-eqz v23, :cond_16b

    iget v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonDown:I

    goto :goto_16d

    :cond_16b
    move/from16 v1, p32

    :goto_16d
    and-int/lit8 v23, v2, 0x1

    move/from16 p19, v1

    if-eqz v23, :cond_176

    iget v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npListItemSelected:I

    goto :goto_178

    :cond_176
    move/from16 v1, p33

    :goto_178
    and-int/lit8 v23, v2, 0x2

    move/from16 p20, v1

    if-eqz v23, :cond_181

    iget v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npListBox:I

    goto :goto_183

    :cond_181
    move/from16 v1, p34

    :goto_183
    and-int/lit8 v23, v2, 0x4

    move/from16 p21, v1

    if-eqz v23, :cond_18c

    iget v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npNotificationBar:I

    goto :goto_18e

    :cond_18c
    move/from16 v1, p35

    :goto_18e
    and-int/lit8 v23, v2, 0x8

    move/from16 p22, v1

    if-eqz v23, :cond_197

    iget v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npListItemDefault:I

    goto :goto_199

    :cond_197
    move/from16 v1, p36

    :goto_199
    and-int/lit8 v23, v2, 0x10

    move/from16 p23, v1

    if-eqz v23, :cond_1a2

    iget v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonMarked:I

    goto :goto_1a4

    :cond_1a2
    move/from16 v1, p37

    :goto_1a4
    and-int/lit8 v23, v2, 0x20

    move/from16 p24, v1

    if-eqz v23, :cond_1ad

    iget v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npProgressBar:I

    goto :goto_1af

    :cond_1ad
    move/from16 v1, p38

    :goto_1af
    and-int/lit8 v23, v2, 0x40

    move/from16 p25, v1

    if-eqz v23, :cond_1b8

    iget v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npProgressBarFilled:I

    goto :goto_1ba

    :cond_1b8
    move/from16 v1, p39

    :goto_1ba
    move/from16 p26, v1

    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_1c3

    iget v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npRect:I

    goto :goto_1c5

    :cond_1c3
    move/from16 v1, p40

    :goto_1c5
    move/from16 p27, v1

    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_1ce

    iget v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npRectShadow:I

    goto :goto_1d0

    :cond_1ce
    move/from16 v1, p41

    :goto_1d0
    move/from16 p28, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_1d9

    iget v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectBordered:I

    goto :goto_1db

    :cond_1d9
    move/from16 v1, p42

    :goto_1db
    move/from16 p29, v1

    and-int/lit16 v1, v2, 0x400

    if-eqz v1, :cond_1e4

    iget v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRect:I

    goto :goto_1e6

    :cond_1e4
    move/from16 v1, p43

    :goto_1e6
    move/from16 p30, v1

    and-int/lit16 v1, v2, 0x800

    if-eqz v1, :cond_1ef

    iget v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectEmpty:I

    goto :goto_1f1

    :cond_1ef
    move/from16 v1, p44

    :goto_1f1
    move/from16 p31, v1

    and-int/lit16 v1, v2, 0x1000

    if-eqz v1, :cond_1fa

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonGold:[I

    goto :goto_1fc

    :cond_1fa
    move-object/from16 v1, p45

    :goto_1fc
    move-object/from16 p32, v1

    and-int/lit16 v1, v2, 0x2000

    if-eqz v1, :cond_205

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonGreen:[I

    goto :goto_207

    :cond_205
    move-object/from16 v1, p46

    :goto_207
    move-object/from16 p33, v1

    and-int/lit16 v1, v2, 0x4000

    if-eqz v1, :cond_210

    iget v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    goto :goto_212

    :cond_210
    move/from16 v1, p47

    :goto_212
    and-int v16, v2, v16

    move/from16 p34, v1

    if-eqz v16, :cond_21b

    iget v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    goto :goto_21d

    :cond_21b
    move/from16 v1, p48

    :goto_21d
    and-int v16, v2, v17

    move/from16 p35, v1

    if-eqz v16, :cond_226

    iget v1, v0, Lio/blueflower/stapel2d/gui/Skin;->npIndicator:I

    goto :goto_228

    :cond_226
    move/from16 v1, p49

    :goto_228
    and-int v16, v2, v18

    move/from16 p36, v1

    if-eqz v16, :cond_231

    iget v1, v0, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOff:I

    goto :goto_233

    :cond_231
    move/from16 v1, p50

    :goto_233
    and-int v16, v2, v19

    move/from16 p37, v1

    if-eqz v16, :cond_23c

    iget v1, v0, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOn:I

    goto :goto_23e

    :cond_23c
    move/from16 v1, p51

    :goto_23e
    and-int v16, v2, v20

    move/from16 p38, v1

    if-eqz v16, :cond_247

    iget v1, v0, Lio/blueflower/stapel2d/gui/Skin;->fRadioOff:I

    goto :goto_249

    :cond_247
    move/from16 v1, p52

    :goto_249
    and-int v16, v2, v21

    move/from16 p39, v1

    if-eqz v16, :cond_252

    iget v1, v0, Lio/blueflower/stapel2d/gui/Skin;->fRadioOn:I

    goto :goto_254

    :cond_252
    move/from16 v1, p53

    :goto_254
    and-int v2, v2, v22

    if-eqz v2, :cond_2c9

    iget v2, v0, Lio/blueflower/stapel2d/gui/Skin;->fCloseButton:I

    move/from16 p55, v2

    :goto_25c
    move/from16 p40, p26

    move/from16 p41, p27

    move/from16 p42, p28

    move/from16 p43, p29

    move/from16 p44, p30

    move/from16 p45, p31

    move-object/from16 p46, p32

    move-object/from16 p47, p33

    move/from16 p48, p34

    move/from16 p49, p35

    move/from16 p50, p36

    move/from16 p51, p37

    move/from16 p52, p38

    move/from16 p53, p39

    move/from16 p54, v1

    move-object/from16 p26, p12

    move-object/from16 p27, p13

    move-object/from16 p28, p14

    move-object/from16 p29, p15

    move/from16 p30, p16

    move/from16 p31, p17

    move/from16 p32, p18

    move/from16 p33, p19

    move/from16 p34, p20

    move/from16 p35, p21

    move/from16 p36, p22

    move/from16 p37, p23

    move/from16 p38, p24

    move/from16 p39, p25

    move-object/from16 p16, v3

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p15, p2

    move-object/from16 p17, p3

    move-object/from16 p18, p4

    move-object/from16 p19, p5

    move-object/from16 p20, p6

    move-object/from16 p21, p7

    move-object/from16 p22, p8

    move-object/from16 p23, p9

    move-object/from16 p24, p10

    move-object/from16 p25, p11

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    goto :goto_2cc

    :cond_2c9
    move/from16 p55, p54

    goto :goto_25c

    :goto_2cc
    invoke-virtual/range {p1 .. p55}, Lio/blueflower/stapel2d/gui/Skin;->copy(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;IIIIIIIIIIIIIIII[I[IIIIIIIII)Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lio/blueflower/stapel2d/drawing/Engine;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    return-object v0
.end method

.method public final component10()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component11()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component12()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component13()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextOrange:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component14()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->cBg:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component15()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->cItemBg0:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component16()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->cItemBg1:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component17()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->cMenuBg:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component18()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->cMenuItem:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component19()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->cMenuText:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component2()Lio/blueflower/stapel2d/drawing/Image;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    return-object v0
.end method

.method public final component20()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->cMenuTitle:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component21()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->cWindowTitle:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component22()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorRank:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component23()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorText:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component24()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component25()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextRed:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component26()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component27()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextUber:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component28()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorSelection:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component29()I
    .registers 2

    .line 0
    iget v0, p0, Lio/blueflower/stapel2d/gui/Skin;->npPanel:I

    return v0
.end method

.method public final component3()Lio/blueflower/stapel2d/drawing/Font;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    return-object v0
.end method

.method public final component30()I
    .registers 2

    .line 0
    iget v0, p0, Lio/blueflower/stapel2d/gui/Skin;->npWindow:I

    return v0
.end method

.method public final component31()I
    .registers 2

    .line 0
    iget v0, p0, Lio/blueflower/stapel2d/gui/Skin;->npButton:I

    return v0
.end method

.method public final component32()I
    .registers 2

    .line 0
    iget v0, p0, Lio/blueflower/stapel2d/gui/Skin;->npButtonDown:I

    return v0
.end method

.method public final component33()I
    .registers 2

    .line 0
    iget v0, p0, Lio/blueflower/stapel2d/gui/Skin;->npListItemSelected:I

    return v0
.end method

.method public final component34()I
    .registers 2

    .line 0
    iget v0, p0, Lio/blueflower/stapel2d/gui/Skin;->npListBox:I

    return v0
.end method

.method public final component35()I
    .registers 2

    .line 0
    iget v0, p0, Lio/blueflower/stapel2d/gui/Skin;->npNotificationBar:I

    return v0
.end method

.method public final component36()I
    .registers 2

    .line 0
    iget v0, p0, Lio/blueflower/stapel2d/gui/Skin;->npListItemDefault:I

    return v0
.end method

.method public final component37()I
    .registers 2

    .line 0
    iget v0, p0, Lio/blueflower/stapel2d/gui/Skin;->npButtonMarked:I

    return v0
.end method

.method public final component38()I
    .registers 2

    .line 0
    iget v0, p0, Lio/blueflower/stapel2d/gui/Skin;->npProgressBar:I

    return v0
.end method

.method public final component39()I
    .registers 2

    .line 0
    iget v0, p0, Lio/blueflower/stapel2d/gui/Skin;->npProgressBarFilled:I

    return v0
.end method

.method public final component4()Lio/blueflower/stapel2d/drawing/Font;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    return-object v0
.end method

.method public final component40()I
    .registers 2

    .line 0
    iget v0, p0, Lio/blueflower/stapel2d/gui/Skin;->npRect:I

    return v0
.end method

.method public final component41()I
    .registers 2

    .line 0
    iget v0, p0, Lio/blueflower/stapel2d/gui/Skin;->npRectShadow:I

    return v0
.end method

.method public final component42()I
    .registers 2

    .line 0
    iget v0, p0, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectBordered:I

    return v0
.end method

.method public final component43()I
    .registers 2

    .line 0
    iget v0, p0, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRect:I

    return v0
.end method

.method public final component44()I
    .registers 2

    .line 0
    iget v0, p0, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectEmpty:I

    return v0
.end method

.method public final component45()[I
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->npButtonGold:[I

    return-object v0
.end method

.method public final component46()[I
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->npButtonGreen:[I

    return-object v0
.end method

.method public final component47()I
    .registers 2

    .line 0
    iget v0, p0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    return v0
.end method

.method public final component48()I
    .registers 2

    .line 0
    iget v0, p0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    return v0
.end method

.method public final component49()I
    .registers 2

    .line 0
    iget v0, p0, Lio/blueflower/stapel2d/gui/Skin;->npIndicator:I

    return v0
.end method

.method public final component5()Lio/blueflower/stapel2d/drawing/Font;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    return-object v0
.end method

.method public final component50()I
    .registers 2

    .line 0
    iget v0, p0, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOff:I

    return v0
.end method

.method public final component51()I
    .registers 2

    .line 0
    iget v0, p0, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOn:I

    return v0
.end method

.method public final component52()I
    .registers 2

    .line 0
    iget v0, p0, Lio/blueflower/stapel2d/gui/Skin;->fRadioOff:I

    return v0
.end method

.method public final component53()I
    .registers 2

    .line 0
    iget v0, p0, Lio/blueflower/stapel2d/gui/Skin;->fRadioOn:I

    return v0
.end method

.method public final component54()I
    .registers 2

    .line 0
    iget v0, p0, Lio/blueflower/stapel2d/gui/Skin;->fCloseButton:I

    return v0
.end method

.method public final component6()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component7()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextSelected:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component8()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component9()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final copy(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;IIIIIIIIIIIIIIII[I[IIIIIIIII)Lio/blueflower/stapel2d/gui/Skin;
    .registers 111

    .line 0
    const-string v0, "engine"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "img"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontSmall"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontDefault"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontBig"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cText"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cTextSelected"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cTextSecondary"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cTextAccent"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cTextRed"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cTextGreen"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cTextYellow"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cTextOrange"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cBg"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cItemBg0"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cItemBg1"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cMenuBg"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cMenuItem"

    move-object/from16 v1, p18

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cMenuText"

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cMenuTitle"

    move-object/from16 v1, p20

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cWindowTitle"

    move-object/from16 v1, p21

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cIndicatorRank"

    move-object/from16 v1, p22

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cIndicatorText"

    move-object/from16 v1, p23

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cIndicatorTextGreen"

    move-object/from16 v1, p24

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cIndicatorTextRed"

    move-object/from16 v1, p25

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cIndicatorTextYellow"

    move-object/from16 v1, p26

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cIndicatorTextUber"

    move-object/from16 v1, p27

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cIndicatorSelection"

    move-object/from16 v1, p28

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "npButtonGold"

    move-object/from16 v1, p45

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "npButtonGreen"

    move-object/from16 v1, p46

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lio/blueflower/stapel2d/gui/Skin;

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move/from16 v30, p29

    move/from16 v31, p30

    move/from16 v32, p31

    move/from16 v33, p32

    move/from16 v34, p33

    move/from16 v35, p34

    move/from16 v36, p35

    move/from16 v37, p36

    move/from16 v38, p37

    move/from16 v39, p38

    move/from16 v40, p39

    move/from16 v41, p40

    move/from16 v42, p41

    move/from16 v43, p42

    move/from16 v44, p43

    move/from16 v45, p44

    move-object/from16 v46, p45

    move-object/from16 v47, p46

    move/from16 v48, p47

    move/from16 v49, p48

    move/from16 v50, p49

    move/from16 v51, p50

    move/from16 v52, p51

    move/from16 v53, p52

    move/from16 v54, p53

    move/from16 v55, p54

    invoke-direct/range {v1 .. v55}, Lio/blueflower/stapel2d/gui/Skin;-><init>(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;IIIIIIIIIIIIIIII[I[IIIIIIIII)V

    return-object v1
.end method

.method public final copyAll()Lio/blueflower/stapel2d/gui/Skin;
    .registers 60

    const v57, 0x3fffff

    const/16 v58, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, -0x1

    move-object/from16 v1, p0

    .line 144
    invoke-static/range {v1 .. v58}, Lio/blueflower/stapel2d/gui/Skin;->copy$default(Lio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;IIIIIIIIIIIIIIII[I[IIIIIIIIIIILjava/lang/Object;)Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/blueflower/stapel2d/gui/Skin;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextSelected:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextSelected:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    :cond_64
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    return v2

    :cond_6f
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    return v2

    :cond_7a
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    return v2

    :cond_85
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    return v2

    :cond_90
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextOrange:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextOrange:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9b

    return v2

    :cond_9b
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cBg:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->cBg:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a6

    return v2

    :cond_a6
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cItemBg0:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->cItemBg0:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b1

    return v2

    :cond_b1
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cItemBg1:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->cItemBg1:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bc

    return v2

    :cond_bc
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cMenuBg:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->cMenuBg:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c7

    return v2

    :cond_c7
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cMenuItem:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->cMenuItem:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d2

    return v2

    :cond_d2
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cMenuText:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->cMenuText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_dd

    return v2

    :cond_dd
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cMenuTitle:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->cMenuTitle:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e8

    return v2

    :cond_e8
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cWindowTitle:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->cWindowTitle:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f3

    return v2

    :cond_f3
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorRank:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorRank:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fe

    return v2

    :cond_fe
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorText:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_109

    return v2

    :cond_109
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_114

    return v2

    :cond_114
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextRed:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextRed:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11f

    return v2

    :cond_11f
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12a

    return v2

    :cond_12a
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextUber:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextUber:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    return v2

    :cond_135
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorSelection:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorSelection:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_140

    return v2

    :cond_140
    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npPanel:I

    iget v3, p1, Lio/blueflower/stapel2d/gui/Skin;->npPanel:I

    if-eq v1, v3, :cond_147

    return v2

    :cond_147
    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npWindow:I

    iget v3, p1, Lio/blueflower/stapel2d/gui/Skin;->npWindow:I

    if-eq v1, v3, :cond_14e

    return v2

    :cond_14e
    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npButton:I

    iget v3, p1, Lio/blueflower/stapel2d/gui/Skin;->npButton:I

    if-eq v1, v3, :cond_155

    return v2

    :cond_155
    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npButtonDown:I

    iget v3, p1, Lio/blueflower/stapel2d/gui/Skin;->npButtonDown:I

    if-eq v1, v3, :cond_15c

    return v2

    :cond_15c
    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npListItemSelected:I

    iget v3, p1, Lio/blueflower/stapel2d/gui/Skin;->npListItemSelected:I

    if-eq v1, v3, :cond_163

    return v2

    :cond_163
    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npListBox:I

    iget v3, p1, Lio/blueflower/stapel2d/gui/Skin;->npListBox:I

    if-eq v1, v3, :cond_16a

    return v2

    :cond_16a
    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npNotificationBar:I

    iget v3, p1, Lio/blueflower/stapel2d/gui/Skin;->npNotificationBar:I

    if-eq v1, v3, :cond_171

    return v2

    :cond_171
    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npListItemDefault:I

    iget v3, p1, Lio/blueflower/stapel2d/gui/Skin;->npListItemDefault:I

    if-eq v1, v3, :cond_178

    return v2

    :cond_178
    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npButtonMarked:I

    iget v3, p1, Lio/blueflower/stapel2d/gui/Skin;->npButtonMarked:I

    if-eq v1, v3, :cond_17f

    return v2

    :cond_17f
    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npProgressBar:I

    iget v3, p1, Lio/blueflower/stapel2d/gui/Skin;->npProgressBar:I

    if-eq v1, v3, :cond_186

    return v2

    :cond_186
    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npProgressBarFilled:I

    iget v3, p1, Lio/blueflower/stapel2d/gui/Skin;->npProgressBarFilled:I

    if-eq v1, v3, :cond_18d

    return v2

    :cond_18d
    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npRect:I

    iget v3, p1, Lio/blueflower/stapel2d/gui/Skin;->npRect:I

    if-eq v1, v3, :cond_194

    return v2

    :cond_194
    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npRectShadow:I

    iget v3, p1, Lio/blueflower/stapel2d/gui/Skin;->npRectShadow:I

    if-eq v1, v3, :cond_19b

    return v2

    :cond_19b
    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectBordered:I

    iget v3, p1, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectBordered:I

    if-eq v1, v3, :cond_1a2

    return v2

    :cond_1a2
    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRect:I

    iget v3, p1, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRect:I

    if-eq v1, v3, :cond_1a9

    return v2

    :cond_1a9
    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectEmpty:I

    iget v3, p1, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectEmpty:I

    if-eq v1, v3, :cond_1b0

    return v2

    :cond_1b0
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npButtonGold:[I

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->npButtonGold:[I

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1bb

    return v2

    :cond_1bb
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npButtonGreen:[I

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->npButtonGreen:[I

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c6

    return v2

    :cond_1c6
    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    iget v3, p1, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    if-eq v1, v3, :cond_1cd

    return v2

    :cond_1cd
    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    iget v3, p1, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    if-eq v1, v3, :cond_1d4

    return v2

    :cond_1d4
    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npIndicator:I

    iget v3, p1, Lio/blueflower/stapel2d/gui/Skin;->npIndicator:I

    if-eq v1, v3, :cond_1db

    return v2

    :cond_1db
    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOff:I

    iget v3, p1, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOff:I

    if-eq v1, v3, :cond_1e2

    return v2

    :cond_1e2
    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOn:I

    iget v3, p1, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOn:I

    if-eq v1, v3, :cond_1e9

    return v2

    :cond_1e9
    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->fRadioOff:I

    iget v3, p1, Lio/blueflower/stapel2d/gui/Skin;->fRadioOff:I

    if-eq v1, v3, :cond_1f0

    return v2

    :cond_1f0
    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->fRadioOn:I

    iget v3, p1, Lio/blueflower/stapel2d/gui/Skin;->fRadioOn:I

    if-eq v1, v3, :cond_1f7

    return v2

    :cond_1f7
    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->fCloseButton:I

    iget p1, p1, Lio/blueflower/stapel2d/gui/Skin;->fCloseButton:I

    if-eq v1, p1, :cond_1fe

    return v2

    :cond_1fe
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextSelected:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextOrange:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cBg:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cItemBg0:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cItemBg1:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cMenuBg:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cMenuItem:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cMenuText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cMenuTitle:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cWindowTitle:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorRank:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextRed:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextUber:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorSelection:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npPanel:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npWindow:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npButton:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npButtonDown:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npListItemSelected:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npListBox:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npNotificationBar:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npListItemDefault:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npButtonMarked:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npProgressBar:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npProgressBarFilled:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npRect:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npRectShadow:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectBordered:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRect:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectEmpty:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npButtonGold:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npButtonGreen:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npIndicator:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOff:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOn:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->fRadioOff:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->fRadioOn:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->fCloseButton:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skin(engine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", img="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontSmall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontBig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cTextSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextSelected:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cTextSecondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cTextAccent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cTextRed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cTextGreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cTextYellow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cTextOrange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cTextOrange:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cBg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cBg:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cItemBg0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cItemBg0:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cItemBg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cItemBg1:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cMenuBg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cMenuBg:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cMenuItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cMenuItem:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cMenuText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cMenuText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cMenuTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cMenuTitle:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cWindowTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cWindowTitle:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cIndicatorRank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorRank:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cIndicatorText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cIndicatorTextGreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cIndicatorTextRed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextRed:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cIndicatorTextYellow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cIndicatorTextUber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextUber:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cIndicatorSelection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorSelection:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", npPanel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npPanel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", npWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npWindow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", npButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npButton:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", npButtonDown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npButtonDown:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", npListItemSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npListItemSelected:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", npListBox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npListBox:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", npNotificationBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npNotificationBar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", npListItemDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npListItemDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", npButtonMarked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npButtonMarked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", npProgressBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npProgressBar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", npProgressBarFilled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npProgressBarFilled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", npRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npRect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", npRectShadow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npRectShadow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", npWhiteRectBordered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectBordered:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", npWhiteRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", npWhiteRectEmpty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectEmpty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", npButtonGold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npButtonGold:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", npButtonGreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npButtonGreen:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", npButtonBlue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", npButtonBlueDown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", npIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->npIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fCheckboxOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOff:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fCheckboxOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fRadioOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->fRadioOff:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fRadioOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->fRadioOn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fCloseButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Skin;->fCloseButton:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

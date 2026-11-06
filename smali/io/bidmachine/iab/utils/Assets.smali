###### Class io.bidmachine.iab.utils.Assets (io.bidmachine.iab.utils.Assets)
.class public Lio/bidmachine/iab/utils/Assets;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BACKGROUND_COLOR:I

.field public static final DEF_BANNER_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

.field public static final DEF_CLOSE_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

.field public static final DEF_COUNT_DOWN_PROGRESS_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

.field public static final DEF_COUNT_DOWN_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

.field public static final DEF_CTA_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

.field public static final DEF_INLINE_BANNER_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

.field public static final DEF_LINEAR_PROGRESS_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

.field public static final DEF_LOADING_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

.field public static final DEF_MUTE_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

.field public static final DEF_REPEAT_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

.field public static final DEF_SKIP_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

.field public static final DEF_TEXT_COUNT_DOWN_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

.field public static final DEF_TEXT_PROGRESS_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

.field public static final DEF_VIDEO_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

.field public static final MAIN_ASSETS_COLOR:I

.field public static final SHADOW_COLOR:I


# direct methods
.method static constructor <clinit>()V
    .registers 20

    .line 1
    const-string v0, "#B4FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/bidmachine/iab/utils/Assets;->MAIN_ASSETS_COLOR:I

    .line 2
    const-string v0, "#5c000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/bidmachine/iab/utils/Assets;->SHADOW_COLOR:I

    .line 3
    const-string v0, "#52000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lio/bidmachine/iab/utils/Assets;->BACKGROUND_COLOR:I

    .line 44
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    sput-object v0, Lio/bidmachine/iab/utils/Assets;->DEF_CLOSE_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    const/4 v1, 0x5

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setHorizontalPosition(Ljava/lang/Integer;)V

    const/16 v2, 0x30

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->setVerticalPosition(Ljava/lang/Integer;)V

    const/high16 v3, 0x40000000    # 2.0f

    .line 47
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/bidmachine/iab/utils/IabElementStyle;->setStrokeWidth(Ljava/lang/Float;)V

    .line 48
    const-string v4, "cross"

    invoke-virtual {v0, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->setStyle(Ljava/lang/String;)V

    const/16 v4, 0x8

    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v4, v4, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->setMargin(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    const/high16 v5, 0x41f00000    # 30.0f

    .line 50
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->setWidth(Ljava/lang/Number;)V

    .line 51
    invoke-virtual {v0, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->setHeight(Ljava/lang/Number;)V

    const/high16 v6, 0x40400000    # 3.0f

    .line 52
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v0, v6}, Lio/bidmachine/iab/utils/IabElementStyle;->setHideAfter(Ljava/lang/Float;)V

    .line 54
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    sput-object v0, Lio/bidmachine/iab/utils/Assets;->DEF_SKIP_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 55
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setHorizontalPosition(Ljava/lang/Integer;)V

    .line 56
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->setVerticalPosition(Ljava/lang/Integer;)V

    .line 57
    invoke-virtual {v0, v3}, Lio/bidmachine/iab/utils/IabElementStyle;->setStrokeWidth(Ljava/lang/Float;)V

    .line 58
    const-string v7, "skip"

    invoke-virtual {v0, v7}, Lio/bidmachine/iab/utils/IabElementStyle;->setStyle(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, v4, v4, v4, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->setMargin(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 60
    invoke-virtual {v0, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->setWidth(Ljava/lang/Number;)V

    .line 61
    invoke-virtual {v0, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->setHeight(Ljava/lang/Number;)V

    .line 62
    invoke-virtual {v0, v6}, Lio/bidmachine/iab/utils/IabElementStyle;->setHideAfter(Ljava/lang/Float;)V

    .line 64
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    sput-object v0, Lio/bidmachine/iab/utils/Assets;->DEF_COUNT_DOWN_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 65
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setHorizontalPosition(Ljava/lang/Integer;)V

    .line 66
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->setVerticalPosition(Ljava/lang/Integer;)V

    .line 67
    invoke-virtual {v0, v3}, Lio/bidmachine/iab/utils/IabElementStyle;->setStrokeWidth(Ljava/lang/Float;)V

    .line 68
    const-string v7, "circular"

    invoke-virtual {v0, v7}, Lio/bidmachine/iab/utils/IabElementStyle;->setStyle(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, v4, v4, v4, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->setMargin(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 70
    invoke-virtual {v0, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->setWidth(Ljava/lang/Number;)V

    .line 71
    invoke-virtual {v0, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->setHeight(Ljava/lang/Number;)V

    const/4 v8, 0x1

    .line 72
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lio/bidmachine/iab/utils/IabElementStyle;->setFontStyle(Ljava/lang/Integer;)V

    .line 73
    invoke-virtual {v0, v6}, Lio/bidmachine/iab/utils/IabElementStyle;->setHideAfter(Ljava/lang/Float;)V

    .line 75
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    sput-object v0, Lio/bidmachine/iab/utils/Assets;->DEF_TEXT_COUNT_DOWN_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 76
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setHorizontalPosition(Ljava/lang/Integer;)V

    .line 77
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->setVerticalPosition(Ljava/lang/Integer;)V

    const/high16 v9, 0x41800000    # 16.0f

    .line 78
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v9}, Lio/bidmachine/iab/utils/IabElementStyle;->setFontSize(Ljava/lang/Float;)V

    .line 79
    invoke-virtual {v0, v3}, Lio/bidmachine/iab/utils/IabElementStyle;->setStrokeWidth(Ljava/lang/Float;)V

    const/16 v10, 0xc

    .line 80
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11, v10, v11}, Lio/bidmachine/iab/utils/IabElementStyle;->setPadding(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 81
    const-string v12, "%1.0f%"

    invoke-virtual {v0, v12}, Lio/bidmachine/iab/utils/IabElementStyle;->setContent(Ljava/lang/String;)V

    .line 82
    const-string v13, "text"

    invoke-virtual {v0, v13}, Lio/bidmachine/iab/utils/IabElementStyle;->setStyle(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, v4, v4, v4, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->setMargin(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 84
    invoke-virtual {v0, v8}, Lio/bidmachine/iab/utils/IabElementStyle;->setFontStyle(Ljava/lang/Integer;)V

    .line 85
    invoke-virtual {v0, v6}, Lio/bidmachine/iab/utils/IabElementStyle;->setHideAfter(Ljava/lang/Float;)V

    .line 87
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    sput-object v0, Lio/bidmachine/iab/utils/Assets;->DEF_MUTE_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    const/4 v14, 0x3

    .line 88
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14}, Lio/bidmachine/iab/utils/IabElementStyle;->setHorizontalPosition(Ljava/lang/Integer;)V

    .line 89
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->setVerticalPosition(Ljava/lang/Integer;)V

    .line 90
    invoke-virtual {v0, v3}, Lio/bidmachine/iab/utils/IabElementStyle;->setStrokeWidth(Ljava/lang/Float;)V

    .line 91
    invoke-virtual {v0, v4, v4, v4, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->setMargin(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 92
    invoke-virtual {v0, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->setWidth(Ljava/lang/Number;)V

    .line 93
    invoke-virtual {v0, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->setHeight(Ljava/lang/Number;)V

    .line 94
    invoke-virtual {v0, v6}, Lio/bidmachine/iab/utils/IabElementStyle;->setHideAfter(Ljava/lang/Float;)V

    .line 96
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    sput-object v0, Lio/bidmachine/iab/utils/Assets;->DEF_REPEAT_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    const/16 v15, 0x11

    .line 97
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v15}, Lio/bidmachine/iab/utils/IabElementStyle;->setHorizontalPosition(Ljava/lang/Integer;)V

    .line 98
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->setVerticalPosition(Ljava/lang/Integer;)V

    .line 99
    invoke-virtual {v0, v3}, Lio/bidmachine/iab/utils/IabElementStyle;->setStrokeWidth(Ljava/lang/Float;)V

    .line 100
    invoke-virtual {v0, v4, v4, v4, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->setMargin(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 101
    invoke-virtual {v0, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->setWidth(Ljava/lang/Number;)V

    .line 102
    invoke-virtual {v0, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->setHeight(Ljava/lang/Number;)V

    move-object/from16 v16, v2

    .line 103
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->setVisible(Ljava/lang/Boolean;)V

    .line 104
    invoke-virtual {v0, v6}, Lio/bidmachine/iab/utils/IabElementStyle;->setHideAfter(Ljava/lang/Float;)V

    .line 106
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    sput-object v0, Lio/bidmachine/iab/utils/Assets;->DEF_LINEAR_PROGRESS_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 107
    invoke-virtual {v0, v15}, Lio/bidmachine/iab/utils/IabElementStyle;->setHorizontalPosition(Ljava/lang/Integer;)V

    const/16 v2, 0x50

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->setVerticalPosition(Ljava/lang/Integer;)V

    const/16 v17, 0x0

    move-object/from16 v18, v1

    .line 109
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setFillColor(Ljava/lang/Integer;)V

    .line 110
    invoke-virtual {v0, v6}, Lio/bidmachine/iab/utils/IabElementStyle;->setStrokeWidth(Ljava/lang/Float;)V

    const/16 v17, -0x1

    move-object/from16 v19, v1

    .line 111
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setWidth(Ljava/lang/Number;)V

    .line 112
    invoke-virtual {v0, v14}, Lio/bidmachine/iab/utils/IabElementStyle;->setHeight(Ljava/lang/Number;)V

    .line 113
    const-string v1, "linear"

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setStyle(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, v6}, Lio/bidmachine/iab/utils/IabElementStyle;->setHideAfter(Ljava/lang/Float;)V

    .line 116
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    sput-object v0, Lio/bidmachine/iab/utils/Assets;->DEF_TEXT_PROGRESS_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 117
    invoke-virtual {v0, v15}, Lio/bidmachine/iab/utils/IabElementStyle;->setHorizontalPosition(Ljava/lang/Integer;)V

    .line 118
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->setVerticalPosition(Ljava/lang/Integer;)V

    .line 119
    invoke-virtual {v0, v9}, Lio/bidmachine/iab/utils/IabElementStyle;->setFontSize(Ljava/lang/Float;)V

    .line 120
    invoke-virtual {v0, v3}, Lio/bidmachine/iab/utils/IabElementStyle;->setStrokeWidth(Ljava/lang/Float;)V

    .line 121
    invoke-virtual {v0, v10, v11, v10, v11}, Lio/bidmachine/iab/utils/IabElementStyle;->setPadding(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 122
    invoke-virtual {v0, v12}, Lio/bidmachine/iab/utils/IabElementStyle;->setContent(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, v13}, Lio/bidmachine/iab/utils/IabElementStyle;->setStyle(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, v14, v14, v14, v14}, Lio/bidmachine/iab/utils/IabElementStyle;->setMargin(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 125
    invoke-virtual {v0, v8}, Lio/bidmachine/iab/utils/IabElementStyle;->setFontStyle(Ljava/lang/Integer;)V

    .line 126
    invoke-virtual {v0, v6}, Lio/bidmachine/iab/utils/IabElementStyle;->setHideAfter(Ljava/lang/Float;)V

    .line 128
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    sput-object v0, Lio/bidmachine/iab/utils/Assets;->DEF_COUNT_DOWN_PROGRESS_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 129
    invoke-virtual {v0, v15}, Lio/bidmachine/iab/utils/IabElementStyle;->setHorizontalPosition(Ljava/lang/Integer;)V

    .line 130
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->setVerticalPosition(Ljava/lang/Integer;)V

    .line 131
    invoke-virtual {v0, v3}, Lio/bidmachine/iab/utils/IabElementStyle;->setStrokeWidth(Ljava/lang/Float;)V

    .line 132
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setOutlined(Ljava/lang/Boolean;)V

    .line 133
    invoke-virtual {v0, v7}, Lio/bidmachine/iab/utils/IabElementStyle;->setStyle(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, v4, v4, v4, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->setMargin(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 135
    invoke-virtual {v0, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->setWidth(Ljava/lang/Number;)V

    .line 136
    invoke-virtual {v0, v5}, Lio/bidmachine/iab/utils/IabElementStyle;->setHeight(Ljava/lang/Number;)V

    .line 137
    invoke-virtual {v0, v8}, Lio/bidmachine/iab/utils/IabElementStyle;->setFontStyle(Ljava/lang/Integer;)V

    .line 138
    invoke-virtual {v0, v6}, Lio/bidmachine/iab/utils/IabElementStyle;->setHideAfter(Ljava/lang/Float;)V

    .line 140
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    sput-object v0, Lio/bidmachine/iab/utils/Assets;->DEF_CTA_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    move-object/from16 v1, v18

    .line 141
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setHorizontalPosition(Ljava/lang/Integer;)V

    .line 142
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->setVerticalPosition(Ljava/lang/Integer;)V

    .line 143
    invoke-virtual {v0, v9}, Lio/bidmachine/iab/utils/IabElementStyle;->setFontSize(Ljava/lang/Float;)V

    .line 144
    invoke-virtual {v0, v3}, Lio/bidmachine/iab/utils/IabElementStyle;->setStrokeWidth(Ljava/lang/Float;)V

    const/16 v1, 0x10

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v5, v1, v3}, Lio/bidmachine/iab/utils/IabElementStyle;->setPadding(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 146
    invoke-virtual {v0, v13}, Lio/bidmachine/iab/utils/IabElementStyle;->setStyle(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, v14, v14, v14, v14}, Lio/bidmachine/iab/utils/IabElementStyle;->setMargin(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 148
    invoke-virtual {v0, v8}, Lio/bidmachine/iab/utils/IabElementStyle;->setFontStyle(Ljava/lang/Integer;)V

    .line 149
    invoke-virtual {v0, v6}, Lio/bidmachine/iab/utils/IabElementStyle;->setHideAfter(Ljava/lang/Float;)V

    .line 151
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    sput-object v0, Lio/bidmachine/iab/utils/Assets;->DEF_BANNER_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 152
    invoke-virtual {v0, v15}, Lio/bidmachine/iab/utils/IabElementStyle;->setHorizontalPosition(Ljava/lang/Integer;)V

    .line 153
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->setVerticalPosition(Ljava/lang/Integer;)V

    move-object/from16 v2, v19

    .line 154
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->setFillColor(Ljava/lang/Integer;)V

    .line 155
    invoke-virtual {v0, v14, v14, v14, v14}, Lio/bidmachine/iab/utils/IabElementStyle;->setMargin(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 157
    new-instance v3, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v3, v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>(Lio/bidmachine/iab/utils/IabElementStyle;)V

    sput-object v3, Lio/bidmachine/iab/utils/Assets;->DEF_INLINE_BANNER_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 158
    invoke-virtual {v3, v2, v2, v2, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->setMargin(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 160
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    sput-object v0, Lio/bidmachine/iab/utils/Assets;->DEF_LOADING_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 161
    invoke-virtual {v0, v8}, Lio/bidmachine/iab/utils/IabElementStyle;->setHorizontalPosition(Ljava/lang/Integer;)V

    .line 162
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setVerticalPosition(Ljava/lang/Integer;)V

    .line 163
    invoke-virtual {v0, v4, v4, v4, v4}, Lio/bidmachine/iab/utils/IabElementStyle;->setPadding(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 164
    invoke-virtual {v0, v6}, Lio/bidmachine/iab/utils/IabElementStyle;->setStrokeWidth(Ljava/lang/Float;)V

    move-object/from16 v1, v16

    .line 165
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setWidth(Ljava/lang/Number;)V

    .line 166
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setHeight(Ljava/lang/Number;)V

    .line 168
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    sput-object v0, Lio/bidmachine/iab/utils/Assets;->DEF_VIDEO_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 169
    invoke-virtual {v0, v14}, Lio/bidmachine/iab/utils/IabElementStyle;->setHorizontalPosition(Ljava/lang/Integer;)V

    .line 170
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setVerticalPosition(Ljava/lang/Integer;)V

    const/high16 v1, -0x1000000

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setFillColor(Ljava/lang/Integer;)V

    .line 172
    const-string v1, "fullscreen"

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setStyle(Ljava/lang/String;)V

    return-void
.end method

.method public static getBitmapFromBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedString"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 2
    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static resolveDefCloseStyle(Landroid/content/Context;Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "targetStyle"
        }
    .end annotation

    if-eqz p1, :cond_2b

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->getStyle()Ljava/lang/String;

    move-result-object p0

    const-string v0, "crossfill"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->getStyle()Ljava/lang/String;

    move-result-object p0

    const-string p1, "skipfill"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 3
    :cond_1a
    new-instance p0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {p0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->setOutlined(Ljava/lang/Boolean;)V

    .line 5
    sget-object p1, Lio/bidmachine/iab/utils/Assets;->DEF_CLOSE_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-virtual {p1, p0}, Lio/bidmachine/iab/utils/IabElementStyle;->copyWith(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2b
    sget-object p0, Lio/bidmachine/iab/utils/Assets;->DEF_CLOSE_STYLE:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object p0
.end method

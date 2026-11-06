###### Class com.explorestack.protobuf.adcom.CreativeAttribute (com.explorestack.protobuf.adcom.CreativeAttribute)
.class public final enum Lcom/explorestack/protobuf/adcom/CreativeAttribute;
.super Ljava/lang/Enum;
.source "CreativeAttribute.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/adcom/CreativeAttribute;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/adcom/CreativeAttribute;

.field public static final enum CREATIVE_ATTRIBUTE_ADOBE_FLASH:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

.field public static final CREATIVE_ATTRIBUTE_ADOBE_FLASH_VALUE:I = 0x11

.field public static final enum CREATIVE_ATTRIBUTE_AD_PROVIDES_SKIP_BUTTON:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

.field public static final CREATIVE_ATTRIBUTE_AD_PROVIDES_SKIP_BUTTON_VALUE:I = 0x10

.field public static final enum CREATIVE_ATTRIBUTE_ALERT_STYLE:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

.field public static final CREATIVE_ATTRIBUTE_ALERT_STYLE_VALUE:I = 0xe

.field public static final enum CREATIVE_ATTRIBUTE_AUDIO_AD_AUTOPLAY:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

.field public static final CREATIVE_ATTRIBUTE_AUDIO_AD_AUTOPLAY_VALUE:I = 0x1

.field public static final enum CREATIVE_ATTRIBUTE_AUDIO_AD_USER_INITIATED:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

.field public static final CREATIVE_ATTRIBUTE_AUDIO_AD_USER_INITIATED_VALUE:I = 0x2

.field public static final enum CREATIVE_ATTRIBUTE_EXPANDABLE_AUTOMATIC:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

.field public static final CREATIVE_ATTRIBUTE_EXPANDABLE_AUTOMATIC_VALUE:I = 0x3

.field public static final enum CREATIVE_ATTRIBUTE_EXPANDABLE_USER_INITIATED_CLICK:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

.field public static final CREATIVE_ATTRIBUTE_EXPANDABLE_USER_INITIATED_CLICK_VALUE:I = 0x4

.field public static final enum CREATIVE_ATTRIBUTE_EXPANDABLE_USER_INITIATED_ROLLOVER:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

.field public static final CREATIVE_ATTRIBUTE_EXPANDABLE_USER_INITIATED_ROLLOVER_VALUE:I = 0x5

.field public static final enum CREATIVE_ATTRIBUTE_EXTREME_ANIMATION:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

.field public static final CREATIVE_ATTRIBUTE_EXTREME_ANIMATION_VALUE:I = 0xa

.field public static final enum CREATIVE_ATTRIBUTE_HAS_AUDIO_ON_OFF_BUTTON:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

.field public static final CREATIVE_ATTRIBUTE_HAS_AUDIO_ON_OFF_BUTTON_VALUE:I = 0xf

.field public static final enum CREATIVE_ATTRIBUTE_INVALID:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

.field public static final CREATIVE_ATTRIBUTE_INVALID_VALUE:I = 0x0

.field public static final enum CREATIVE_ATTRIBUTE_IN_BANNER_VIDEO_AD_AUTOPLAY:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

.field public static final CREATIVE_ATTRIBUTE_IN_BANNER_VIDEO_AD_AUTOPLAY_VALUE:I = 0x6

.field public static final enum CREATIVE_ATTRIBUTE_IN_BANNER_VIDEO_AD_USER_INITIATED:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

.field public static final CREATIVE_ATTRIBUTE_IN_BANNER_VIDEO_AD_USER_INITIATED_VALUE:I = 0x7

.field public static final enum CREATIVE_ATTRIBUTE_POP:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

.field public static final CREATIVE_ATTRIBUTE_POP_VALUE:I = 0x8

.field public static final enum CREATIVE_ATTRIBUTE_PROVOCATIVE_SUGGESTIVE_IMAGERY:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

.field public static final CREATIVE_ATTRIBUTE_PROVOCATIVE_SUGGESTIVE_IMAGERY_VALUE:I = 0x9

.field public static final enum CREATIVE_ATTRIBUTE_RESPONSIVE:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

.field public static final CREATIVE_ATTRIBUTE_RESPONSIVE_VALUE:I = 0x12

.field public static final enum CREATIVE_ATTRIBUTE_SURVEYS:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

.field public static final CREATIVE_ATTRIBUTE_SURVEYS_VALUE:I = 0xb

.field public static final enum CREATIVE_ATTRIBUTE_TEXT_ONLY:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

.field public static final CREATIVE_ATTRIBUTE_TEXT_ONLY_VALUE:I = 0xc

.field public static final enum CREATIVE_ATTRIBUTE_USER_INTERACTIVE:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

.field public static final CREATIVE_ATTRIBUTE_USER_INTERACTIVE_VALUE:I = 0xd

.field public static final enum UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

.field private static final VALUES:[Lcom/explorestack/protobuf/adcom/CreativeAttribute;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/explorestack/protobuf/adcom/CreativeAttribute;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 23

    .line 14
    new-instance v1, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    const-string v0, "CREATIVE_ATTRIBUTE_INVALID"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_INVALID:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 18
    new-instance v2, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    const-string v0, "CREATIVE_ATTRIBUTE_AUDIO_AD_AUTOPLAY"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v3}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_AUDIO_AD_AUTOPLAY:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 22
    new-instance v3, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    const-string v0, "CREATIVE_ATTRIBUTE_AUDIO_AD_USER_INITIATED"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4, v4}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_AUDIO_AD_USER_INITIATED:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 26
    new-instance v4, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    const-string v0, "CREATIVE_ATTRIBUTE_EXPANDABLE_AUTOMATIC"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5, v5}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_EXPANDABLE_AUTOMATIC:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 30
    new-instance v5, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    const-string v0, "CREATIVE_ATTRIBUTE_EXPANDABLE_USER_INITIATED_CLICK"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6, v6}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_EXPANDABLE_USER_INITIATED_CLICK:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 34
    new-instance v6, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    const-string v0, "CREATIVE_ATTRIBUTE_EXPANDABLE_USER_INITIATED_ROLLOVER"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7, v7}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_EXPANDABLE_USER_INITIATED_ROLLOVER:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 38
    new-instance v7, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    const-string v0, "CREATIVE_ATTRIBUTE_IN_BANNER_VIDEO_AD_AUTOPLAY"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8, v8}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_IN_BANNER_VIDEO_AD_AUTOPLAY:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 42
    new-instance v8, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    const-string v0, "CREATIVE_ATTRIBUTE_IN_BANNER_VIDEO_AD_USER_INITIATED"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9, v9}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_IN_BANNER_VIDEO_AD_USER_INITIATED:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 46
    new-instance v9, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    const-string v0, "CREATIVE_ATTRIBUTE_POP"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10, v10}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_POP:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 50
    new-instance v10, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    const-string v0, "CREATIVE_ATTRIBUTE_PROVOCATIVE_SUGGESTIVE_IMAGERY"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11, v11}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_PROVOCATIVE_SUGGESTIVE_IMAGERY:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 54
    new-instance v11, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    const-string v0, "CREATIVE_ATTRIBUTE_EXTREME_ANIMATION"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12, v12}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_EXTREME_ANIMATION:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 58
    new-instance v12, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    const-string v0, "CREATIVE_ATTRIBUTE_SURVEYS"

    const/16 v13, 0xb

    invoke-direct {v12, v0, v13, v13}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_SURVEYS:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 62
    new-instance v13, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    const-string v0, "CREATIVE_ATTRIBUTE_TEXT_ONLY"

    const/16 v14, 0xc

    invoke-direct {v13, v0, v14, v14}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_TEXT_ONLY:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 66
    new-instance v14, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    const-string v0, "CREATIVE_ATTRIBUTE_USER_INTERACTIVE"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15, v15}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_USER_INTERACTIVE:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 70
    new-instance v15, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    const-string v0, "CREATIVE_ATTRIBUTE_ALERT_STYLE"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v15, v0, v1, v1}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_ALERT_STYLE:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 74
    new-instance v0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    const-string v1, "CREATIVE_ATTRIBUTE_HAS_AUDIO_ON_OFF_BUTTON"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_HAS_AUDIO_ON_OFF_BUTTON:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 78
    new-instance v1, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    const-string v2, "CREATIVE_ATTRIBUTE_AD_PROVIDES_SKIP_BUTTON"

    move-object/from16 v18, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0, v0}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_AD_PROVIDES_SKIP_BUTTON:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 82
    new-instance v0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    const-string v2, "CREATIVE_ATTRIBUTE_ADOBE_FLASH"

    move-object/from16 v19, v1

    const/16 v1, 0x11

    invoke-direct {v0, v2, v1, v1}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_ADOBE_FLASH:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 86
    new-instance v1, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    const-string v2, "CREATIVE_ATTRIBUTE_RESPONSIVE"

    move-object/from16 v20, v0

    const/16 v0, 0x12

    invoke-direct {v1, v2, v0, v0}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_RESPONSIVE:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 87
    new-instance v0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    const/16 v2, 0x13

    move-object/from16 v21, v1

    const/4 v1, -0x1

    move-object/from16 v22, v3

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v2, v1}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v3, v22

    move-object/from16 v20, v0

    .line 9
    filled-new-array/range {v1 .. v20}, [Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->$VALUES:[Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    .line 220
    new-instance v0, Lcom/explorestack/protobuf/adcom/CreativeAttribute$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/CreativeAttribute$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 244
    invoke-static {}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->values()[Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->VALUES:[Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 260
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 261
    iput p3, p0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/adcom/CreativeAttribute;
    .registers 1

    packed-switch p0, :pswitch_data_3e

    const/4 p0, 0x0

    return-object p0

    .line 210
    :pswitch_5
    sget-object p0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_RESPONSIVE:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p0

    .line 209
    :pswitch_8
    sget-object p0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_ADOBE_FLASH:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p0

    .line 208
    :pswitch_b
    sget-object p0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_AD_PROVIDES_SKIP_BUTTON:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p0

    .line 207
    :pswitch_e
    sget-object p0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_HAS_AUDIO_ON_OFF_BUTTON:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p0

    .line 206
    :pswitch_11
    sget-object p0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_ALERT_STYLE:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p0

    .line 205
    :pswitch_14
    sget-object p0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_USER_INTERACTIVE:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p0

    .line 204
    :pswitch_17
    sget-object p0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_TEXT_ONLY:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p0

    .line 203
    :pswitch_1a
    sget-object p0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_SURVEYS:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p0

    .line 202
    :pswitch_1d
    sget-object p0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_EXTREME_ANIMATION:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p0

    .line 201
    :pswitch_20
    sget-object p0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_PROVOCATIVE_SUGGESTIVE_IMAGERY:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p0

    .line 200
    :pswitch_23
    sget-object p0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_POP:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p0

    .line 199
    :pswitch_26
    sget-object p0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_IN_BANNER_VIDEO_AD_USER_INITIATED:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p0

    .line 198
    :pswitch_29
    sget-object p0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_IN_BANNER_VIDEO_AD_AUTOPLAY:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p0

    .line 197
    :pswitch_2c
    sget-object p0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_EXPANDABLE_USER_INITIATED_ROLLOVER:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p0

    .line 196
    :pswitch_2f
    sget-object p0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_EXPANDABLE_USER_INITIATED_CLICK:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p0

    .line 195
    :pswitch_32
    sget-object p0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_EXPANDABLE_AUTOMATIC:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p0

    .line 194
    :pswitch_35
    sget-object p0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_AUDIO_AD_USER_INITIATED:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p0

    .line 193
    :pswitch_38
    sget-object p0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_AUDIO_AD_AUTOPLAY:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p0

    .line 192
    :pswitch_3b
    sget-object p0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->CREATIVE_ATTRIBUTE_INVALID:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p0

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 241
    invoke-static {}, Lcom/explorestack/protobuf/adcom/AdcomProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/explorestack/protobuf/adcom/CreativeAttribute;",
            ">;"
        }
    .end annotation

    .line 217
    sget-object v0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/adcom/CreativeAttribute;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->forNumber(I)Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/explorestack/protobuf/adcom/CreativeAttribute;
    .registers 3

    .line 248
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 252
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 253
    sget-object p0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p0

    .line 255
    :cond_14
    sget-object v0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->VALUES:[Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 249
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/CreativeAttribute;
    .registers 2

    .line 9
    const-class v0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/adcom/CreativeAttribute;
    .registers 1

    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->$VALUES:[Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/adcom/CreativeAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 237
    invoke-static {}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .registers 3

    .line 169
    sget-object v0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    if-eq p0, v0, :cond_7

    .line 173
    iget v0, p0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->value:I

    return v0

    .line 170
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .registers 3

    .line 229
    sget-object v0, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    if-eq p0, v0, :cond_17

    .line 233
    invoke-static {}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0

    .line 230
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.explorestack.protobuf.adcom.CreativeAttribute.AnonymousClass1 (com.explorestack.protobuf.adcom.CreativeAttribute$1)
.class Lcom/explorestack/protobuf/adcom/CreativeAttribute$1;
.super Ljava/lang/Object;
.source "CreativeAttribute.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/CreativeAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lcom/explorestack/protobuf/adcom/CreativeAttribute;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .registers 2

    .line 221
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/CreativeAttribute$1;->findValueByNumber(I)Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lcom/explorestack/protobuf/adcom/CreativeAttribute;
    .registers 2

    .line 223
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/CreativeAttribute;->forNumber(I)Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    move-result-object p1

    return-object p1
.end method

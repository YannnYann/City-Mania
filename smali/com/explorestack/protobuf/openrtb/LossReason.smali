###### Class com.explorestack.protobuf.openrtb.LossReason (com.explorestack.protobuf.openrtb.LossReason)
.class public final enum Lcom/explorestack/protobuf/openrtb/LossReason;
.super Ljava/lang/Enum;
.source "LossReason.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/openrtb/LossReason;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final enum LOSS_REASON_BELOW_AUCTION_FLOOR:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_BELOW_AUCTION_FLOOR_VALUE:I = 0x64

.field public static final enum LOSS_REASON_BELOW_DEAL_FLOOR:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_BELOW_DEAL_FLOOR_VALUE:I = 0x65

.field public static final enum LOSS_REASON_BID_WON:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_BID_WON_VALUE:I = 0x0

.field public static final enum LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE:I = 0xcd

.field public static final enum LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE:I = 0xd2

.field public static final enum LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG_VALUE:I = 0xd3

.field public static final enum LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE:I = 0xd0

.field public static final enum LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS_VALUE:I = 0xd1

.field public static final enum LOSS_REASON_CREATIVE_FILTERED_DISAPPROVED:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_CREATIVE_FILTERED_DISAPPROVED_VALUE:I = 0xca

.field public static final enum LOSS_REASON_CREATIVE_FILTERED_GENERAL:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_CREATIVE_FILTERED_GENERAL_VALUE:I = 0xc8

.field public static final enum LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE:I = 0xcc

.field public static final enum LOSS_REASON_CREATIVE_FILTERED_LANGUAGE_EXCLUSIONS:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_CREATIVE_FILTERED_LANGUAGE_EXCLUSIONS_VALUE:I = 0xcf

.field public static final enum LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL_VALUE:I = 0xd4

.field public static final enum LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE_VALUE:I = 0xce

.field public static final enum LOSS_REASON_CREATIVE_FILTERED_PENDING_PROCESSING:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_CREATIVE_FILTERED_PENDING_PROCESSING_VALUE:I = 0xc9

.field public static final enum LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED_VALUE:I = 0xcb

.field public static final enum LOSS_REASON_IMPRESSION_OPPORTUNITY_EXPIRED:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_IMPRESSION_OPPORTUNITY_EXPIRED_VALUE:I = 0x2

.field public static final enum LOSS_REASON_INTERNAL_ERROR:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_INTERNAL_ERROR_VALUE:I = 0x1

.field public static final enum LOSS_REASON_INVALID_ADVERTISER_DOMAIN:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_INVALID_ADVERTISER_DOMAIN_VALUE:I = 0x6

.field public static final enum LOSS_REASON_INVALID_AUCTION_ID:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_INVALID_AUCTION_ID_VALUE:I = 0x5

.field public static final enum LOSS_REASON_INVALID_BID_RESPONSE:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_INVALID_BID_RESPONSE_VALUE:I = 0x3

.field public static final enum LOSS_REASON_INVALID_DEAL_ID:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_INVALID_DEAL_ID_VALUE:I = 0x4

.field public static final enum LOSS_REASON_LOST_TO_A_DEAL:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_LOST_TO_A_DEAL_VALUE:I = 0x67

.field public static final enum LOSS_REASON_LOST_TO_HIGHER_BID:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_LOST_TO_HIGHER_BID_VALUE:I = 0x66

.field public static final enum LOSS_REASON_MISSING_BID_PRICE:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_MISSING_BID_PRICE_VALUE:I = 0x9

.field public static final enum LOSS_REASON_MISSING_CREATIVE_APPROVAL_DATA:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_MISSING_CREATIVE_APPROVAL_DATA_VALUE:I = 0xa

.field public static final enum LOSS_REASON_MISSING_CREATIVE_ID:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_MISSING_CREATIVE_ID_VALUE:I = 0x8

.field public static final enum LOSS_REASON_MISSING_MARKUP:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_MISSING_MARKUP_VALUE:I = 0x7

.field public static final enum LOSS_REASON_SEAT_BLOCKED:Lcom/explorestack/protobuf/openrtb/LossReason;

.field public static final LOSS_REASON_SEAT_BLOCKED_VALUE:I = 0x68

.field public static final enum UNRECOGNIZED:Lcom/explorestack/protobuf/openrtb/LossReason;

.field private static final VALUES:[Lcom/explorestack/protobuf/openrtb/LossReason;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/explorestack/protobuf/openrtb/LossReason;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 33

    .line 19
    new-instance v1, Lcom/explorestack/protobuf/openrtb/LossReason;

    const-string v0, "LOSS_REASON_BID_WON"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_BID_WON:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 23
    new-instance v2, Lcom/explorestack/protobuf/openrtb/LossReason;

    const-string v0, "LOSS_REASON_INTERNAL_ERROR"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v3}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_INTERNAL_ERROR:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 27
    new-instance v3, Lcom/explorestack/protobuf/openrtb/LossReason;

    const-string v0, "LOSS_REASON_IMPRESSION_OPPORTUNITY_EXPIRED"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4, v4}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_IMPRESSION_OPPORTUNITY_EXPIRED:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 31
    new-instance v4, Lcom/explorestack/protobuf/openrtb/LossReason;

    const-string v0, "LOSS_REASON_INVALID_BID_RESPONSE"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5, v5}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_INVALID_BID_RESPONSE:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 35
    new-instance v5, Lcom/explorestack/protobuf/openrtb/LossReason;

    const-string v0, "LOSS_REASON_INVALID_DEAL_ID"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6, v6}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_INVALID_DEAL_ID:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 39
    new-instance v6, Lcom/explorestack/protobuf/openrtb/LossReason;

    const-string v0, "LOSS_REASON_INVALID_AUCTION_ID"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7, v7}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_INVALID_AUCTION_ID:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 43
    new-instance v7, Lcom/explorestack/protobuf/openrtb/LossReason;

    const-string v0, "LOSS_REASON_INVALID_ADVERTISER_DOMAIN"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8, v8}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_INVALID_ADVERTISER_DOMAIN:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 47
    new-instance v8, Lcom/explorestack/protobuf/openrtb/LossReason;

    const-string v0, "LOSS_REASON_MISSING_MARKUP"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9, v9}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_MISSING_MARKUP:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 51
    new-instance v9, Lcom/explorestack/protobuf/openrtb/LossReason;

    const-string v0, "LOSS_REASON_MISSING_CREATIVE_ID"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10, v10}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_MISSING_CREATIVE_ID:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 55
    new-instance v10, Lcom/explorestack/protobuf/openrtb/LossReason;

    const-string v0, "LOSS_REASON_MISSING_BID_PRICE"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11, v11}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_MISSING_BID_PRICE:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 59
    new-instance v11, Lcom/explorestack/protobuf/openrtb/LossReason;

    const-string v0, "LOSS_REASON_MISSING_CREATIVE_APPROVAL_DATA"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12, v12}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_MISSING_CREATIVE_APPROVAL_DATA:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 63
    new-instance v12, Lcom/explorestack/protobuf/openrtb/LossReason;

    const/16 v0, 0xb

    const/16 v13, 0x64

    const-string v14, "LOSS_REASON_BELOW_AUCTION_FLOOR"

    invoke-direct {v12, v14, v0, v13}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_BELOW_AUCTION_FLOOR:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 67
    new-instance v13, Lcom/explorestack/protobuf/openrtb/LossReason;

    const/16 v0, 0xc

    const/16 v14, 0x65

    const-string v15, "LOSS_REASON_BELOW_DEAL_FLOOR"

    invoke-direct {v13, v15, v0, v14}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_BELOW_DEAL_FLOOR:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 71
    new-instance v14, Lcom/explorestack/protobuf/openrtb/LossReason;

    const/16 v0, 0xd

    const/16 v15, 0x66

    move-object/from16 v16, v1

    const-string v1, "LOSS_REASON_LOST_TO_HIGHER_BID"

    invoke-direct {v14, v1, v0, v15}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_LOST_TO_HIGHER_BID:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 75
    new-instance v15, Lcom/explorestack/protobuf/openrtb/LossReason;

    const/16 v0, 0xe

    const/16 v1, 0x67

    move-object/from16 v17, v2

    const-string v2, "LOSS_REASON_LOST_TO_A_DEAL"

    invoke-direct {v15, v2, v0, v1}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_LOST_TO_A_DEAL:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 79
    new-instance v0, Lcom/explorestack/protobuf/openrtb/LossReason;

    const/16 v1, 0xf

    const/16 v2, 0x68

    move-object/from16 v18, v3

    const-string v3, "LOSS_REASON_SEAT_BLOCKED"

    invoke-direct {v0, v3, v1, v2}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_SEAT_BLOCKED:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 83
    new-instance v1, Lcom/explorestack/protobuf/openrtb/LossReason;

    const/16 v2, 0x10

    const/16 v3, 0xc8

    move-object/from16 v19, v0

    const-string v0, "LOSS_REASON_CREATIVE_FILTERED_GENERAL"

    invoke-direct {v1, v0, v2, v3}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_GENERAL:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 87
    new-instance v0, Lcom/explorestack/protobuf/openrtb/LossReason;

    const/16 v2, 0x11

    const/16 v3, 0xc9

    move-object/from16 v20, v1

    const-string v1, "LOSS_REASON_CREATIVE_FILTERED_PENDING_PROCESSING"

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_PENDING_PROCESSING:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 91
    new-instance v1, Lcom/explorestack/protobuf/openrtb/LossReason;

    const/16 v2, 0x12

    const/16 v3, 0xca

    move-object/from16 v21, v0

    const-string v0, "LOSS_REASON_CREATIVE_FILTERED_DISAPPROVED"

    invoke-direct {v1, v0, v2, v3}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_DISAPPROVED:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 95
    new-instance v0, Lcom/explorestack/protobuf/openrtb/LossReason;

    const/16 v2, 0x13

    const/16 v3, 0xcb

    move-object/from16 v22, v1

    const-string v1, "LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED"

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 99
    new-instance v1, Lcom/explorestack/protobuf/openrtb/LossReason;

    const/16 v2, 0x14

    const/16 v3, 0xcc

    move-object/from16 v23, v0

    const-string v0, "LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT"

    invoke-direct {v1, v0, v2, v3}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 103
    new-instance v0, Lcom/explorestack/protobuf/openrtb/LossReason;

    const/16 v2, 0x15

    const/16 v3, 0xcd

    move-object/from16 v24, v1

    const-string v1, "LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS"

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 107
    new-instance v1, Lcom/explorestack/protobuf/openrtb/LossReason;

    const/16 v2, 0x16

    const/16 v3, 0xce

    move-object/from16 v25, v0

    const-string v0, "LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE"

    invoke-direct {v1, v0, v2, v3}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 111
    new-instance v0, Lcom/explorestack/protobuf/openrtb/LossReason;

    const/16 v2, 0x17

    const/16 v3, 0xcf

    move-object/from16 v26, v1

    const-string v1, "LOSS_REASON_CREATIVE_FILTERED_LANGUAGE_EXCLUSIONS"

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_LANGUAGE_EXCLUSIONS:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 115
    new-instance v1, Lcom/explorestack/protobuf/openrtb/LossReason;

    const/16 v2, 0x18

    const/16 v3, 0xd0

    move-object/from16 v27, v0

    const-string v0, "LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS"

    invoke-direct {v1, v0, v2, v3}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 119
    new-instance v0, Lcom/explorestack/protobuf/openrtb/LossReason;

    const/16 v2, 0x19

    const/16 v3, 0xd1

    move-object/from16 v28, v1

    const-string v1, "LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS"

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 123
    new-instance v1, Lcom/explorestack/protobuf/openrtb/LossReason;

    const/16 v2, 0x1a

    const/16 v3, 0xd2

    move-object/from16 v29, v0

    const-string v0, "LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS"

    invoke-direct {v1, v0, v2, v3}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 127
    new-instance v0, Lcom/explorestack/protobuf/openrtb/LossReason;

    const/16 v2, 0x1b

    const/16 v3, 0xd3

    move-object/from16 v30, v1

    const-string v1, "LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG"

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 131
    new-instance v1, Lcom/explorestack/protobuf/openrtb/LossReason;

    const/16 v2, 0x1c

    const/16 v3, 0xd4

    move-object/from16 v31, v0

    const-string v0, "LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL"

    invoke-direct {v1, v0, v2, v3}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL:Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 132
    new-instance v0, Lcom/explorestack/protobuf/openrtb/LossReason;

    const/16 v2, 0x1d

    const/4 v3, -0x1

    move-object/from16 v32, v1

    const-string v1, "UNRECOGNIZED"

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/openrtb/LossReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/LossReason;->UNRECOGNIZED:Lcom/explorestack/protobuf/openrtb/LossReason;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    move-object/from16 v19, v22

    move-object/from16 v20, v23

    move-object/from16 v21, v24

    move-object/from16 v22, v25

    move-object/from16 v23, v26

    move-object/from16 v24, v27

    move-object/from16 v25, v28

    move-object/from16 v26, v29

    move-object/from16 v27, v30

    move-object/from16 v28, v31

    move-object/from16 v29, v32

    move-object/from16 v30, v0

    .line 14
    filled-new-array/range {v1 .. v30}, [Lcom/explorestack/protobuf/openrtb/LossReason;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/openrtb/LossReason;->$VALUES:[Lcom/explorestack/protobuf/openrtb/LossReason;

    .line 315
    new-instance v0, Lcom/explorestack/protobuf/openrtb/LossReason$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/LossReason$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/LossReason;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 339
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/LossReason;->values()[Lcom/explorestack/protobuf/openrtb/LossReason;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/openrtb/LossReason;->VALUES:[Lcom/explorestack/protobuf/openrtb/LossReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 355
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 356
    iput p3, p0, Lcom/explorestack/protobuf/openrtb/LossReason;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/openrtb/LossReason;
    .registers 1

    packed-switch p0, :pswitch_data_62

    packed-switch p0, :pswitch_data_7c

    packed-switch p0, :pswitch_data_8a

    const/4 p0, 0x0

    return-object p0

    .line 305
    :pswitch_b
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 304
    :pswitch_e
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 303
    :pswitch_11
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 302
    :pswitch_14
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 301
    :pswitch_17
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 300
    :pswitch_1a
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_LANGUAGE_EXCLUSIONS:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 299
    :pswitch_1d
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 298
    :pswitch_20
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 297
    :pswitch_23
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 296
    :pswitch_26
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 295
    :pswitch_29
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_DISAPPROVED:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 294
    :pswitch_2c
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_PENDING_PROCESSING:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 293
    :pswitch_2f
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_CREATIVE_FILTERED_GENERAL:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 292
    :pswitch_32
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_SEAT_BLOCKED:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 291
    :pswitch_35
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_LOST_TO_A_DEAL:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 290
    :pswitch_38
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_LOST_TO_HIGHER_BID:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 289
    :pswitch_3b
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_BELOW_DEAL_FLOOR:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 288
    :pswitch_3e
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_BELOW_AUCTION_FLOOR:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 287
    :pswitch_41
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_MISSING_CREATIVE_APPROVAL_DATA:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 286
    :pswitch_44
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_MISSING_BID_PRICE:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 285
    :pswitch_47
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_MISSING_CREATIVE_ID:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 284
    :pswitch_4a
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_MISSING_MARKUP:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 283
    :pswitch_4d
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_INVALID_ADVERTISER_DOMAIN:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 282
    :pswitch_50
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_INVALID_AUCTION_ID:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 281
    :pswitch_53
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_INVALID_DEAL_ID:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 280
    :pswitch_56
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_INVALID_BID_RESPONSE:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 279
    :pswitch_59
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_IMPRESSION_OPPORTUNITY_EXPIRED:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 278
    :pswitch_5c
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_INTERNAL_ERROR:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 277
    :pswitch_5f
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->LOSS_REASON_BID_WON:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
    .end packed-switch

    :pswitch_data_7c
    .packed-switch 0x64
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
    .end packed-switch

    :pswitch_data_8a
    .packed-switch 0xc8
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
    .end packed-switch
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 336
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

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
            "Lcom/explorestack/protobuf/openrtb/LossReason;",
            ">;"
        }
    .end annotation

    .line 312
    sget-object v0, Lcom/explorestack/protobuf/openrtb/LossReason;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/openrtb/LossReason;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 268
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/LossReason;->forNumber(I)Lcom/explorestack/protobuf/openrtb/LossReason;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/explorestack/protobuf/openrtb/LossReason;
    .registers 3

    .line 343
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/explorestack/protobuf/openrtb/LossReason;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 348
    sget-object p0, Lcom/explorestack/protobuf/openrtb/LossReason;->UNRECOGNIZED:Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0

    .line 350
    :cond_14
    sget-object v0, Lcom/explorestack/protobuf/openrtb/LossReason;->VALUES:[Lcom/explorestack/protobuf/openrtb/LossReason;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 344
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/LossReason;
    .registers 2

    .line 14
    const-class v0, Lcom/explorestack/protobuf/openrtb/LossReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/openrtb/LossReason;
    .registers 1

    .line 14
    sget-object v0, Lcom/explorestack/protobuf/openrtb/LossReason;->$VALUES:[Lcom/explorestack/protobuf/openrtb/LossReason;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/openrtb/LossReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/openrtb/LossReason;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 332
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/LossReason;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .registers 3

    .line 254
    sget-object v0, Lcom/explorestack/protobuf/openrtb/LossReason;->UNRECOGNIZED:Lcom/explorestack/protobuf/openrtb/LossReason;

    if-eq p0, v0, :cond_7

    .line 258
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/LossReason;->value:I

    return v0

    .line 255
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .registers 3

    .line 324
    sget-object v0, Lcom/explorestack/protobuf/openrtb/LossReason;->UNRECOGNIZED:Lcom/explorestack/protobuf/openrtb/LossReason;

    if-eq p0, v0, :cond_17

    .line 328
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/LossReason;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0

    .line 325
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.explorestack.protobuf.openrtb.LossReason.AnonymousClass1 (com.explorestack.protobuf.openrtb.LossReason$1)
.class public Lcom/explorestack/protobuf/openrtb/LossReason$1;
.super Ljava/lang/Object;
.source "LossReason.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/LossReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lcom/explorestack/protobuf/openrtb/LossReason;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .registers 2

    .line 316
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/LossReason$1;->findValueByNumber(I)Lcom/explorestack/protobuf/openrtb/LossReason;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lcom/explorestack/protobuf/openrtb/LossReason;
    .registers 2

    .line 318
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/LossReason;->forNumber(I)Lcom/explorestack/protobuf/openrtb/LossReason;

    move-result-object p1

    return-object p1
.end method

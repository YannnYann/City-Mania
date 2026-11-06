###### Class com.explorestack.protobuf.adcom.NativeDataAssetType (com.explorestack.protobuf.adcom.NativeDataAssetType)
.class public final enum Lcom/explorestack/protobuf/adcom/NativeDataAssetType;
.super Ljava/lang/Enum;
.source "NativeDataAssetType.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/adcom/NativeDataAssetType;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final enum NATIVE_DATA_ASSET_TYPE_ADDRESS:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_ADDRESS_VALUE:I = 0x9

.field public static final enum NATIVE_DATA_ASSET_TYPE_CTA_TEXT:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_CTA_TEXT_VALUE:I = 0xc

.field public static final enum NATIVE_DATA_ASSET_TYPE_DESC:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final enum NATIVE_DATA_ASSET_TYPE_DESC2:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_DESC2_VALUE:I = 0xa

.field public static final NATIVE_DATA_ASSET_TYPE_DESC_VALUE:I = 0x2

.field public static final enum NATIVE_DATA_ASSET_TYPE_DISCLAIMER:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_DISCLAIMER_VALUE:I = 0xe

.field public static final enum NATIVE_DATA_ASSET_TYPE_DISPLAY_URL:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_DISPLAY_URL_VALUE:I = 0xb

.field public static final enum NATIVE_DATA_ASSET_TYPE_DOWNLOADS:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_DOWNLOADS_VALUE:I = 0x5

.field public static final enum NATIVE_DATA_ASSET_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_INVALID_VALUE:I = 0x0

.field public static final enum NATIVE_DATA_ASSET_TYPE_LIKES:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_LIKES_VALUE:I = 0x4

.field public static final enum NATIVE_DATA_ASSET_TYPE_PHONE:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_PHONE_VALUE:I = 0x8

.field public static final enum NATIVE_DATA_ASSET_TYPE_PRICE:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_PRICE_VALUE:I = 0x6

.field public static final enum NATIVE_DATA_ASSET_TYPE_PRIVACY_SHEET:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_PRIVACY_SHEET_VALUE:I = 0xd

.field public static final enum NATIVE_DATA_ASSET_TYPE_RATING:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_RATING_VALUE:I = 0x3

.field public static final enum NATIVE_DATA_ASSET_TYPE_SALE_PRICE:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_SALE_PRICE_VALUE:I = 0x7

.field public static final enum NATIVE_DATA_ASSET_TYPE_SPONSORED:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field public static final NATIVE_DATA_ASSET_TYPE_SPONSORED_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field private static final VALUES:[Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/explorestack/protobuf/adcom/NativeDataAssetType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .line 14
    new-instance v1, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v0, "NATIVE_DATA_ASSET_TYPE_INVALID"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 23
    new-instance v2, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v0, "NATIVE_DATA_ASSET_TYPE_SPONSORED"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v3}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_SPONSORED:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 33
    new-instance v3, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v0, "NATIVE_DATA_ASSET_TYPE_DESC"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4, v4}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_DESC:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 41
    new-instance v4, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v0, "NATIVE_DATA_ASSET_TYPE_RATING"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5, v5}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_RATING:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 49
    new-instance v5, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v0, "NATIVE_DATA_ASSET_TYPE_LIKES"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6, v6}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_LIKES:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 57
    new-instance v6, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v0, "NATIVE_DATA_ASSET_TYPE_DOWNLOADS"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7, v7}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_DOWNLOADS:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 66
    new-instance v7, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v0, "NATIVE_DATA_ASSET_TYPE_PRICE"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8, v8}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_PRICE:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 75
    new-instance v8, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v0, "NATIVE_DATA_ASSET_TYPE_SALE_PRICE"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9, v9}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_SALE_PRICE:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 83
    new-instance v9, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v0, "NATIVE_DATA_ASSET_TYPE_PHONE"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10, v10}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_PHONE:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 91
    new-instance v10, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v0, "NATIVE_DATA_ASSET_TYPE_ADDRESS"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11, v11}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_ADDRESS:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 99
    new-instance v11, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v0, "NATIVE_DATA_ASSET_TYPE_DESC2"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12, v12}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_DESC2:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 108
    new-instance v12, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v0, "NATIVE_DATA_ASSET_TYPE_DISPLAY_URL"

    const/16 v13, 0xb

    invoke-direct {v12, v0, v13, v13}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_DISPLAY_URL:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 117
    new-instance v13, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v0, "NATIVE_DATA_ASSET_TYPE_CTA_TEXT"

    const/16 v14, 0xc

    invoke-direct {v13, v0, v14, v14}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_CTA_TEXT:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 125
    new-instance v14, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v0, "NATIVE_DATA_ASSET_TYPE_PRIVACY_SHEET"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15, v15}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_PRIVACY_SHEET:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 133
    new-instance v15, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const-string v0, "NATIVE_DATA_ASSET_TYPE_DISCLAIMER"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v15, v0, v1, v1}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_DISCLAIMER:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 134
    new-instance v0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    const/16 v1, 0xf

    move-object/from16 v17, v2

    const/4 v2, -0x1

    move-object/from16 v18, v3

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v16, v0

    .line 9
    filled-new-array/range {v1 .. v16}, [Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->$VALUES:[Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    .line 310
    new-instance v0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 334
    invoke-static {}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->values()[Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->VALUES:[Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 350
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 351
    iput p3, p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/adcom/NativeDataAssetType;
    .registers 1

    packed-switch p0, :pswitch_data_32

    const/4 p0, 0x0

    return-object p0

    .line 300
    :pswitch_5
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_DISCLAIMER:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 299
    :pswitch_8
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_PRIVACY_SHEET:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 298
    :pswitch_b
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_CTA_TEXT:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 297
    :pswitch_e
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_DISPLAY_URL:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 296
    :pswitch_11
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_DESC2:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 295
    :pswitch_14
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_ADDRESS:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 294
    :pswitch_17
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_PHONE:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 293
    :pswitch_1a
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_SALE_PRICE:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 292
    :pswitch_1d
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_PRICE:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 291
    :pswitch_20
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_DOWNLOADS:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 290
    :pswitch_23
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_LIKES:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 289
    :pswitch_26
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_RATING:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 288
    :pswitch_29
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_DESC:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 287
    :pswitch_2c
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_SPONSORED:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 286
    :pswitch_2f
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->NATIVE_DATA_ASSET_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    :pswitch_data_32
    .packed-switch 0x0
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

    .line 331
    invoke-static {}, Lcom/explorestack/protobuf/adcom/AdcomProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x14

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
            "Lcom/explorestack/protobuf/adcom/NativeDataAssetType;",
            ">;"
        }
    .end annotation

    .line 307
    sget-object v0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/adcom/NativeDataAssetType;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 277
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->forNumber(I)Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/explorestack/protobuf/adcom/NativeDataAssetType;
    .registers 3

    .line 338
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 342
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 343
    sget-object p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0

    .line 345
    :cond_14
    sget-object v0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->VALUES:[Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 339
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/NativeDataAssetType;
    .registers 2

    .line 9
    const-class v0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/adcom/NativeDataAssetType;
    .registers 1

    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->$VALUES:[Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 327
    invoke-static {}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .registers 3

    .line 263
    sget-object v0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    if-eq p0, v0, :cond_7

    .line 267
    iget v0, p0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->value:I

    return v0

    .line 264
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .registers 3

    .line 319
    sget-object v0, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    if-eq p0, v0, :cond_17

    .line 323
    invoke-static {}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0

    .line 320
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.explorestack.protobuf.adcom.NativeDataAssetType.AnonymousClass1 (com.explorestack.protobuf.adcom.NativeDataAssetType$1)
.class Lcom/explorestack/protobuf/adcom/NativeDataAssetType$1;
.super Ljava/lang/Object;
.source "NativeDataAssetType.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/NativeDataAssetType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lcom/explorestack/protobuf/adcom/NativeDataAssetType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .registers 2

    .line 311
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType$1;->findValueByNumber(I)Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lcom/explorestack/protobuf/adcom/NativeDataAssetType;
    .registers 2

    .line 313
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/NativeDataAssetType;->forNumber(I)Lcom/explorestack/protobuf/adcom/NativeDataAssetType;

    move-result-object p1

    return-object p1
.end method

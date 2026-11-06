###### Class io.bidmachine.protobuf.ErrorReason (io.bidmachine.protobuf.ErrorReason)
.class public final enum Lio/bidmachine/protobuf/ErrorReason;
.super Ljava/lang/Enum;
.source "ErrorReason.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/ErrorReason;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/ErrorReason;

.field public static final enum ERROR_REASON_BAD_CONTENT:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_BAD_CONTENT_VALUE:I = 0x65

.field public static final enum ERROR_REASON_HANDLED_EXCEPTION:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_HANDLED_EXCEPTION_VALUE:I = 0x68

.field public static final enum ERROR_REASON_HB_NETWORK:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_HB_NETWORK_VALUE:I = 0xc8

.field public static final enum ERROR_REASON_HTTP_BAD_REQUEST:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_HTTP_BAD_REQUEST_VALUE:I = 0x6e

.field public static final enum ERROR_REASON_HTTP_SERVER_ERROR:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_HTTP_SERVER_ERROR_VALUE:I = 0x6d

.field public static final enum ERROR_REASON_INTERNAL:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_INTERNAL_VALUE:I = 0x6c

.field public static final enum ERROR_REASON_INVALID:Lio/bidmachine/protobuf/ErrorReason;

.field public static final enum ERROR_REASON_INVALID_JS_XHR:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_INVALID_JS_XHR_VALUE:I = 0x70

.field public static final ERROR_REASON_INVALID_VALUE:I = 0x0

.field public static final enum ERROR_REASON_MEDIA_PLAYS_IN_WRONG_STATE:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_MEDIA_PLAYS_IN_WRONG_STATE_VALUE:I = 0x71

.field public static final enum ERROR_REASON_NO_CONNECTION:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_NO_CONNECTION_VALUE:I = 0x64

.field public static final enum ERROR_REASON_NO_CONTENT:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_NO_CONTENT_VALUE:I = 0x67

.field public static final enum ERROR_REASON_PLACEHOLDER_TIMEOUT:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_PLACEHOLDER_TIMEOUT_VALUE:I = 0xc9

.field public static final enum ERROR_REASON_TIMEOUT:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_TIMEOUT_VALUE:I = 0x66

.field public static final enum ERROR_REASON_WAS_CLOSED:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_WAS_CLOSED_VALUE:I = 0x69

.field public static final enum ERROR_REASON_WAS_DESTROYED:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_WAS_DESTROYED_VALUE:I = 0x6a

.field public static final enum ERROR_REASON_WAS_EXPIRED:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_WAS_EXPIRED_VALUE:I = 0x6b

.field public static final enum ERROR_REASON_WAS_USED_ALREADY:Lio/bidmachine/protobuf/ErrorReason;

.field public static final ERROR_REASON_WAS_USED_ALREADY_VALUE:I = 0x6f

.field public static final enum UNRECOGNIZED:Lio/bidmachine/protobuf/ErrorReason;

.field private static final VALUES:[Lio/bidmachine/protobuf/ErrorReason;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lio/bidmachine/protobuf/ErrorReason;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 21

    .line 19
    new-instance v1, Lio/bidmachine/protobuf/ErrorReason;

    const-string v0, "ERROR_REASON_INVALID"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_INVALID:Lio/bidmachine/protobuf/ErrorReason;

    .line 23
    new-instance v2, Lio/bidmachine/protobuf/ErrorReason;

    const/4 v0, 0x1

    const/16 v3, 0x64

    const-string v4, "ERROR_REASON_NO_CONNECTION"

    invoke-direct {v2, v4, v0, v3}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_NO_CONNECTION:Lio/bidmachine/protobuf/ErrorReason;

    .line 27
    new-instance v3, Lio/bidmachine/protobuf/ErrorReason;

    const/4 v0, 0x2

    const/16 v4, 0x65

    const-string v5, "ERROR_REASON_BAD_CONTENT"

    invoke-direct {v3, v5, v0, v4}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_BAD_CONTENT:Lio/bidmachine/protobuf/ErrorReason;

    .line 31
    new-instance v4, Lio/bidmachine/protobuf/ErrorReason;

    const/4 v0, 0x3

    const/16 v5, 0x66

    const-string v6, "ERROR_REASON_TIMEOUT"

    invoke-direct {v4, v6, v0, v5}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_TIMEOUT:Lio/bidmachine/protobuf/ErrorReason;

    .line 35
    new-instance v5, Lio/bidmachine/protobuf/ErrorReason;

    const/4 v0, 0x4

    const/16 v6, 0x67

    const-string v7, "ERROR_REASON_NO_CONTENT"

    invoke-direct {v5, v7, v0, v6}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_NO_CONTENT:Lio/bidmachine/protobuf/ErrorReason;

    .line 39
    new-instance v6, Lio/bidmachine/protobuf/ErrorReason;

    const/4 v0, 0x5

    const/16 v7, 0x68

    const-string v8, "ERROR_REASON_HANDLED_EXCEPTION"

    invoke-direct {v6, v8, v0, v7}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_HANDLED_EXCEPTION:Lio/bidmachine/protobuf/ErrorReason;

    .line 43
    new-instance v7, Lio/bidmachine/protobuf/ErrorReason;

    const/4 v0, 0x6

    const/16 v8, 0x69

    const-string v9, "ERROR_REASON_WAS_CLOSED"

    invoke-direct {v7, v9, v0, v8}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_WAS_CLOSED:Lio/bidmachine/protobuf/ErrorReason;

    .line 47
    new-instance v8, Lio/bidmachine/protobuf/ErrorReason;

    const/4 v0, 0x7

    const/16 v9, 0x6a

    const-string v10, "ERROR_REASON_WAS_DESTROYED"

    invoke-direct {v8, v10, v0, v9}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_WAS_DESTROYED:Lio/bidmachine/protobuf/ErrorReason;

    .line 51
    new-instance v9, Lio/bidmachine/protobuf/ErrorReason;

    const/16 v0, 0x8

    const/16 v10, 0x6b

    const-string v11, "ERROR_REASON_WAS_EXPIRED"

    invoke-direct {v9, v11, v0, v10}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_WAS_EXPIRED:Lio/bidmachine/protobuf/ErrorReason;

    .line 55
    new-instance v10, Lio/bidmachine/protobuf/ErrorReason;

    const/16 v0, 0x9

    const/16 v11, 0x6f

    const-string v12, "ERROR_REASON_WAS_USED_ALREADY"

    invoke-direct {v10, v12, v0, v11}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_WAS_USED_ALREADY:Lio/bidmachine/protobuf/ErrorReason;

    .line 59
    new-instance v11, Lio/bidmachine/protobuf/ErrorReason;

    const/16 v0, 0xa

    const/16 v12, 0x6c

    const-string v13, "ERROR_REASON_INTERNAL"

    invoke-direct {v11, v13, v0, v12}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_INTERNAL:Lio/bidmachine/protobuf/ErrorReason;

    .line 63
    new-instance v12, Lio/bidmachine/protobuf/ErrorReason;

    const/16 v0, 0xb

    const/16 v13, 0x6d

    const-string v14, "ERROR_REASON_HTTP_SERVER_ERROR"

    invoke-direct {v12, v14, v0, v13}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_HTTP_SERVER_ERROR:Lio/bidmachine/protobuf/ErrorReason;

    .line 67
    new-instance v13, Lio/bidmachine/protobuf/ErrorReason;

    const/16 v0, 0xc

    const/16 v14, 0x6e

    const-string v15, "ERROR_REASON_HTTP_BAD_REQUEST"

    invoke-direct {v13, v15, v0, v14}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_HTTP_BAD_REQUEST:Lio/bidmachine/protobuf/ErrorReason;

    .line 71
    new-instance v14, Lio/bidmachine/protobuf/ErrorReason;

    const/16 v0, 0xd

    const/16 v15, 0x70

    move-object/from16 v16, v1

    const-string v1, "ERROR_REASON_INVALID_JS_XHR"

    invoke-direct {v14, v1, v0, v15}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_INVALID_JS_XHR:Lio/bidmachine/protobuf/ErrorReason;

    .line 75
    new-instance v15, Lio/bidmachine/protobuf/ErrorReason;

    const/16 v0, 0xe

    const/16 v1, 0x71

    move-object/from16 v17, v2

    const-string v2, "ERROR_REASON_MEDIA_PLAYS_IN_WRONG_STATE"

    invoke-direct {v15, v2, v0, v1}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_MEDIA_PLAYS_IN_WRONG_STATE:Lio/bidmachine/protobuf/ErrorReason;

    .line 79
    new-instance v0, Lio/bidmachine/protobuf/ErrorReason;

    const/16 v1, 0xf

    const/16 v2, 0xc8

    move-object/from16 v18, v3

    const-string v3, "ERROR_REASON_HB_NETWORK"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_HB_NETWORK:Lio/bidmachine/protobuf/ErrorReason;

    .line 83
    new-instance v1, Lio/bidmachine/protobuf/ErrorReason;

    const/16 v2, 0x10

    const/16 v3, 0xc9

    move-object/from16 v19, v0

    const-string v0, "ERROR_REASON_PLACEHOLDER_TIMEOUT"

    invoke-direct {v1, v0, v2, v3}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_PLACEHOLDER_TIMEOUT:Lio/bidmachine/protobuf/ErrorReason;

    .line 84
    new-instance v0, Lio/bidmachine/protobuf/ErrorReason;

    const/16 v2, 0x11

    const/4 v3, -0x1

    move-object/from16 v20, v1

    const-string v1, "UNRECOGNIZED"

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/protobuf/ErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/protobuf/ErrorReason;->UNRECOGNIZED:Lio/bidmachine/protobuf/ErrorReason;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-object/from16 v18, v0

    .line 14
    filled-new-array/range {v1 .. v18}, [Lio/bidmachine/protobuf/ErrorReason;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/ErrorReason;->$VALUES:[Lio/bidmachine/protobuf/ErrorReason;

    .line 207
    new-instance v0, Lio/bidmachine/protobuf/ErrorReason$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/ErrorReason$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/ErrorReason;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 231
    invoke-static {}, Lio/bidmachine/protobuf/ErrorReason;->values()[Lio/bidmachine/protobuf/ErrorReason;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/ErrorReason;->VALUES:[Lio/bidmachine/protobuf/ErrorReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 247
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 248
    iput p3, p0, Lio/bidmachine/protobuf/ErrorReason;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/ErrorReason;
    .registers 2

    if-eqz p0, :cond_3f

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_3c

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_39

    packed-switch p0, :pswitch_data_42

    const/4 p0, 0x0

    return-object p0

    .line 195
    :pswitch_f
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_MEDIA_PLAYS_IN_WRONG_STATE:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 194
    :pswitch_12
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_INVALID_JS_XHR:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 190
    :pswitch_15
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_WAS_USED_ALREADY:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 193
    :pswitch_18
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_HTTP_BAD_REQUEST:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 192
    :pswitch_1b
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_HTTP_SERVER_ERROR:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 191
    :pswitch_1e
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_INTERNAL:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 189
    :pswitch_21
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_WAS_EXPIRED:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 188
    :pswitch_24
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_WAS_DESTROYED:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 187
    :pswitch_27
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_WAS_CLOSED:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 186
    :pswitch_2a
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_HANDLED_EXCEPTION:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 185
    :pswitch_2d
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_NO_CONTENT:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 184
    :pswitch_30
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_TIMEOUT:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 183
    :pswitch_33
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_BAD_CONTENT:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 182
    :pswitch_36
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_NO_CONNECTION:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 197
    :cond_39
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_PLACEHOLDER_TIMEOUT:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 196
    :cond_3c
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_HB_NETWORK:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 181
    :cond_3f
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->ERROR_REASON_INVALID:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    :pswitch_data_42
    .packed-switch 0x64
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 228
    invoke-static {}, Lio/bidmachine/protobuf/ExtensionsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

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
            "Lio/bidmachine/protobuf/ErrorReason;",
            ">;"
        }
    .end annotation

    .line 204
    sget-object v0, Lio/bidmachine/protobuf/ErrorReason;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/ErrorReason;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    invoke-static {p0}, Lio/bidmachine/protobuf/ErrorReason;->forNumber(I)Lio/bidmachine/protobuf/ErrorReason;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lio/bidmachine/protobuf/ErrorReason;
    .registers 3

    .line 235
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lio/bidmachine/protobuf/ErrorReason;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 239
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 240
    sget-object p0, Lio/bidmachine/protobuf/ErrorReason;->UNRECOGNIZED:Lio/bidmachine/protobuf/ErrorReason;

    return-object p0

    .line 242
    :cond_14
    sget-object v0, Lio/bidmachine/protobuf/ErrorReason;->VALUES:[Lio/bidmachine/protobuf/ErrorReason;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 236
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/ErrorReason;
    .registers 2

    .line 14
    const-class v0, Lio/bidmachine/protobuf/ErrorReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ErrorReason;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/ErrorReason;
    .registers 1

    .line 14
    sget-object v0, Lio/bidmachine/protobuf/ErrorReason;->$VALUES:[Lio/bidmachine/protobuf/ErrorReason;

    invoke-virtual {v0}, [Lio/bidmachine/protobuf/ErrorReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/protobuf/ErrorReason;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 224
    invoke-static {}, Lio/bidmachine/protobuf/ErrorReason;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .registers 3

    .line 158
    sget-object v0, Lio/bidmachine/protobuf/ErrorReason;->UNRECOGNIZED:Lio/bidmachine/protobuf/ErrorReason;

    if-eq p0, v0, :cond_7

    .line 162
    iget v0, p0, Lio/bidmachine/protobuf/ErrorReason;->value:I

    return v0

    .line 159
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .registers 3

    .line 216
    sget-object v0, Lio/bidmachine/protobuf/ErrorReason;->UNRECOGNIZED:Lio/bidmachine/protobuf/ErrorReason;

    if-eq p0, v0, :cond_17

    .line 220
    invoke-static {}, Lio/bidmachine/protobuf/ErrorReason;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0

    .line 217
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class io.bidmachine.protobuf.ErrorReason.AnonymousClass1 (io.bidmachine.protobuf.ErrorReason$1)
.class Lio/bidmachine/protobuf/ErrorReason$1;
.super Ljava/lang/Object;
.source "ErrorReason.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/ErrorReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lio/bidmachine/protobuf/ErrorReason;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .registers 2

    .line 208
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ErrorReason$1;->findValueByNumber(I)Lio/bidmachine/protobuf/ErrorReason;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lio/bidmachine/protobuf/ErrorReason;
    .registers 2

    .line 210
    invoke-static {p1}, Lio/bidmachine/protobuf/ErrorReason;->forNumber(I)Lio/bidmachine/protobuf/ErrorReason;

    move-result-object p1

    return-object p1
.end method

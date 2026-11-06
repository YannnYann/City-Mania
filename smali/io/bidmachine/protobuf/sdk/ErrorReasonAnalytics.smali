###### Class io.bidmachine.protobuf.sdk.ErrorReasonAnalytics (io.bidmachine.protobuf.sdk.ErrorReasonAnalytics)
.class public final enum Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;
.super Ljava/lang/Enum;
.source "ErrorReasonAnalytics.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

.field public static final enum ERROR_REASON_ANALYTICS_INVALID:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

.field public static final ERROR_REASON_ANALYTICS_INVALID_VALUE:I = 0x0

.field public static final enum ERROR_REASON_ANALYTICS_MONITOR_BAD_CONTENT:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

.field public static final ERROR_REASON_ANALYTICS_MONITOR_BAD_CONTENT_VALUE:I = 0x836

.field public static final enum ERROR_REASON_ANALYTICS_MONITOR_NO_CONTENT:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

.field public static final ERROR_REASON_ANALYTICS_MONITOR_NO_CONTENT_VALUE:I = 0x835

.field public static final enum ERROR_REASON_ANALYTICS_MONITOR_UNDEFINED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

.field public static final ERROR_REASON_ANALYTICS_MONITOR_UNDEFINED_VALUE:I = 0x834

.field public static final enum ERROR_REASON_ANALYTICS_READER_BAD_CONTENT:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

.field public static final ERROR_REASON_ANALYTICS_READER_BAD_CONTENT_VALUE:I = 0x89a

.field public static final enum ERROR_REASON_ANALYTICS_READER_NO_ACCESS:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

.field public static final ERROR_REASON_ANALYTICS_READER_NO_ACCESS_VALUE:I = 0x89b

.field public static final enum ERROR_REASON_ANALYTICS_READER_NO_CONTENT:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

.field public static final ERROR_REASON_ANALYTICS_READER_NO_CONTENT_VALUE:I = 0x899

.field public static final enum ERROR_REASON_ANALYTICS_READER_UNDEFINED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

.field public static final ERROR_REASON_ANALYTICS_READER_UNDEFINED_VALUE:I = 0x898

.field public static final enum ERROR_REASON_ANALYTICS_UNDEFINED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

.field public static final ERROR_REASON_ANALYTICS_UNDEFINED_VALUE:I = 0x7d0

.field public static final enum UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

.field private static final VALUES:[Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 18
    new-instance v0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    const-string v1, "ERROR_REASON_ANALYTICS_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_INVALID:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 26
    new-instance v1, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    const/4 v2, 0x1

    const/16 v3, 0x7d0

    const-string v4, "ERROR_REASON_ANALYTICS_UNDEFINED"

    invoke-direct {v1, v4, v2, v3}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_UNDEFINED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 34
    new-instance v2, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    const/4 v3, 0x2

    const/16 v4, 0x834

    const-string v5, "ERROR_REASON_ANALYTICS_MONITOR_UNDEFINED"

    invoke-direct {v2, v5, v3, v4}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_MONITOR_UNDEFINED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 42
    new-instance v3, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    const/4 v4, 0x3

    const/16 v5, 0x835

    const-string v6, "ERROR_REASON_ANALYTICS_MONITOR_NO_CONTENT"

    invoke-direct {v3, v6, v4, v5}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_MONITOR_NO_CONTENT:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 50
    new-instance v4, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    const/4 v5, 0x4

    const/16 v6, 0x836

    const-string v7, "ERROR_REASON_ANALYTICS_MONITOR_BAD_CONTENT"

    invoke-direct {v4, v7, v5, v6}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_MONITOR_BAD_CONTENT:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 58
    new-instance v5, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    const/4 v6, 0x5

    const/16 v7, 0x898

    const-string v8, "ERROR_REASON_ANALYTICS_READER_UNDEFINED"

    invoke-direct {v5, v8, v6, v7}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_READER_UNDEFINED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 66
    new-instance v6, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    const/4 v7, 0x6

    const/16 v8, 0x899

    const-string v9, "ERROR_REASON_ANALYTICS_READER_NO_CONTENT"

    invoke-direct {v6, v9, v7, v8}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_READER_NO_CONTENT:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 74
    new-instance v7, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    const/4 v8, 0x7

    const/16 v9, 0x89a

    const-string v10, "ERROR_REASON_ANALYTICS_READER_BAD_CONTENT"

    invoke-direct {v7, v10, v8, v9}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_READER_BAD_CONTENT:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 82
    new-instance v8, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    const/16 v9, 0x8

    const/16 v10, 0x89b

    const-string v11, "ERROR_REASON_ANALYTICS_READER_NO_ACCESS"

    invoke-direct {v8, v11, v9, v10}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_READER_NO_ACCESS:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 83
    new-instance v9, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    const/16 v10, 0x9

    const/4 v11, -0x1

    const-string v12, "UNRECOGNIZED"

    invoke-direct {v9, v12, v10, v11}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 9
    filled-new-array/range {v0 .. v9}, [Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->$VALUES:[Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 202
    new-instance v0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 226
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->values()[Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->VALUES:[Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 242
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 243
    iput p3, p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;
    .registers 2

    if-eqz p0, :cond_26

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_23

    packed-switch p0, :pswitch_data_2a

    packed-switch p0, :pswitch_data_34

    const/4 p0, 0x0

    return-object p0

    .line 192
    :pswitch_e
    sget-object p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_READER_NO_ACCESS:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    return-object p0

    .line 191
    :pswitch_11
    sget-object p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_READER_BAD_CONTENT:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    return-object p0

    .line 190
    :pswitch_14
    sget-object p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_READER_NO_CONTENT:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    return-object p0

    .line 189
    :pswitch_17
    sget-object p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_READER_UNDEFINED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    return-object p0

    .line 188
    :pswitch_1a
    sget-object p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_MONITOR_BAD_CONTENT:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    return-object p0

    .line 187
    :pswitch_1d
    sget-object p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_MONITOR_NO_CONTENT:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    return-object p0

    .line 186
    :pswitch_20
    sget-object p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_MONITOR_UNDEFINED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    return-object p0

    .line 185
    :cond_23
    sget-object p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_UNDEFINED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    return-object p0

    .line 184
    :cond_26
    sget-object p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_INVALID:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x834
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch

    :pswitch_data_34
    .packed-switch 0x898
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 223
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKErrorsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

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
            "Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;",
            ">;"
        }
    .end annotation

    .line 199
    sget-object v0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    invoke-static {p0}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->forNumber(I)Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;
    .registers 3

    .line 230
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 234
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 235
    sget-object p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    return-object p0

    .line 237
    :cond_14
    sget-object v0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->VALUES:[Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 231
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;
    .registers 2

    .line 9
    const-class v0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->$VALUES:[Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    invoke-virtual {v0}, [Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 219
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .registers 3

    .line 161
    sget-object v0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    if-eq p0, v0, :cond_7

    .line 165
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->value:I

    return v0

    .line 162
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .registers 3

    .line 211
    sget-object v0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    if-eq p0, v0, :cond_17

    .line 215
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0

    .line 212
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class io.bidmachine.protobuf.sdk.ErrorReasonAnalytics.AnonymousClass1 (io.bidmachine.protobuf.sdk.ErrorReasonAnalytics$1)
.class Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics$1;
.super Ljava/lang/Object;
.source "ErrorReasonAnalytics.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .registers 2

    .line 203
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics$1;->findValueByNumber(I)Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;
    .registers 2

    .line 205
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->forNumber(I)Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    move-result-object p1

    return-object p1
.end method

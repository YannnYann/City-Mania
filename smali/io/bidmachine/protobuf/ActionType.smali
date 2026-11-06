###### Class io.bidmachine.protobuf.ActionType (io.bidmachine.protobuf.ActionType)
.class public final enum Lio/bidmachine/protobuf/ActionType;
.super Ljava/lang/Enum;
.source "ActionType.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/ActionType;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/ActionType;

.field public static final enum ACTION_TYPE_AD_DESTROYING:Lio/bidmachine/protobuf/ActionType;

.field public static final ACTION_TYPE_AD_DESTROYING_VALUE:I = 0x1f9

.field public static final enum ACTION_TYPE_AD_LOADING:Lio/bidmachine/protobuf/ActionType;

.field public static final ACTION_TYPE_AD_LOADING_VALUE:I = 0x1f4

.field public static final enum ACTION_TYPE_CLICKING:Lio/bidmachine/protobuf/ActionType;

.field public static final ACTION_TYPE_CLICKING_VALUE:I = 0x1f7

.field public static final enum ACTION_TYPE_CLOSING:Lio/bidmachine/protobuf/ActionType;

.field public static final ACTION_TYPE_CLOSING_VALUE:I = 0x1f8

.field public static final enum ACTION_TYPE_HB_INITIALIZING:Lio/bidmachine/protobuf/ActionType;

.field public static final ACTION_TYPE_HB_INITIALIZING_VALUE:I = 0x2bd

.field public static final enum ACTION_TYPE_HB_PREPARING:Lio/bidmachine/protobuf/ActionType;

.field public static final ACTION_TYPE_HB_PREPARING_VALUE:I = 0x2be

.field public static final enum ACTION_TYPE_INVALID:Lio/bidmachine/protobuf/ActionType;

.field public static final ACTION_TYPE_INVALID_VALUE:I = 0x0

.field public static final enum ACTION_TYPE_REQUEST_CANCELING:Lio/bidmachine/protobuf/ActionType;

.field public static final ACTION_TYPE_REQUEST_CANCELING_VALUE:I = 0x1fc

.field public static final enum ACTION_TYPE_REQUEST_LOADING:Lio/bidmachine/protobuf/ActionType;

.field public static final ACTION_TYPE_REQUEST_LOADING_VALUE:I = 0x1fb

.field public static final enum ACTION_TYPE_SESSION_INITIALIZING:Lio/bidmachine/protobuf/ActionType;

.field public static final ACTION_TYPE_SESSION_INITIALIZING_VALUE:I = 0x1fa

.field public static final enum ACTION_TYPE_SHOWING:Lio/bidmachine/protobuf/ActionType;

.field public static final ACTION_TYPE_SHOWING_VALUE:I = 0x1f5

.field public static final enum ACTION_TYPE_VIEWING:Lio/bidmachine/protobuf/ActionType;

.field public static final ACTION_TYPE_VIEWING_VALUE:I = 0x1f6

.field public static final enum UNRECOGNIZED:Lio/bidmachine/protobuf/ActionType;

.field private static final VALUES:[Lio/bidmachine/protobuf/ActionType;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lio/bidmachine/protobuf/ActionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 19
    new-instance v0, Lio/bidmachine/protobuf/ActionType;

    const-string v1, "ACTION_TYPE_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_INVALID:Lio/bidmachine/protobuf/ActionType;

    .line 27
    new-instance v1, Lio/bidmachine/protobuf/ActionType;

    const/4 v2, 0x1

    const/16 v3, 0x1f4

    const-string v4, "ACTION_TYPE_AD_LOADING"

    invoke-direct {v1, v4, v2, v3}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_AD_LOADING:Lio/bidmachine/protobuf/ActionType;

    .line 31
    new-instance v2, Lio/bidmachine/protobuf/ActionType;

    const/4 v3, 0x2

    const/16 v4, 0x1f5

    const-string v5, "ACTION_TYPE_SHOWING"

    invoke-direct {v2, v5, v3, v4}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_SHOWING:Lio/bidmachine/protobuf/ActionType;

    .line 35
    new-instance v3, Lio/bidmachine/protobuf/ActionType;

    const/4 v4, 0x3

    const/16 v5, 0x1f6

    const-string v6, "ACTION_TYPE_VIEWING"

    invoke-direct {v3, v6, v4, v5}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_VIEWING:Lio/bidmachine/protobuf/ActionType;

    .line 39
    new-instance v4, Lio/bidmachine/protobuf/ActionType;

    const/4 v5, 0x4

    const/16 v6, 0x1f7

    const-string v7, "ACTION_TYPE_CLICKING"

    invoke-direct {v4, v7, v5, v6}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_CLICKING:Lio/bidmachine/protobuf/ActionType;

    .line 43
    new-instance v5, Lio/bidmachine/protobuf/ActionType;

    const/4 v6, 0x5

    const/16 v7, 0x1f8

    const-string v8, "ACTION_TYPE_CLOSING"

    invoke-direct {v5, v8, v6, v7}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_CLOSING:Lio/bidmachine/protobuf/ActionType;

    .line 47
    new-instance v6, Lio/bidmachine/protobuf/ActionType;

    const/4 v7, 0x6

    const/16 v8, 0x1f9

    const-string v9, "ACTION_TYPE_AD_DESTROYING"

    invoke-direct {v6, v9, v7, v8}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_AD_DESTROYING:Lio/bidmachine/protobuf/ActionType;

    .line 51
    new-instance v7, Lio/bidmachine/protobuf/ActionType;

    const/4 v8, 0x7

    const/16 v9, 0x1fa

    const-string v10, "ACTION_TYPE_SESSION_INITIALIZING"

    invoke-direct {v7, v10, v8, v9}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_SESSION_INITIALIZING:Lio/bidmachine/protobuf/ActionType;

    .line 55
    new-instance v8, Lio/bidmachine/protobuf/ActionType;

    const/16 v9, 0x8

    const/16 v10, 0x1fb

    const-string v11, "ACTION_TYPE_REQUEST_LOADING"

    invoke-direct {v8, v11, v9, v10}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_REQUEST_LOADING:Lio/bidmachine/protobuf/ActionType;

    .line 59
    new-instance v9, Lio/bidmachine/protobuf/ActionType;

    const/16 v10, 0x9

    const/16 v11, 0x1fc

    const-string v12, "ACTION_TYPE_REQUEST_CANCELING"

    invoke-direct {v9, v12, v10, v11}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_REQUEST_CANCELING:Lio/bidmachine/protobuf/ActionType;

    .line 67
    new-instance v10, Lio/bidmachine/protobuf/ActionType;

    const/16 v11, 0xa

    const/16 v12, 0x2bd

    const-string v13, "ACTION_TYPE_HB_INITIALIZING"

    invoke-direct {v10, v13, v11, v12}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_HB_INITIALIZING:Lio/bidmachine/protobuf/ActionType;

    .line 71
    new-instance v11, Lio/bidmachine/protobuf/ActionType;

    const/16 v12, 0xb

    const/16 v13, 0x2be

    const-string v14, "ACTION_TYPE_HB_PREPARING"

    invoke-direct {v11, v14, v12, v13}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_HB_PREPARING:Lio/bidmachine/protobuf/ActionType;

    .line 72
    new-instance v12, Lio/bidmachine/protobuf/ActionType;

    const/16 v13, 0xc

    const/4 v14, -0x1

    const-string v15, "UNRECOGNIZED"

    invoke-direct {v12, v15, v13, v14}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/bidmachine/protobuf/ActionType;->UNRECOGNIZED:Lio/bidmachine/protobuf/ActionType;

    .line 14
    filled-new-array/range {v0 .. v12}, [Lio/bidmachine/protobuf/ActionType;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/ActionType;->$VALUES:[Lio/bidmachine/protobuf/ActionType;

    .line 178
    new-instance v0, Lio/bidmachine/protobuf/ActionType$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/ActionType$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/ActionType;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 202
    invoke-static {}, Lio/bidmachine/protobuf/ActionType;->values()[Lio/bidmachine/protobuf/ActionType;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/ActionType;->VALUES:[Lio/bidmachine/protobuf/ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 219
    iput p3, p0, Lio/bidmachine/protobuf/ActionType;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/ActionType;
    .registers 2

    if-eqz p0, :cond_30

    const/16 v0, 0x2bd

    if-eq p0, v0, :cond_2d

    const/16 v0, 0x2be

    if-eq p0, v0, :cond_2a

    packed-switch p0, :pswitch_data_34

    const/4 p0, 0x0

    return-object p0

    .line 166
    :pswitch_f
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_REQUEST_CANCELING:Lio/bidmachine/protobuf/ActionType;

    return-object p0

    .line 165
    :pswitch_12
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_REQUEST_LOADING:Lio/bidmachine/protobuf/ActionType;

    return-object p0

    .line 164
    :pswitch_15
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_SESSION_INITIALIZING:Lio/bidmachine/protobuf/ActionType;

    return-object p0

    .line 163
    :pswitch_18
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_AD_DESTROYING:Lio/bidmachine/protobuf/ActionType;

    return-object p0

    .line 162
    :pswitch_1b
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_CLOSING:Lio/bidmachine/protobuf/ActionType;

    return-object p0

    .line 161
    :pswitch_1e
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_CLICKING:Lio/bidmachine/protobuf/ActionType;

    return-object p0

    .line 160
    :pswitch_21
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_VIEWING:Lio/bidmachine/protobuf/ActionType;

    return-object p0

    .line 159
    :pswitch_24
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_SHOWING:Lio/bidmachine/protobuf/ActionType;

    return-object p0

    .line 158
    :pswitch_27
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_AD_LOADING:Lio/bidmachine/protobuf/ActionType;

    return-object p0

    .line 168
    :cond_2a
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_HB_PREPARING:Lio/bidmachine/protobuf/ActionType;

    return-object p0

    .line 167
    :cond_2d
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_HB_INITIALIZING:Lio/bidmachine/protobuf/ActionType;

    return-object p0

    .line 157
    :cond_30
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_INVALID:Lio/bidmachine/protobuf/ActionType;

    return-object p0

    nop

    :pswitch_data_34
    .packed-switch 0x1f4
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

    .line 199
    invoke-static {}, Lio/bidmachine/protobuf/ExtensionsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

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
            "Lio/bidmachine/protobuf/ActionType;",
            ">;"
        }
    .end annotation

    .line 175
    sget-object v0, Lio/bidmachine/protobuf/ActionType;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/ActionType;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    invoke-static {p0}, Lio/bidmachine/protobuf/ActionType;->forNumber(I)Lio/bidmachine/protobuf/ActionType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lio/bidmachine/protobuf/ActionType;
    .registers 3

    .line 206
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lio/bidmachine/protobuf/ActionType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 210
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 211
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->UNRECOGNIZED:Lio/bidmachine/protobuf/ActionType;

    return-object p0

    .line 213
    :cond_14
    sget-object v0, Lio/bidmachine/protobuf/ActionType;->VALUES:[Lio/bidmachine/protobuf/ActionType;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 207
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/ActionType;
    .registers 2

    .line 14
    const-class v0, Lio/bidmachine/protobuf/ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ActionType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/ActionType;
    .registers 1

    .line 14
    sget-object v0, Lio/bidmachine/protobuf/ActionType;->$VALUES:[Lio/bidmachine/protobuf/ActionType;

    invoke-virtual {v0}, [Lio/bidmachine/protobuf/ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/protobuf/ActionType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 195
    invoke-static {}, Lio/bidmachine/protobuf/ActionType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .registers 3

    .line 134
    sget-object v0, Lio/bidmachine/protobuf/ActionType;->UNRECOGNIZED:Lio/bidmachine/protobuf/ActionType;

    if-eq p0, v0, :cond_7

    .line 138
    iget v0, p0, Lio/bidmachine/protobuf/ActionType;->value:I

    return v0

    .line 135
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .registers 3

    .line 187
    sget-object v0, Lio/bidmachine/protobuf/ActionType;->UNRECOGNIZED:Lio/bidmachine/protobuf/ActionType;

    if-eq p0, v0, :cond_17

    .line 191
    invoke-static {}, Lio/bidmachine/protobuf/ActionType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0

    .line 188
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class io.bidmachine.protobuf.ActionType.AnonymousClass1 (io.bidmachine.protobuf.ActionType$1)
.class Lio/bidmachine/protobuf/ActionType$1;
.super Ljava/lang/Object;
.source "ActionType.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/ActionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lio/bidmachine/protobuf/ActionType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .registers 2

    .line 179
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ActionType$1;->findValueByNumber(I)Lio/bidmachine/protobuf/ActionType;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lio/bidmachine/protobuf/ActionType;
    .registers 2

    .line 181
    invoke-static {p1}, Lio/bidmachine/protobuf/ActionType;->forNumber(I)Lio/bidmachine/protobuf/ActionType;

    move-result-object p1

    return-object p1
.end method

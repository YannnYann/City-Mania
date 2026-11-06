###### Class com.explorestack.protobuf.adcom.VideoCreativeType (com.explorestack.protobuf.adcom.VideoCreativeType)
.class public final enum Lcom/explorestack/protobuf/adcom/VideoCreativeType;
.super Ljava/lang/Enum;
.source "VideoCreativeType.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/adcom/VideoCreativeType;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/adcom/VideoCreativeType;

.field public static final enum UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

.field private static final VALUES:[Lcom/explorestack/protobuf/adcom/VideoCreativeType;

.field public static final enum VIDEO_CREATIVE_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

.field public static final VIDEO_CREATIVE_TYPE_INVALID_VALUE:I = 0x0

.field public static final enum VIDEO_CREATIVE_TYPE_VAST_1_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

.field public static final VIDEO_CREATIVE_TYPE_VAST_1_0_VALUE:I = 0x1

.field public static final enum VIDEO_CREATIVE_TYPE_VAST_2_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

.field public static final VIDEO_CREATIVE_TYPE_VAST_2_0_VALUE:I = 0x2

.field public static final enum VIDEO_CREATIVE_TYPE_VAST_3_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

.field public static final VIDEO_CREATIVE_TYPE_VAST_3_0_VALUE:I = 0x3

.field public static final enum VIDEO_CREATIVE_TYPE_VAST_4_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

.field public static final VIDEO_CREATIVE_TYPE_VAST_4_0_VALUE:I = 0x7

.field public static final enum VIDEO_CREATIVE_TYPE_VAST_4_1:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

.field public static final VIDEO_CREATIVE_TYPE_VAST_4_1_VALUE:I = 0x9

.field public static final enum VIDEO_CREATIVE_TYPE_VAST_WRAPPER_1_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

.field public static final VIDEO_CREATIVE_TYPE_VAST_WRAPPER_1_0_VALUE:I = 0x4

.field public static final enum VIDEO_CREATIVE_TYPE_VAST_WRAPPER_2_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

.field public static final VIDEO_CREATIVE_TYPE_VAST_WRAPPER_2_0_VALUE:I = 0x5

.field public static final enum VIDEO_CREATIVE_TYPE_VAST_WRAPPER_3_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

.field public static final VIDEO_CREATIVE_TYPE_VAST_WRAPPER_3_0_VALUE:I = 0x6

.field public static final enum VIDEO_CREATIVE_TYPE_VAST_WRAPPER_4_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

.field public static final VIDEO_CREATIVE_TYPE_VAST_WRAPPER_4_0_VALUE:I = 0x8

.field public static final enum VIDEO_CREATIVE_TYPE_VAST_WRAPPER_4_1:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

.field public static final VIDEO_CREATIVE_TYPE_VAST_WRAPPER_4_1_VALUE:I = 0xa

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/explorestack/protobuf/adcom/VideoCreativeType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 14
    new-instance v0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    const-string v1, "VIDEO_CREATIVE_TYPE_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 18
    new-instance v1, Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    const-string v2, "VIDEO_CREATIVE_TYPE_VAST_1_0"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_1_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 22
    new-instance v2, Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    const-string v3, "VIDEO_CREATIVE_TYPE_VAST_2_0"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_2_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 26
    new-instance v3, Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    const-string v4, "VIDEO_CREATIVE_TYPE_VAST_3_0"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_3_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 30
    new-instance v4, Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    const-string v5, "VIDEO_CREATIVE_TYPE_VAST_WRAPPER_1_0"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_WRAPPER_1_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 34
    new-instance v5, Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    const-string v6, "VIDEO_CREATIVE_TYPE_VAST_WRAPPER_2_0"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_WRAPPER_2_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 38
    new-instance v6, Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    const-string v7, "VIDEO_CREATIVE_TYPE_VAST_WRAPPER_3_0"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_WRAPPER_3_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 42
    new-instance v7, Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    const-string v8, "VIDEO_CREATIVE_TYPE_VAST_4_0"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_4_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 46
    new-instance v8, Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    const-string v9, "VIDEO_CREATIVE_TYPE_VAST_WRAPPER_4_0"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_WRAPPER_4_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 50
    new-instance v9, Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    const-string v10, "VIDEO_CREATIVE_TYPE_VAST_4_1"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_4_1:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 54
    new-instance v10, Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    const-string v11, "VIDEO_CREATIVE_TYPE_VAST_WRAPPER_4_1"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_WRAPPER_4_1:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 55
    new-instance v11, Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    const/16 v12, 0xb

    const/4 v13, -0x1

    const-string v14, "UNRECOGNIZED"

    invoke-direct {v11, v14, v12, v13}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 9
    filled-new-array/range {v0 .. v11}, [Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->$VALUES:[Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 148
    new-instance v0, Lcom/explorestack/protobuf/adcom/VideoCreativeType$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/VideoCreativeType$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 172
    invoke-static {}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->values()[Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VALUES:[Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 188
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 189
    iput p3, p0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/adcom/VideoCreativeType;
    .registers 1

    packed-switch p0, :pswitch_data_26

    const/4 p0, 0x0

    return-object p0

    .line 138
    :pswitch_5
    sget-object p0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_WRAPPER_4_1:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    return-object p0

    .line 137
    :pswitch_8
    sget-object p0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_4_1:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    return-object p0

    .line 136
    :pswitch_b
    sget-object p0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_WRAPPER_4_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    return-object p0

    .line 135
    :pswitch_e
    sget-object p0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_4_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    return-object p0

    .line 134
    :pswitch_11
    sget-object p0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_WRAPPER_3_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    return-object p0

    .line 133
    :pswitch_14
    sget-object p0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_WRAPPER_2_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    return-object p0

    .line 132
    :pswitch_17
    sget-object p0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_WRAPPER_1_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    return-object p0

    .line 131
    :pswitch_1a
    sget-object p0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_3_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    return-object p0

    .line 130
    :pswitch_1d
    sget-object p0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_2_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    return-object p0

    .line 129
    :pswitch_20
    sget-object p0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_1_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    return-object p0

    .line 128
    :pswitch_23
    sget-object p0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    return-object p0

    :pswitch_data_26
    .packed-switch 0x0
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

    .line 169
    invoke-static {}, Lcom/explorestack/protobuf/adcom/AdcomProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x1d

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
            "Lcom/explorestack/protobuf/adcom/VideoCreativeType;",
            ">;"
        }
    .end annotation

    .line 145
    sget-object v0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/adcom/VideoCreativeType;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->forNumber(I)Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/explorestack/protobuf/adcom/VideoCreativeType;
    .registers 3

    .line 176
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 180
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 181
    sget-object p0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    return-object p0

    .line 183
    :cond_14
    sget-object v0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VALUES:[Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 177
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/VideoCreativeType;
    .registers 2

    .line 9
    const-class v0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/adcom/VideoCreativeType;
    .registers 1

    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->$VALUES:[Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/adcom/VideoCreativeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 165
    invoke-static {}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .registers 3

    .line 105
    sget-object v0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    if-eq p0, v0, :cond_7

    .line 109
    iget v0, p0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->value:I

    return v0

    .line 106
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .registers 3

    .line 157
    sget-object v0, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    if-eq p0, v0, :cond_17

    .line 161
    invoke-static {}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0

    .line 158
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.explorestack.protobuf.adcom.VideoCreativeType.AnonymousClass1 (com.explorestack.protobuf.adcom.VideoCreativeType$1)
.class Lcom/explorestack/protobuf/adcom/VideoCreativeType$1;
.super Ljava/lang/Object;
.source "VideoCreativeType.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/VideoCreativeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lcom/explorestack/protobuf/adcom/VideoCreativeType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .registers 2

    .line 149
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/VideoCreativeType$1;->findValueByNumber(I)Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lcom/explorestack/protobuf/adcom/VideoCreativeType;
    .registers 2

    .line 151
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->forNumber(I)Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    move-result-object p1

    return-object p1
.end method

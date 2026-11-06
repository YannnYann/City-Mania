###### Class com.explorestack.protobuf.adcom.PlacementPosition (com.explorestack.protobuf.adcom.PlacementPosition)
.class public final enum Lcom/explorestack/protobuf/adcom/PlacementPosition;
.super Ljava/lang/Enum;
.source "PlacementPosition.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/adcom/PlacementPosition;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/adcom/PlacementPosition;

.field public static final enum PLACEMENT_POSITION_ABOVE_THE_FOLD:Lcom/explorestack/protobuf/adcom/PlacementPosition;

.field public static final PLACEMENT_POSITION_ABOVE_THE_FOLD_VALUE:I = 0x1

.field public static final enum PLACEMENT_POSITION_BELOW_THE_FOLD:Lcom/explorestack/protobuf/adcom/PlacementPosition;

.field public static final PLACEMENT_POSITION_BELOW_THE_FOLD_VALUE:I = 0x3

.field public static final enum PLACEMENT_POSITION_FOOTER:Lcom/explorestack/protobuf/adcom/PlacementPosition;

.field public static final PLACEMENT_POSITION_FOOTER_VALUE:I = 0x5

.field public static final enum PLACEMENT_POSITION_FULLSCREEN:Lcom/explorestack/protobuf/adcom/PlacementPosition;

.field public static final PLACEMENT_POSITION_FULLSCREEN_VALUE:I = 0x7

.field public static final enum PLACEMENT_POSITION_HEADER:Lcom/explorestack/protobuf/adcom/PlacementPosition;

.field public static final PLACEMENT_POSITION_HEADER_VALUE:I = 0x4

.field public static final enum PLACEMENT_POSITION_INVALID:Lcom/explorestack/protobuf/adcom/PlacementPosition;

.field public static final PLACEMENT_POSITION_INVALID_VALUE:I = 0x0

.field public static final enum PLACEMENT_POSITION_LOCKED:Lcom/explorestack/protobuf/adcom/PlacementPosition;

.field public static final PLACEMENT_POSITION_LOCKED_VALUE:I = 0x2

.field public static final enum PLACEMENT_POSITION_SIDEBAR:Lcom/explorestack/protobuf/adcom/PlacementPosition;

.field public static final PLACEMENT_POSITION_SIDEBAR_VALUE:I = 0x6

.field public static final enum UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/PlacementPosition;

.field private static final VALUES:[Lcom/explorestack/protobuf/adcom/PlacementPosition;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/explorestack/protobuf/adcom/PlacementPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 14
    new-instance v0, Lcom/explorestack/protobuf/adcom/PlacementPosition;

    const-string v1, "PLACEMENT_POSITION_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/explorestack/protobuf/adcom/PlacementPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_INVALID:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    .line 18
    new-instance v1, Lcom/explorestack/protobuf/adcom/PlacementPosition;

    const-string v2, "PLACEMENT_POSITION_ABOVE_THE_FOLD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/explorestack/protobuf/adcom/PlacementPosition;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_ABOVE_THE_FOLD:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    .line 22
    new-instance v2, Lcom/explorestack/protobuf/adcom/PlacementPosition;

    const-string v3, "PLACEMENT_POSITION_LOCKED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/explorestack/protobuf/adcom/PlacementPosition;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_LOCKED:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    .line 26
    new-instance v3, Lcom/explorestack/protobuf/adcom/PlacementPosition;

    const-string v4, "PLACEMENT_POSITION_BELOW_THE_FOLD"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/explorestack/protobuf/adcom/PlacementPosition;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_BELOW_THE_FOLD:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    .line 30
    new-instance v4, Lcom/explorestack/protobuf/adcom/PlacementPosition;

    const-string v5, "PLACEMENT_POSITION_HEADER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/explorestack/protobuf/adcom/PlacementPosition;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_HEADER:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    .line 34
    new-instance v5, Lcom/explorestack/protobuf/adcom/PlacementPosition;

    const-string v6, "PLACEMENT_POSITION_FOOTER"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/explorestack/protobuf/adcom/PlacementPosition;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_FOOTER:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    .line 38
    new-instance v6, Lcom/explorestack/protobuf/adcom/PlacementPosition;

    const-string v7, "PLACEMENT_POSITION_SIDEBAR"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/explorestack/protobuf/adcom/PlacementPosition;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_SIDEBAR:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    .line 42
    new-instance v7, Lcom/explorestack/protobuf/adcom/PlacementPosition;

    const-string v8, "PLACEMENT_POSITION_FULLSCREEN"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/explorestack/protobuf/adcom/PlacementPosition;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_FULLSCREEN:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    .line 43
    new-instance v8, Lcom/explorestack/protobuf/adcom/PlacementPosition;

    const/16 v9, 0x8

    const/4 v10, -0x1

    const-string v11, "UNRECOGNIZED"

    invoke-direct {v8, v11, v9, v10}, Lcom/explorestack/protobuf/adcom/PlacementPosition;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/explorestack/protobuf/adcom/PlacementPosition;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    .line 9
    filled-new-array/range {v0 .. v8}, [Lcom/explorestack/protobuf/adcom/PlacementPosition;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/adcom/PlacementPosition;->$VALUES:[Lcom/explorestack/protobuf/adcom/PlacementPosition;

    .line 121
    new-instance v0, Lcom/explorestack/protobuf/adcom/PlacementPosition$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/PlacementPosition$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/PlacementPosition;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 145
    invoke-static {}, Lcom/explorestack/protobuf/adcom/PlacementPosition;->values()[Lcom/explorestack/protobuf/adcom/PlacementPosition;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/adcom/PlacementPosition;->VALUES:[Lcom/explorestack/protobuf/adcom/PlacementPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 162
    iput p3, p0, Lcom/explorestack/protobuf/adcom/PlacementPosition;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/adcom/PlacementPosition;
    .registers 1

    packed-switch p0, :pswitch_data_1e

    const/4 p0, 0x0

    return-object p0

    .line 111
    :pswitch_5
    sget-object p0, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_FULLSCREEN:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    return-object p0

    .line 110
    :pswitch_8
    sget-object p0, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_SIDEBAR:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    return-object p0

    .line 109
    :pswitch_b
    sget-object p0, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_FOOTER:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    return-object p0

    .line 108
    :pswitch_e
    sget-object p0, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_HEADER:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    return-object p0

    .line 107
    :pswitch_11
    sget-object p0, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_BELOW_THE_FOLD:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    return-object p0

    .line 106
    :pswitch_14
    sget-object p0, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_LOCKED:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    return-object p0

    .line 105
    :pswitch_17
    sget-object p0, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_ABOVE_THE_FOLD:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    return-object p0

    .line 104
    :pswitch_1a
    sget-object p0, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_INVALID:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
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

    .line 142
    invoke-static {}, Lcom/explorestack/protobuf/adcom/AdcomProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x1a

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
            "Lcom/explorestack/protobuf/adcom/PlacementPosition;",
            ">;"
        }
    .end annotation

    .line 118
    sget-object v0, Lcom/explorestack/protobuf/adcom/PlacementPosition;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/adcom/PlacementPosition;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/PlacementPosition;->forNumber(I)Lcom/explorestack/protobuf/adcom/PlacementPosition;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/explorestack/protobuf/adcom/PlacementPosition;
    .registers 3

    .line 149
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/PlacementPosition;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 153
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 154
    sget-object p0, Lcom/explorestack/protobuf/adcom/PlacementPosition;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    return-object p0

    .line 156
    :cond_14
    sget-object v0, Lcom/explorestack/protobuf/adcom/PlacementPosition;->VALUES:[Lcom/explorestack/protobuf/adcom/PlacementPosition;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 150
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/PlacementPosition;
    .registers 2

    .line 9
    const-class v0, Lcom/explorestack/protobuf/adcom/PlacementPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/PlacementPosition;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/adcom/PlacementPosition;
    .registers 1

    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/PlacementPosition;->$VALUES:[Lcom/explorestack/protobuf/adcom/PlacementPosition;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/adcom/PlacementPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/adcom/PlacementPosition;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 138
    invoke-static {}, Lcom/explorestack/protobuf/adcom/PlacementPosition;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .registers 3

    .line 81
    sget-object v0, Lcom/explorestack/protobuf/adcom/PlacementPosition;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    if-eq p0, v0, :cond_7

    .line 85
    iget v0, p0, Lcom/explorestack/protobuf/adcom/PlacementPosition;->value:I

    return v0

    .line 82
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .registers 3

    .line 130
    sget-object v0, Lcom/explorestack/protobuf/adcom/PlacementPosition;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    if-eq p0, v0, :cond_17

    .line 134
    invoke-static {}, Lcom/explorestack/protobuf/adcom/PlacementPosition;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0

    .line 131
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.explorestack.protobuf.adcom.PlacementPosition.AnonymousClass1 (com.explorestack.protobuf.adcom.PlacementPosition$1)
.class Lcom/explorestack/protobuf/adcom/PlacementPosition$1;
.super Ljava/lang/Object;
.source "PlacementPosition.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/PlacementPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lcom/explorestack/protobuf/adcom/PlacementPosition;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .registers 2

    .line 122
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/PlacementPosition$1;->findValueByNumber(I)Lcom/explorestack/protobuf/adcom/PlacementPosition;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lcom/explorestack/protobuf/adcom/PlacementPosition;
    .registers 2

    .line 124
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/PlacementPosition;->forNumber(I)Lcom/explorestack/protobuf/adcom/PlacementPosition;

    move-result-object p1

    return-object p1
.end method

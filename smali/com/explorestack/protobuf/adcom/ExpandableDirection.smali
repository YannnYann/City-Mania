###### Class com.explorestack.protobuf.adcom.ExpandableDirection (com.explorestack.protobuf.adcom.ExpandableDirection)
.class public final enum Lcom/explorestack/protobuf/adcom/ExpandableDirection;
.super Ljava/lang/Enum;
.source "ExpandableDirection.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/adcom/ExpandableDirection;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/adcom/ExpandableDirection;

.field public static final enum EXPANDABLE_DIRECTION_DOWN:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

.field public static final EXPANDABLE_DIRECTION_DOWN_VALUE:I = 0x4

.field public static final enum EXPANDABLE_DIRECTION_FULL_SCREEN:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

.field public static final EXPANDABLE_DIRECTION_FULL_SCREEN_VALUE:I = 0x5

.field public static final enum EXPANDABLE_DIRECTION_INVALID:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

.field public static final EXPANDABLE_DIRECTION_INVALID_VALUE:I = 0x0

.field public static final enum EXPANDABLE_DIRECTION_LEFT:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

.field public static final EXPANDABLE_DIRECTION_LEFT_VALUE:I = 0x1

.field public static final enum EXPANDABLE_DIRECTION_RIGHT:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

.field public static final EXPANDABLE_DIRECTION_RIGHT_VALUE:I = 0x2

.field public static final enum EXPANDABLE_DIRECTION_UP:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

.field public static final EXPANDABLE_DIRECTION_UP_VALUE:I = 0x3

.field public static final enum UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

.field private static final VALUES:[Lcom/explorestack/protobuf/adcom/ExpandableDirection;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/explorestack/protobuf/adcom/ExpandableDirection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 14
    new-instance v0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    const-string v1, "EXPANDABLE_DIRECTION_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->EXPANDABLE_DIRECTION_INVALID:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    .line 18
    new-instance v1, Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    const-string v2, "EXPANDABLE_DIRECTION_LEFT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->EXPANDABLE_DIRECTION_LEFT:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    .line 22
    new-instance v2, Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    const-string v3, "EXPANDABLE_DIRECTION_RIGHT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->EXPANDABLE_DIRECTION_RIGHT:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    .line 26
    new-instance v3, Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    const-string v4, "EXPANDABLE_DIRECTION_UP"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->EXPANDABLE_DIRECTION_UP:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    .line 30
    new-instance v4, Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    const-string v5, "EXPANDABLE_DIRECTION_DOWN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->EXPANDABLE_DIRECTION_DOWN:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    .line 34
    new-instance v5, Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    const-string v6, "EXPANDABLE_DIRECTION_FULL_SCREEN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->EXPANDABLE_DIRECTION_FULL_SCREEN:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    .line 35
    new-instance v6, Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    const/4 v7, 0x6

    const/4 v8, -0x1

    const-string v9, "UNRECOGNIZED"

    invoke-direct {v6, v9, v7, v8}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    .line 9
    filled-new-array/range {v0 .. v6}, [Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->$VALUES:[Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    .line 103
    new-instance v0, Lcom/explorestack/protobuf/adcom/ExpandableDirection$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/ExpandableDirection$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 127
    invoke-static {}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->values()[Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->VALUES:[Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 144
    iput p3, p0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/adcom/ExpandableDirection;
    .registers 2

    if-eqz p0, :cond_22

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_19

    const/4 v0, 0x4

    if-eq p0, v0, :cond_16

    const/4 v0, 0x5

    if-eq p0, v0, :cond_13

    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_13
    sget-object p0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->EXPANDABLE_DIRECTION_FULL_SCREEN:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    return-object p0

    .line 92
    :cond_16
    sget-object p0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->EXPANDABLE_DIRECTION_DOWN:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    return-object p0

    .line 91
    :cond_19
    sget-object p0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->EXPANDABLE_DIRECTION_UP:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    return-object p0

    .line 90
    :cond_1c
    sget-object p0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->EXPANDABLE_DIRECTION_RIGHT:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    return-object p0

    .line 89
    :cond_1f
    sget-object p0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->EXPANDABLE_DIRECTION_LEFT:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    return-object p0

    .line 88
    :cond_22
    sget-object p0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->EXPANDABLE_DIRECTION_INVALID:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 124
    invoke-static {}, Lcom/explorestack/protobuf/adcom/AdcomProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xd

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
            "Lcom/explorestack/protobuf/adcom/ExpandableDirection;",
            ">;"
        }
    .end annotation

    .line 100
    sget-object v0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/adcom/ExpandableDirection;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->forNumber(I)Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/explorestack/protobuf/adcom/ExpandableDirection;
    .registers 3

    .line 131
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 135
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 136
    sget-object p0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    return-object p0

    .line 138
    :cond_14
    sget-object v0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->VALUES:[Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 132
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/ExpandableDirection;
    .registers 2

    .line 9
    const-class v0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/adcom/ExpandableDirection;
    .registers 1

    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->$VALUES:[Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/adcom/ExpandableDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 120
    invoke-static {}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .registers 3

    .line 65
    sget-object v0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    if-eq p0, v0, :cond_7

    .line 69
    iget v0, p0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->value:I

    return v0

    .line 66
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .registers 3

    .line 112
    sget-object v0, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    if-eq p0, v0, :cond_17

    .line 116
    invoke-static {}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0

    .line 113
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.explorestack.protobuf.adcom.ExpandableDirection.AnonymousClass1 (com.explorestack.protobuf.adcom.ExpandableDirection$1)
.class public Lcom/explorestack/protobuf/adcom/ExpandableDirection$1;
.super Ljava/lang/Object;
.source "ExpandableDirection.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/ExpandableDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lcom/explorestack/protobuf/adcom/ExpandableDirection;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .registers 2

    .line 104
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/ExpandableDirection$1;->findValueByNumber(I)Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lcom/explorestack/protobuf/adcom/ExpandableDirection;
    .registers 2

    .line 106
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/ExpandableDirection;->forNumber(I)Lcom/explorestack/protobuf/adcom/ExpandableDirection;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.PostbannerType (io.bidmachine.protobuf.PostbannerType)
.class public final enum Lio/bidmachine/protobuf/PostbannerType;
.super Ljava/lang/Enum;
.source "PostbannerType.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/PostbannerType;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/PostbannerType;

.field public static final enum DISABLED:Lio/bidmachine/protobuf/PostbannerType;

.field public static final DISABLED_VALUE:I = 0x0

.field public static final enum MAIN:Lio/bidmachine/protobuf/PostbannerType;

.field public static final MAIN_VALUE:I = 0x1

.field public static final enum MIXED:Lio/bidmachine/protobuf/PostbannerType;

.field public static final MIXED_VALUE:I = 0x3

.field public static final enum STORE:Lio/bidmachine/protobuf/PostbannerType;

.field public static final STORE_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:Lio/bidmachine/protobuf/PostbannerType;

.field private static final VALUES:[Lio/bidmachine/protobuf/PostbannerType;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lio/bidmachine/protobuf/PostbannerType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 14
    new-instance v0, Lio/bidmachine/protobuf/PostbannerType;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/protobuf/PostbannerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/protobuf/PostbannerType;->DISABLED:Lio/bidmachine/protobuf/PostbannerType;

    .line 18
    new-instance v1, Lio/bidmachine/protobuf/PostbannerType;

    const-string v2, "MAIN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lio/bidmachine/protobuf/PostbannerType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/bidmachine/protobuf/PostbannerType;->MAIN:Lio/bidmachine/protobuf/PostbannerType;

    .line 22
    new-instance v2, Lio/bidmachine/protobuf/PostbannerType;

    const-string v3, "STORE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lio/bidmachine/protobuf/PostbannerType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/bidmachine/protobuf/PostbannerType;->STORE:Lio/bidmachine/protobuf/PostbannerType;

    .line 26
    new-instance v3, Lio/bidmachine/protobuf/PostbannerType;

    const-string v4, "MIXED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lio/bidmachine/protobuf/PostbannerType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/bidmachine/protobuf/PostbannerType;->MIXED:Lio/bidmachine/protobuf/PostbannerType;

    .line 27
    new-instance v4, Lio/bidmachine/protobuf/PostbannerType;

    const/4 v5, 0x4

    const/4 v6, -0x1

    const-string v7, "UNRECOGNIZED"

    invoke-direct {v4, v7, v5, v6}, Lio/bidmachine/protobuf/PostbannerType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/bidmachine/protobuf/PostbannerType;->UNRECOGNIZED:Lio/bidmachine/protobuf/PostbannerType;

    .line 9
    filled-new-array {v0, v1, v2, v3, v4}, [Lio/bidmachine/protobuf/PostbannerType;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/PostbannerType;->$VALUES:[Lio/bidmachine/protobuf/PostbannerType;

    .line 85
    new-instance v0, Lio/bidmachine/protobuf/PostbannerType$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/PostbannerType$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/PostbannerType;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 109
    invoke-static {}, Lio/bidmachine/protobuf/PostbannerType;->values()[Lio/bidmachine/protobuf/PostbannerType;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/PostbannerType;->VALUES:[Lio/bidmachine/protobuf/PostbannerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 126
    iput p3, p0, Lio/bidmachine/protobuf/PostbannerType;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/PostbannerType;
    .registers 2

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_d
    sget-object p0, Lio/bidmachine/protobuf/PostbannerType;->MIXED:Lio/bidmachine/protobuf/PostbannerType;

    return-object p0

    .line 74
    :cond_10
    sget-object p0, Lio/bidmachine/protobuf/PostbannerType;->STORE:Lio/bidmachine/protobuf/PostbannerType;

    return-object p0

    .line 73
    :cond_13
    sget-object p0, Lio/bidmachine/protobuf/PostbannerType;->MAIN:Lio/bidmachine/protobuf/PostbannerType;

    return-object p0

    .line 72
    :cond_16
    sget-object p0, Lio/bidmachine/protobuf/PostbannerType;->DISABLED:Lio/bidmachine/protobuf/PostbannerType;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 106
    invoke-static {}, Lio/bidmachine/protobuf/ExtensionsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

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
            "Lio/bidmachine/protobuf/PostbannerType;",
            ">;"
        }
    .end annotation

    .line 82
    sget-object v0, Lio/bidmachine/protobuf/PostbannerType;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/PostbannerType;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    invoke-static {p0}, Lio/bidmachine/protobuf/PostbannerType;->forNumber(I)Lio/bidmachine/protobuf/PostbannerType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lio/bidmachine/protobuf/PostbannerType;
    .registers 3

    .line 113
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lio/bidmachine/protobuf/PostbannerType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 117
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 118
    sget-object p0, Lio/bidmachine/protobuf/PostbannerType;->UNRECOGNIZED:Lio/bidmachine/protobuf/PostbannerType;

    return-object p0

    .line 120
    :cond_14
    sget-object v0, Lio/bidmachine/protobuf/PostbannerType;->VALUES:[Lio/bidmachine/protobuf/PostbannerType;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 114
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/PostbannerType;
    .registers 2

    .line 9
    const-class v0, Lio/bidmachine/protobuf/PostbannerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/PostbannerType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/PostbannerType;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/PostbannerType;->$VALUES:[Lio/bidmachine/protobuf/PostbannerType;

    invoke-virtual {v0}, [Lio/bidmachine/protobuf/PostbannerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/protobuf/PostbannerType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 102
    invoke-static {}, Lio/bidmachine/protobuf/PostbannerType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .registers 3

    .line 49
    sget-object v0, Lio/bidmachine/protobuf/PostbannerType;->UNRECOGNIZED:Lio/bidmachine/protobuf/PostbannerType;

    if-eq p0, v0, :cond_7

    .line 53
    iget v0, p0, Lio/bidmachine/protobuf/PostbannerType;->value:I

    return v0

    .line 50
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .registers 3

    .line 94
    sget-object v0, Lio/bidmachine/protobuf/PostbannerType;->UNRECOGNIZED:Lio/bidmachine/protobuf/PostbannerType;

    if-eq p0, v0, :cond_17

    .line 98
    invoke-static {}, Lio/bidmachine/protobuf/PostbannerType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0

    .line 95
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class io.bidmachine.protobuf.PostbannerType.AnonymousClass1 (io.bidmachine.protobuf.PostbannerType$1)
.class Lio/bidmachine/protobuf/PostbannerType$1;
.super Ljava/lang/Object;
.source "PostbannerType.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/PostbannerType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lio/bidmachine/protobuf/PostbannerType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .registers 2

    .line 86
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/PostbannerType$1;->findValueByNumber(I)Lio/bidmachine/protobuf/PostbannerType;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lio/bidmachine/protobuf/PostbannerType;
    .registers 2

    .line 88
    invoke-static {p1}, Lio/bidmachine/protobuf/PostbannerType;->forNumber(I)Lio/bidmachine/protobuf/PostbannerType;

    move-result-object p1

    return-object p1
.end method

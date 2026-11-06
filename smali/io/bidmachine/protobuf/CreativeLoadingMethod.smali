###### Class io.bidmachine.protobuf.CreativeLoadingMethod (io.bidmachine.protobuf.CreativeLoadingMethod)
.class public final enum Lio/bidmachine/protobuf/CreativeLoadingMethod;
.super Ljava/lang/Enum;
.source "CreativeLoadingMethod.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/CreativeLoadingMethod;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/CreativeLoadingMethod;

.field public static final enum FullLoad:Lio/bidmachine/protobuf/CreativeLoadingMethod;

.field public static final FullLoad_VALUE:I = 0x0

.field public static final enum PartialLoad:Lio/bidmachine/protobuf/CreativeLoadingMethod;

.field public static final PartialLoad_VALUE:I = 0x2

.field public static final enum Stream:Lio/bidmachine/protobuf/CreativeLoadingMethod;

.field public static final Stream_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:Lio/bidmachine/protobuf/CreativeLoadingMethod;

.field private static final VALUES:[Lio/bidmachine/protobuf/CreativeLoadingMethod;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lio/bidmachine/protobuf/CreativeLoadingMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 14
    new-instance v0, Lio/bidmachine/protobuf/CreativeLoadingMethod;

    const-string v1, "FullLoad"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/protobuf/CreativeLoadingMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/protobuf/CreativeLoadingMethod;->FullLoad:Lio/bidmachine/protobuf/CreativeLoadingMethod;

    .line 18
    new-instance v1, Lio/bidmachine/protobuf/CreativeLoadingMethod;

    const-string v2, "Stream"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lio/bidmachine/protobuf/CreativeLoadingMethod;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/bidmachine/protobuf/CreativeLoadingMethod;->Stream:Lio/bidmachine/protobuf/CreativeLoadingMethod;

    .line 22
    new-instance v2, Lio/bidmachine/protobuf/CreativeLoadingMethod;

    const-string v3, "PartialLoad"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lio/bidmachine/protobuf/CreativeLoadingMethod;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/bidmachine/protobuf/CreativeLoadingMethod;->PartialLoad:Lio/bidmachine/protobuf/CreativeLoadingMethod;

    .line 23
    new-instance v3, Lio/bidmachine/protobuf/CreativeLoadingMethod;

    const/4 v4, 0x3

    const/4 v5, -0x1

    const-string v6, "UNRECOGNIZED"

    invoke-direct {v3, v6, v4, v5}, Lio/bidmachine/protobuf/CreativeLoadingMethod;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/bidmachine/protobuf/CreativeLoadingMethod;->UNRECOGNIZED:Lio/bidmachine/protobuf/CreativeLoadingMethod;

    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lio/bidmachine/protobuf/CreativeLoadingMethod;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/CreativeLoadingMethod;->$VALUES:[Lio/bidmachine/protobuf/CreativeLoadingMethod;

    .line 76
    new-instance v0, Lio/bidmachine/protobuf/CreativeLoadingMethod$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/CreativeLoadingMethod$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/CreativeLoadingMethod;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 100
    invoke-static {}, Lio/bidmachine/protobuf/CreativeLoadingMethod;->values()[Lio/bidmachine/protobuf/CreativeLoadingMethod;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/CreativeLoadingMethod;->VALUES:[Lio/bidmachine/protobuf/CreativeLoadingMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput p3, p0, Lio/bidmachine/protobuf/CreativeLoadingMethod;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/CreativeLoadingMethod;
    .registers 2

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_a
    sget-object p0, Lio/bidmachine/protobuf/CreativeLoadingMethod;->PartialLoad:Lio/bidmachine/protobuf/CreativeLoadingMethod;

    return-object p0

    .line 65
    :cond_d
    sget-object p0, Lio/bidmachine/protobuf/CreativeLoadingMethod;->Stream:Lio/bidmachine/protobuf/CreativeLoadingMethod;

    return-object p0

    .line 64
    :cond_10
    sget-object p0, Lio/bidmachine/protobuf/CreativeLoadingMethod;->FullLoad:Lio/bidmachine/protobuf/CreativeLoadingMethod;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 97
    invoke-static {}, Lio/bidmachine/protobuf/ExtensionsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

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
            "Lio/bidmachine/protobuf/CreativeLoadingMethod;",
            ">;"
        }
    .end annotation

    .line 73
    sget-object v0, Lio/bidmachine/protobuf/CreativeLoadingMethod;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/CreativeLoadingMethod;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    invoke-static {p0}, Lio/bidmachine/protobuf/CreativeLoadingMethod;->forNumber(I)Lio/bidmachine/protobuf/CreativeLoadingMethod;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lio/bidmachine/protobuf/CreativeLoadingMethod;
    .registers 3

    .line 104
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lio/bidmachine/protobuf/CreativeLoadingMethod;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 108
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 109
    sget-object p0, Lio/bidmachine/protobuf/CreativeLoadingMethod;->UNRECOGNIZED:Lio/bidmachine/protobuf/CreativeLoadingMethod;

    return-object p0

    .line 111
    :cond_14
    sget-object v0, Lio/bidmachine/protobuf/CreativeLoadingMethod;->VALUES:[Lio/bidmachine/protobuf/CreativeLoadingMethod;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 105
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/CreativeLoadingMethod;
    .registers 2

    .line 9
    const-class v0, Lio/bidmachine/protobuf/CreativeLoadingMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/CreativeLoadingMethod;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/CreativeLoadingMethod;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/CreativeLoadingMethod;->$VALUES:[Lio/bidmachine/protobuf/CreativeLoadingMethod;

    invoke-virtual {v0}, [Lio/bidmachine/protobuf/CreativeLoadingMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/protobuf/CreativeLoadingMethod;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 93
    invoke-static {}, Lio/bidmachine/protobuf/CreativeLoadingMethod;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .registers 3

    .line 41
    sget-object v0, Lio/bidmachine/protobuf/CreativeLoadingMethod;->UNRECOGNIZED:Lio/bidmachine/protobuf/CreativeLoadingMethod;

    if-eq p0, v0, :cond_7

    .line 45
    iget v0, p0, Lio/bidmachine/protobuf/CreativeLoadingMethod;->value:I

    return v0

    .line 42
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .registers 3

    .line 85
    sget-object v0, Lio/bidmachine/protobuf/CreativeLoadingMethod;->UNRECOGNIZED:Lio/bidmachine/protobuf/CreativeLoadingMethod;

    if-eq p0, v0, :cond_17

    .line 89
    invoke-static {}, Lio/bidmachine/protobuf/CreativeLoadingMethod;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0

    .line 86
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class io.bidmachine.protobuf.CreativeLoadingMethod.AnonymousClass1 (io.bidmachine.protobuf.CreativeLoadingMethod$1)
.class Lio/bidmachine/protobuf/CreativeLoadingMethod$1;
.super Ljava/lang/Object;
.source "CreativeLoadingMethod.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/CreativeLoadingMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lio/bidmachine/protobuf/CreativeLoadingMethod;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .registers 2

    .line 77
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/CreativeLoadingMethod$1;->findValueByNumber(I)Lio/bidmachine/protobuf/CreativeLoadingMethod;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lio/bidmachine/protobuf/CreativeLoadingMethod;
    .registers 2

    .line 79
    invoke-static {p1}, Lio/bidmachine/protobuf/CreativeLoadingMethod;->forNumber(I)Lio/bidmachine/protobuf/CreativeLoadingMethod;

    move-result-object p1

    return-object p1
.end method

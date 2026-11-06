###### Class io.bidmachine.protobuf.OSExecutionEnvironment (io.bidmachine.protobuf.OSExecutionEnvironment)
.class public final enum Lio/bidmachine/protobuf/OSExecutionEnvironment;
.super Ljava/lang/Enum;
.source "OSExecutionEnvironment.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/OSExecutionEnvironment;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/OSExecutionEnvironment;

.field public static final enum OS_EXECUTION_ENVIRONMENT_MAC_CATALYST:Lio/bidmachine/protobuf/OSExecutionEnvironment;

.field public static final OS_EXECUTION_ENVIRONMENT_MAC_CATALYST_VALUE:I = 0x1

.field public static final enum OS_EXECUTION_ENVIRONMENT_MAC_IOS:Lio/bidmachine/protobuf/OSExecutionEnvironment;

.field public static final OS_EXECUTION_ENVIRONMENT_MAC_IOS_VALUE:I = 0x2

.field public static final enum OS_EXECUTION_ENVIRONMENT_NATIVE_IOS:Lio/bidmachine/protobuf/OSExecutionEnvironment;

.field public static final OS_EXECUTION_ENVIRONMENT_NATIVE_IOS_VALUE:I = 0x3

.field public static final enum OS_EXECUTION_ENVIRONMENT_UNKNOWN:Lio/bidmachine/protobuf/OSExecutionEnvironment;

.field public static final OS_EXECUTION_ENVIRONMENT_UNKNOWN_VALUE:I

.field public static final enum UNRECOGNIZED:Lio/bidmachine/protobuf/OSExecutionEnvironment;

.field private static final VALUES:[Lio/bidmachine/protobuf/OSExecutionEnvironment;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lio/bidmachine/protobuf/OSExecutionEnvironment;",
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
    new-instance v0, Lio/bidmachine/protobuf/OSExecutionEnvironment;

    const-string v1, "OS_EXECUTION_ENVIRONMENT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/protobuf/OSExecutionEnvironment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/protobuf/OSExecutionEnvironment;->OS_EXECUTION_ENVIRONMENT_UNKNOWN:Lio/bidmachine/protobuf/OSExecutionEnvironment;

    .line 18
    new-instance v1, Lio/bidmachine/protobuf/OSExecutionEnvironment;

    const-string v2, "OS_EXECUTION_ENVIRONMENT_MAC_CATALYST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lio/bidmachine/protobuf/OSExecutionEnvironment;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/bidmachine/protobuf/OSExecutionEnvironment;->OS_EXECUTION_ENVIRONMENT_MAC_CATALYST:Lio/bidmachine/protobuf/OSExecutionEnvironment;

    .line 22
    new-instance v2, Lio/bidmachine/protobuf/OSExecutionEnvironment;

    const-string v3, "OS_EXECUTION_ENVIRONMENT_MAC_IOS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lio/bidmachine/protobuf/OSExecutionEnvironment;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/bidmachine/protobuf/OSExecutionEnvironment;->OS_EXECUTION_ENVIRONMENT_MAC_IOS:Lio/bidmachine/protobuf/OSExecutionEnvironment;

    .line 26
    new-instance v3, Lio/bidmachine/protobuf/OSExecutionEnvironment;

    const-string v4, "OS_EXECUTION_ENVIRONMENT_NATIVE_IOS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lio/bidmachine/protobuf/OSExecutionEnvironment;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/bidmachine/protobuf/OSExecutionEnvironment;->OS_EXECUTION_ENVIRONMENT_NATIVE_IOS:Lio/bidmachine/protobuf/OSExecutionEnvironment;

    .line 27
    new-instance v4, Lio/bidmachine/protobuf/OSExecutionEnvironment;

    const/4 v5, 0x4

    const/4 v6, -0x1

    const-string v7, "UNRECOGNIZED"

    invoke-direct {v4, v7, v5, v6}, Lio/bidmachine/protobuf/OSExecutionEnvironment;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/bidmachine/protobuf/OSExecutionEnvironment;->UNRECOGNIZED:Lio/bidmachine/protobuf/OSExecutionEnvironment;

    .line 9
    filled-new-array {v0, v1, v2, v3, v4}, [Lio/bidmachine/protobuf/OSExecutionEnvironment;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/OSExecutionEnvironment;->$VALUES:[Lio/bidmachine/protobuf/OSExecutionEnvironment;

    .line 85
    new-instance v0, Lio/bidmachine/protobuf/OSExecutionEnvironment$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/OSExecutionEnvironment$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/OSExecutionEnvironment;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 109
    invoke-static {}, Lio/bidmachine/protobuf/OSExecutionEnvironment;->values()[Lio/bidmachine/protobuf/OSExecutionEnvironment;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/OSExecutionEnvironment;->VALUES:[Lio/bidmachine/protobuf/OSExecutionEnvironment;

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
    iput p3, p0, Lio/bidmachine/protobuf/OSExecutionEnvironment;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/OSExecutionEnvironment;
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
    sget-object p0, Lio/bidmachine/protobuf/OSExecutionEnvironment;->OS_EXECUTION_ENVIRONMENT_NATIVE_IOS:Lio/bidmachine/protobuf/OSExecutionEnvironment;

    return-object p0

    .line 74
    :cond_10
    sget-object p0, Lio/bidmachine/protobuf/OSExecutionEnvironment;->OS_EXECUTION_ENVIRONMENT_MAC_IOS:Lio/bidmachine/protobuf/OSExecutionEnvironment;

    return-object p0

    .line 73
    :cond_13
    sget-object p0, Lio/bidmachine/protobuf/OSExecutionEnvironment;->OS_EXECUTION_ENVIRONMENT_MAC_CATALYST:Lio/bidmachine/protobuf/OSExecutionEnvironment;

    return-object p0

    .line 72
    :cond_16
    sget-object p0, Lio/bidmachine/protobuf/OSExecutionEnvironment;->OS_EXECUTION_ENVIRONMENT_UNKNOWN:Lio/bidmachine/protobuf/OSExecutionEnvironment;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 106
    invoke-static {}, Lio/bidmachine/protobuf/InitProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

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
            "Lio/bidmachine/protobuf/OSExecutionEnvironment;",
            ">;"
        }
    .end annotation

    .line 82
    sget-object v0, Lio/bidmachine/protobuf/OSExecutionEnvironment;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/OSExecutionEnvironment;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    invoke-static {p0}, Lio/bidmachine/protobuf/OSExecutionEnvironment;->forNumber(I)Lio/bidmachine/protobuf/OSExecutionEnvironment;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lio/bidmachine/protobuf/OSExecutionEnvironment;
    .registers 3

    .line 113
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lio/bidmachine/protobuf/OSExecutionEnvironment;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 117
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 118
    sget-object p0, Lio/bidmachine/protobuf/OSExecutionEnvironment;->UNRECOGNIZED:Lio/bidmachine/protobuf/OSExecutionEnvironment;

    return-object p0

    .line 120
    :cond_14
    sget-object v0, Lio/bidmachine/protobuf/OSExecutionEnvironment;->VALUES:[Lio/bidmachine/protobuf/OSExecutionEnvironment;

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

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/OSExecutionEnvironment;
    .registers 2

    .line 9
    const-class v0, Lio/bidmachine/protobuf/OSExecutionEnvironment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/OSExecutionEnvironment;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/OSExecutionEnvironment;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/OSExecutionEnvironment;->$VALUES:[Lio/bidmachine/protobuf/OSExecutionEnvironment;

    invoke-virtual {v0}, [Lio/bidmachine/protobuf/OSExecutionEnvironment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/protobuf/OSExecutionEnvironment;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 102
    invoke-static {}, Lio/bidmachine/protobuf/OSExecutionEnvironment;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .registers 3

    .line 49
    sget-object v0, Lio/bidmachine/protobuf/OSExecutionEnvironment;->UNRECOGNIZED:Lio/bidmachine/protobuf/OSExecutionEnvironment;

    if-eq p0, v0, :cond_7

    .line 53
    iget v0, p0, Lio/bidmachine/protobuf/OSExecutionEnvironment;->value:I

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
    sget-object v0, Lio/bidmachine/protobuf/OSExecutionEnvironment;->UNRECOGNIZED:Lio/bidmachine/protobuf/OSExecutionEnvironment;

    if-eq p0, v0, :cond_17

    .line 98
    invoke-static {}, Lio/bidmachine/protobuf/OSExecutionEnvironment;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

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

###### Class io.bidmachine.protobuf.OSExecutionEnvironment.AnonymousClass1 (io.bidmachine.protobuf.OSExecutionEnvironment$1)
.class Lio/bidmachine/protobuf/OSExecutionEnvironment$1;
.super Ljava/lang/Object;
.source "OSExecutionEnvironment.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/OSExecutionEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lio/bidmachine/protobuf/OSExecutionEnvironment;",
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
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/OSExecutionEnvironment$1;->findValueByNumber(I)Lio/bidmachine/protobuf/OSExecutionEnvironment;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lio/bidmachine/protobuf/OSExecutionEnvironment;
    .registers 2

    .line 88
    invoke-static {p1}, Lio/bidmachine/protobuf/OSExecutionEnvironment;->forNumber(I)Lio/bidmachine/protobuf/OSExecutionEnvironment;

    move-result-object p1

    return-object p1
.end method

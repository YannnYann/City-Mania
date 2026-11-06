###### Class io.bidmachine.protobuf.sdk.RestrictionKind (io.bidmachine.protobuf.sdk.RestrictionKind)
.class public final enum Lio/bidmachine/protobuf/sdk/RestrictionKind;
.super Ljava/lang/Enum;
.source "RestrictionKind.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/sdk/RestrictionKind;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/sdk/RestrictionKind;

.field public static final enum RESTRICTION_KIND_CCPA_OPT_OUT:Lio/bidmachine/protobuf/sdk/RestrictionKind;

.field public static final RESTRICTION_KIND_CCPA_OPT_OUT_VALUE:I = 0x4

.field public static final enum RESTRICTION_KIND_COPPA:Lio/bidmachine/protobuf/sdk/RestrictionKind;

.field public static final RESTRICTION_KIND_COPPA_VALUE:I = 0x1

.field public static final enum RESTRICTION_KIND_GDPR_NO_CONSENT:Lio/bidmachine/protobuf/sdk/RestrictionKind;

.field public static final RESTRICTION_KIND_GDPR_NO_CONSENT_VALUE:I = 0x3

.field public static final enum RESTRICTION_KIND_NONE:Lio/bidmachine/protobuf/sdk/RestrictionKind;

.field public static final RESTRICTION_KIND_NONE_VALUE:I = 0x0

.field public static final enum RESTRICTION_KIND_NON_PERSONALIZED:Lio/bidmachine/protobuf/sdk/RestrictionKind;

.field public static final RESTRICTION_KIND_NON_PERSONALIZED_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/RestrictionKind;

.field private static final VALUES:[Lio/bidmachine/protobuf/sdk/RestrictionKind;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lio/bidmachine/protobuf/sdk/RestrictionKind;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 14
    new-instance v0, Lio/bidmachine/protobuf/sdk/RestrictionKind;

    const-string v1, "RESTRICTION_KIND_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/protobuf/sdk/RestrictionKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/protobuf/sdk/RestrictionKind;->RESTRICTION_KIND_NONE:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    .line 18
    new-instance v1, Lio/bidmachine/protobuf/sdk/RestrictionKind;

    const-string v2, "RESTRICTION_KIND_COPPA"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lio/bidmachine/protobuf/sdk/RestrictionKind;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/bidmachine/protobuf/sdk/RestrictionKind;->RESTRICTION_KIND_COPPA:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    .line 22
    new-instance v2, Lio/bidmachine/protobuf/sdk/RestrictionKind;

    const-string v3, "RESTRICTION_KIND_NON_PERSONALIZED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lio/bidmachine/protobuf/sdk/RestrictionKind;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/bidmachine/protobuf/sdk/RestrictionKind;->RESTRICTION_KIND_NON_PERSONALIZED:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    .line 26
    new-instance v3, Lio/bidmachine/protobuf/sdk/RestrictionKind;

    const-string v4, "RESTRICTION_KIND_GDPR_NO_CONSENT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lio/bidmachine/protobuf/sdk/RestrictionKind;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/bidmachine/protobuf/sdk/RestrictionKind;->RESTRICTION_KIND_GDPR_NO_CONSENT:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    .line 30
    new-instance v4, Lio/bidmachine/protobuf/sdk/RestrictionKind;

    const-string v5, "RESTRICTION_KIND_CCPA_OPT_OUT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lio/bidmachine/protobuf/sdk/RestrictionKind;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/bidmachine/protobuf/sdk/RestrictionKind;->RESTRICTION_KIND_CCPA_OPT_OUT:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    .line 31
    new-instance v5, Lio/bidmachine/protobuf/sdk/RestrictionKind;

    const/4 v6, 0x5

    const/4 v7, -0x1

    const-string v8, "UNRECOGNIZED"

    invoke-direct {v5, v8, v6, v7}, Lio/bidmachine/protobuf/sdk/RestrictionKind;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/bidmachine/protobuf/sdk/RestrictionKind;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    .line 9
    filled-new-array/range {v0 .. v5}, [Lio/bidmachine/protobuf/sdk/RestrictionKind;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/sdk/RestrictionKind;->$VALUES:[Lio/bidmachine/protobuf/sdk/RestrictionKind;

    .line 94
    new-instance v0, Lio/bidmachine/protobuf/sdk/RestrictionKind$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/RestrictionKind$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/RestrictionKind;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 118
    invoke-static {}, Lio/bidmachine/protobuf/sdk/RestrictionKind;->values()[Lio/bidmachine/protobuf/sdk/RestrictionKind;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/sdk/RestrictionKind;->VALUES:[Lio/bidmachine/protobuf/sdk/RestrictionKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 135
    iput p3, p0, Lio/bidmachine/protobuf/sdk/RestrictionKind;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/sdk/RestrictionKind;
    .registers 2

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 v0, 0x4

    if-eq p0, v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 84
    :cond_10
    sget-object p0, Lio/bidmachine/protobuf/sdk/RestrictionKind;->RESTRICTION_KIND_CCPA_OPT_OUT:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    return-object p0

    .line 83
    :cond_13
    sget-object p0, Lio/bidmachine/protobuf/sdk/RestrictionKind;->RESTRICTION_KIND_GDPR_NO_CONSENT:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    return-object p0

    .line 82
    :cond_16
    sget-object p0, Lio/bidmachine/protobuf/sdk/RestrictionKind;->RESTRICTION_KIND_NON_PERSONALIZED:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    return-object p0

    .line 81
    :cond_19
    sget-object p0, Lio/bidmachine/protobuf/sdk/RestrictionKind;->RESTRICTION_KIND_COPPA:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    return-object p0

    .line 80
    :cond_1c
    sget-object p0, Lio/bidmachine/protobuf/sdk/RestrictionKind;->RESTRICTION_KIND_NONE:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 115
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKContextProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

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
            "Lio/bidmachine/protobuf/sdk/RestrictionKind;",
            ">;"
        }
    .end annotation

    .line 91
    sget-object v0, Lio/bidmachine/protobuf/sdk/RestrictionKind;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/sdk/RestrictionKind;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    invoke-static {p0}, Lio/bidmachine/protobuf/sdk/RestrictionKind;->forNumber(I)Lio/bidmachine/protobuf/sdk/RestrictionKind;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lio/bidmachine/protobuf/sdk/RestrictionKind;
    .registers 3

    .line 122
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lio/bidmachine/protobuf/sdk/RestrictionKind;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 126
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 127
    sget-object p0, Lio/bidmachine/protobuf/sdk/RestrictionKind;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    return-object p0

    .line 129
    :cond_14
    sget-object v0, Lio/bidmachine/protobuf/sdk/RestrictionKind;->VALUES:[Lio/bidmachine/protobuf/sdk/RestrictionKind;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 123
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/RestrictionKind;
    .registers 2

    .line 9
    const-class v0, Lio/bidmachine/protobuf/sdk/RestrictionKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/RestrictionKind;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/sdk/RestrictionKind;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/sdk/RestrictionKind;->$VALUES:[Lio/bidmachine/protobuf/sdk/RestrictionKind;

    invoke-virtual {v0}, [Lio/bidmachine/protobuf/sdk/RestrictionKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/protobuf/sdk/RestrictionKind;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 111
    invoke-static {}, Lio/bidmachine/protobuf/sdk/RestrictionKind;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .registers 3

    .line 57
    sget-object v0, Lio/bidmachine/protobuf/sdk/RestrictionKind;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    if-eq p0, v0, :cond_7

    .line 61
    iget v0, p0, Lio/bidmachine/protobuf/sdk/RestrictionKind;->value:I

    return v0

    .line 58
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .registers 3

    .line 103
    sget-object v0, Lio/bidmachine/protobuf/sdk/RestrictionKind;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/RestrictionKind;

    if-eq p0, v0, :cond_17

    .line 107
    invoke-static {}, Lio/bidmachine/protobuf/sdk/RestrictionKind;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0

    .line 104
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class io.bidmachine.protobuf.sdk.RestrictionKind.AnonymousClass1 (io.bidmachine.protobuf.sdk.RestrictionKind$1)
.class Lio/bidmachine/protobuf/sdk/RestrictionKind$1;
.super Ljava/lang/Object;
.source "RestrictionKind.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/RestrictionKind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lio/bidmachine/protobuf/sdk/RestrictionKind;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .registers 2

    .line 95
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/RestrictionKind$1;->findValueByNumber(I)Lio/bidmachine/protobuf/sdk/RestrictionKind;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lio/bidmachine/protobuf/sdk/RestrictionKind;
    .registers 2

    .line 97
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/RestrictionKind;->forNumber(I)Lio/bidmachine/protobuf/sdk/RestrictionKind;

    move-result-object p1

    return-object p1
.end method

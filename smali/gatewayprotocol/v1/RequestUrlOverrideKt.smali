###### Class gatewayprotocol.v1.RequestUrlOverrideKt (gatewayprotocol.v1.RequestUrlOverrideKt)
.class public final Lgatewayprotocol/v1/RequestUrlOverrideKt;
.super Ljava/lang/Object;
.source "RequestUrlOverrideKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/RequestUrlOverrideKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/RequestUrlOverrideKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/RequestUrlOverrideKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/RequestUrlOverrideKt;->INSTANCE:Lgatewayprotocol/v1/RequestUrlOverrideKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.RequestUrlOverrideKt.Dsl (gatewayprotocol.v1.RequestUrlOverrideKt$Dsl)
.class public final Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;
.super Ljava/lang/Object;
.source "RequestUrlOverrideKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/RequestUrlOverrideKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;->Companion:Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;-><init>(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .registers 3

    .line 28
    iget-object v0, p0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object v0
.end method

.method public final clearRequestType()V
    .registers 2

    .line 51
    iget-object v0, p0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;->clearRequestType()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    return-void
.end method

.method public final clearUrl()V
    .registers 2

    .line 68
    iget-object v0, p0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;->clearUrl()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    return-void
.end method

.method public final getRequestType()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;
    .registers 3

    .line 35
    iget-object v0, p0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;->getRequestType()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    move-result-object v0

    const-string v1, "getRequestType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getRequestTypeValue()I
    .registers 2

    .line 42
    iget-object v0, p0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;->getRequestTypeValue()I

    move-result v0

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 3

    .line 59
    iget-object v0, p0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUrl(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setRequestType(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;->setRequestType(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    return-void
.end method

.method public final setRequestTypeValue(I)V
    .registers 3

    .line 45
    iget-object v0, p0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;->setRequestTypeValue(I)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;->setUrl(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.RequestUrlOverrideKt.Dsl.Companion (gatewayprotocol.v1.RequestUrlOverrideKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "RequestUrlOverrideKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;)Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;-><init>(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

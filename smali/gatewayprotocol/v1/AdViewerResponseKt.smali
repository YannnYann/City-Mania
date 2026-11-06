###### Class gatewayprotocol.v1.AdViewerResponseKt (gatewayprotocol.v1.AdViewerResponseKt)
.class public final Lgatewayprotocol/v1/AdViewerResponseKt;
.super Ljava/lang/Object;
.source "AdViewerResponseKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/AdViewerResponseKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/AdViewerResponseKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/AdViewerResponseKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/AdViewerResponseKt;->INSTANCE:Lgatewayprotocol/v1/AdViewerResponseKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.AdViewerResponseKt.Dsl (gatewayprotocol.v1.AdViewerResponseKt$Dsl)
.class public final Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;
.super Ljava/lang/Object;
.source "AdViewerResponseKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdViewerResponseKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AdViewerResponseKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/AdViewerResponseKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->Companion:Lgatewayprotocol/v1/AdViewerResponseKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;-><init>(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;
    .registers 3

    .line 32
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    return-object v0
.end method

.method public final clearError()V
    .registers 2

    .line 106
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->clearError()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    return-void
.end method

.method public final clearPayload()V
    .registers 2

    .line 56
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->clearPayload()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    return-void
.end method

.method public final clearPayloadVersion()V
    .registers 2

    .line 81
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->clearPayloadVersion()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    return-void
.end method

.method public final getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 3

    .line 93
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    const-string v1, "getError(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getErrorOrNull(Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object p1, p1, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-static {p1}, Lgatewayprotocol/v1/AdViewerResponseKtKt;->getErrorOrNull(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponseOrBuilder;)Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object p1

    return-object p1
.end method

.method public final getPayload()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 43
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getPayload(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPayloadVersion()I
    .registers 2

    .line 68
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->getPayloadVersion()I

    move-result v0

    return v0
.end method

.method public final hasError()Z
    .registers 2

    .line 117
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->hasError()Z

    move-result v0

    return v0
.end method

.method public final setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    return-void
.end method

.method public final setPayload(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->setPayload(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    return-void
.end method

.method public final setPayloadVersion(I)V
    .registers 3

    .line 71
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->setPayloadVersion(I)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.AdViewerResponseKt.Dsl.Companion (gatewayprotocol.v1.AdViewerResponseKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/AdViewerResponseKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "AdViewerResponseKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;)Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;-><init>(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

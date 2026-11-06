###### Class gatewayprotocol.v1.InitializationDataKt (gatewayprotocol.v1.InitializationDataKt)
.class public final Lgatewayprotocol/v1/InitializationDataKt;
.super Ljava/lang/Object;
.source "InitializationDataKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/InitializationDataKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/InitializationDataKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/InitializationDataKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/InitializationDataKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/InitializationDataKt;->INSTANCE:Lgatewayprotocol/v1/InitializationDataKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.InitializationDataKt.Dsl (gatewayprotocol.v1.InitializationDataKt$Dsl)
.class public final Lgatewayprotocol/v1/InitializationDataKt$Dsl;
.super Ljava/lang/Object;
.source "InitializationDataKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationDataKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/InitializationDataKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/InitializationDataKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/InitializationDataKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/InitializationDataKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->Companion:Lgatewayprotocol/v1/InitializationDataKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationDataKt$Dsl;-><init>(Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;
    .registers 3

    .line 28
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    return-object v0
.end method

.method public final clearInitializationRequest()V
    .registers 2

    .line 44
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;->clearInitializationRequest()Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    return-void
.end method

.method public final clearSharedData()V
    .registers 2

    .line 70
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;->clearSharedData()Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    return-void
.end method

.method public final getInitializationRequest()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;
    .registers 3

    .line 35
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;->getInitializationRequest()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    move-result-object v0

    const-string v1, "getInitializationRequest(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getInitializationRequestOrNull(Lgatewayprotocol/v1/InitializationDataKt$Dsl;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object p1, p1, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    invoke-static {p1}, Lgatewayprotocol/v1/InitializationDataKtKt;->getInitializationRequestOrNull(Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationDataOrBuilder;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    move-result-object p1

    return-object p1
.end method

.method public final getSharedData()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .registers 3

    .line 61
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;->getSharedData()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    move-result-object v0

    const-string v1, "getSharedData(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSharedDataOrNull(Lgatewayprotocol/v1/InitializationDataKt$Dsl;)Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object p1, p1, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    invoke-static {p1}, Lgatewayprotocol/v1/InitializationDataKtKt;->getSharedDataOrNull(Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationDataOrBuilder;)Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    move-result-object p1

    return-object p1
.end method

.method public final hasInitializationRequest()Z
    .registers 2

    .line 51
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;->hasInitializationRequest()Z

    move-result v0

    return v0
.end method

.method public final hasSharedData()Z
    .registers 2

    .line 77
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;->hasSharedData()Z

    move-result v0

    return v0
.end method

.method public final setInitializationRequest(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;->setInitializationRequest(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    return-void
.end method

.method public final setSharedData(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationDataKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;->setSharedData(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.InitializationDataKt.Dsl.Companion (gatewayprotocol.v1.InitializationDataKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/InitializationDataKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "InitializationDataKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationDataKt$Dsl;
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
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationDataKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;)Lgatewayprotocol/v1/InitializationDataKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lgatewayprotocol/v1/InitializationDataKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/InitializationDataKt$Dsl;-><init>(Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

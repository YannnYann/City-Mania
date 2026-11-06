###### Class gatewayprotocol.v1.InitializationRequestKt (gatewayprotocol.v1.InitializationRequestKt)
.class public final Lgatewayprotocol/v1/InitializationRequestKt;
.super Ljava/lang/Object;
.source "InitializationRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/InitializationRequestKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/InitializationRequestKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/InitializationRequestKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/InitializationRequestKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/InitializationRequestKt;->INSTANCE:Lgatewayprotocol/v1/InitializationRequestKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.InitializationRequestKt.Dsl (gatewayprotocol.v1.InitializationRequestKt$Dsl)
.class public final Lgatewayprotocol/v1/InitializationRequestKt$Dsl;
.super Ljava/lang/Object;
.source "InitializationRequestKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationRequestKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/InitializationRequestKt$Dsl$Companion;,
        Lgatewayprotocol/v1/InitializationRequestKt$Dsl$ExtrasProxy;,
        Lgatewayprotocol/v1/InitializationRequestKt$Dsl$ModuleInitParamsProxy;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/InitializationRequestKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->Companion:Lgatewayprotocol/v1/InitializationRequestKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;-><init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;
    .registers 3

    .line 32
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    return-object v0
.end method

.method public final synthetic addAllModuleInitParams(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 799
    iget-object p1, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->addAllModuleInitParams(Ljava/lang/Iterable;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final synthetic addModuleInitParams(Lcom/google/protobuf/kotlin/DslList;Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 772
    iget-object p1, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->addModuleInitParams(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final clearAnalyticsUserId()V
    .registers 2

    .line 287
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearAnalyticsUserId()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final clearAuid()V
    .registers 2

    .line 247
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearAuid()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final clearAuidString()V
    .registers 2

    .line 390
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearAuidString()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final clearCache()V
    .registers 2

    .line 170
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearCache()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final clearClientInfo()V
    .registers 2

    .line 48
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearClientInfo()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final clearDeviceInfo()V
    .registers 2

    .line 325
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearDeviceInfo()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final clearExternalUserIdentifier()V
    .registers 2

    .line 534
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearExternalUserIdentifier()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final synthetic clearExtras(Lcom/google/protobuf/kotlin/DslMap;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    iget-object p1, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearExtras()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final clearGoogleAppId()V
    .registers 2

    .line 729
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearGoogleAppId()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final clearIdfi()V
    .registers 2

    .line 116
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearIdfi()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final clearInstallReferrer()V
    .registers 2

    .line 691
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearInstallReferrer()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final clearInstallSource()V
    .registers 2

    .line 870
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearInstallSource()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final clearIsFirstInit()V
    .registers 2

    .line 365
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearIsFirstInit()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final clearLegacyFlowUserConsent()V
    .registers 2

    .line 210
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearLegacyFlowUserConsent()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final synthetic clearModuleInitParams(Lcom/google/protobuf/kotlin/DslList;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 839
    iget-object p1, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearModuleInitParams()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final clearPrivacy()V
    .registers 2

    .line 80
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearPrivacy()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final clearSessionId()V
    .registers 2

    .line 141
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearSessionId()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final clearUadsInitBlob()V
    .registers 2

    .line 426
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearUadsInitBlob()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final clearUnityBuildGuid()V
    .registers 2

    .line 655
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearUnityBuildGuid()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final clearUnityInstallationId()V
    .registers 2

    .line 462
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearUnityInstallationId()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final clearUnityMegaSessionId()V
    .registers 2

    .line 498
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->clearUnityMegaSessionId()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final getAnalyticsUserId()Ljava/lang/String;
    .registers 3

    .line 272
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getAnalyticsUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAnalyticsUserId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAuid()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 234
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getAuid()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getAuid(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAuidString()Ljava/lang/String;
    .registers 3

    .line 377
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getAuidString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAuidString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCache()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 155
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getCache()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getCache(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getClientInfo()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .registers 3

    .line 39
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getClientInfo()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    const-string v1, "getClientInfo(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getDeviceInfo()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;
    .registers 3

    .line 312
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getDeviceInfo()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    move-result-object v0

    const-string v1, "getDeviceInfo(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getExternalUserIdentifier()Ljava/lang/String;
    .registers 3

    .line 521
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getExternalUserIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getExternalUserIdentifier(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic getExtrasMap()Lcom/google/protobuf/kotlin/DslMap;
    .registers 4

    .line 564
    new-instance v0, Lcom/google/protobuf/kotlin/DslMap;

    .line 565
    iget-object v1, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getExtrasMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "getExtrasMap(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final getGoogleAppId()Ljava/lang/String;
    .registers 3

    .line 716
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getGoogleAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getGoogleAppId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getIdfi()Ljava/lang/String;
    .registers 3

    .line 103
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getIdfi()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getIdfi(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getInstallReferrer()Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;
    .registers 3

    .line 678
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getInstallReferrer()Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;

    move-result-object v0

    const-string v1, "getInstallReferrer(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getInstallReferrerOrNull(Lgatewayprotocol/v1/InitializationRequestKt$Dsl;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 705
    iget-object p1, p1, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-static {p1}, Lgatewayprotocol/v1/InitializationRequestKtKt;->getInstallReferrerOrNull(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequestOrBuilder;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;

    move-result-object p1

    return-object p1
.end method

.method public final getInstallSource()Ljava/lang/String;
    .registers 3

    .line 854
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getInstallSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInstallSource(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getIsFirstInit()Z
    .registers 2

    .line 350
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getIsFirstInit()Z

    move-result v0

    return v0
.end method

.method public final getLegacyFlowUserConsent()Ljava/lang/String;
    .registers 3

    .line 196
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getLegacyFlowUserConsent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getLegacyFlowUserConsent(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic getModuleInitParams()Lcom/google/protobuf/kotlin/DslList;
    .registers 4

    .line 758
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 759
    iget-object v1, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getModuleInitParamsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getModuleInitParamsList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 758
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getPrivacy()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 67
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getPrivacy()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getPrivacy(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSessionId()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 128
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getSessionId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getSessionId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUadsInitBlob()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 413
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getUadsInitBlob()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getUadsInitBlob(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUnityBuildGuid()Ljava/lang/String;
    .registers 3

    .line 642
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getUnityBuildGuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUnityBuildGuid(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUnityInstallationId()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 449
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getUnityInstallationId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getUnityInstallationId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUnityMegaSessionId()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 485
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getUnityMegaSessionId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getUnityMegaSessionId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hasAnalyticsUserId()Z
    .registers 2

    .line 300
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasAnalyticsUserId()Z

    move-result v0

    return v0
.end method

.method public final hasAuid()Z
    .registers 2

    .line 258
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasAuid()Z

    move-result v0

    return v0
.end method

.method public final hasAuidString()Z
    .registers 2

    .line 401
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasAuidString()Z

    move-result v0

    return v0
.end method

.method public final hasCache()Z
    .registers 2

    .line 183
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasCache()Z

    move-result v0

    return v0
.end method

.method public final hasClientInfo()Z
    .registers 2

    .line 55
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasClientInfo()Z

    move-result v0

    return v0
.end method

.method public final hasDeviceInfo()Z
    .registers 2

    .line 336
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public final hasExternalUserIdentifier()Z
    .registers 2

    .line 545
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasExternalUserIdentifier()Z

    move-result v0

    return v0
.end method

.method public final hasGoogleAppId()Z
    .registers 2

    .line 740
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasGoogleAppId()Z

    move-result v0

    return v0
.end method

.method public final hasInstallReferrer()Z
    .registers 2

    .line 702
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasInstallReferrer()Z

    move-result v0

    return v0
.end method

.method public final hasInstallSource()Z
    .registers 2

    .line 884
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasInstallSource()Z

    move-result v0

    return v0
.end method

.method public final hasLegacyFlowUserConsent()Z
    .registers 2

    .line 222
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasLegacyFlowUserConsent()Z

    move-result v0

    return v0
.end method

.method public final hasPrivacy()Z
    .registers 2

    .line 91
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasPrivacy()Z

    move-result v0

    return v0
.end method

.method public final hasUadsInitBlob()Z
    .registers 2

    .line 437
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasUadsInitBlob()Z

    move-result v0

    return v0
.end method

.method public final hasUnityBuildGuid()Z
    .registers 2

    .line 666
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasUnityBuildGuid()Z

    move-result v0

    return v0
.end method

.method public final hasUnityInstallationId()Z
    .registers 2

    .line 473
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasUnityInstallationId()Z

    move-result v0

    return v0
.end method

.method public final hasUnityMegaSessionId()Z
    .registers 2

    .line 509
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->hasUnityMegaSessionId()Z

    move-result v0

    return v0
.end method

.method public final synthetic plusAssignAllModuleInitParams(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;",
            "Lgatewayprotocol/v1/InitializationRequestKt$Dsl$ModuleInitParamsProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 813
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->addAllModuleInitParams(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignModuleInitParams(Lcom/google/protobuf/kotlin/DslList;Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;",
            "Lgatewayprotocol/v1/InitializationRequestKt$Dsl$ModuleInitParamsProxy;",
            ">;",
            "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 786
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->addModuleInitParams(Lcom/google/protobuf/kotlin/DslList;Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;)V

    return-void
.end method

.method public final synthetic putAllExtras(Lcom/google/protobuf/kotlin/DslMap;Ljava/util/Map;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "map"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    iget-object p1, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->putAllExtras(Ljava/util/Map;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final putExtras(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/InitializationRequestKt$Dsl$ExtrasProxy;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    iget-object p1, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {p1, p2, p3}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->putExtras(Ljava/lang/String;Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final synthetic removeExtras(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    iget-object p1, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->removeExtras(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final setAnalyticsUserId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setAnalyticsUserId(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final setAuid(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setAuid(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final setAuidString(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setAuidString(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final setCache(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setCache(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final setClientInfo(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setClientInfo(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final setDeviceInfo(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setDeviceInfo(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final setExternalUserIdentifier(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setExternalUserIdentifier(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final synthetic setExtras(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/InitializationRequestKt$Dsl$ExtrasProxy;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0, p1, p2, p3}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->putExtras(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setGoogleAppId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setGoogleAppId(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final setIdfi(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setIdfi(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final setInstallReferrer(Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setInstallReferrer(Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final setInstallSource(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setInstallSource(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final setIsFirstInit(Z)V
    .registers 3

    .line 353
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setIsFirstInit(Z)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final setLegacyFlowUserConsent(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setLegacyFlowUserConsent(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final synthetic setModuleInitParams(Lcom/google/protobuf/kotlin/DslList;ILgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 827
    iget-object p1, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {p1, p2, p3}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setModuleInitParams(ILgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final setPrivacy(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setPrivacy(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final setSessionId(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setSessionId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final setUadsInitBlob(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setUadsInitBlob(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final setUnityBuildGuid(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setUnityBuildGuid(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final setUnityInstallationId(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setUnityInstallationId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

.method public final setUnityMegaSessionId(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->setUnityMegaSessionId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.InitializationRequestKt.Dsl.Companion (gatewayprotocol.v1.InitializationRequestKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/InitializationRequestKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "InitializationRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationRequestKt$Dsl;
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
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;)Lgatewayprotocol/v1/InitializationRequestKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;-><init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

###### Class gatewayprotocol.v1.InitializationRequestKt.Dsl.ExtrasProxy (gatewayprotocol.v1.InitializationRequestKt$Dsl$ExtrasProxy)
.class public final Lgatewayprotocol/v1/InitializationRequestKt$Dsl$ExtrasProxy;
.super Lcom/google/protobuf/kotlin/DslProxy;
.source "InitializationRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationRequestKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtrasProxy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 553
    invoke-direct {p0}, Lcom/google/protobuf/kotlin/DslProxy;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.InitializationRequestKt.Dsl.ModuleInitParamsProxy (gatewayprotocol.v1.InitializationRequestKt$Dsl$ModuleInitParamsProxy)
.class public final Lgatewayprotocol/v1/InitializationRequestKt$Dsl$ModuleInitParamsProxy;
.super Lcom/google/protobuf/kotlin/DslProxy;
.source "InitializationRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationRequestKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModuleInitParamsProxy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 748
    invoke-direct {p0}, Lcom/google/protobuf/kotlin/DslProxy;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.MutableDataKt (gatewayprotocol.v1.MutableDataKt)
.class public final Lgatewayprotocol/v1/MutableDataKt;
.super Ljava/lang/Object;
.source "MutableDataKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/MutableDataKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/MutableDataKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/MutableDataKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/MutableDataKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/MutableDataKt;->INSTANCE:Lgatewayprotocol/v1/MutableDataKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.MutableDataKt.Dsl (gatewayprotocol.v1.MutableDataKt$Dsl)
.class public final Lgatewayprotocol/v1/MutableDataKt$Dsl;
.super Ljava/lang/Object;
.source "MutableDataKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MutableDataKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/MutableDataKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/MutableDataKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/MutableDataKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/MutableDataKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->Companion:Lgatewayprotocol/v1/MutableDataKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MutableDataKt$Dsl;-><init>(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .registers 3

    .line 28
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object v0
.end method

.method public final clearAllowedPii()V
    .registers 2

    .line 215
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->clearAllowedPii()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    return-void
.end method

.method public final clearCache()V
    .registers 2

    .line 256
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->clearCache()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    return-void
.end method

.method public final clearCurrentState()V
    .registers 2

    .line 54
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->clearCurrentState()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    return-void
.end method

.method public final clearPrivacy()V
    .registers 2

    .line 135
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->clearPrivacy()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    return-void
.end method

.method public final clearPrivacyFsm()V
    .registers 2

    .line 297
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->clearPrivacyFsm()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    return-void
.end method

.method public final clearSessionCounters()V
    .registers 2

    .line 174
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->clearSessionCounters()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    return-void
.end method

.method public final clearSessionToken()V
    .registers 2

    .line 95
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->clearSessionToken()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    return-void
.end method

.method public final getAllowedPii()Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;
    .registers 3

    .line 201
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->getAllowedPii()Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    move-result-object v0

    const-string v1, "getAllowedPii(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAllowedPiiOrNull(Lgatewayprotocol/v1/MutableDataKt$Dsl;)Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget-object p1, p1, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-static {p1}, Lgatewayprotocol/v1/MutableDataKtKt;->getAllowedPiiOrNull(Lgatewayprotocol/v1/MutableDataOuterClass$MutableDataOrBuilder;)Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    move-result-object p1

    return-object p1
.end method

.method public final getCache()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 242
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->getCache()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getCache(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCurrentState()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 40
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->getCurrentState()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getCurrentState(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPrivacy()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 121
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->getPrivacy()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getPrivacy(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPrivacyFsm()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 282
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->getPrivacyFsm()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getPrivacyFsm(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .registers 3

    .line 160
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object v0

    const-string v1, "getSessionCounters(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSessionCountersOrNull(Lgatewayprotocol/v1/MutableDataKt$Dsl;)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object p1, p1, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-static {p1}, Lgatewayprotocol/v1/MutableDataKtKt;->getSessionCountersOrNull(Lgatewayprotocol/v1/MutableDataOuterClass$MutableDataOrBuilder;)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object p1

    return-object p1
.end method

.method public final getSessionToken()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 80
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->getSessionToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getSessionToken(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hasAllowedPii()Z
    .registers 2

    .line 227
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->hasAllowedPii()Z

    move-result v0

    return v0
.end method

.method public final hasCache()Z
    .registers 2

    .line 268
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->hasCache()Z

    move-result v0

    return v0
.end method

.method public final hasCurrentState()Z
    .registers 2

    .line 66
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->hasCurrentState()Z

    move-result v0

    return v0
.end method

.method public final hasPrivacy()Z
    .registers 2

    .line 147
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->hasPrivacy()Z

    move-result v0

    return v0
.end method

.method public final hasPrivacyFsm()Z
    .registers 2

    .line 310
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->hasPrivacyFsm()Z

    move-result v0

    return v0
.end method

.method public final hasSessionCounters()Z
    .registers 2

    .line 186
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->hasSessionCounters()Z

    move-result v0

    return v0
.end method

.method public final hasSessionToken()Z
    .registers 2

    .line 108
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->hasSessionToken()Z

    move-result v0

    return v0
.end method

.method public final setAllowedPii(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->setAllowedPii(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    return-void
.end method

.method public final setCache(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->setCache(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    return-void
.end method

.method public final setCurrentState(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->setCurrentState(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    return-void
.end method

.method public final setPrivacy(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->setPrivacy(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    return-void
.end method

.method public final setPrivacyFsm(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->setPrivacyFsm(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    return-void
.end method

.method public final setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    return-void
.end method

.method public final setSessionToken(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataKt$Dsl;->_builder:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->setSessionToken(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.MutableDataKt.Dsl.Companion (gatewayprotocol.v1.MutableDataKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/MutableDataKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "MutableDataKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MutableDataKt$Dsl;
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
    invoke-direct {p0}, Lgatewayprotocol/v1/MutableDataKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;)Lgatewayprotocol/v1/MutableDataKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lgatewayprotocol/v1/MutableDataKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/MutableDataKt$Dsl;-><init>(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

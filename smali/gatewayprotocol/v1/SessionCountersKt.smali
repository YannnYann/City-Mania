###### Class gatewayprotocol.v1.SessionCountersKt (gatewayprotocol.v1.SessionCountersKt)
.class public final Lgatewayprotocol/v1/SessionCountersKt;
.super Ljava/lang/Object;
.source "SessionCountersKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/SessionCountersKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/SessionCountersKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/SessionCountersKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/SessionCountersKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/SessionCountersKt;->INSTANCE:Lgatewayprotocol/v1/SessionCountersKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.SessionCountersKt.Dsl (gatewayprotocol.v1.SessionCountersKt$Dsl)
.class public final Lgatewayprotocol/v1/SessionCountersKt$Dsl;
.super Ljava/lang/Object;
.source "SessionCountersKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/SessionCountersKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/SessionCountersKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/SessionCountersKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/SessionCountersKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/SessionCountersKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->Companion:Lgatewayprotocol/v1/SessionCountersKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/SessionCountersKt$Dsl;-><init>(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .registers 3

    .line 28
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    return-object v0
.end method

.method public final clearAllErrorsCount()V
    .registers 2

    .line 304
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->clearAllErrorsCount()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final clearBannerImpressions()V
    .registers 2

    .line 152
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->clearBannerImpressions()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final clearBannerLoadRequests()V
    .registers 2

    .line 102
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->clearBannerLoadRequests()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final clearBannerRequestsAdm()V
    .registers 2

    .line 127
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->clearBannerRequestsAdm()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final clearCacheTimeoutErrorsCount()V
    .registers 2

    .line 329
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->clearCacheTimeoutErrorsCount()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final clearFocusChangeCount()V
    .registers 2

    .line 227
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->clearFocusChangeCount()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final clearGlobalAdsFocusChangeCount()V
    .registers 2

    .line 202
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->clearGlobalAdsFocusChangeCount()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final clearGlobalAdsFocusTime()V
    .registers 2

    .line 177
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->clearGlobalAdsFocusTime()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final clearInitializationLatency()V
    .registers 2

    .line 254
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->clearInitializationLatency()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final clearLastLoadLatency()V
    .registers 2

    .line 279
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->clearLastLoadLatency()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final clearLoadRequests()V
    .registers 2

    .line 52
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->clearLoadRequests()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final clearLoadRequestsAdm()V
    .registers 2

    .line 77
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->clearLoadRequestsAdm()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final clearSuccessCount()V
    .registers 2

    .line 354
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->clearSuccessCount()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final getAllErrorsCount()I
    .registers 2

    .line 291
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->getAllErrorsCount()I

    move-result v0

    return v0
.end method

.method public final getBannerImpressions()I
    .registers 2

    .line 139
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->getBannerImpressions()I

    move-result v0

    return v0
.end method

.method public final getBannerLoadRequests()I
    .registers 2

    .line 89
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->getBannerLoadRequests()I

    move-result v0

    return v0
.end method

.method public final getBannerRequestsAdm()I
    .registers 2

    .line 114
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->getBannerRequestsAdm()I

    move-result v0

    return v0
.end method

.method public final getCacheTimeoutErrorsCount()I
    .registers 2

    .line 316
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->getCacheTimeoutErrorsCount()I

    move-result v0

    return v0
.end method

.method public final getFocusChangeCount()I
    .registers 2

    .line 214
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->getFocusChangeCount()I

    move-result v0

    return v0
.end method

.method public final getGlobalAdsFocusChangeCount()I
    .registers 2

    .line 189
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->getGlobalAdsFocusChangeCount()I

    move-result v0

    return v0
.end method

.method public final getGlobalAdsFocusTime()I
    .registers 2

    .line 164
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->getGlobalAdsFocusTime()I

    move-result v0

    return v0
.end method

.method public final getInitializationLatency()I
    .registers 2

    .line 240
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->getInitializationLatency()I

    move-result v0

    return v0
.end method

.method public final getLastLoadLatency()I
    .registers 2

    .line 266
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->getLastLoadLatency()I

    move-result v0

    return v0
.end method

.method public final getLoadRequests()I
    .registers 2

    .line 39
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->getLoadRequests()I

    move-result v0

    return v0
.end method

.method public final getLoadRequestsAdm()I
    .registers 2

    .line 64
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->getLoadRequestsAdm()I

    move-result v0

    return v0
.end method

.method public final getSuccessCount()I
    .registers 2

    .line 341
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->getSuccessCount()I

    move-result v0

    return v0
.end method

.method public final setAllErrorsCount(I)V
    .registers 3

    .line 294
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->setAllErrorsCount(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final setBannerImpressions(I)V
    .registers 3

    .line 142
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->setBannerImpressions(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final setBannerLoadRequests(I)V
    .registers 3

    .line 92
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->setBannerLoadRequests(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final setBannerRequestsAdm(I)V
    .registers 3

    .line 117
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->setBannerRequestsAdm(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final setCacheTimeoutErrorsCount(I)V
    .registers 3

    .line 319
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->setCacheTimeoutErrorsCount(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final setFocusChangeCount(I)V
    .registers 3

    .line 217
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->setFocusChangeCount(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final setGlobalAdsFocusChangeCount(I)V
    .registers 3

    .line 192
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->setGlobalAdsFocusChangeCount(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final setGlobalAdsFocusTime(I)V
    .registers 3

    .line 167
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->setGlobalAdsFocusTime(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final setInitializationLatency(I)V
    .registers 3

    .line 243
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->setInitializationLatency(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final setLastLoadLatency(I)V
    .registers 3

    .line 269
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->setLastLoadLatency(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final setLoadRequests(I)V
    .registers 3

    .line 42
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->setLoadRequests(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final setLoadRequestsAdm(I)V
    .registers 3

    .line 67
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->setLoadRequestsAdm(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public final setSuccessCount(I)V
    .registers 3

    .line 344
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->setSuccessCount(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.SessionCountersKt.Dsl.Companion (gatewayprotocol.v1.SessionCountersKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/SessionCountersKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "SessionCountersKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/SessionCountersKt$Dsl;
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
    invoke-direct {p0}, Lgatewayprotocol/v1/SessionCountersKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;)Lgatewayprotocol/v1/SessionCountersKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/SessionCountersKt$Dsl;-><init>(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

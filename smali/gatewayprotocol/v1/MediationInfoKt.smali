###### Class gatewayprotocol.v1.MediationInfoKt (gatewayprotocol.v1.MediationInfoKt)
.class public final Lgatewayprotocol/v1/MediationInfoKt;
.super Ljava/lang/Object;
.source "MediationInfoKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/MediationInfoKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/MediationInfoKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/MediationInfoKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/MediationInfoKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/MediationInfoKt;->INSTANCE:Lgatewayprotocol/v1/MediationInfoKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.MediationInfoKt.Dsl (gatewayprotocol.v1.MediationInfoKt$Dsl)
.class public final Lgatewayprotocol/v1/MediationInfoKt$Dsl;
.super Ljava/lang/Object;
.source "MediationInfoKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MediationInfoKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/MediationInfoKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/MediationInfoKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/MediationInfoKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/MediationInfoKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->Companion:Lgatewayprotocol/v1/MediationInfoKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MediationInfoKt$Dsl;-><init>(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;
    .registers 3

    .line 28
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    return-object v0
.end method

.method public final clearAdapterVersion()V
    .registers 2

    .line 156
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->clearAdapterVersion()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    return-void
.end method

.method public final clearCustomName()V
    .registers 2

    .line 84
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->clearCustomName()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    return-void
.end method

.method public final clearProvider()V
    .registers 2

    .line 59
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->clearProvider()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    return-void
.end method

.method public final clearVersion()V
    .registers 2

    .line 120
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->clearVersion()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    return-void
.end method

.method public final getAdapterVersion()Ljava/lang/String;
    .registers 3

    .line 143
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->getAdapterVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAdapterVersion(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCustomName()Ljava/lang/String;
    .registers 3

    .line 71
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->getCustomName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCustomName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getProvider()Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;
    .registers 3

    .line 39
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->getProvider()Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object v0

    const-string v1, "getProvider(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getProviderValue()I
    .registers 2

    .line 46
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->getProviderValue()I

    move-result v0

    return v0
.end method

.method public final getVersion()Ljava/lang/String;
    .registers 3

    .line 107
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getVersion(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hasAdapterVersion()Z
    .registers 2

    .line 167
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->hasAdapterVersion()Z

    move-result v0

    return v0
.end method

.method public final hasCustomName()Z
    .registers 2

    .line 95
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->hasCustomName()Z

    move-result v0

    return v0
.end method

.method public final hasVersion()Z
    .registers 2

    .line 131
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->hasVersion()Z

    move-result v0

    return v0
.end method

.method public final setAdapterVersion(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->setAdapterVersion(Ljava/lang/String;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    return-void
.end method

.method public final setCustomName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->setCustomName(Ljava/lang/String;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    return-void
.end method

.method public final setProvider(Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->setProvider(Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    return-void
.end method

.method public final setProviderValue(I)V
    .registers 3

    .line 49
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->setProviderValue(I)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;->_builder:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->setVersion(Ljava/lang/String;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.MediationInfoKt.Dsl.Companion (gatewayprotocol.v1.MediationInfoKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/MediationInfoKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "MediationInfoKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MediationInfoKt$Dsl;
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
    invoke-direct {p0}, Lgatewayprotocol/v1/MediationInfoKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;)Lgatewayprotocol/v1/MediationInfoKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lgatewayprotocol/v1/MediationInfoKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/MediationInfoKt$Dsl;-><init>(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

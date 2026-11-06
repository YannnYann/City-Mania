###### Class gatewayprotocol.v1.RewardedOffersResponseKt (gatewayprotocol.v1.RewardedOffersResponseKt)
.class public final Lgatewayprotocol/v1/RewardedOffersResponseKt;
.super Ljava/lang/Object;
.source "RewardedOffersResponseKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/RewardedOffersResponseKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/RewardedOffersResponseKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/RewardedOffersResponseKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/RewardedOffersResponseKt;->INSTANCE:Lgatewayprotocol/v1/RewardedOffersResponseKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.RewardedOffersResponseKt.Dsl (gatewayprotocol.v1.RewardedOffersResponseKt$Dsl)
.class public final Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl;
.super Ljava/lang/Object;
.source "RewardedOffersResponseKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/RewardedOffersResponseKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl;->Companion:Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl;-><init>(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;
    .registers 3

    .line 40
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    return-object v0
.end method

.method public final clearError()V
    .registers 2

    .line 114
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->clearError()Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;

    return-void
.end method

.method public final clearRewardedOffers()V
    .registers 2

    .line 64
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->clearRewardedOffers()Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;

    return-void
.end method

.method public final clearRewardedOffersVersion()V
    .registers 2

    .line 89
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->clearRewardedOffersVersion()Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;

    return-void
.end method

.method public final getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 3

    .line 101
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    const-string v1, "getError(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getErrorOrNull(Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object p1, p1, Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;

    invoke-static {p1}, Lgatewayprotocol/v1/RewardedOffersResponseKtKt;->getErrorOrNull(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponseOrBuilder;)Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object p1

    return-object p1
.end method

.method public final getRewardedOffers()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 51
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->getRewardedOffers()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getRewardedOffers(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getRewardedOffersVersion()I
    .registers 2

    .line 76
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->getRewardedOffersVersion()I

    move-result v0

    return v0
.end method

.method public final hasError()Z
    .registers 2

    .line 125
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->hasError()Z

    move-result v0

    return v0
.end method

.method public final setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;

    return-void
.end method

.method public final setRewardedOffers(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->setRewardedOffers(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;

    return-void
.end method

.method public final setRewardedOffersVersion(I)V
    .registers 3

    .line 79
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->setRewardedOffersVersion(I)Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.RewardedOffersResponseKt.Dsl.Companion (gatewayprotocol.v1.RewardedOffersResponseKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "RewardedOffersResponseKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;)Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/RewardedOffersResponseKt$Dsl;-><init>(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

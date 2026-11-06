###### Class gatewayprotocol.v1.RewardedOffersRequestKt (gatewayprotocol.v1.RewardedOffersRequestKt)
.class public final Lgatewayprotocol/v1/RewardedOffersRequestKt;
.super Ljava/lang/Object;
.source "RewardedOffersRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/RewardedOffersRequestKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/RewardedOffersRequestKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/RewardedOffersRequestKt;->INSTANCE:Lgatewayprotocol/v1/RewardedOffersRequestKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.RewardedOffersRequestKt.Dsl (gatewayprotocol.v1.RewardedOffersRequestKt$Dsl)
.class public final Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;
.super Ljava/lang/Object;
.source "RewardedOffersRequestKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/RewardedOffersRequestKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;->Companion:Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;-><init>(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .registers 3

    .line 51
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object v0
.end method

.method public final clearCursor()V
    .registers 2

    .line 109
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->clearCursor()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    return-void
.end method

.method public final clearEntryPoint()V
    .registers 2

    .line 82
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->clearEntryPoint()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    return-void
.end method

.method public final getCursor()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 95
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->getCursor()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getCursor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getEntryPoint()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;
    .registers 3

    .line 62
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->getEntryPoint()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    move-result-object v0

    const-string v1, "getEntryPoint(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getEntryPointValue()I
    .registers 2

    .line 69
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->getEntryPointValue()I

    move-result v0

    return v0
.end method

.method public final setCursor(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->setCursor(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    return-void
.end method

.method public final setEntryPoint(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->setEntryPoint(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    return-void
.end method

.method public final setEntryPointValue(I)V
    .registers 3

    .line 72
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->setEntryPointValue(I)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.RewardedOffersRequestKt.Dsl.Companion (gatewayprotocol.v1.RewardedOffersRequestKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "RewardedOffersRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;)Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;-><init>(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

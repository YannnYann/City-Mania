###### Class gatewayprotocol.v1.AllowedPiiKt (gatewayprotocol.v1.AllowedPiiKt)
.class public final Lgatewayprotocol/v1/AllowedPiiKt;
.super Ljava/lang/Object;
.source "AllowedPiiKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AllowedPiiKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/AllowedPiiKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/AllowedPiiKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/AllowedPiiKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/AllowedPiiKt;->INSTANCE:Lgatewayprotocol/v1/AllowedPiiKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.AllowedPiiKt.Dsl (gatewayprotocol.v1.AllowedPiiKt$Dsl)
.class public final Lgatewayprotocol/v1/AllowedPiiKt$Dsl;
.super Ljava/lang/Object;
.source "AllowedPiiKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AllowedPiiKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AllowedPiiKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/AllowedPiiKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/AllowedPiiKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/AllowedPiiKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/AllowedPiiKt$Dsl;->Companion:Lgatewayprotocol/v1/AllowedPiiKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lgatewayprotocol/v1/AllowedPiiKt$Dsl;->_builder:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AllowedPiiKt$Dsl;-><init>(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;
    .registers 3

    .line 28
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiKt$Dsl;->_builder:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    return-object v0
.end method

.method public final clearAppsetId()V
    .registers 2

    .line 111
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiKt$Dsl;->_builder:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->clearAppsetId()Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    return-void
.end method

.method public final clearFid()V
    .registers 2

    .line 86
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiKt$Dsl;->_builder:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->clearFid()Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    return-void
.end method

.method public final clearIdfa()V
    .registers 2

    .line 44
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiKt$Dsl;->_builder:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->clearIdfa()Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    return-void
.end method

.method public final clearIdfv()V
    .registers 2

    .line 61
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiKt$Dsl;->_builder:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->clearIdfv()Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    return-void
.end method

.method public final getAppsetId()Z
    .registers 2

    .line 98
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiKt$Dsl;->_builder:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->getAppsetId()Z

    move-result v0

    return v0
.end method

.method public final getFid()Z
    .registers 2

    .line 73
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiKt$Dsl;->_builder:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->getFid()Z

    move-result v0

    return v0
.end method

.method public final getIdfa()Z
    .registers 2

    .line 35
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiKt$Dsl;->_builder:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->getIdfa()Z

    move-result v0

    return v0
.end method

.method public final getIdfv()Z
    .registers 2

    .line 52
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiKt$Dsl;->_builder:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->getIdfv()Z

    move-result v0

    return v0
.end method

.method public final setAppsetId(Z)V
    .registers 3

    .line 101
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiKt$Dsl;->_builder:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->setAppsetId(Z)Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    return-void
.end method

.method public final setFid(Z)V
    .registers 3

    .line 76
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiKt$Dsl;->_builder:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->setFid(Z)Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    return-void
.end method

.method public final setIdfa(Z)V
    .registers 3

    .line 38
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiKt$Dsl;->_builder:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->setIdfa(Z)Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    return-void
.end method

.method public final setIdfv(Z)V
    .registers 3

    .line 55
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiKt$Dsl;->_builder:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->setIdfv(Z)Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.AllowedPiiKt.Dsl.Companion (gatewayprotocol.v1.AllowedPiiKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/AllowedPiiKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "AllowedPiiKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AllowedPiiKt$Dsl;
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
    invoke-direct {p0}, Lgatewayprotocol/v1/AllowedPiiKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;)Lgatewayprotocol/v1/AllowedPiiKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lgatewayprotocol/v1/AllowedPiiKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/AllowedPiiKt$Dsl;-><init>(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

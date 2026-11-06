###### Class gatewayprotocol.v1.ModuleKt (gatewayprotocol.v1.ModuleKt)
.class public final Lgatewayprotocol/v1/ModuleKt;
.super Ljava/lang/Object;
.source "ModuleKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/ModuleKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/ModuleKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/ModuleKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/ModuleKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/ModuleKt;->INSTANCE:Lgatewayprotocol/v1/ModuleKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.ModuleKt.Dsl (gatewayprotocol.v1.ModuleKt$Dsl)
.class public final Lgatewayprotocol/v1/ModuleKt$Dsl;
.super Ljava/lang/Object;
.source "ModuleKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ModuleKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/ModuleKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/ModuleKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/ModuleKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/ModuleKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/ModuleKt$Dsl;->Companion:Lgatewayprotocol/v1/ModuleKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lgatewayprotocol/v1/ModuleKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ModuleKt$Dsl;-><init>(Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .registers 3

    .line 28
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object v0
.end method

.method public final clearConfig()V
    .registers 2

    .line 77
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->clearConfig()Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    return-void
.end method

.method public final clearName()V
    .registers 2

    .line 52
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->clearName()Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    return-void
.end method

.method public final getConfig()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 64
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->getConfig()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getConfig(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 3

    .line 39
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setConfig(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->setConfig(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->setName(Ljava/lang/String;)Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.ModuleKt.Dsl.Companion (gatewayprotocol.v1.ModuleKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/ModuleKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "ModuleKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ModuleKt$Dsl;
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
    invoke-direct {p0}, Lgatewayprotocol/v1/ModuleKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;)Lgatewayprotocol/v1/ModuleKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lgatewayprotocol/v1/ModuleKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/ModuleKt$Dsl;-><init>(Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

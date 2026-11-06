###### Class gatewayprotocol.v1.ModuleInitParamsKt (gatewayprotocol.v1.ModuleInitParamsKt)
.class public final Lgatewayprotocol/v1/ModuleInitParamsKt;
.super Ljava/lang/Object;
.source "ModuleInitParamsKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/ModuleInitParamsKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/ModuleInitParamsKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/ModuleInitParamsKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/ModuleInitParamsKt;->INSTANCE:Lgatewayprotocol/v1/ModuleInitParamsKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.ModuleInitParamsKt.Dsl (gatewayprotocol.v1.ModuleInitParamsKt$Dsl)
.class public final Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;
.super Ljava/lang/Object;
.source "ModuleInitParamsKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ModuleInitParamsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;->Companion:Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;-><init>(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;
    .registers 3

    .line 32
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    return-object v0
.end method

.method public final clearClassName()V
    .registers 2

    .line 108
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->clearClassName()Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;

    return-void
.end method

.method public final clearName()V
    .registers 2

    .line 56
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->clearName()Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;

    return-void
.end method

.method public final clearParams()V
    .registers 2

    .line 81
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->clearParams()Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;

    return-void
.end method

.method public final getClassName()Ljava/lang/String;
    .registers 3

    .line 94
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getClassName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 3

    .line 43
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getParams()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 68
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->getParams()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getParams(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setClassName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->setClassName(Ljava/lang/String;)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->setName(Ljava/lang/String;)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;

    return-void
.end method

.method public final setParams(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->setParams(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.ModuleInitParamsKt.Dsl.Companion (gatewayprotocol.v1.ModuleInitParamsKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "ModuleInitParamsKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;
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
    invoke-direct {p0}, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;)Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/ModuleInitParamsKt$Dsl;-><init>(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

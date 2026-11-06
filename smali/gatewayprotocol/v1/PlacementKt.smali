###### Class gatewayprotocol.v1.PlacementKt (gatewayprotocol.v1.PlacementKt)
.class public final Lgatewayprotocol/v1/PlacementKt;
.super Ljava/lang/Object;
.source "PlacementKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/PlacementKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/PlacementKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/PlacementKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/PlacementKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/PlacementKt;->INSTANCE:Lgatewayprotocol/v1/PlacementKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.PlacementKt.Dsl (gatewayprotocol.v1.PlacementKt$Dsl)
.class public final Lgatewayprotocol/v1/PlacementKt$Dsl;
.super Ljava/lang/Object;
.source "PlacementKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/PlacementKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/PlacementKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/PlacementKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/PlacementKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/PlacementKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/PlacementKt$Dsl;->Companion:Lgatewayprotocol/v1/PlacementKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lgatewayprotocol/v1/PlacementKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/PlacementKt$Dsl;-><init>(Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;
    .registers 3

    .line 28
    iget-object v0, p0, Lgatewayprotocol/v1/PlacementKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement;

    return-object v0
.end method

.method public final clearAdFormat()V
    .registers 2

    .line 51
    iget-object v0, p0, Lgatewayprotocol/v1/PlacementKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;->clearAdFormat()Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;

    return-void
.end method

.method public final getAdFormat()Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    .registers 3

    .line 35
    iget-object v0, p0, Lgatewayprotocol/v1/PlacementKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;->getAdFormat()Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object v0

    const-string v1, "getAdFormat(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAdFormatValue()I
    .registers 2

    .line 42
    iget-object v0, p0, Lgatewayprotocol/v1/PlacementKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;->getAdFormatValue()I

    move-result v0

    return v0
.end method

.method public final setAdFormat(Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lgatewayprotocol/v1/PlacementKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;->setAdFormat(Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;

    return-void
.end method

.method public final setAdFormatValue(I)V
    .registers 3

    .line 45
    iget-object v0, p0, Lgatewayprotocol/v1/PlacementKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;->setAdFormatValue(I)Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.PlacementKt.Dsl.Companion (gatewayprotocol.v1.PlacementKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/PlacementKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "PlacementKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/PlacementKt$Dsl;
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
    invoke-direct {p0}, Lgatewayprotocol/v1/PlacementKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;)Lgatewayprotocol/v1/PlacementKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lgatewayprotocol/v1/PlacementKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/PlacementKt$Dsl;-><init>(Lgatewayprotocol/v1/InitializationResponseOuterClass$Placement$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

###### Class gatewayprotocol.v1.BannerSizeKt (gatewayprotocol.v1.BannerSizeKt)
.class public final Lgatewayprotocol/v1/BannerSizeKt;
.super Ljava/lang/Object;
.source "BannerSizeKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/BannerSizeKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/BannerSizeKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/BannerSizeKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/BannerSizeKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/BannerSizeKt;->INSTANCE:Lgatewayprotocol/v1/BannerSizeKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.BannerSizeKt.Dsl (gatewayprotocol.v1.BannerSizeKt$Dsl)
.class public final Lgatewayprotocol/v1/BannerSizeKt$Dsl;
.super Ljava/lang/Object;
.source "BannerSizeKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/BannerSizeKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/BannerSizeKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/BannerSizeKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/BannerSizeKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/BannerSizeKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/BannerSizeKt$Dsl;->Companion:Lgatewayprotocol/v1/BannerSizeKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lgatewayprotocol/v1/BannerSizeKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/BannerSizeKt$Dsl;-><init>(Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;
    .registers 3

    .line 28
    iget-object v0, p0, Lgatewayprotocol/v1/BannerSizeKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    return-object v0
.end method

.method public final clearHeight()V
    .registers 2

    .line 61
    iget-object v0, p0, Lgatewayprotocol/v1/BannerSizeKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;->clearHeight()Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;

    return-void
.end method

.method public final clearWidth()V
    .registers 2

    .line 44
    iget-object v0, p0, Lgatewayprotocol/v1/BannerSizeKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;->clearWidth()Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;

    return-void
.end method

.method public final getHeight()I
    .registers 2

    .line 52
    iget-object v0, p0, Lgatewayprotocol/v1/BannerSizeKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .registers 2

    .line 35
    iget-object v0, p0, Lgatewayprotocol/v1/BannerSizeKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;->getWidth()I

    move-result v0

    return v0
.end method

.method public final setHeight(I)V
    .registers 3

    .line 55
    iget-object v0, p0, Lgatewayprotocol/v1/BannerSizeKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;->setHeight(I)Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;

    return-void
.end method

.method public final setWidth(I)V
    .registers 3

    .line 38
    iget-object v0, p0, Lgatewayprotocol/v1/BannerSizeKt$Dsl;->_builder:Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;->setWidth(I)Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.BannerSizeKt.Dsl.Companion (gatewayprotocol.v1.BannerSizeKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/BannerSizeKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "BannerSizeKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/BannerSizeKt$Dsl;
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
    invoke-direct {p0}, Lgatewayprotocol/v1/BannerSizeKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;)Lgatewayprotocol/v1/BannerSizeKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lgatewayprotocol/v1/BannerSizeKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/BannerSizeKt$Dsl;-><init>(Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

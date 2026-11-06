###### Class gatewayprotocol.v1.CampaignStateKt (gatewayprotocol.v1.CampaignStateKt)
.class public final Lgatewayprotocol/v1/CampaignStateKt;
.super Ljava/lang/Object;
.source "CampaignStateKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/CampaignStateKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/CampaignStateKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/CampaignStateKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/CampaignStateKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/CampaignStateKt;->INSTANCE:Lgatewayprotocol/v1/CampaignStateKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.CampaignStateKt.Dsl (gatewayprotocol.v1.CampaignStateKt$Dsl)
.class public final Lgatewayprotocol/v1/CampaignStateKt$Dsl;
.super Ljava/lang/Object;
.source "CampaignStateKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/CampaignStateKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/CampaignStateKt$Dsl$Companion;,
        Lgatewayprotocol/v1/CampaignStateKt$Dsl$LoadedCampaignsProxy;,
        Lgatewayprotocol/v1/CampaignStateKt$Dsl$ShownCampaignsProxy;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/CampaignStateKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/CampaignStateKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/CampaignStateKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/CampaignStateKt$Dsl;->Companion:Lgatewayprotocol/v1/CampaignStateKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgatewayprotocol/v1/CampaignStateKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignStateKt$Dsl;-><init>(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;
    .registers 3

    .line 32
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    return-object v0
.end method

.method public final synthetic addAllLoadedCampaigns(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lgatewayprotocol/v1/CampaignStateKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->addAllLoadedCampaigns(Ljava/lang/Iterable;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    return-void
.end method

.method public final synthetic addAllShownCampaigns(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lgatewayprotocol/v1/CampaignStateKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->addAllShownCampaigns(Ljava/lang/Iterable;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    return-void
.end method

.method public final synthetic addLoadedCampaigns(Lcom/google/protobuf/kotlin/DslList;Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lgatewayprotocol/v1/CampaignStateKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->addLoadedCampaigns(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    return-void
.end method

.method public final synthetic addShownCampaigns(Lcom/google/protobuf/kotlin/DslList;Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lgatewayprotocol/v1/CampaignStateKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->addShownCampaigns(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    return-void
.end method

.method public final synthetic clearLoadedCampaigns(Lcom/google/protobuf/kotlin/DslList;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lgatewayprotocol/v1/CampaignStateKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->clearLoadedCampaigns()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    return-void
.end method

.method public final synthetic clearShownCampaigns(Lcom/google/protobuf/kotlin/DslList;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iget-object p1, p0, Lgatewayprotocol/v1/CampaignStateKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->clearShownCampaigns()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    return-void
.end method

.method public final synthetic getLoadedCampaigns()Lcom/google/protobuf/kotlin/DslList;
    .registers 4

    .line 49
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 50
    iget-object v1, p0, Lgatewayprotocol/v1/CampaignStateKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    invoke-virtual {v1}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->getLoadedCampaignsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getLoadedCampaignsList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final synthetic getShownCampaigns()Lcom/google/protobuf/kotlin/DslList;
    .registers 4

    .line 148
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 149
    iget-object v1, p0, Lgatewayprotocol/v1/CampaignStateKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    invoke-virtual {v1}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->getShownCampaignsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getShownCampaignsList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final synthetic plusAssignAllLoadedCampaigns(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;",
            "Lgatewayprotocol/v1/CampaignStateKt$Dsl$LoadedCampaignsProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/CampaignStateKt$Dsl;->addAllLoadedCampaigns(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignAllShownCampaigns(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;",
            "Lgatewayprotocol/v1/CampaignStateKt$Dsl$ShownCampaignsProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/CampaignStateKt$Dsl;->addAllShownCampaigns(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignLoadedCampaigns(Lcom/google/protobuf/kotlin/DslList;Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;",
            "Lgatewayprotocol/v1/CampaignStateKt$Dsl$LoadedCampaignsProxy;",
            ">;",
            "Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/CampaignStateKt$Dsl;->addLoadedCampaigns(Lcom/google/protobuf/kotlin/DslList;Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V

    return-void
.end method

.method public final synthetic plusAssignShownCampaigns(Lcom/google/protobuf/kotlin/DslList;Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;",
            "Lgatewayprotocol/v1/CampaignStateKt$Dsl$ShownCampaignsProxy;",
            ">;",
            "Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/CampaignStateKt$Dsl;->addShownCampaigns(Lcom/google/protobuf/kotlin/DslList;Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V

    return-void
.end method

.method public final synthetic setLoadedCampaigns(Lcom/google/protobuf/kotlin/DslList;ILgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lgatewayprotocol/v1/CampaignStateKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    invoke-virtual {p1, p2, p3}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->setLoadedCampaigns(ILgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    return-void
.end method

.method public final synthetic setShownCampaigns(Lcom/google/protobuf/kotlin/DslList;ILgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lgatewayprotocol/v1/CampaignStateKt$Dsl;->_builder:Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    invoke-virtual {p1, p2, p3}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->setShownCampaigns(ILgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.CampaignStateKt.Dsl.Companion (gatewayprotocol.v1.CampaignStateKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/CampaignStateKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "CampaignStateKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/CampaignStateKt$Dsl;
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
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignStateKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;)Lgatewayprotocol/v1/CampaignStateKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lgatewayprotocol/v1/CampaignStateKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/CampaignStateKt$Dsl;-><init>(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

###### Class gatewayprotocol.v1.CampaignStateKt.Dsl.LoadedCampaignsProxy (gatewayprotocol.v1.CampaignStateKt$Dsl$LoadedCampaignsProxy)
.class public final Lgatewayprotocol/v1/CampaignStateKt$Dsl$LoadedCampaignsProxy;
.super Lcom/google/protobuf/kotlin/DslProxy;
.source "CampaignStateKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/CampaignStateKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadedCampaignsProxy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/google/protobuf/kotlin/DslProxy;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.CampaignStateKt.Dsl.ShownCampaignsProxy (gatewayprotocol.v1.CampaignStateKt$Dsl$ShownCampaignsProxy)
.class public final Lgatewayprotocol/v1/CampaignStateKt$Dsl$ShownCampaignsProxy;
.super Lcom/google/protobuf/kotlin/DslProxy;
.source "CampaignStateKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/CampaignStateKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShownCampaignsProxy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 138
    invoke-direct {p0}, Lcom/google/protobuf/kotlin/DslProxy;-><init>()V

    return-void
.end method

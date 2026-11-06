###### Class gatewayprotocol.v1.InstallReferrerKt (gatewayprotocol.v1.InstallReferrerKt)
.class public final Lgatewayprotocol/v1/InstallReferrerKt;
.super Ljava/lang/Object;
.source "InstallReferrerKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/InstallReferrerKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/InstallReferrerKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/InstallReferrerKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/InstallReferrerKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/InstallReferrerKt;->INSTANCE:Lgatewayprotocol/v1/InstallReferrerKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.InstallReferrerKt.Dsl (gatewayprotocol.v1.InstallReferrerKt$Dsl)
.class public final Lgatewayprotocol/v1/InstallReferrerKt$Dsl;
.super Ljava/lang/Object;
.source "InstallReferrerKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InstallReferrerKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/InstallReferrerKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/InstallReferrerKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/InstallReferrerKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->Companion:Lgatewayprotocol/v1/InstallReferrerKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;-><init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;
    .registers 3

    .line 28
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;

    return-object v0
.end method

.method public final clearClickTime()V
    .registers 2

    .line 61
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->clearClickTime()Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    return-void
.end method

.method public final clearInstallTime()V
    .registers 2

    .line 78
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->clearInstallTime()Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    return-void
.end method

.method public final clearInstantExperienceLunch()V
    .registers 2

    .line 95
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->clearInstantExperienceLunch()Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    return-void
.end method

.method public final clearUrl()V
    .registers 2

    .line 44
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->clearUrl()Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    return-void
.end method

.method public final getClickTime()J
    .registers 3

    .line 52
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->getClickTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInstallTime()J
    .registers 3

    .line 69
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->getInstallTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInstantExperienceLunch()Z
    .registers 2

    .line 86
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->getInstantExperienceLunch()Z

    move-result v0

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 3

    .line 35
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUrl(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setClickTime(J)V
    .registers 4

    .line 55
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0, p1, p2}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->setClickTime(J)Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    return-void
.end method

.method public final setInstallTime(J)V
    .registers 4

    .line 72
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0, p1, p2}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->setInstallTime(J)Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    return-void
.end method

.method public final setInstantExperienceLunch(Z)V
    .registers 3

    .line 89
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->setInstantExperienceLunch(Z)Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->setUrl(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.InstallReferrerKt.Dsl.Companion (gatewayprotocol.v1.InstallReferrerKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/InstallReferrerKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "InstallReferrerKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InstallReferrerKt$Dsl;
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
    invoke-direct {p0}, Lgatewayprotocol/v1/InstallReferrerKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;)Lgatewayprotocol/v1/InstallReferrerKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/InstallReferrerKt$Dsl;-><init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

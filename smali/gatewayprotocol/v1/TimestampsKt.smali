###### Class gatewayprotocol.v1.TimestampsKt (gatewayprotocol.v1.TimestampsKt)
.class public final Lgatewayprotocol/v1/TimestampsKt;
.super Ljava/lang/Object;
.source "TimestampsKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/TimestampsKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/TimestampsKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/TimestampsKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/TimestampsKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/TimestampsKt;->INSTANCE:Lgatewayprotocol/v1/TimestampsKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.TimestampsKt.Dsl (gatewayprotocol.v1.TimestampsKt$Dsl)
.class public final Lgatewayprotocol/v1/TimestampsKt$Dsl;
.super Ljava/lang/Object;
.source "TimestampsKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/TimestampsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/TimestampsKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/TimestampsKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/TimestampsKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/TimestampsKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->Companion:Lgatewayprotocol/v1/TimestampsKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TimestampsKt$Dsl;-><init>(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .registers 3

    .line 32
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    return-object v0
.end method

.method public final clearSessionDurationInForeground()V
    .registers 2

    .line 123
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;->clearSessionDurationInForeground()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    return-void
.end method

.method public final clearSessionTimestamp()V
    .registers 2

    .line 92
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;->clearSessionTimestamp()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    return-void
.end method

.method public final clearTimestamp()V
    .registers 2

    .line 56
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;->clearTimestamp()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    return-void
.end method

.method public final getSessionDurationInForeground()J
    .registers 3

    .line 107
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;->getSessionDurationInForeground()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSessionTimestamp()J
    .registers 3

    .line 79
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;->getSessionTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTimestamp()Lcom/google/protobuf/Timestamp;
    .registers 3

    .line 43
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    const-string v1, "getTimestamp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hasTimestamp()Z
    .registers 2

    .line 67
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method public final setSessionDurationInForeground(J)V
    .registers 4

    .line 110
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    invoke-virtual {v0, p1, p2}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;->setSessionDurationInForeground(J)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    return-void
.end method

.method public final setSessionTimestamp(J)V
    .registers 4

    .line 82
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    invoke-virtual {v0, p1, p2}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;->setSessionTimestamp(J)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    return-void
.end method

.method public final setTimestamp(Lcom/google/protobuf/Timestamp;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;->setTimestamp(Lcom/google/protobuf/Timestamp;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.TimestampsKt.Dsl.Companion (gatewayprotocol.v1.TimestampsKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/TimestampsKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "TimestampsKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/TimestampsKt$Dsl;
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
    invoke-direct {p0}, Lgatewayprotocol/v1/TimestampsKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;)Lgatewayprotocol/v1/TimestampsKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lgatewayprotocol/v1/TimestampsKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/TimestampsKt$Dsl;-><init>(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

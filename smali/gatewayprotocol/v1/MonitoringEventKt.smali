###### Class gatewayprotocol.v1.MonitoringEventKt (gatewayprotocol.v1.MonitoringEventKt)
.class public final Lgatewayprotocol/v1/MonitoringEventKt;
.super Ljava/lang/Object;
.source "MonitoringEventKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/MonitoringEventKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/MonitoringEventKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/MonitoringEventKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/MonitoringEventKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/MonitoringEventKt;->INSTANCE:Lgatewayprotocol/v1/MonitoringEventKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.MonitoringEventKt.Dsl (gatewayprotocol.v1.MonitoringEventKt$Dsl)
.class public final Lgatewayprotocol/v1/MonitoringEventKt$Dsl;
.super Ljava/lang/Object;
.source "MonitoringEventKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MonitoringEventKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/MonitoringEventKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/MonitoringEventKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/MonitoringEventKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->Companion:Lgatewayprotocol/v1/MonitoringEventKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;-><init>(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .registers 3

    .line 32
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object v0
.end method

.method public final clearDurationMs()V
    .registers 2

    .line 138
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->clearDurationMs()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    return-void
.end method

.method public final clearEventType()V
    .registers 2

    .line 88
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->clearEventType()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    return-void
.end method

.method public final clearImpressionNumber()V
    .registers 2

    .line 56
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->clearImpressionNumber()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    return-void
.end method

.method public final clearMonitoringId()V
    .registers 2

    .line 113
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->clearMonitoringId()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    return-void
.end method

.method public final getDurationMs()J
    .registers 3

    .line 125
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->getDurationMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getEventType()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;
    .registers 3

    .line 68
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->getEventType()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    move-result-object v0

    const-string v1, "getEventType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getEventTypeValue()I
    .registers 2

    .line 75
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->getEventTypeValue()I

    move-result v0

    return v0
.end method

.method public final getImpressionNumber()J
    .registers 3

    .line 43
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->getImpressionNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMonitoringId()I
    .registers 2

    .line 100
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->getMonitoringId()I

    move-result v0

    return v0
.end method

.method public final hasDurationMs()Z
    .registers 2

    .line 149
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->hasDurationMs()Z

    move-result v0

    return v0
.end method

.method public final setDurationMs(J)V
    .registers 4

    .line 128
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0, p1, p2}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->setDurationMs(J)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    return-void
.end method

.method public final setEventType(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->setEventType(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    return-void
.end method

.method public final setEventTypeValue(I)V
    .registers 3

    .line 78
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->setEventTypeValue(I)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    return-void
.end method

.method public final setImpressionNumber(J)V
    .registers 4

    .line 46
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0, p1, p2}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->setImpressionNumber(J)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    return-void
.end method

.method public final setMonitoringId(I)V
    .registers 3

    .line 103
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->setMonitoringId(I)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.MonitoringEventKt.Dsl.Companion (gatewayprotocol.v1.MonitoringEventKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/MonitoringEventKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "MonitoringEventKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MonitoringEventKt$Dsl;
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
    invoke-direct {p0}, Lgatewayprotocol/v1/MonitoringEventKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;)Lgatewayprotocol/v1/MonitoringEventKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;-><init>(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

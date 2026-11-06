###### Class gatewayprotocol.v1.MonitoringEventRequestKt (gatewayprotocol.v1.MonitoringEventRequestKt)
.class public final Lgatewayprotocol/v1/MonitoringEventRequestKt;
.super Ljava/lang/Object;
.source "MonitoringEventRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/MonitoringEventRequestKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/MonitoringEventRequestKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/MonitoringEventRequestKt;->INSTANCE:Lgatewayprotocol/v1/MonitoringEventRequestKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.MonitoringEventRequestKt.Dsl (gatewayprotocol.v1.MonitoringEventRequestKt$Dsl)
.class public final Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl;
.super Ljava/lang/Object;
.source "MonitoringEventRequestKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MonitoringEventRequestKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl;->Companion:Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl;-><init>(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
    .registers 3

    .line 32
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    return-object v0
.end method

.method public final clearDynamicDeviceInfo()V
    .registers 2

    .line 92
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->clearDynamicDeviceInfo()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    return-void
.end method

.method public final clearMonitoringEvent()V
    .registers 2

    .line 128
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->clearMonitoringEvent()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    return-void
.end method

.method public final clearStaticDeviceInfo()V
    .registers 2

    .line 56
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->clearStaticDeviceInfo()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    return-void
.end method

.method public final getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
    .registers 3

    .line 79
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v0

    const-string v1, "getDynamicDeviceInfo(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getMonitoringEvent()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .registers 3

    .line 115
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->getMonitoringEvent()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    move-result-object v0

    const-string v1, "getMonitoringEvent(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;
    .registers 3

    .line 43
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object v0

    const-string v1, "getStaticDeviceInfo(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hasDynamicDeviceInfo()Z
    .registers 2

    .line 103
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->hasDynamicDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public final hasMonitoringEvent()Z
    .registers 2

    .line 139
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->hasMonitoringEvent()Z

    move-result v0

    return v0
.end method

.method public final hasStaticDeviceInfo()Z
    .registers 2

    .line 67
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->hasStaticDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public final setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    return-void
.end method

.method public final setMonitoringEvent(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->setMonitoringEvent(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    return-void
.end method

.method public final setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.MonitoringEventRequestKt.Dsl.Companion (gatewayprotocol.v1.MonitoringEventRequestKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "MonitoringEventRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl;
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
    invoke-direct {p0}, Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;)Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/MonitoringEventRequestKt$Dsl;-><init>(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

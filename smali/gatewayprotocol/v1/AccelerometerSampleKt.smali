###### Class gatewayprotocol.v1.AccelerometerSampleKt (gatewayprotocol.v1.AccelerometerSampleKt)
.class public final Lgatewayprotocol/v1/AccelerometerSampleKt;
.super Ljava/lang/Object;
.source "AccelerometerSampleKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/AccelerometerSampleKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/AccelerometerSampleKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/AccelerometerSampleKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/AccelerometerSampleKt;->INSTANCE:Lgatewayprotocol/v1/AccelerometerSampleKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.AccelerometerSampleKt.Dsl (gatewayprotocol.v1.AccelerometerSampleKt$Dsl)
.class public final Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;
.super Ljava/lang/Object;
.source "AccelerometerSampleKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AccelerometerSampleKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->Companion:Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;-><init>(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;
    .registers 3

    .line 34
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    return-object v0
.end method

.method public final clearClientTimestamp()V
    .registers 2

    .line 58
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->clearClientTimestamp()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    return-void
.end method

.method public final clearX()V
    .registers 2

    .line 96
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->clearX()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    return-void
.end method

.method public final clearY()V
    .registers 2

    .line 121
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->clearY()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    return-void
.end method

.method public final clearZ()V
    .registers 2

    .line 146
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->clearZ()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    return-void
.end method

.method public final getClientTimestamp()Lcom/google/protobuf/Timestamp;
    .registers 3

    .line 45
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->getClientTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    const-string v1, "getClientTimestamp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getX()F
    .registers 2

    .line 82
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->getX()F

    move-result v0

    return v0
.end method

.method public final getY()F
    .registers 2

    .line 108
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->getY()F

    move-result v0

    return v0
.end method

.method public final getZ()F
    .registers 2

    .line 133
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->getZ()F

    move-result v0

    return v0
.end method

.method public final hasClientTimestamp()Z
    .registers 2

    .line 69
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->hasClientTimestamp()Z

    move-result v0

    return v0
.end method

.method public final setClientTimestamp(Lcom/google/protobuf/Timestamp;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->setClientTimestamp(Lcom/google/protobuf/Timestamp;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    return-void
.end method

.method public final setX(F)V
    .registers 3

    .line 85
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->setX(F)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    return-void
.end method

.method public final setY(F)V
    .registers 3

    .line 111
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->setY(F)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    return-void
.end method

.method public final setZ(F)V
    .registers 3

    .line 136
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->setZ(F)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.AccelerometerSampleKt.Dsl.Companion (gatewayprotocol.v1.AccelerometerSampleKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "AccelerometerSampleKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;)Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;-><init>(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

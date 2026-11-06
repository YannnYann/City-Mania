###### Class gatewayprotocol.v1.PiiKt (gatewayprotocol.v1.PiiKt)
.class public final Lgatewayprotocol/v1/PiiKt;
.super Ljava/lang/Object;
.source "PiiKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/PiiKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/PiiKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/PiiKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/PiiKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/PiiKt;->INSTANCE:Lgatewayprotocol/v1/PiiKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.PiiKt.Dsl (gatewayprotocol.v1.PiiKt$Dsl)
.class public final Lgatewayprotocol/v1/PiiKt$Dsl;
.super Ljava/lang/Object;
.source "PiiKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/PiiKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/PiiKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/PiiKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/PiiKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/PiiKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/PiiKt$Dsl;->Companion:Lgatewayprotocol/v1/PiiKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/PiiKt$Dsl;-><init>(Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .registers 3

    .line 32
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object v0
.end method

.method public final clearAdvertisingId()V
    .registers 2

    .line 56
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->clearAdvertisingId()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-void
.end method

.method public final clearAppsetId()V
    .registers 2

    .line 167
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->clearAppsetId()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-void
.end method

.method public final clearFid()V
    .registers 2

    .line 131
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->clearFid()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-void
.end method

.method public final clearOpenAdvertisingTrackingId()V
    .registers 2

    .line 106
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->clearOpenAdvertisingTrackingId()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-void
.end method

.method public final clearVendorId()V
    .registers 2

    .line 81
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->clearVendorId()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-void
.end method

.method public final getAdvertisingId()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 43
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->getAdvertisingId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getAdvertisingId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAppsetId()Ljava/lang/String;
    .registers 3

    .line 154
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->getAppsetId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAppsetId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getFid()Ljava/lang/String;
    .registers 3

    .line 118
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->getFid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getFid(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getOpenAdvertisingTrackingId()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 93
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->getOpenAdvertisingTrackingId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getOpenAdvertisingTrackingId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getVendorId()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 68
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->getVendorId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getVendorId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hasAppsetId()Z
    .registers 2

    .line 178
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->hasAppsetId()Z

    move-result v0

    return v0
.end method

.method public final hasFid()Z
    .registers 2

    .line 142
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->hasFid()Z

    move-result v0

    return v0
.end method

.method public final setAdvertisingId(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->setAdvertisingId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-void
.end method

.method public final setAppsetId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->setAppsetId(Ljava/lang/String;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-void
.end method

.method public final setFid(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->setFid(Ljava/lang/String;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-void
.end method

.method public final setOpenAdvertisingTrackingId(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->setOpenAdvertisingTrackingId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-void
.end method

.method public final setVendorId(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lgatewayprotocol/v1/PiiKt$Dsl;->_builder:Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->setVendorId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.PiiKt.Dsl.Companion (gatewayprotocol.v1.PiiKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/PiiKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "PiiKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/PiiKt$Dsl;
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
    invoke-direct {p0}, Lgatewayprotocol/v1/PiiKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;)Lgatewayprotocol/v1/PiiKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lgatewayprotocol/v1/PiiKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/PiiKt$Dsl;-><init>(Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

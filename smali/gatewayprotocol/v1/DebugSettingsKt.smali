###### Class gatewayprotocol.v1.DebugSettingsKt (gatewayprotocol.v1.DebugSettingsKt)
.class public final Lgatewayprotocol/v1/DebugSettingsKt;
.super Ljava/lang/Object;
.source "DebugSettingsKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/DebugSettingsKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/DebugSettingsKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/DebugSettingsKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/DebugSettingsKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/DebugSettingsKt;->INSTANCE:Lgatewayprotocol/v1/DebugSettingsKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.DebugSettingsKt.Dsl (gatewayprotocol.v1.DebugSettingsKt$Dsl)
.class public final Lgatewayprotocol/v1/DebugSettingsKt$Dsl;
.super Ljava/lang/Object;
.source "DebugSettingsKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/DebugSettingsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/DebugSettingsKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/DebugSettingsKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/DebugSettingsKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;->Companion:Lgatewayprotocol/v1/DebugSettingsKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;-><init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;
    .registers 3

    .line 32
    iget-object v0, p0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;

    return-object v0
.end method

.method public final clearCleanCache()V
    .registers 2

    .line 106
    iget-object v0, p0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->clearCleanCache()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    return-void
.end method

.method public final clearEnableTracing()V
    .registers 2

    .line 81
    iget-object v0, p0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->clearEnableTracing()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    return-void
.end method

.method public final clearWebviewInspectable()V
    .registers 2

    .line 56
    iget-object v0, p0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->clearWebviewInspectable()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    return-void
.end method

.method public final getCleanCache()Z
    .registers 2

    .line 93
    iget-object v0, p0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->getCleanCache()Z

    move-result v0

    return v0
.end method

.method public final getEnableTracing()Z
    .registers 2

    .line 68
    iget-object v0, p0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->getEnableTracing()Z

    move-result v0

    return v0
.end method

.method public final getWebviewInspectable()Z
    .registers 2

    .line 43
    iget-object v0, p0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->getWebviewInspectable()Z

    move-result v0

    return v0
.end method

.method public final setCleanCache(Z)V
    .registers 3

    .line 96
    iget-object v0, p0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->setCleanCache(Z)Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    return-void
.end method

.method public final setEnableTracing(Z)V
    .registers 3

    .line 71
    iget-object v0, p0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->setEnableTracing(Z)Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    return-void
.end method

.method public final setWebviewInspectable(Z)V
    .registers 3

    .line 46
    iget-object v0, p0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->setWebviewInspectable(Z)Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.DebugSettingsKt.Dsl.Companion (gatewayprotocol.v1.DebugSettingsKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/DebugSettingsKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "DebugSettingsKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/DebugSettingsKt$Dsl;
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
    invoke-direct {p0}, Lgatewayprotocol/v1/DebugSettingsKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;)Lgatewayprotocol/v1/DebugSettingsKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;-><init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

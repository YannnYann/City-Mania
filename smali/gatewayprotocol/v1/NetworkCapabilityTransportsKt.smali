###### Class gatewayprotocol.v1.NetworkCapabilityTransportsKt (gatewayprotocol.v1.NetworkCapabilityTransportsKt)
.class public final Lgatewayprotocol/v1/NetworkCapabilityTransportsKt;
.super Ljava/lang/Object;
.source "NetworkCapabilityTransportsKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lgatewayprotocol/v1/NetworkCapabilityTransportsKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt;->INSTANCE:Lgatewayprotocol/v1/NetworkCapabilityTransportsKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class gatewayprotocol.v1.NetworkCapabilityTransportsKt.Dsl (gatewayprotocol.v1.NetworkCapabilityTransportsKt$Dsl)
.class public final Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;
.super Ljava/lang/Object;
.source "NetworkCapabilityTransportsKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/NetworkCapabilityTransportsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->Companion:Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;-><init>(Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports;
    .registers 3

    .line 32
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports;

    return-object v0
.end method

.method public final clearBluetooth()V
    .registers 2

    .line 48
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->clearBluetooth()Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    return-void
.end method

.method public final clearCellular()V
    .registers 2

    .line 72
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->clearCellular()Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    return-void
.end method

.method public final clearEthernet()V
    .registers 2

    .line 96
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->clearEthernet()Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    return-void
.end method

.method public final clearLowpan()V
    .registers 2

    .line 120
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->clearLowpan()Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    return-void
.end method

.method public final clearSatellite()V
    .registers 2

    .line 144
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->clearSatellite()Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    return-void
.end method

.method public final clearThread()V
    .registers 2

    .line 168
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->clearThread()Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    return-void
.end method

.method public final clearUsb()V
    .registers 2

    .line 192
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->clearUsb()Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    return-void
.end method

.method public final clearVpn()V
    .registers 2

    .line 216
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->clearVpn()Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    return-void
.end method

.method public final clearWifi()V
    .registers 2

    .line 240
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->clearWifi()Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    return-void
.end method

.method public final clearWifiAware()V
    .registers 2

    .line 264
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->clearWifiAware()Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    return-void
.end method

.method public final getBluetooth()Z
    .registers 2

    .line 39
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->getBluetooth()Z

    move-result v0

    return v0
.end method

.method public final getCellular()Z
    .registers 2

    .line 63
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->getCellular()Z

    move-result v0

    return v0
.end method

.method public final getEthernet()Z
    .registers 2

    .line 87
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->getEthernet()Z

    move-result v0

    return v0
.end method

.method public final getLowpan()Z
    .registers 2

    .line 111
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->getLowpan()Z

    move-result v0

    return v0
.end method

.method public final getSatellite()Z
    .registers 2

    .line 135
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->getSatellite()Z

    move-result v0

    return v0
.end method

.method public final getThread()Z
    .registers 2

    .line 159
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->getThread()Z

    move-result v0

    return v0
.end method

.method public final getUsb()Z
    .registers 2

    .line 183
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->getUsb()Z

    move-result v0

    return v0
.end method

.method public final getVpn()Z
    .registers 2

    .line 207
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->getVpn()Z

    move-result v0

    return v0
.end method

.method public final getWifi()Z
    .registers 2

    .line 231
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->getWifi()Z

    move-result v0

    return v0
.end method

.method public final getWifiAware()Z
    .registers 2

    .line 255
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->getWifiAware()Z

    move-result v0

    return v0
.end method

.method public final hasBluetooth()Z
    .registers 2

    .line 55
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->hasBluetooth()Z

    move-result v0

    return v0
.end method

.method public final hasCellular()Z
    .registers 2

    .line 79
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->hasCellular()Z

    move-result v0

    return v0
.end method

.method public final hasEthernet()Z
    .registers 2

    .line 103
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->hasEthernet()Z

    move-result v0

    return v0
.end method

.method public final hasLowpan()Z
    .registers 2

    .line 127
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->hasLowpan()Z

    move-result v0

    return v0
.end method

.method public final hasSatellite()Z
    .registers 2

    .line 151
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->hasSatellite()Z

    move-result v0

    return v0
.end method

.method public final hasThread()Z
    .registers 2

    .line 175
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->hasThread()Z

    move-result v0

    return v0
.end method

.method public final hasUsb()Z
    .registers 2

    .line 199
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->hasUsb()Z

    move-result v0

    return v0
.end method

.method public final hasVpn()Z
    .registers 2

    .line 223
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->hasVpn()Z

    move-result v0

    return v0
.end method

.method public final hasWifi()Z
    .registers 2

    .line 247
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->hasWifi()Z

    move-result v0

    return v0
.end method

.method public final hasWifiAware()Z
    .registers 2

    .line 271
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->hasWifiAware()Z

    move-result v0

    return v0
.end method

.method public final setBluetooth(Z)V
    .registers 3

    .line 42
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->setBluetooth(Z)Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    return-void
.end method

.method public final setCellular(Z)V
    .registers 3

    .line 66
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->setCellular(Z)Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    return-void
.end method

.method public final setEthernet(Z)V
    .registers 3

    .line 90
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->setEthernet(Z)Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    return-void
.end method

.method public final setLowpan(Z)V
    .registers 3

    .line 114
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->setLowpan(Z)Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    return-void
.end method

.method public final setSatellite(Z)V
    .registers 3

    .line 138
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->setSatellite(Z)Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    return-void
.end method

.method public final setThread(Z)V
    .registers 3

    .line 162
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->setThread(Z)Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    return-void
.end method

.method public final setUsb(Z)V
    .registers 3

    .line 186
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->setUsb(Z)Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    return-void
.end method

.method public final setVpn(Z)V
    .registers 3

    .line 210
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->setVpn(Z)Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    return-void
.end method

.method public final setWifi(Z)V
    .registers 3

    .line 234
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->setWifi(Z)Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    return-void
.end method

.method public final setWifiAware(Z)V
    .registers 3

    .line 258
    iget-object v0, p0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;->_builder:Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;->setWifiAware(Z)Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;

    return-void
.end method

###### Class gatewayprotocol.v1.NetworkCapabilityTransportsKt.Dsl.Companion (gatewayprotocol.v1.NetworkCapabilityTransportsKt$Dsl$Companion)
.class public final Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "NetworkCapabilityTransportsKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;
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
    invoke-direct {p0}, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;)Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgatewayprotocol/v1/NetworkCapabilityTransportsKt$Dsl;-><init>(Lgatewayprotocol/v1/NetworkCapabilityTransportsOuterClass$NetworkCapabilityTransports$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

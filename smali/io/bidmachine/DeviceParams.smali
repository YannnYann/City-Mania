###### Class io.bidmachine.DeviceParams (io.bidmachine.DeviceParams)
.class public final Lio/bidmachine/DeviceParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final deviceConnectionParams:Lio/bidmachine/DeviceConnectionParams;


# direct methods
.method public constructor <init>(Lio/bidmachine/DeviceConnectionParams;)V
    .registers 3

    const-string v0, "deviceConnectionParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/DeviceParams;->deviceConnectionParams:Lio/bidmachine/DeviceConnectionParams;

    return-void
.end method

.method private final createDeviceBuilder(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 12

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->newBuilder()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v3

    .line 3
    const-string v0, "this"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/DeviceParams;->fillDeviceBuilder(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/Device$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;)V

    .line 4
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    goto :goto_24

    :catchall_18
    move-exception v0

    move-object p1, v0

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    :goto_24
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2b

    const/4 p1, 0x0

    :cond_2b
    check-cast p1, Lio/bidmachine/protobuf/sdk/Device$Builder;

    return-object p1
.end method

.method private final createDeviceContextBuilder(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;Lcom/explorestack/protobuf/adcom/ConnectionType;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .registers 14

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object v3

    .line 5
    const-string v0, "this"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 6
    invoke-direct/range {v1 .. v7}, Lio/bidmachine/DeviceParams;->fillDeviceContextBuilder(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$Device$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;Lcom/explorestack/protobuf/adcom/ConnectionType;)V

    .line 7
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    goto :goto_25

    :catchall_19
    move-exception v0

    move-object p1, v0

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 18
    :goto_25
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2c

    const/4 p1, 0x0

    :cond_2c
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    return-object p1
.end method

.method private final fillDeviceBuilder(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/Device$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;)V
    .registers 18

    .line 1
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v4

    const-string v0, "get()"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lio/bidmachine/DeviceInfo;->Companion:Lio/bidmachine/DeviceInfo$Companion;

    invoke-virtual {v0, p1}, Lio/bidmachine/DeviceInfo$Companion;->obtain(Landroid/content/Context;)Lio/bidmachine/DeviceInfo;

    move-result-object v5

    .line 3
    invoke-virtual {v5, p1}, Lio/bidmachine/DeviceInfo;->updateHwInfo(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v4, p1}, Lio/bidmachine/k;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setBmIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 7
    new-instance v7, Lio/bidmachine/DeviceParams$a;

    invoke-direct {v7, v4, p2}, Lio/bidmachine/DeviceParams$a;-><init>(Lio/bidmachine/k;Lio/bidmachine/protobuf/sdk/Device$Builder;)V

    new-instance v8, Lio/bidmachine/DeviceParams$b;

    move-object/from16 v3, p5

    invoke-direct {v8, v4, p3, v3}, Lio/bidmachine/DeviceParams$b;-><init>(Lio/bidmachine/k;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p4

    invoke-static/range {v6 .. v11}, Lio/bidmachine/internal/w;->a(Lio/bidmachine/internal/w;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 18
    new-instance v6, Lio/bidmachine/DeviceParams$c;

    invoke-direct {v6, p1, p2, v4, v5}, Lio/bidmachine/DeviceParams$c;-><init>(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/Device$Builder;Lio/bidmachine/k;Lio/bidmachine/DeviceInfo;)V

    new-instance v0, Lio/bidmachine/DeviceParams$d;

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/DeviceParams$d;-><init>(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;Lio/bidmachine/k;Lio/bidmachine/DeviceInfo;)V

    move-object/from16 p3, p4

    invoke-virtual {p3, v6, v0}, Lio/bidmachine/internal/w;->b(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 140
    invoke-static {p1}, Lio/bidmachine/utils/DeviceUtils;->isCharging(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p3

    if-eqz p3, :cond_4b

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p2, p3}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setCharging(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 142
    :cond_4b
    invoke-static {p1}, Lio/bidmachine/utils/BluetoothUtils;->isHeadsetConnected(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p3

    if-eqz p3, :cond_58

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p2, p3}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setHeadset(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 144
    :cond_58
    invoke-static {p1}, Lio/bidmachine/utils/DeviceUtils;->isBatterySaverEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p3

    if-eqz p3, :cond_65

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p2, p3}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setBatterysaver(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 146
    :cond_65
    invoke-static {p1}, Lio/bidmachine/utils/DeviceUtils;->isDarkModeEnabled(Landroid/content/Context;)Z

    move-result p3

    invoke-virtual {p2, p3}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setDarkmode(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 148
    invoke-static {p1}, Lio/bidmachine/utils/DeviceUtils;->isAirplaneModeOn(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p3

    if-eqz p3, :cond_79

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p2, p3}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setAirplane(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 150
    :cond_79
    invoke-static {p1}, Lio/bidmachine/utils/DeviceUtils;->isDoNotDisturbOn(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p3

    if-eqz p3, :cond_86

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p2, p3}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setDnd(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 153
    :cond_86
    invoke-static {p1}, Lio/bidmachine/utils/DeviceUtils;->getConnectionType(Landroid/content/Context;)Lcom/explorestack/protobuf/adcom/ConnectionType;

    move-result-object p3

    const-string v0, "getConnectionType(context)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lio/bidmachine/DeviceParams;->deviceConnectionParams:Lio/bidmachine/DeviceConnectionParams;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/DeviceConnectionParams;->build(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/Device$Builder;Lcom/explorestack/protobuf/adcom/ConnectionType;)V

    .line 156
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2, p3}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setApilevel(I)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 157
    sget-object p3, Lio/bidmachine/core/TimeManager;->INSTANCE:Lio/bidmachine/core/TimeManager;

    invoke-virtual {p3}, Lio/bidmachine/core/TimeManager;->getTimezoneId()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_ae

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_a8

    goto :goto_a9

    :cond_a8
    const/4 p3, 0x0

    :goto_a9
    if-eqz p3, :cond_ae

    .line 159
    invoke-virtual {p2, p3}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setTimezone(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 161
    :cond_ae
    invoke-virtual {v5}, Lio/bidmachine/DeviceInfo;->isDeviceRooted()Z

    move-result p3

    invoke-virtual {p2, p3}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setJailbreak(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 164
    invoke-virtual {v5}, Lio/bidmachine/DeviceInfo;->getAudio()Lio/bidmachine/DeviceInfo$Audio;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/bidmachine/DeviceInfo$Audio;->isRingMuted(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_c6

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setRingmute(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 166
    :cond_c6
    invoke-virtual {v5}, Lio/bidmachine/DeviceInfo;->getSimCountry()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f8

    .line 298
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_d9

    .line 299
    invoke-static {p1}, Lcom/explorestack/protobuf/StringValue;->of(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setSimCountry(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 434
    :cond_d9
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 435
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 444
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e6
    :goto_e6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lio/bidmachine/util/conversion/StringTypeConversion;

    if-eqz v1, :cond_e6

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e6

    .line 445
    :cond_f8
    invoke-virtual {v5}, Lio/bidmachine/DeviceInfo;->isNetworkInRoaming()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_109

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lcom/explorestack/protobuf/BoolValue;->of(Z)Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setNetworkRoaming(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    :cond_109
    return-void
.end method

.method private final fillDeviceContextBuilder(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$Device$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;Lcom/explorestack/protobuf/adcom/ConnectionType;)V
    .registers 12

    .line 1
    sget-object v0, Lio/bidmachine/DeviceInfo;->Companion:Lio/bidmachine/DeviceInfo$Companion;

    invoke-virtual {v0, p1}, Lio/bidmachine/DeviceInfo$Companion;->obtain(Landroid/content/Context;)Lio/bidmachine/DeviceInfo;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getDeviceType()Lio/bidmachine/util/DeviceType;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/DeviceInfoKt;->toProtobufDeviceType(Lio/bidmachine/util/DeviceType;)Lcom/explorestack/protobuf/adcom/DeviceType;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setType(Lcom/explorestack/protobuf/adcom/DeviceType;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 7
    sget-object v1, Lcom/explorestack/protobuf/adcom/OS;->OS_ANDROID:Lcom/explorestack/protobuf/adcom/OS;

    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setOs(Lcom/explorestack/protobuf/adcom/OS;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 9
    invoke-static {}, Lio/bidmachine/utils/DeviceUtils;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setOsv(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 12
    invoke-static {}, Lio/bidmachine/utils/DeviceUtils;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setMake(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 117
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    goto :goto_38

    .line 118
    :cond_35
    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setLang(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 224
    :cond_38
    :goto_38
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_45
    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lio/bidmachine/util/conversion/StringTypeConversion;

    if-eqz v4, :cond_45

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_45

    :cond_57
    if-nez p6, :cond_62

    .line 235
    invoke-static {p1}, Lio/bidmachine/utils/DeviceUtils;->getConnectionType(Landroid/content/Context;)Lcom/explorestack/protobuf/adcom/ConnectionType;

    move-result-object p6

    const-string v1, "getConnectionType(context)"

    invoke-static {p6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    :cond_62
    invoke-virtual {p2, p6}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setContype(Lcom/explorestack/protobuf/adcom/ConnectionType;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 239
    iget-object v1, p0, Lio/bidmachine/DeviceParams;->deviceConnectionParams:Lio/bidmachine/DeviceConnectionParams;

    invoke-virtual {v1, p1, p2, p6}, Lio/bidmachine/DeviceConnectionParams;->build(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$Device$Builder;Lcom/explorestack/protobuf/adcom/ConnectionType;)V

    .line 241
    invoke-static {p1}, Lio/bidmachine/util/DeviceUtilsKt;->getScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p6

    .line 243
    invoke-virtual {p6}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setW(I)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 245
    invoke-virtual {p6}, Landroid/util/Size;->getHeight()I

    move-result p6

    invoke-virtual {p2, p6}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setH(I)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 247
    new-instance p6, Lio/bidmachine/DeviceParams$e;

    invoke-direct {p6, p2, v0, p1}, Lio/bidmachine/DeviceParams$e;-><init>(Lcom/explorestack/protobuf/adcom/Context$Device$Builder;Lio/bidmachine/DeviceInfo;Landroid/content/Context;)V

    new-instance v1, Lio/bidmachine/DeviceParams$f;

    invoke-direct {v1, p3, p5, v0, p1}, Lio/bidmachine/DeviceParams$f;-><init>(Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;Lio/bidmachine/DeviceInfo;Landroid/content/Context;)V

    invoke-virtual {p4, p6, v1}, Lio/bidmachine/internal/w;->b(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 273
    new-instance p6, Lio/bidmachine/DeviceParams$g;

    invoke-direct {p6, p2, p1}, Lio/bidmachine/DeviceParams$g;-><init>(Lcom/explorestack/protobuf/adcom/Context$Device$Builder;Landroid/content/Context;)V

    new-instance v1, Lio/bidmachine/DeviceParams$h;

    invoke-direct {v1, p2, p3, p5, p1}, Lio/bidmachine/DeviceParams$h;-><init>(Lcom/explorestack/protobuf/adcom/Context$Device$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;Landroid/content/Context;)V

    new-instance v2, Lio/bidmachine/DeviceParams$i;

    invoke-direct {v2, p2}, Lio/bidmachine/DeviceParams$i;-><init>(Lcom/explorestack/protobuf/adcom/Context$Device$Builder;)V

    invoke-virtual {p4, p6, v1, v2}, Lio/bidmachine/internal/w;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 292
    new-instance p6, Lio/bidmachine/DeviceParams$j;

    invoke-direct {p6, v0, p2}, Lio/bidmachine/DeviceParams$j;-><init>(Lio/bidmachine/DeviceInfo;Lcom/explorestack/protobuf/adcom/Context$Device$Builder;)V

    new-instance v1, Lio/bidmachine/DeviceParams$k;

    invoke-direct {v1, v0, p3, p5}, Lio/bidmachine/DeviceParams$k;-><init>(Lio/bidmachine/DeviceInfo;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V

    invoke-virtual {p4, p6, v1}, Lio/bidmachine/internal/w;->c(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 307
    new-instance p6, Lio/bidmachine/DeviceParams$l;

    invoke-direct {p6, p1}, Lio/bidmachine/DeviceParams$l;-><init>(Landroid/content/Context;)V

    invoke-static {p3, p4, p5, p6}, Lio/bidmachine/internal/m;->a(Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;Lkotlin/jvm/functions/Function0;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    .line 313
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object p1

    .line 314
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setGeo(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    return-void
.end method


# virtual methods
.method public final build(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;Lcom/explorestack/protobuf/adcom/ConnectionType;)V
    .registers 14

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyGroupRestrictions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maskedSignalsBuilder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyDataMasker"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v3, p4

    move-object v5, p5

    move-object v6, p6

    .line 7
    invoke-direct/range {v1 .. v6}, Lio/bidmachine/DeviceParams;->createDeviceContextBuilder(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;Lcom/explorestack/protobuf/adcom/ConnectionType;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object p1

    if-nez p1, :cond_26

    return-void

    .line 15
    :cond_26
    invoke-direct {p0, v2, v3, v4, v5}, Lio/bidmachine/DeviceParams;->createDeviceBuilder(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p3

    if-eqz p3, :cond_3b

    .line 21
    invoke-virtual {p3}, Lio/bidmachine/protobuf/sdk/Device$Builder;->build()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object p3

    if-eqz p3, :cond_3b

    .line 22
    invoke-static {p3}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    move-result-object p3

    if-eqz p3, :cond_3b

    .line 23
    invoke-virtual {p1, p3}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 25
    :cond_3b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->setDevice(Lcom/explorestack/protobuf/adcom/Context$Device;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    return-void
.end method

.method public final build(Landroid/content/Context;Lio/bidmachine/protobuf/RequestTokenPayload$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestTokenPayloadBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maskedSignalsBuilder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyGroupRestrictions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyDataMasker"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p3, p4, p5}, Lio/bidmachine/DeviceParams;->createDeviceBuilder(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 6
    invoke-virtual {p2, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setDeviceData(Lio/bidmachine/protobuf/sdk/Device$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    :cond_22
    return-void
.end method

###### Class io.bidmachine.DeviceParams.a (io.bidmachine.DeviceParams$a)
.class public final Lio/bidmachine/DeviceParams$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/DeviceParams;->fillDeviceBuilder(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/Device$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/k;

.field public final synthetic b:Lio/bidmachine/protobuf/sdk/Device$Builder;


# direct methods
.method public constructor <init>(Lio/bidmachine/k;Lio/bidmachine/protobuf/sdk/Device$Builder;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/DeviceParams$a;->a:Lio/bidmachine/k;

    iput-object p2, p0, Lio/bidmachine/DeviceParams$a;->b:Lio/bidmachine/protobuf/sdk/Device$Builder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceParams$a;->a:Lio/bidmachine/k;

    invoke-virtual {v0}, Lio/bidmachine/k;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v1, p0, Lio/bidmachine/DeviceParams$a;->b:Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 289
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 290
    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 581
    :cond_13
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 582
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 591
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lio/bidmachine/util/conversion/StringTypeConversion;

    if-eqz v3, :cond_20

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_32
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DeviceParams$a;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.DeviceParams.b (io.bidmachine.DeviceParams$b)
.class public final Lio/bidmachine/DeviceParams$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/DeviceParams;->fillDeviceBuilder(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/Device$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/k;

.field public final synthetic b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

.field public final synthetic c:Lio/bidmachine/internal/v;


# direct methods
.method public constructor <init>(Lio/bidmachine/k;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/DeviceParams$b;->a:Lio/bidmachine/k;

    iput-object p2, p0, Lio/bidmachine/DeviceParams$b;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iput-object p3, p0, Lio/bidmachine/DeviceParams$b;->c:Lio/bidmachine/internal/v;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceParams$b;->a:Lio/bidmachine/k;

    invoke-virtual {v0}, Lio/bidmachine/k;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v1, p0, Lio/bidmachine/DeviceParams$b;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v2, p0, Lio/bidmachine/DeviceParams$b;->c:Lio/bidmachine/internal/v;

    .line 286
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 287
    invoke-static {v0}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setIfv(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 574
    :cond_21
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 575
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 584
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lio/bidmachine/util/conversion/StringTypeConversion;

    if-eqz v3, :cond_2e

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_40
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DeviceParams$b;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.DeviceParams.c (io.bidmachine.DeviceParams$c)
.class public final Lio/bidmachine/DeviceParams$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/DeviceParams;->fillDeviceBuilder(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/Device$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lio/bidmachine/protobuf/sdk/Device$Builder;

.field public final synthetic c:Lio/bidmachine/k;

.field public final synthetic d:Lio/bidmachine/DeviceInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/Device$Builder;Lio/bidmachine/k;Lio/bidmachine/DeviceInfo;)V
    .registers 5

    .line 0
    iput-object p1, p0, Lio/bidmachine/DeviceParams$c;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/bidmachine/DeviceParams$c;->b:Lio/bidmachine/protobuf/sdk/Device$Builder;

    iput-object p3, p0, Lio/bidmachine/DeviceParams$c;->c:Lio/bidmachine/k;

    iput-object p4, p0, Lio/bidmachine/DeviceParams$c;->d:Lio/bidmachine/DeviceInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceParams$c;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/utils/DeviceUtils;->getInputLanguageSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "getInputLanguageSet(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 3
    iget-object v1, p0, Lio/bidmachine/DeviceParams$c;->b:Lio/bidmachine/protobuf/sdk/Device$Builder;

    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->addAllInputlanguage(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 6
    :cond_16
    iget-object v0, p0, Lio/bidmachine/DeviceParams$c;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/utils/DeviceUtils;->getBatteryLevel(Landroid/content/Context;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lio/bidmachine/DeviceParams$c;->b:Lio/bidmachine/protobuf/sdk/Device$Builder;

    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setBatterylevel(F)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 7
    :cond_28
    iget-object v0, p0, Lio/bidmachine/DeviceParams$c;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/utils/DeviceUtils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5a

    iget-object v1, p0, Lio/bidmachine/DeviceParams$c;->b:Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 279
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 280
    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setDevicename(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 555
    :cond_3b
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 556
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 565
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_48
    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lio/bidmachine/util/conversion/StringTypeConversion;

    if-eqz v3, :cond_48

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 566
    :cond_5a
    iget-object v0, p0, Lio/bidmachine/DeviceParams$c;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/utils/DeviceUtils;->getScreenBrightnessRatio(Landroid/content/Context;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lio/bidmachine/DeviceParams$c;->b:Lio/bidmachine/protobuf/sdk/Device$Builder;

    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setScreenbright(F)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 567
    :cond_6c
    iget-object v0, p0, Lio/bidmachine/DeviceParams$c;->b:Lio/bidmachine/protobuf/sdk/Device$Builder;

    invoke-static {}, Lio/bidmachine/core/TimeManager;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setTime(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 568
    iget-object v0, p0, Lio/bidmachine/DeviceParams$c;->b:Lio/bidmachine/protobuf/sdk/Device$Builder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setLastbootup(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 569
    iget-object v0, p0, Lio/bidmachine/DeviceParams$c;->b:Lio/bidmachine/protobuf/sdk/Device$Builder;

    iget-object v1, p0, Lio/bidmachine/DeviceParams$c;->c:Lio/bidmachine/k;

    iget-object v2, p0, Lio/bidmachine/DeviceParams$c;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lio/bidmachine/k;->j(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setLastbootupV2(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 570
    iget-object v0, p0, Lio/bidmachine/DeviceParams$c;->c:Lio/bidmachine/k;

    iget-object v1, p0, Lio/bidmachine/DeviceParams$c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/bidmachine/k;->i(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const-string v1, "bidMachine.obtainLastBootupHistory(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a3

    .line 572
    iget-object v1, p0, Lio/bidmachine/DeviceParams$c;->b:Lio/bidmachine/protobuf/sdk/Device$Builder;

    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->addAllLastbootupHistory(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 575
    :cond_a3
    iget-object v0, p0, Lio/bidmachine/DeviceParams$c;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/utils/BluetoothUtils;->getConnectedHeadsets(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c3

    .line 576
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b3

    goto :goto_b4

    :cond_b3
    move-object v0, v1

    :goto_b4
    if-eqz v0, :cond_c3

    .line 577
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_c3

    .line 578
    iget-object v2, p0, Lio/bidmachine/DeviceParams$c;->b:Lio/bidmachine/protobuf/sdk/Device$Builder;

    invoke-virtual {v2, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setHeadsetname(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 580
    :cond_c3
    iget-object v0, p0, Lio/bidmachine/DeviceParams$c;->d:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getAvailableDiskSpaceInMB()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_d4

    iget-object v2, p0, Lio/bidmachine/DeviceParams$c;->b:Lio/bidmachine/protobuf/sdk/Device$Builder;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setDiskspace(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 581
    :cond_d4
    iget-object v0, p0, Lio/bidmachine/DeviceParams$c;->d:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getTotalDiskSpaceInMB()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_e5

    iget-object v2, p0, Lio/bidmachine/DeviceParams$c;->b:Lio/bidmachine/protobuf/sdk/Device$Builder;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setTotaldisk(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 582
    :cond_e5
    iget-object v0, p0, Lio/bidmachine/DeviceParams$c;->d:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getRam()Lio/bidmachine/DeviceInfo$Ram;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo$Ram;->getTotalMemBytes()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_fa

    iget-object v2, p0, Lio/bidmachine/DeviceParams$c;->b:Lio/bidmachine/protobuf/sdk/Device$Builder;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setTotalmem(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 583
    :cond_fa
    iget-object v0, p0, Lio/bidmachine/DeviceParams$c;->d:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getRam()Lio/bidmachine/DeviceInfo$Ram;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo$Ram;->getFreeMemBytes()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_10f

    iget-object v2, p0, Lio/bidmachine/DeviceParams$c;->b:Lio/bidmachine/protobuf/sdk/Device$Builder;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setFreemem(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 584
    :cond_10f
    iget-object v0, p0, Lio/bidmachine/DeviceParams$c;->d:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getCpu()Lio/bidmachine/DeviceInfo$Cpu;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo$Cpu;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12a

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_122

    goto :goto_123

    :cond_122
    move-object v0, v1

    :goto_123
    if-eqz v0, :cond_12a

    iget-object v2, p0, Lio/bidmachine/DeviceParams$c;->b:Lio/bidmachine/protobuf/sdk/Device$Builder;

    invoke-virtual {v2, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setCpuname(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 585
    :cond_12a
    iget-object v0, p0, Lio/bidmachine/DeviceParams$c;->d:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getCpu()Lio/bidmachine/DeviceInfo$Cpu;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo$Cpu;->getVendor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_145

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_13d

    goto :goto_13e

    :cond_13d
    move-object v0, v1

    :goto_13e
    if-eqz v0, :cond_145

    iget-object v2, p0, Lio/bidmachine/DeviceParams$c;->b:Lio/bidmachine/protobuf/sdk/Device$Builder;

    invoke-virtual {v2, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setCpuvendor(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 586
    :cond_145
    iget-object v0, p0, Lio/bidmachine/DeviceParams$c;->d:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getGpu()Lio/bidmachine/DeviceInfo$Gpu;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo$Gpu;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_160

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_158

    goto :goto_159

    :cond_158
    move-object v0, v1

    :goto_159
    if-eqz v0, :cond_160

    iget-object v2, p0, Lio/bidmachine/DeviceParams$c;->b:Lio/bidmachine/protobuf/sdk/Device$Builder;

    invoke-virtual {v2, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setGpuname(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 587
    :cond_160
    iget-object v0, p0, Lio/bidmachine/DeviceParams$c;->d:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getGpu()Lio/bidmachine/DeviceInfo$Gpu;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo$Gpu;->getVendor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17b

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_173

    goto :goto_174

    :cond_173
    move-object v0, v1

    :goto_174
    if-eqz v0, :cond_17b

    iget-object v2, p0, Lio/bidmachine/DeviceParams$c;->b:Lio/bidmachine/protobuf/sdk/Device$Builder;

    invoke-virtual {v2, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setGpuvendor(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 589
    :cond_17b
    iget-object v0, p0, Lio/bidmachine/DeviceParams$c;->d:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getSimCarrier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_195

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_18a

    move-object v1, v0

    :cond_18a
    if-eqz v1, :cond_195

    iget-object v0, p0, Lio/bidmachine/DeviceParams$c;->b:Lio/bidmachine/protobuf/sdk/Device$Builder;

    invoke-static {v1}, Lcom/explorestack/protobuf/StringValue;->of(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setSimCarrier(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 591
    :cond_195
    iget-object v0, p0, Lio/bidmachine/DeviceParams$c;->d:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getAudio()Lio/bidmachine/DeviceInfo$Audio;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/DeviceParams$c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/bidmachine/DeviceInfo$Audio;->getVolumeLevel(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1b8

    iget-object v1, p0, Lio/bidmachine/DeviceParams$c;->b:Lio/bidmachine/protobuf/sdk/Device$Builder;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 592
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;

    move-result-object v2

    .line 593
    invoke-virtual {v2, v0}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;->setVolumelevel(F)Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;

    move-result-object v0

    .line 594
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    move-result-object v0

    .line 595
    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setAudioContext(Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    :cond_1b8
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DeviceParams$c;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.DeviceParams.d (io.bidmachine.DeviceParams$d)
.class public final Lio/bidmachine/DeviceParams$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/DeviceParams;->fillDeviceBuilder(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/Device$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

.field public final synthetic c:Lio/bidmachine/internal/v;

.field public final synthetic d:Lio/bidmachine/k;

.field public final synthetic e:Lio/bidmachine/DeviceInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;Lio/bidmachine/k;Lio/bidmachine/DeviceInfo;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/bidmachine/DeviceParams$d;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/bidmachine/DeviceParams$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iput-object p3, p0, Lio/bidmachine/DeviceParams$d;->c:Lio/bidmachine/internal/v;

    iput-object p4, p0, Lio/bidmachine/DeviceParams$d;->d:Lio/bidmachine/k;

    iput-object p5, p0, Lio/bidmachine/DeviceParams$d;->e:Lio/bidmachine/DeviceInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceParams$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/utils/DeviceUtils;->getInputLanguageSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "getInputLanguageSet(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    .line 3
    iget-object v1, p0, Lio/bidmachine/DeviceParams$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4
    iget-object v2, p0, Lio/bidmachine/DeviceParams$d;->c:Lio/bidmachine/internal/v;

    invoke-static {v0}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/Iterable;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    .line 5
    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setInputlanguage(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 9
    :cond_24
    iget-object v0, p0, Lio/bidmachine/DeviceParams$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/utils/DeviceUtils;->getBatteryLevel(Landroid/content/Context;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lio/bidmachine/DeviceParams$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v2, p0, Lio/bidmachine/DeviceParams$d;->c:Lio/bidmachine/internal/v;

    .line 11
    invoke-static {v0}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(F)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    .line 12
    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setBatterylevel(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 15
    :cond_44
    iget-object v0, p0, Lio/bidmachine/DeviceParams$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/utils/DeviceUtils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_84

    iget-object v1, p0, Lio/bidmachine/DeviceParams$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v2, p0, Lio/bidmachine/DeviceParams$d;->c:Lio/bidmachine/internal/v;

    .line 242
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_65

    .line 243
    invoke-static {v0}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    .line 244
    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setDevicename(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 473
    :cond_65
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 474
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 483
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_72
    :goto_72
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lio/bidmachine/util/conversion/StringTypeConversion;

    if-eqz v3, :cond_72

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_72

    .line 484
    :cond_84
    iget-object v0, p0, Lio/bidmachine/DeviceParams$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/utils/DeviceUtils;->getScreenBrightnessRatio(Landroid/content/Context;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_a4

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lio/bidmachine/DeviceParams$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v2, p0, Lio/bidmachine/DeviceParams$d;->c:Lio/bidmachine/internal/v;

    .line 486
    invoke-static {v0}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(F)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    .line 487
    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setScreenbright(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 490
    :cond_a4
    iget-object v0, p0, Lio/bidmachine/DeviceParams$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 491
    iget-object v1, p0, Lio/bidmachine/DeviceParams$d;->c:Lio/bidmachine/internal/v;

    invoke-static {}, Lio/bidmachine/core/TimeManager;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(J)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 492
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setTime(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 494
    iget-object v0, p0, Lio/bidmachine/DeviceParams$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 495
    iget-object v1, p0, Lio/bidmachine/DeviceParams$d;->c:Lio/bidmachine/internal/v;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(J)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 496
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setLastbootup(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 498
    iget-object v0, p0, Lio/bidmachine/DeviceParams$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 499
    iget-object v1, p0, Lio/bidmachine/DeviceParams$d;->c:Lio/bidmachine/internal/v;

    iget-object v2, p0, Lio/bidmachine/DeviceParams$d;->d:Lio/bidmachine/k;

    iget-object v3, p0, Lio/bidmachine/DeviceParams$d;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lio/bidmachine/k;->j(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(J)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 500
    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 501
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setLastbootupV2(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 504
    iget-object v0, p0, Lio/bidmachine/DeviceParams$d;->d:Lio/bidmachine/k;

    iget-object v1, p0, Lio/bidmachine/DeviceParams$d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/bidmachine/k;->i(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const-string v1, "bidMachine.obtainLastBootupHistory(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_113

    .line 506
    iget-object v1, p0, Lio/bidmachine/DeviceParams$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 507
    iget-object v2, p0, Lio/bidmachine/DeviceParams$d;->c:Lio/bidmachine/internal/v;

    invoke-static {v0}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/Iterable;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    .line 508
    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setLastbootupHistory(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 512
    :cond_113
    iget-object v0, p0, Lio/bidmachine/DeviceParams$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/utils/BluetoothUtils;->getConnectedHeadsets(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_141

    .line 513
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_123

    goto :goto_124

    :cond_123
    move-object v0, v1

    :goto_124
    if-eqz v0, :cond_141

    .line 514
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_141

    .line 515
    iget-object v2, p0, Lio/bidmachine/DeviceParams$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v3, p0, Lio/bidmachine/DeviceParams$d;->c:Lio/bidmachine/internal/v;

    .line 517
    invoke-static {v0}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    .line 518
    invoke-virtual {v2, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setHeadsetname(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 522
    :cond_141
    iget-object v0, p0, Lio/bidmachine/DeviceParams$d;->e:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getAvailableDiskSpaceInMB()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_160

    iget-object v2, p0, Lio/bidmachine/DeviceParams$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v3, p0, Lio/bidmachine/DeviceParams$d;->c:Lio/bidmachine/internal/v;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 524
    invoke-static {v4, v5}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(J)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    .line 525
    invoke-virtual {v2, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setDiskspace(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 528
    :cond_160
    iget-object v0, p0, Lio/bidmachine/DeviceParams$d;->e:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getTotalDiskSpaceInMB()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_17f

    iget-object v2, p0, Lio/bidmachine/DeviceParams$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v3, p0, Lio/bidmachine/DeviceParams$d;->c:Lio/bidmachine/internal/v;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 530
    invoke-static {v4, v5}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(J)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    .line 531
    invoke-virtual {v2, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setTotaldisk(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 534
    :cond_17f
    iget-object v0, p0, Lio/bidmachine/DeviceParams$d;->e:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getRam()Lio/bidmachine/DeviceInfo$Ram;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo$Ram;->getTotalMemBytes()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1a2

    iget-object v2, p0, Lio/bidmachine/DeviceParams$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v3, p0, Lio/bidmachine/DeviceParams$d;->c:Lio/bidmachine/internal/v;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 536
    invoke-static {v4, v5}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(J)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    .line 537
    invoke-virtual {v2, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setTotalmem(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 540
    :cond_1a2
    iget-object v0, p0, Lio/bidmachine/DeviceParams$d;->e:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getRam()Lio/bidmachine/DeviceInfo$Ram;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo$Ram;->getFreeMemBytes()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1c5

    iget-object v2, p0, Lio/bidmachine/DeviceParams$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v3, p0, Lio/bidmachine/DeviceParams$d;->c:Lio/bidmachine/internal/v;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 541
    invoke-static {v4, v5}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(J)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setFreemem(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 543
    :cond_1c5
    iget-object v0, p0, Lio/bidmachine/DeviceParams$d;->e:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getCpu()Lio/bidmachine/DeviceInfo$Cpu;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo$Cpu;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1ee

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1d8

    goto :goto_1d9

    :cond_1d8
    move-object v0, v1

    :goto_1d9
    if-eqz v0, :cond_1ee

    iget-object v2, p0, Lio/bidmachine/DeviceParams$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v3, p0, Lio/bidmachine/DeviceParams$d;->c:Lio/bidmachine/internal/v;

    .line 544
    invoke-static {v0}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setCpuname(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 546
    :cond_1ee
    iget-object v0, p0, Lio/bidmachine/DeviceParams$d;->e:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getCpu()Lio/bidmachine/DeviceInfo$Cpu;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo$Cpu;->getVendor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_217

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_201

    goto :goto_202

    :cond_201
    move-object v0, v1

    :goto_202
    if-eqz v0, :cond_217

    iget-object v2, p0, Lio/bidmachine/DeviceParams$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v3, p0, Lio/bidmachine/DeviceParams$d;->c:Lio/bidmachine/internal/v;

    .line 548
    invoke-static {v0}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    .line 549
    invoke-virtual {v2, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setCpuvendor(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 552
    :cond_217
    iget-object v0, p0, Lio/bidmachine/DeviceParams$d;->e:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getGpu()Lio/bidmachine/DeviceInfo$Gpu;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo$Gpu;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_240

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_22a

    goto :goto_22b

    :cond_22a
    move-object v0, v1

    :goto_22b
    if-eqz v0, :cond_240

    iget-object v2, p0, Lio/bidmachine/DeviceParams$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v3, p0, Lio/bidmachine/DeviceParams$d;->c:Lio/bidmachine/internal/v;

    .line 553
    invoke-static {v0}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setGpuname(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 555
    :cond_240
    iget-object v0, p0, Lio/bidmachine/DeviceParams$d;->e:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getGpu()Lio/bidmachine/DeviceInfo$Gpu;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo$Gpu;->getVendor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_269

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_253

    goto :goto_254

    :cond_253
    move-object v0, v1

    :goto_254
    if-eqz v0, :cond_269

    iget-object v2, p0, Lio/bidmachine/DeviceParams$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v3, p0, Lio/bidmachine/DeviceParams$d;->c:Lio/bidmachine/internal/v;

    .line 557
    invoke-static {v0}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    .line 558
    invoke-virtual {v2, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setGpuvendor(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 561
    :cond_269
    iget-object v0, p0, Lio/bidmachine/DeviceParams$d;->e:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getSimCarrier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28d

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_278

    move-object v1, v0

    :cond_278
    if-eqz v1, :cond_28d

    iget-object v0, p0, Lio/bidmachine/DeviceParams$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v2, p0, Lio/bidmachine/DeviceParams$d;->c:Lio/bidmachine/internal/v;

    .line 563
    invoke-static {v1}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 564
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setSimCarrier(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 567
    :cond_28d
    iget-object v0, p0, Lio/bidmachine/DeviceParams$d;->e:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getAudio()Lio/bidmachine/DeviceInfo$Audio;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/DeviceParams$d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/bidmachine/DeviceInfo$Audio;->getVolumeLevel(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_2b2

    iget-object v1, p0, Lio/bidmachine/DeviceParams$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v2, p0, Lio/bidmachine/DeviceParams$d;->c:Lio/bidmachine/internal/v;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 569
    invoke-static {v0}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(F)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    .line 570
    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setVolumeLevel(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    :cond_2b2
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DeviceParams$d;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.DeviceParams.e (io.bidmachine.DeviceParams$e)
.class public final Lio/bidmachine/DeviceParams$e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/DeviceParams;->fillDeviceContextBuilder(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$Device$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;Lcom/explorestack/protobuf/adcom/ConnectionType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

.field public final synthetic b:Lio/bidmachine/DeviceInfo;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/adcom/Context$Device$Builder;Lio/bidmachine/DeviceInfo;Landroid/content/Context;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/DeviceParams$e;->a:Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    iput-object p2, p0, Lio/bidmachine/DeviceParams$e;->b:Lio/bidmachine/DeviceInfo;

    iput-object p3, p0, Lio/bidmachine/DeviceParams$e;->c:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceParams$e;->a:Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    iget-object v1, p0, Lio/bidmachine/DeviceParams$e;->b:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v1}, Lio/bidmachine/DeviceInfo;->getScreenDensity()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setPxratio(F)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 2
    iget-object v0, p0, Lio/bidmachine/DeviceParams$e;->a:Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    iget-object v1, p0, Lio/bidmachine/DeviceParams$e;->b:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v1}, Lio/bidmachine/DeviceInfo;->getScreenDpi()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setPpi(I)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 4
    iget-object v0, p0, Lio/bidmachine/DeviceParams$e;->a:Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    iget-object v1, p0, Lio/bidmachine/DeviceParams$e;->b:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v1}, Lio/bidmachine/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setModel(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 5
    iget-object v0, p0, Lio/bidmachine/DeviceParams$e;->b:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getHWV()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v1, p0, Lio/bidmachine/DeviceParams$e;->a:Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setHwv(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 7
    :cond_2e
    iget-object v0, p0, Lio/bidmachine/DeviceParams$e;->c:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/UserAgentManager;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_60

    iget-object v1, p0, Lio/bidmachine/DeviceParams$e;->a:Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 70
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 71
    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setUa(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 137
    :cond_41
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4e
    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lio/bidmachine/util/conversion/StringTypeConversion;

    if-eqz v3, :cond_4e

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_60
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DeviceParams$e;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.DeviceParams.f (io.bidmachine.DeviceParams$f)
.class public final Lio/bidmachine/DeviceParams$f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/DeviceParams;->fillDeviceContextBuilder(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$Device$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;Lcom/explorestack/protobuf/adcom/ConnectionType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

.field public final synthetic b:Lio/bidmachine/internal/v;

.field public final synthetic c:Lio/bidmachine/DeviceInfo;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;Lio/bidmachine/DeviceInfo;Landroid/content/Context;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/bidmachine/DeviceParams$f;->a:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iput-object p2, p0, Lio/bidmachine/DeviceParams$f;->b:Lio/bidmachine/internal/v;

    iput-object p3, p0, Lio/bidmachine/DeviceParams$f;->c:Lio/bidmachine/DeviceInfo;

    iput-object p4, p0, Lio/bidmachine/DeviceParams$f;->d:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceParams$f;->a:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 2
    iget-object v1, p0, Lio/bidmachine/DeviceParams$f;->b:Lio/bidmachine/internal/v;

    iget-object v2, p0, Lio/bidmachine/DeviceParams$f;->c:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v2}, Lio/bidmachine/DeviceInfo;->getScreenDensity()F

    move-result v2

    invoke-static {v2}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(F)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setPxratio(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 5
    iget-object v0, p0, Lio/bidmachine/DeviceParams$f;->a:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 6
    iget-object v1, p0, Lio/bidmachine/DeviceParams$f;->b:Lio/bidmachine/internal/v;

    iget-object v2, p0, Lio/bidmachine/DeviceParams$f;->c:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v2}, Lio/bidmachine/DeviceInfo;->getScreenDpi()I

    move-result v2

    invoke-static {v2}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setPpi(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 9
    iget-object v0, p0, Lio/bidmachine/DeviceParams$f;->a:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 10
    iget-object v1, p0, Lio/bidmachine/DeviceParams$f;->b:Lio/bidmachine/internal/v;

    iget-object v2, p0, Lio/bidmachine/DeviceParams$f;->c:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v2}, Lio/bidmachine/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setModel(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 13
    iget-object v0, p0, Lio/bidmachine/DeviceParams$f;->c:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getHWV()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_66

    iget-object v1, p0, Lio/bidmachine/DeviceParams$f;->a:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v2, p0, Lio/bidmachine/DeviceParams$f;->b:Lio/bidmachine/internal/v;

    .line 14
    invoke-static {v0}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setHwv(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 16
    :cond_66
    iget-object v0, p0, Lio/bidmachine/DeviceParams$f;->d:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/UserAgentManager;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a6

    iget-object v1, p0, Lio/bidmachine/DeviceParams$f;->a:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v2, p0, Lio/bidmachine/DeviceParams$f;->b:Lio/bidmachine/internal/v;

    .line 66
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_87

    .line 67
    invoke-static {v0}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setUa(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 119
    :cond_87
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_94
    :goto_94
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lio/bidmachine/util/conversion/StringTypeConversion;

    if-eqz v3, :cond_94

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_94

    :cond_a6
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DeviceParams$f;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.DeviceParams.g (io.bidmachine.DeviceParams$g)
.class public final Lio/bidmachine/DeviceParams$g;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/DeviceParams;->fillDeviceContextBuilder(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$Device$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;Lcom/explorestack/protobuf/adcom/ConnectionType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/adcom/Context$Device$Builder;Landroid/content/Context;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/DeviceParams$g;->a:Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    iput-object p2, p0, Lio/bidmachine/DeviceParams$g;->b:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceParams$g;->a:Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    iget-object v1, p0, Lio/bidmachine/DeviceParams$g;->b:Landroid/content/Context;

    invoke-static {v1}, Lio/bidmachine/AdvertisingDataManager;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setIfa(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 2
    iget-object v0, p0, Lio/bidmachine/DeviceParams$g;->a:Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    invoke-static {}, Lio/bidmachine/AdvertisingDataManager;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setLmt(Z)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DeviceParams$g;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.DeviceParams.h (io.bidmachine.DeviceParams$h)
.class public final Lio/bidmachine/DeviceParams$h;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/DeviceParams;->fillDeviceContextBuilder(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$Device$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;Lcom/explorestack/protobuf/adcom/ConnectionType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

.field public final synthetic b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

.field public final synthetic c:Lio/bidmachine/internal/v;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/adcom/Context$Device$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;Landroid/content/Context;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/bidmachine/DeviceParams$h;->a:Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    iput-object p2, p0, Lio/bidmachine/DeviceParams$h;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iput-object p3, p0, Lio/bidmachine/DeviceParams$h;->c:Lio/bidmachine/internal/v;

    iput-object p4, p0, Lio/bidmachine/DeviceParams$h;->d:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceParams$h;->a:Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    const-string v1, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setIfa(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 2
    iget-object v0, p0, Lio/bidmachine/DeviceParams$h;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 3
    iget-object v1, p0, Lio/bidmachine/DeviceParams$h;->c:Lio/bidmachine/internal/v;

    iget-object v2, p0, Lio/bidmachine/DeviceParams$h;->d:Landroid/content/Context;

    invoke-static {v2}, Lio/bidmachine/AdvertisingDataManager;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getAdvertisingId(context)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setIfa(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 8
    iget-object v0, p0, Lio/bidmachine/DeviceParams$h;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 9
    iget-object v1, p0, Lio/bidmachine/DeviceParams$h;->c:Lio/bidmachine/internal/v;

    invoke-static {}, Lio/bidmachine/AdvertisingDataManager;->a()Z

    move-result v2

    invoke-static {v2}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Z)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setLmt(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DeviceParams$h;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.DeviceParams.i (io.bidmachine.DeviceParams$i)
.class public final Lio/bidmachine/DeviceParams$i;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/DeviceParams;->fillDeviceContextBuilder(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$Device$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;Lcom/explorestack/protobuf/adcom/ConnectionType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/protobuf/adcom/Context$Device$Builder;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/adcom/Context$Device$Builder;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/DeviceParams$i;->a:Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceParams$i;->a:Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    const-string v1, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setIfa(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DeviceParams$i;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.DeviceParams.j (io.bidmachine.DeviceParams$j)
.class public final Lio/bidmachine/DeviceParams$j;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/DeviceParams;->fillDeviceContextBuilder(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$Device$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;Lcom/explorestack/protobuf/adcom/ConnectionType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/DeviceInfo;

.field public final synthetic b:Lcom/explorestack/protobuf/adcom/Context$Device$Builder;


# direct methods
.method public constructor <init>(Lio/bidmachine/DeviceInfo;Lcom/explorestack/protobuf/adcom/Context$Device$Builder;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/DeviceParams$j;->a:Lio/bidmachine/DeviceInfo;

    iput-object p2, p0, Lio/bidmachine/DeviceParams$j;->b:Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceParams$j;->a:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getPhoneMCCMNC()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v1, p0, Lio/bidmachine/DeviceParams$j;->b:Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 24
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 25
    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setMccmnc(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 51
    :cond_13
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lio/bidmachine/util/conversion/StringTypeConversion;

    if-eqz v3, :cond_20

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 62
    :cond_32
    iget-object v0, p0, Lio/bidmachine/DeviceParams$j;->a:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getPhoneCarrier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v1, p0, Lio/bidmachine/DeviceParams$j;->b:Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 100
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 101
    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setCarrier(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 142
    :cond_45
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_52
    :goto_52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lio/bidmachine/util/conversion/StringTypeConversion;

    if-eqz v3, :cond_52

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_64
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DeviceParams$j;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.DeviceParams.k (io.bidmachine.DeviceParams$k)
.class public final Lio/bidmachine/DeviceParams$k;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/DeviceParams;->fillDeviceContextBuilder(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$Device$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;Lcom/explorestack/protobuf/adcom/ConnectionType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/DeviceInfo;

.field public final synthetic b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

.field public final synthetic c:Lio/bidmachine/internal/v;


# direct methods
.method public constructor <init>(Lio/bidmachine/DeviceInfo;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/DeviceParams$k;->a:Lio/bidmachine/DeviceInfo;

    iput-object p2, p0, Lio/bidmachine/DeviceParams$k;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iput-object p3, p0, Lio/bidmachine/DeviceParams$k;->c:Lio/bidmachine/internal/v;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceParams$k;->a:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getPhoneMCCMNC()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v1, p0, Lio/bidmachine/DeviceParams$k;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v2, p0, Lio/bidmachine/DeviceParams$k;->c:Lio/bidmachine/internal/v;

    .line 20
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 21
    invoke-static {v0}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setMccmnc(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 42
    :cond_21
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lio/bidmachine/util/conversion/StringTypeConversion;

    if-eqz v3, :cond_2e

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 53
    :cond_40
    iget-object v0, p0, Lio/bidmachine/DeviceParams$k;->a:Lio/bidmachine/DeviceInfo;

    invoke-virtual {v0}, Lio/bidmachine/DeviceInfo;->getPhoneCarrier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_80

    iget-object v1, p0, Lio/bidmachine/DeviceParams$k;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v2, p0, Lio/bidmachine/DeviceParams$k;->c:Lio/bidmachine/internal/v;

    .line 85
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_61

    .line 86
    invoke-static {v0}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setCarrier(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 120
    :cond_61
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6e
    :goto_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lio/bidmachine/util/conversion/StringTypeConversion;

    if-eqz v3, :cond_6e

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_80
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DeviceParams$k;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.DeviceParams.l (io.bidmachine.DeviceParams$l)
.class public final Lio/bidmachine/DeviceParams$l;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/DeviceParams;->fillDeviceContextBuilder(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$Device$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;Lcom/explorestack/protobuf/adcom/ConnectionType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/DeviceParams$l;->a:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/location/Location;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceParams$l;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/util/UtilsKt;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DeviceParams$l;->a()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

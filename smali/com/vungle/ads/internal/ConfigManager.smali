###### Class com.vungle.ads.internal.ConfigManager (com.vungle.ads.internal.ConfigManager)
.class public final Lcom/vungle/ads/internal/ConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

.field public static volatile a:Lcom/vungle/ads/internal/model/w2;

.field public static volatile b:Ljava/util/Map;

.field public static volatile c:Lcom/vungle/ads/internal/model/i2;

.field public static volatile d:Ljava/util/List;

.field public static volatile e:Ljava/lang/String;

.field public static f:Ljava/util/Map;

.field public static final g:Lkotlin/Lazy;

.field public static h:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/internal/ConfigManager;

    invoke-direct {v0}, Lcom/vungle/ads/internal/ConfigManager;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    .line 1
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/vungle/ads/internal/t0;->a:Lcom/vungle/ads/internal/t0;

    invoke-static {v0, v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/ConfigManager;->g:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/vungle/ads/internal/model/j3;
    .registers 5

    .line 1122
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->d:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vungle/ads/internal/model/j3;

    .line 1123
    invoke-virtual {v3}, Lcom/vungle/ads/internal/model/j3;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v1, v2

    .line 1124
    :cond_21
    check-cast v1, Lcom/vungle/ads/internal/model/j3;

    :cond_23
    return-object v1
.end method

.method public static a(Lcom/vungle/ads/internal/persistence/FilePreferences;Ljava/lang/String;)Lcom/vungle/ads/internal/model/w2;
    .registers 8

    const-string v0, "ConfigManager"

    const-string v1, "filePreferences"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appId"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1125
    :try_start_d
    const-string v2, "config_app_id"

    invoke-virtual {p0, v2}, Lcom/vungle/ads/internal/persistence/FilePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_89

    .line 1126
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_89

    :cond_1c
    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_24

    goto :goto_89

    .line 1131
    :cond_24
    const-string p1, "config_response"

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_88

    .line 1132
    const-string v2, "config_update_time"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1133
    sget-object p0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1134
    sget-object p0, Lcom/vungle/ads/internal/ConfigManager;->g:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/json/Json;

    .line 1135
    invoke-interface {p0}, Lkotlinx/serialization/SerialFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v4

    .line 1136
    const-class v5, Lcom/vungle/ads/internal/model/w2;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    .line 1137
    const-string v5, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1138
    invoke-interface {p0, v4, p1}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1139
    check-cast p0, Lcom/vungle/ads/internal/model/w2;

    .line 1140
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/w2;->b()Lcom/vungle/ads/internal/model/f2;

    move-result-object p1

    if-eqz p1, :cond_6d

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/f2;->a()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_6d

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_6f

    :catch_6b
    move-exception p0

    goto :goto_91

    :cond_6d
    const-wide/16 v4, -0x1

    :goto_6f
    add-long/2addr v4, v2

    .line 1141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v4, v2

    if-gez p1, :cond_80

    .line 1143
    sget-boolean p0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p0, "cache config expired. re-config"

    invoke-static {v0, p0}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1146
    :cond_80
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "use cache config."

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_88
    return-object v1

    .line 1147
    :cond_89
    :goto_89
    sget-boolean p0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p0, "app id mismatch, re-config"

    invoke-static {v0, p0}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_90} :catch_6b

    return-object v1

    .line 1165
    :goto_91
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 1166
    const-string p1, "Error while parsing cached config: "

    invoke-static {p1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1631
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/vungle/ads/internal/model/w2;Lcom/vungle/ads/internal/p0;Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/ServiceLocator;Lcom/vungle/ads/internal/persistence/FilePreferences;)Ljava/util/Map;
    .registers 12

    .line 408
    sput-object p1, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    .line 409
    sget-object v0, Lcom/vungle/ads/internal/p0;->c:Lcom/vungle/ads/internal/p0;

    const/4 v1, 0x0

    if-eq p2, v0, :cond_11

    if-eqz p1, :cond_e

    .line 410
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/w2;->e()Ljava/util/Map;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    sput-object v0, Lcom/vungle/ads/internal/ConfigManager;->b:Ljava/util/Map;

    :cond_11
    if-eqz p1, :cond_18

    .line 412
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/w2;->c()Lcom/vungle/ads/internal/model/i2;

    move-result-object v0

    goto :goto_19

    :cond_18
    move-object v0, v1

    :goto_19
    sput-object v0, Lcom/vungle/ads/internal/ConfigManager;->c:Lcom/vungle/ads/internal/model/i2;

    if-eqz p1, :cond_22

    .line 413
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/w2;->d()Ljava/util/List;

    move-result-object v0

    goto :goto_23

    :cond_22
    move-object v0, v1

    :goto_23
    sput-object v0, Lcom/vungle/ads/internal/ConfigManager;->d:Ljava/util/List;

    .line 415
    const-class v0, Lcom/vungle/ads/internal/network/VungleApiClient;

    invoke-virtual {p4, v0}, Lcom/vungle/ads/internal/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 416
    const-class v2, Lcom/vungle/ads/internal/executor/a;

    invoke-virtual {p4, v2}, Lcom/vungle/ads/internal/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/vungle/ads/internal/executor/a;

    .line 417
    sget-object v2, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 419
    check-cast p4, Lcom/vungle/ads/internal/executor/d;

    invoke-virtual {p4}, Lcom/vungle/ads/internal/executor/d;->e()Lcom/vungle/ads/internal/executor/j;

    move-result-object p4

    .line 420
    sget-object v3, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    const/4 v4, 0x1

    if-eqz v3, :cond_4f

    .line 421
    iget-object v3, v3, Lcom/vungle/ads/internal/model/w2;->d:Lcom/vungle/ads/internal/model/s2;

    if-eqz v3, :cond_4f

    .line 422
    iget-object v3, v3, Lcom/vungle/ads/internal/model/s2;->a:Ljava/lang/Integer;

    if-eqz v3, :cond_4f

    .line 423
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_50

    :cond_4f
    move v3, v4

    .line 424
    :goto_50
    sget-object v5, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    if-eqz v5, :cond_61

    .line 425
    iget-object v5, v5, Lcom/vungle/ads/internal/model/w2;->d:Lcom/vungle/ads/internal/model/s2;

    if-eqz v5, :cond_61

    .line 426
    iget-object v5, v5, Lcom/vungle/ads/internal/model/s2;->b:Ljava/lang/Boolean;

    if-eqz v5, :cond_61

    .line 427
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_62

    :cond_61
    const/4 v5, 0x0

    .line 428
    :goto_62
    invoke-virtual {v2, v0, p4, v3, v5}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/network/VungleApiClient;Lcom/vungle/ads/internal/executor/j;IZ)V

    .line 435
    sget-object p4, Lcom/vungle/ads/internal/p0;->a:Lcom/vungle/ads/internal/p0;

    if-eq p2, p4, :cond_a7

    if-eqz p1, :cond_a7

    .line 436
    invoke-static {p1, p5}, Lcom/vungle/ads/internal/ConfigManager;->a(Lcom/vungle/ads/internal/model/w2;Lcom/vungle/ads/internal/persistence/FilePreferences;)V

    .line 437
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/w2;->a()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a7

    sget-object p4, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    const-string p5, "context"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ext"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    monitor-enter p4

    :try_start_84
    sput-object p2, Lcom/vungle/ads/internal/ConfigManager;->e:Ljava/lang/String;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_88
    .catchall {:try_start_84 .. :try_end_88} :catchall_a4

    monitor-exit p4

    .line 576
    invoke-static {}, Lcom/vungle/ads/internal/r1;->a()Lcom/vungle/ads/internal/ServiceLocator;

    move-result-object p0

    if-eqz p0, :cond_a7

    const-class p4, Lcom/vungle/ads/internal/persistence/FilePreferences;

    invoke-virtual {p0, p4}, Lcom/vungle/ads/internal/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/persistence/FilePreferences;

    if-nez p0, :cond_9a

    goto :goto_a7

    .line 578
    :cond_9a
    const-string p4, "config_extension"

    invoke-virtual {p0, p4, p2}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/vungle/ads/internal/persistence/FilePreferences;->b()V

    goto :goto_a7

    :catchall_a4
    move-exception p0

    .line 579
    monitor-exit p4

    throw p0

    :cond_a7
    :goto_a7
    if-eqz p3, :cond_ad

    const/4 p0, 0x6

    .line 580
    invoke-static {v2, p3, v1, p0}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;I)V

    .line 581
    :cond_ad
    sget-object p0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->INSTANCE:Lcom/vungle/ads/internal/privacy/PrivacyManager;

    .line 582
    sget-object p2, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    if-eqz p2, :cond_bb

    .line 583
    iget-object p2, p2, Lcom/vungle/ads/internal/model/w2;->h:Ljava/lang/Boolean;

    if-eqz p2, :cond_bb

    .line 584
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 585
    :cond_bb
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->a(Z)V

    if-eqz p1, :cond_c8

    .line 591
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/w2;->e()Ljava/util/Map;

    move-result-object p0

    goto :goto_c9

    :cond_c8
    move-object p0, v1

    :goto_c9
    if-eqz p0, :cond_dd

    .line 592
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d2

    goto :goto_dd

    :cond_d2
    sget-object p1, Lcom/vungle/ads/internal/ConfigManager;->f:Ljava/util/Map;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_dd

    .line 593
    sput-object p0, Lcom/vungle/ads/internal/ConfigManager;->f:Ljava/util/Map;

    return-object p0

    :cond_dd
    :goto_dd
    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/vungle/ads/internal/o2;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2141
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/vungle/ads/internal/q0;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/q0;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 2142
    :try_start_15
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 2143
    invoke-virtual {v0}, Lcom/vungle/ads/internal/network/VungleApiClient;->a()Lcom/vungle/ads/internal/network/m;

    move-result-object v0

    if-eqz v0, :cond_6d

    new-instance v1, Lcom/vungle/ads/internal/r0;

    invoke-direct {v1, p0, p1}, Lcom/vungle/ads/internal/r0;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/o2;)V

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/network/m;->a(Lcom/vungle/ads/internal/network/a;)V
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception p0

    .line 2181
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    goto :goto_33

    :cond_31
    instance-of v0, p0, Ljava/lang/SecurityException;

    :goto_33
    if-eqz v0, :cond_4f

    .line 2182
    new-instance v0, Lcom/vungle/ads/NetworkUnreachable;

    .line 2183
    const-string v1, "Config unknown: "

    invoke-static {v1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2303
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vungle/ads/NetworkUnreachable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    goto :goto_68

    .line 2307
    :cond_4f
    new-instance v0, Lcom/vungle/ads/NetworkUnreachable;

    .line 2308
    const-string v1, "Config: "

    invoke-static {v1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2432
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vungle/ads/NetworkUnreachable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 2435
    :goto_68
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0}, Lcom/vungle/ads/internal/o2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6d
    return-void
.end method

.method public static synthetic a(Lcom/vungle/ads/internal/ConfigManager;Landroid/content/Context;Lcom/vungle/ads/internal/model/w2;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/p0;->a:Lcom/vungle/ads/internal/p0;

    const/4 v1, 0x0

    .line 144
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/vungle/ads/internal/ConfigManager;->a(Landroid/content/Context;Lcom/vungle/ads/internal/model/w2;Lcom/vungle/ads/internal/p0;Lcom/vungle/ads/internal/j2;)V

    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/downloader/u;Ljava/util/Map;)V
    .registers 3

    const-string v0, "$capturedTdm"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$templates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1121
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/downloader/u;->b(Ljava/util/Map;)V

    return-void
.end method

.method public static a(Lcom/vungle/ads/internal/model/w2;Lcom/vungle/ads/internal/persistence/FilePreferences;)V
    .registers 6

    const-string v0, "config"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1635
    :try_start_a
    const-string v0, "config_app_id"

    sget-object v1, Lcom/vungle/ads/internal/ConfigManager;->h:Ljava/lang/String;

    if-nez v1, :cond_16

    const-string v1, "applicationId"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_16
    invoke-virtual {p1, v0, v1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    .line 1636
    const-string v0, "config_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/vungle/ads/internal/persistence/FilePreferences;->b(Ljava/lang/String;J)Lcom/vungle/ads/internal/persistence/FilePreferences;

    .line 1637
    const-string v0, "config_response"

    .line 1638
    sget-object v1, Lcom/vungle/ads/internal/ConfigManager;->g:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/Json;

    .line 1639
    invoke-interface {v1}, Lkotlinx/serialization/SerialFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v2

    .line 1640
    const-class v3, Lcom/vungle/ads/internal/model/w2;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    .line 1641
    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1642
    invoke-interface {v1, v2, p0}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1643
    invoke-virtual {p1, v0, p0}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    .line 1644
    invoke-virtual {p1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->b()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_49} :catch_4a

    return-void

    :catch_4a
    move-exception p0

    .line 1646
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 1647
    const-string p1, "Exception: "

    invoke-static {p1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2128
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for updating cached config"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ConfigManager"

    invoke-static {p1, p0}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .registers 4

    .line 402
    invoke-static {}, Lcom/vungle/ads/internal/ServiceLocator;->a()Lcom/vungle/ads/internal/ServiceLocator;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 403
    :cond_7
    const-class v1, Lcom/vungle/ads/internal/downloader/u;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/downloader/u;

    .line 404
    const-class v2, Lcom/vungle/ads/internal/executor/a;

    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/executor/a;

    .line 405
    check-cast v0, Lcom/vungle/ads/internal/executor/d;

    .line 406
    iget-object v0, v0, Lcom/vungle/ads/internal/executor/d;->a:Lcom/vungle/ads/internal/executor/j;

    .line 407
    new-instance v2, Lcom/vungle/ads/internal/ConfigManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p0}, Lcom/vungle/ads/internal/ConfigManager$$ExternalSyntheticLambda0;-><init>(Lcom/vungle/ads/internal/downloader/u;Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/executor/j;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final a(Ljava/util/Map;Lcom/vungle/ads/internal/downloader/u;)V
    .registers 5

    const-string v0, "$capturedTdm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 846
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 856
    check-cast v2, Ljava/lang/String;

    .line 857
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/vungle/ads/internal/downloader/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1117
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1118
    :cond_2b
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 1119
    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/downloader/u;->a(Ljava/util/Set;)V

    .line 1120
    invoke-virtual {p1, p0}, Lcom/vungle/ads/internal/downloader/u;->a(Ljava/util/Map;)V

    return-void
.end method

.method public static b()J
    .registers 2

    .line 2
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    if-eqz v0, :cond_d

    .line 3
    iget-object v0, v0, Lcom/vungle/ads/internal/model/w2;->p:Ljava/lang/Long;

    if-eqz v0, :cond_d

    .line 4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_d
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    const-string v0, "applicationId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sput-object p0, Lcom/vungle/ads/internal/ConfigManager;->h:Ljava/lang/String;

    return-void
.end method

.method public static c()V
    .registers 4

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->b:Ljava/util/Map;

    if-eqz v0, :cond_2e

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_2e

    .line 3
    :cond_b
    invoke-static {}, Lcom/vungle/ads/internal/ServiceLocator;->a()Lcom/vungle/ads/internal/ServiceLocator;

    move-result-object v1

    if-nez v1, :cond_12

    return-void

    .line 4
    :cond_12
    const-class v2, Lcom/vungle/ads/internal/downloader/u;

    invoke-virtual {v1, v2}, Lcom/vungle/ads/internal/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/ads/internal/downloader/u;

    .line 5
    const-class v3, Lcom/vungle/ads/internal/executor/a;

    invoke-virtual {v1, v3}, Lcom/vungle/ads/internal/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/executor/a;

    .line 9
    check-cast v1, Lcom/vungle/ads/internal/executor/d;

    .line 10
    iget-object v1, v1, Lcom/vungle/ads/internal/executor/d;->a:Lcom/vungle/ads/internal/executor/j;

    .line 11
    new-instance v3, Lcom/vungle/ads/internal/ConfigManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v2}, Lcom/vungle/ads/internal/ConfigManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;Lcom/vungle/ads/internal/downloader/u;)V

    invoke-virtual {v1, v3}, Lcom/vungle/ads/internal/executor/j;->execute(Ljava/lang/Runnable;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public static d()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/w2;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public static e()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->c:Lcom/vungle/ads/internal/model/i2;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i2;->e:Ljava/lang/String;

    goto :goto_9

    :cond_8
    move-object v0, v1

    :goto_9
    if-eqz v0, :cond_13

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_12

    goto :goto_13

    :cond_12
    move-object v1, v0

    :cond_13
    :goto_13
    if-nez v1, :cond_18

    sget-object v0, Lcom/vungle/ads/internal/Constants;->a:Ljava/lang/String;

    return-object v0

    :cond_18
    return-object v1
.end method

.method public static f()I
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/w2;->a:Lcom/vungle/ads/internal/model/b2;

    if-eqz v0, :cond_11

    .line 3
    iget-object v0, v0, Lcom/vungle/ads/internal/model/b2;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x3

    return v0
.end method

.method public static g()J
    .registers 4

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    if-eqz v0, :cond_16

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/w2;->a:Lcom/vungle/ads/internal/model/b2;

    if-eqz v0, :cond_16

    .line 3
    iget-object v0, v0, Lcom/vungle/ads/internal/model/b2;->a:Ljava/lang/Long;

    if-eqz v0, :cond_16

    .line 4
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const/16 v2, 0x400

    int-to-long v2, v2

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    return-wide v0

    :cond_16
    const-wide/32 v0, 0x3e800000

    return-wide v0
.end method

.method public static h()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->c:Lcom/vungle/ads/internal/model/i2;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i2;->c:Ljava/lang/String;

    goto :goto_9

    :cond_8
    move-object v0, v1

    :goto_9
    if-eqz v0, :cond_13

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_12

    goto :goto_13

    :cond_12
    move-object v1, v0

    :cond_13
    :goto_13
    if-nez v1, :cond_18

    .line 4
    sget-object v0, Lcom/vungle/ads/internal/Constants;->b:Ljava/lang/String;

    return-object v0

    :cond_18
    return-object v1
.end method

.method public static i()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/w2;->f:Lcom/vungle/ads/internal/model/v2;

    if-eqz v0, :cond_f

    .line 3
    iget-object v0, v0, Lcom/vungle/ads/internal/model/v2;->a:Lcom/vungle/ads/internal/model/l2;

    if-eqz v0, :cond_f

    .line 4
    iget-object v0, v0, Lcom/vungle/ads/internal/model/l2;->e:Ljava/lang/String;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/w2;->f:Lcom/vungle/ads/internal/model/v2;

    if-eqz v0, :cond_f

    .line 3
    iget-object v0, v0, Lcom/vungle/ads/internal/model/v2;->a:Lcom/vungle/ads/internal/model/l2;

    if-eqz v0, :cond_f

    .line 4
    iget-object v0, v0, Lcom/vungle/ads/internal/model/l2;->f:Ljava/lang/String;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/w2;->f:Lcom/vungle/ads/internal/model/v2;

    if-eqz v0, :cond_f

    .line 3
    iget-object v0, v0, Lcom/vungle/ads/internal/model/v2;->a:Lcom/vungle/ads/internal/model/l2;

    if-eqz v0, :cond_f

    .line 4
    iget-object v0, v0, Lcom/vungle/ads/internal/model/l2;->c:Ljava/lang/String;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/w2;->f:Lcom/vungle/ads/internal/model/v2;

    if-eqz v0, :cond_f

    .line 3
    iget-object v0, v0, Lcom/vungle/ads/internal/model/v2;->a:Lcom/vungle/ads/internal/model/l2;

    if-eqz v0, :cond_f

    .line 4
    iget-object v0, v0, Lcom/vungle/ads/internal/model/l2;->b:Ljava/lang/String;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static m()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    if-eqz v0, :cond_15

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/w2;->f:Lcom/vungle/ads/internal/model/v2;

    if-eqz v0, :cond_15

    .line 3
    iget-object v0, v0, Lcom/vungle/ads/internal/model/v2;->a:Lcom/vungle/ads/internal/model/l2;

    if-eqz v0, :cond_15

    .line 4
    iget-object v0, v0, Lcom/vungle/ads/internal/model/l2;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public static n()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->c:Lcom/vungle/ads/internal/model/i2;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i2;->d:Ljava/lang/String;

    goto :goto_9

    :cond_8
    move-object v0, v1

    :goto_9
    if-eqz v0, :cond_13

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_12

    goto :goto_13

    :cond_12
    move-object v1, v0

    :cond_13
    :goto_13
    if-nez v1, :cond_18

    .line 4
    sget-object v0, Lcom/vungle/ads/internal/Constants;->c:Ljava/lang/String;

    return-object v0

    :cond_18
    return-object v1
.end method

.method public static o()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->c:Lcom/vungle/ads/internal/model/i2;

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i2;->b:Ljava/lang/String;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public static p()Lcom/vungle/ads/internal/model/o2;
    .registers 2

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/model/o2;->b:Ljava/util/LinkedHashMap;

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/w2;->f:Lcom/vungle/ads/internal/model/v2;

    if-eqz v0, :cond_11

    .line 3
    iget-object v0, v0, Lcom/vungle/ads/internal/model/v2;->b:Lcom/vungle/ads/internal/model/p2;

    if-eqz v0, :cond_11

    .line 4
    iget-object v0, v0, Lcom/vungle/ads/internal/model/p2;->a:Ljava/lang/Integer;

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 5
    :goto_12
    sget-object v1, Lcom/vungle/ads/internal/model/o2;->b:Ljava/util/LinkedHashMap;

    .line 6
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/model/o2;

    return-object v0
.end method

.method public static q()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/w2;->s:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public static r()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/w2;->r:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public static s()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/w2;->o:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public static t()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/w2;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 2132
    monitor-enter p0

    const/4 v0, 0x0

    .line 2133
    :try_start_2
    sput-object v0, Lcom/vungle/ads/internal/ConfigManager;->c:Lcom/vungle/ads/internal/model/i2;

    .line 2134
    sput-object v0, Lcom/vungle/ads/internal/ConfigManager;->d:Ljava/util/List;

    .line 2135
    sput-object v0, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    .line 2136
    sput-object v0, Lcom/vungle/ads/internal/ConfigManager;->b:Ljava/util/Map;

    .line 2137
    sput-object v0, Lcom/vungle/ads/internal/ConfigManager;->e:Ljava/lang/String;

    .line 2138
    sput-object v0, Lcom/vungle/ads/internal/ConfigManager;->f:Ljava/util/Map;

    .line 2139
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_12

    .line 2140
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/content/Context;Lcom/vungle/ads/internal/model/w2;Lcom/vungle/ads/internal/p0;Lcom/vungle/ads/internal/j2;)V
    .registers 14

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    :try_start_a
    monitor-enter p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_b} :catch_13

    .line 151
    :try_start_b
    invoke-static {}, Lcom/vungle/ads/internal/r1;->a()Lcom/vungle/ads/internal/ServiceLocator;

    move-result-object v5
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_40

    if-nez v5, :cond_17

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    move-object p1, v0

    goto/16 :goto_8a

    .line 152
    :cond_17
    :try_start_17
    const-class v0, Lcom/vungle/ads/internal/persistence/FilePreferences;

    invoke-virtual {v5, v0}, Lcom/vungle/ads/internal/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/vungle/ads/internal/persistence/FilePreferences;

    .line 153
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const-wide/16 v7, -0x1

    if-nez p2, :cond_2b

    goto :goto_43

    .line 154
    :cond_2b
    iget-object v1, p2, Lcom/vungle/ads/internal/model/w2;->p:Ljava/lang/Long;

    if-eqz v1, :cond_43

    .line 155
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v7

    if-nez v1, :cond_38

    goto :goto_43

    .line 156
    :cond_38
    iget-object v1, p2, Lcom/vungle/ads/internal/model/w2;->c:Lcom/vungle/ads/internal/model/i2;

    if-nez v1, :cond_3e

    move v1, v0

    goto :goto_44

    :cond_3e
    const/4 v1, 0x2

    goto :goto_44

    :catchall_40
    move-exception v0

    move-object p1, v0

    goto :goto_88

    :cond_43
    :goto_43
    const/4 v1, 0x0

    :goto_44
    if-eqz v1, :cond_7d

    if-eq v1, v0, :cond_59

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 157
    invoke-static/range {v1 .. v6}, Lcom/vungle/ads/internal/ConfigManager;->a(Landroid/content/Context;Lcom/vungle/ads/internal/model/w2;Lcom/vungle/ads/internal/p0;Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/ServiceLocator;Lcom/vungle/ads/internal/persistence/FilePreferences;)Ljava/util/Map;

    move-result-object p1

    .line 160
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_52
    .catchall {:try_start_17 .. :try_end_52} :catchall_40

    .line 161
    :try_start_52
    monitor-exit p0
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_53} :catch_13

    if-eqz p1, :cond_58

    .line 190
    invoke-static {p1}, Lcom/vungle/ads/internal/ConfigManager;->a(Ljava/util/Map;)V

    :cond_58
    return-void

    :cond_59
    move-object v2, p2

    move-object v3, p3

    .line 191
    :try_start_5b
    sget-object p1, Lcom/vungle/ads/internal/p0;->a:Lcom/vungle/ads/internal/p0;

    if-eq v3, p1, :cond_7b

    if-eqz v2, :cond_7b

    .line 192
    iget-object p1, v2, Lcom/vungle/ads/internal/model/w2;->p:Ljava/lang/Long;

    if-eqz p1, :cond_69

    .line 193
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 194
    :cond_69
    sget-object p1, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    if-nez p1, :cond_6e

    goto :goto_74

    :cond_6e
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 195
    iput-object p2, p1, Lcom/vungle/ads/internal/model/w2;->p:Ljava/lang/Long;

    .line 196
    :goto_74
    sget-object p1, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    if-eqz p1, :cond_7b

    invoke-static {p1, v6}, Lcom/vungle/ads/internal/ConfigManager;->a(Lcom/vungle/ads/internal/model/w2;Lcom/vungle/ads/internal/persistence/FilePreferences;)V
    :try_end_7b
    .catchall {:try_start_5b .. :try_end_7b} :catchall_40

    .line 197
    :cond_7b
    :try_start_7b
    monitor-exit p0
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7c} :catch_13

    return-void

    .line 198
    :cond_7d
    :try_start_7d
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "ConfigManager"

    const-string p2, "Config is not available."

    invoke-static {p1, p2}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_7d .. :try_end_86} :catchall_40

    .line 199
    :try_start_86
    monitor-exit p0

    return-void

    .line 200
    :goto_88
    monitor-exit p0

    throw p1
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8a} :catch_13

    .line 223
    :goto_8a
    sget-boolean p2, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 224
    const-string p2, "Error while validating config: "

    invoke-static {p2}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 398
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConfigManager"

    invoke-static {p2, p1}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getAdsEndpoint()Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->c:Lcom/vungle/ads/internal/model/i2;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i2;->a:Ljava/lang/String;

    goto :goto_9

    :cond_8
    move-object v0, v1

    :goto_9
    if-eqz v0, :cond_13

    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_12

    goto :goto_13

    :cond_12
    move-object v1, v0

    :cond_13
    :goto_13
    if-nez v1, :cond_18

    sget-object v0, Lcom/vungle/ads/internal/Constants;->DEFAULT_ADS_ENDPOINT:Ljava/lang/String;

    return-object v0

    :cond_18
    return-object v1
.end method

.method public final getConfigExtension()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->e:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

###### Class com.vungle.ads.internal.ConfigManager$$ExternalSyntheticLambda0 (com.vungle.ads.internal.ConfigManager$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/vungle/ads/internal/ConfigManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/downloader/u;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/downloader/u;Ljava/util/Map;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ConfigManager$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/downloader/u;

    iput-object p2, p0, Lcom/vungle/ads/internal/ConfigManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/ConfigManager$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/downloader/u;

    iget-object v1, p0, Lcom/vungle/ads/internal/ConfigManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/ConfigManager;->a(Lcom/vungle/ads/internal/downloader/u;Ljava/util/Map;)V

    return-void
.end method

###### Class com.vungle.ads.internal.ConfigManager$$ExternalSyntheticLambda1 (com.vungle.ads.internal.ConfigManager$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/vungle/ads/internal/ConfigManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:Lcom/vungle/ads/internal/downloader/u;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Lcom/vungle/ads/internal/downloader/u;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ConfigManager$$ExternalSyntheticLambda1;->f$0:Ljava/util/Map;

    iput-object p2, p0, Lcom/vungle/ads/internal/ConfigManager$$ExternalSyntheticLambda1;->f$1:Lcom/vungle/ads/internal/downloader/u;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/ConfigManager$$ExternalSyntheticLambda1;->f$0:Ljava/util/Map;

    iget-object v1, p0, Lcom/vungle/ads/internal/ConfigManager$$ExternalSyntheticLambda1;->f$1:Lcom/vungle/ads/internal/downloader/u;

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/ConfigManager;->a(Ljava/util/Map;Lcom/vungle/ads/internal/downloader/u;)V

    return-void
.end method

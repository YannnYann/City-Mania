###### Class io.bidmachine.BidMachineAssetCacheInitializer (io.bidmachine.BidMachineAssetCacheInitializer)
.class public final Lio/bidmachine/BidMachineAssetCacheInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getMediaFileCacheManagerConfiguration(Lio/bidmachine/protobuf/InitResponse;)Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;
    .registers 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/InitResponse;->hasAssetCacheConfiguration()Z

    move-result v2

    if-nez v2, :cond_a

    return-object v1

    .line 4
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/InitResponse;->getAssetCacheConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getCleanConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;

    move-result-object v3

    .line 7
    new-instance v4, Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;

    .line 8
    invoke-virtual {v3}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getTriggerOnStartup()Z

    move-result v5

    .line 9
    invoke-virtual {v3}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getTriggerOnCaching()Z

    move-result v6

    .line 10
    invoke-virtual {v3}, Lio/bidmachine/protobuf/sdk/AssetCache$CleanConfiguration;->getTriggerOnDiskIssue()Z

    move-result v3

    .line 11
    invoke-direct {v4, v5, v6, v3}, Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;-><init>(ZZZ)V

    .line 18
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getConnectionConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;

    move-result-object v3

    .line 19
    new-instance v5, Lio/bidmachine/util/cache/MediaFileCacheManager$ConnectionConfiguration;

    .line 20
    sget-object v6, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v3}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->getHeadRequestTimeoutMs()J

    move-result-wide v6

    sget-object v8, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v6, v7, v8}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v6

    .line 21
    invoke-virtual {v3}, Lio/bidmachine/protobuf/sdk/AssetCache$ConnectionConfiguration;->getDownloadRequestTimeoutMs()J

    move-result-wide v9

    invoke-static {v9, v10, v8}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v8

    const/4 v10, 0x0

    .line 22
    invoke-direct/range {v5 .. v10}, Lio/bidmachine/util/cache/MediaFileCacheManager$ConnectionConfiguration;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getPolicyConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;

    move-result-object v2

    .line 29
    new-instance v3, Lio/bidmachine/util/cache/MediaFileCacheManager$DownloadPolicy;

    .line 30
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->getDownloadPolicy()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v6

    invoke-virtual {v6}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->getMaxPingTimeMs()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v6

    const-string v7, "protobufPolicyConfig.downloadPolicy.maxPingTimeMs"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v6}, Lio/bidmachine/BidMachineAssetCacheInitializer;->toPolicyLimit(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    move-result-object v6

    .line 31
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->getDownloadPolicy()Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;

    move-result-object v7

    invoke-virtual {v7}, Lio/bidmachine/protobuf/sdk/AssetCache$DownloadPolicy;->getMaxFileSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v7

    const-string v8, "protobufPolicyConfig.dow\u2026adPolicy.maxFileSizeBytes"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v7}, Lio/bidmachine/BidMachineAssetCacheInitializer;->toPolicyLimit(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    move-result-object v7

    .line 32
    invoke-direct {v3, v6, v7}, Lio/bidmachine/util/cache/MediaFileCacheManager$DownloadPolicy;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;)V

    .line 36
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyConfiguration;->getEvictionPoliciesList()Ljava/util/List;

    move-result-object v2

    const-string v6, "protobufPolicyConfig.evictionPoliciesList"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v2, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_84
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_102

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 73
    check-cast v7, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;

    .line 74
    new-instance v8, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;

    .line 75
    invoke-virtual {v7}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getScore()D

    move-result-wide v9

    .line 76
    invoke-virtual {v7}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMinDiskAppliedPercent()D

    move-result-wide v11

    .line 77
    invoke-virtual {v7}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxDiskAppliedPercent()D

    move-result-wide v13

    .line 78
    new-instance v15, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    .line 79
    sget-object v16, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v7}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxTtlSeconds()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v16
    :try_end_a6
    .catchall {:try_start_3 .. :try_end_a6} :catchall_ff

    move-object/from16 v19, v1

    move-object/from16 p1, v2

    :try_start_aa
    invoke-virtual/range {v16 .. v16}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getThreshold()J

    move-result-wide v1

    move-object/from16 v16, v7

    sget-object v7, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v1, v2, v7}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v1

    .line 80
    invoke-virtual/range {v16 .. v16}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxTtlSeconds()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v7

    move-object/from16 v17, v8

    invoke-virtual {v7}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getWeight()D

    move-result-wide v7

    .line 81
    invoke-direct {v15, v1, v2, v7, v8}, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;-><init>(JD)V

    .line 85
    invoke-virtual/range {v16 .. v16}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMinFrequency()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v1

    const-string v2, "it.minFrequency"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/bidmachine/BidMachineAssetCacheInitializer;->toPolicyLimit(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    move-result-object v1

    .line 86
    invoke-virtual/range {v16 .. v16}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxImageSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v2

    const-string v7, "it.maxImageSizeBytes"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lio/bidmachine/BidMachineAssetCacheInitializer;->toPolicyLimit(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    move-result-object v2

    .line 87
    invoke-virtual/range {v16 .. v16}, Lio/bidmachine/protobuf/sdk/AssetCache$EvictionPolicy;->getMaxVideoSizeBytes()Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;

    move-result-object v7

    const-string v8, "it.maxVideoSizeBytes"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v7}, Lio/bidmachine/BidMachineAssetCacheInitializer;->toPolicyLimit(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    move-result-object v18

    move-object/from16 v16, v1

    move-object/from16 v8, v17

    move-object/from16 v17, v2

    .line 88
    invoke-direct/range {v8 .. v18}, Lio/bidmachine/util/cache/MediaFileCacheManager$EvictionPolicy;-><init>(DDDLio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;)V

    .line 124
    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p1

    move-object/from16 v1, v19

    goto :goto_84

    :catchall_ff
    move-object/from16 v19, v1

    goto :goto_10f

    :cond_102
    move-object/from16 v19, v1

    .line 125
    new-instance v1, Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    .line 128
    new-instance v2, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;

    invoke-direct {v2, v3, v6}, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager$DownloadPolicy;Ljava/util/List;)V

    .line 129
    invoke-direct {v1, v4, v5, v2}, Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager$CleanConfiguration;Lio/bidmachine/util/cache/MediaFileCacheManager$ConnectionConfiguration;Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyConfiguration;)V
    :try_end_10e
    .catchall {:try_start_aa .. :try_end_10e} :catchall_10f

    return-object v1

    :catchall_10f
    :goto_10f
    return-object v19
.end method

.method private final toPolicyLimit(Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;)Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;
    .registers 7

    .line 1
    new-instance v0, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getThreshold()J

    move-result-wide v1

    .line 3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$PolicyLimit;->getWeight()D

    move-result-wide v3

    .line 4
    invoke-direct {v0, v1, v2, v3, v4}, Lio/bidmachine/util/cache/MediaFileCacheManager$PolicyLimit;-><init>(JD)V

    return-object v0
.end method


# virtual methods
.method public final configure(Landroid/content/Context;Lio/bidmachine/protobuf/InitResponse;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lio/bidmachine/internal/g;->a:Lio/bidmachine/internal/g;

    invoke-virtual {v0, p1}, Lio/bidmachine/internal/g;->b(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p2}, Lio/bidmachine/BidMachineAssetCacheInitializer;->getMediaFileCacheManagerConfiguration(Lio/bidmachine/protobuf/InitResponse;)Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 3
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/internal/g;->a(Landroid/content/Context;Lio/bidmachine/util/cache/MediaFileCacheManager$Configuration;)V

    .line 5
    :cond_18
    invoke-virtual {v0, p1}, Lio/bidmachine/internal/g;->c(Landroid/content/Context;)V

    return-void
.end method

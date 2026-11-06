###### Class io.bidmachine.protobuf.InitResponse (io.bidmachine.protobuf.InitResponse)
.class public final Lio/bidmachine/protobuf/InitResponse;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "InitResponse.java"

# interfaces
.implements Lio/bidmachine/protobuf/InitResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/InitResponse$Builder;,
        Lio/bidmachine/protobuf/InitResponse$AdCachePlacementControlDefaultEntryHolder;
    }
.end annotation


# static fields
.field public static final AD_CACHE_CONTROL_FIELD_NUMBER:I = 0x5

.field public static final AD_CACHE_MAX_AGE_FIELD_NUMBER:I = 0x6

.field public static final AD_CACHE_PLACEMENT_CONTROL_FIELD_NUMBER:I = 0x8

.field public static final AD_NETWORKS_FIELD_NUMBER:I = 0x4

.field public static final AD_NETWORKS_LOADING_TIMEOUT_FIELD_NUMBER:I = 0x9

.field public static final AD_REQUEST_TMAX_FIELD_NUMBER:I = 0x7

.field public static final ASSET_CACHE_CONFIGURATION_FIELD_NUMBER:I = 0x10

.field public static final BMIFV_TTL_SESSIONS_FIELD_NUMBER:I = 0x12

.field public static final CRASH_SIGNAL_CONFIG_FIELD_NUMBER:I = 0x13

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitResponse;

.field public static final ENDPOINT_FIELD_NUMBER:I = 0x1

.field public static final EVENT_CONFIGURATION_FIELD_NUMBER:I = 0xb

.field public static final EVENT_FIELD_NUMBER:I = 0x2

.field public static final EXTRAS_FIELD_NUMBER:I = 0xe

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/InitResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESTRICTION_MODE_FIELD_NUMBER:I = 0x11

.field public static final SDK_ANALYTIC_CONFIG_FIELD_NUMBER:I = 0xa

.field public static final SDK_ANALYTIC_CONFIG_V2_FIELD_NUMBER:I = 0xf

.field public static final SESSION_RESET_AFTER_FIELD_NUMBER:I = 0x3

.field public static final SHOW_WITHOUT_INTERNET_FIELD_NUMBER:I = 0xd

.field public static final TOKEN_CONFIGURATIONS_FIELD_NUMBER:I = 0xc

.field private static final serialVersionUID:J


# instance fields
.field private adCacheControl_:I

.field private adCacheMaxAge_:I

.field private adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation
.end field

.field private adNetworksLoadingTimeout_:I

.field private adNetworks_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private adRequestTmax_:I

.field private assetCacheConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

.field private bmifvTtlSessions_:I

.field private crashSignalConfig_:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

.field private volatile endpoint_:Ljava/lang/Object;

.field private eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

.field private event_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;"
        }
    .end annotation
.end field

.field private extras_:Lio/bidmachine/protobuf/Extras;

.field private memoizedIsInitialized:B

.field private restrictionMode_:I

.field private sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

.field private sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

.field private sessionResetAfter_:I

.field private showWithoutInternet_:Z

.field private tokenConfigurations_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/TokenConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3711
    new-instance v0, Lio/bidmachine/protobuf/InitResponse;

    invoke-direct {v0}, Lio/bidmachine/protobuf/InitResponse;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/InitResponse;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitResponse;

    .line 3719
    new-instance v0, Lio/bidmachine/protobuf/InitResponse$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/InitResponse$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/InitResponse;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 820
    iput-byte v0, p0, Lio/bidmachine/protobuf/InitResponse;->memoizedIsInitialized:B

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->endpoint_:Ljava/lang/Object;

    .line 20
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->event_:Ljava/util/List;

    .line 21
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->adNetworks_:Ljava/util/List;

    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lio/bidmachine/protobuf/InitResponse;->adCacheControl_:I

    .line 23
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->tokenConfigurations_:Ljava/util/List;

    .line 24
    iput v1, p0, Lio/bidmachine/protobuf/InitResponse;->restrictionMode_:I

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse;-><init>()V

    .line 45
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_1f0

    .line 53
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_21e

    .line 225
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :sswitch_1d
    move v1, v4

    goto :goto_c

    :catchall_1f
    move-exception p1

    goto/16 :goto_1c2

    :catch_22
    move-exception p1

    goto/16 :goto_1b3

    :catch_25
    move-exception p1

    goto/16 :goto_1bd

    .line 213
    :sswitch_28
    iget-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->crashSignalConfig_:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    if-eqz v3, :cond_30

    .line 214
    invoke-virtual {v3}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->toBuilder()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object v5

    .line 216
    :cond_30
    invoke-static {}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    iput-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->crashSignalConfig_:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    if-eqz v5, :cond_c

    .line 218
    invoke-virtual {v5, v3}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkCrashSignalConfig;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    .line 219
    invoke-virtual {v5}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->crashSignalConfig_:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    goto :goto_c

    .line 208
    :sswitch_48
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/InitResponse;->bmifvTtlSessions_:I

    goto :goto_c

    .line 201
    :sswitch_4f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 203
    iput v3, p0, Lio/bidmachine/protobuf/InitResponse;->restrictionMode_:I

    goto :goto_c

    .line 189
    :sswitch_56
    iget-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->assetCacheConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    if-eqz v3, :cond_5e

    .line 190
    invoke-virtual {v3}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->toBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object v5

    .line 192
    :cond_5e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    iput-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->assetCacheConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    if-eqz v5, :cond_c

    .line 194
    invoke-virtual {v5, v3}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    .line 195
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->assetCacheConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    goto :goto_c

    .line 176
    :sswitch_76
    iget-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    if-eqz v3, :cond_7e

    .line 177
    invoke-virtual {v3}, Lio/bidmachine/protobuf/sdk/Configuration;->toBuilder()Lio/bidmachine/protobuf/sdk/Configuration$Builder;

    move-result-object v5

    .line 179
    :cond_7e
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Configuration;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lio/bidmachine/protobuf/sdk/Configuration;

    iput-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    if-eqz v5, :cond_c

    .line 181
    invoke-virtual {v5, v3}, Lio/bidmachine/protobuf/sdk/Configuration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Configuration;)Lio/bidmachine/protobuf/sdk/Configuration$Builder;

    .line 182
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/Configuration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Configuration;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    goto/16 :goto_c

    .line 163
    :sswitch_97
    iget-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->extras_:Lio/bidmachine/protobuf/Extras;

    if-eqz v3, :cond_9f

    .line 164
    invoke-virtual {v3}, Lio/bidmachine/protobuf/Extras;->toBuilder()Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object v5

    .line 166
    :cond_9f
    invoke-static {}, Lio/bidmachine/protobuf/Extras;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lio/bidmachine/protobuf/Extras;

    iput-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->extras_:Lio/bidmachine/protobuf/Extras;

    if-eqz v5, :cond_c

    .line 168
    invoke-virtual {v5, v3}, Lio/bidmachine/protobuf/Extras$Builder;->mergeFrom(Lio/bidmachine/protobuf/Extras;)Lio/bidmachine/protobuf/Extras$Builder;

    .line 169
    invoke-virtual {v5}, Lio/bidmachine/protobuf/Extras$Builder;->buildPartial()Lio/bidmachine/protobuf/Extras;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->extras_:Lio/bidmachine/protobuf/Extras;

    goto/16 :goto_c

    .line 158
    :sswitch_b8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/protobuf/InitResponse;->showWithoutInternet_:Z

    goto/16 :goto_c

    :sswitch_c0
    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_cd

    .line 149
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->tokenConfigurations_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 152
    :cond_cd
    iget-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->tokenConfigurations_:Ljava/util/List;

    .line 153
    invoke-static {}, Lio/bidmachine/protobuf/TokenConfiguration;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 152
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 136
    :sswitch_dc
    iget-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    if-eqz v3, :cond_e4

    .line 137
    invoke-virtual {v3}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->toBuilder()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object v5

    .line 139
    :cond_e4
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    iput-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    if-eqz v5, :cond_c

    .line 141
    invoke-virtual {v5, v3}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    .line 142
    invoke-virtual {v5}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    goto/16 :goto_c

    .line 123
    :sswitch_fd
    iget-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    if-eqz v3, :cond_105

    .line 124
    invoke-virtual {v3}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v5

    .line 126
    :cond_105
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    iput-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    if-eqz v5, :cond_c

    .line 128
    invoke-virtual {v5, v3}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    .line 129
    invoke-virtual {v5}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    goto/16 :goto_c

    .line 118
    :sswitch_11e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/InitResponse;->adNetworksLoadingTimeout_:I

    goto/16 :goto_c

    :sswitch_126
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_134

    .line 105
    sget-object v3, Lio/bidmachine/protobuf/InitResponse$AdCachePlacementControlDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v3}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    or-int/lit8 v2, v2, 0x4

    .line 110
    :cond_134
    sget-object v3, Lio/bidmachine/protobuf/InitResponse$AdCachePlacementControlDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    .line 111
    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->getParserForType()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    .line 110
    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MapEntry;

    .line 112
    iget-object v4, p0, Lio/bidmachine/protobuf/InitResponse;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v4

    .line 113
    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 112
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    .line 100
    :sswitch_153
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/InitResponse;->adRequestTmax_:I

    goto/16 :goto_c

    .line 95
    :sswitch_15b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/InitResponse;->adCacheMaxAge_:I

    goto/16 :goto_c

    .line 88
    :sswitch_163
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 90
    iput v3, p0, Lio/bidmachine/protobuf/InitResponse;->adCacheControl_:I

    goto/16 :goto_c

    :sswitch_16b
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_178

    .line 80
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->adNetworks_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 83
    :cond_178
    iget-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->adNetworks_:Ljava/util/List;

    .line 84
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 83
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 75
    :sswitch_187
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/InitResponse;->sessionResetAfter_:I

    goto/16 :goto_c

    :sswitch_18f
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_19c

    .line 66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->event_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 69
    :cond_19c
    iget-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->event_:Ljava/util/List;

    .line 70
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 69
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 59
    :sswitch_1ab
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 61
    iput-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->endpoint_:Ljava/lang/Object;
    :try_end_1b1
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_1b1} :catch_25
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1b1} :catch_22
    .catchall {:try_start_e .. :try_end_1b1} :catchall_1f

    goto/16 :goto_c

    .line 236
    :goto_1b3
    :try_start_1b3
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 237
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 234
    :goto_1bd
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1c2
    .catchall {:try_start_1b3 .. :try_end_1c2} :catchall_1f

    :goto_1c2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_1ce

    .line 240
    iget-object p2, p0, Lio/bidmachine/protobuf/InitResponse;->event_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/InitResponse;->event_:Ljava/util/List;

    :cond_1ce
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_1da

    .line 243
    iget-object p2, p0, Lio/bidmachine/protobuf/InitResponse;->adNetworks_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/InitResponse;->adNetworks_:Ljava/util/List;

    :cond_1da
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_1e6

    .line 246
    iget-object p2, p0, Lio/bidmachine/protobuf/InitResponse;->tokenConfigurations_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/InitResponse;->tokenConfigurations_:Ljava/util/List;

    .line 248
    :cond_1e6
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 249
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 250
    throw p1

    :cond_1f0
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_1fc

    .line 240
    iget-object p1, p0, Lio/bidmachine/protobuf/InitResponse;->event_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse;->event_:Ljava/util/List;

    :cond_1fc
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_208

    .line 243
    iget-object p1, p0, Lio/bidmachine/protobuf/InitResponse;->adNetworks_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse;->adNetworks_:Ljava/util/List;

    :cond_208
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_214

    .line 246
    iget-object p1, p0, Lio/bidmachine/protobuf/InitResponse;->tokenConfigurations_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse;->tokenConfigurations_:Ljava/util/List;

    .line 248
    :cond_214
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 249
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_21e
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_1ab
        0x12 -> :sswitch_18f
        0x18 -> :sswitch_187
        0x22 -> :sswitch_16b
        0x28 -> :sswitch_163
        0x30 -> :sswitch_15b
        0x38 -> :sswitch_153
        0x42 -> :sswitch_126
        0x48 -> :sswitch_11e
        0x52 -> :sswitch_fd
        0x5a -> :sswitch_dc
        0x62 -> :sswitch_c0
        0x68 -> :sswitch_b8
        0x72 -> :sswitch_97
        0x7a -> :sswitch_76
        0x82 -> :sswitch_56
        0x88 -> :sswitch_4f
        0x90 -> :sswitch_48
        0x9a -> :sswitch_28
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/InitResponse$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 820
    iput-byte p1, p0, Lio/bidmachine/protobuf/InitResponse;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/InitResponse$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/InitResponse;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1002(Lio/bidmachine/protobuf/InitResponse;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse;->adRequestTmax_:I

    return p1
.end method

.method public static synthetic access$1100(Lio/bidmachine/protobuf/InitResponse;)Lcom/explorestack/protobuf/MapField;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitResponse;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    return-object p0
.end method

.method public static synthetic access$1102(Lio/bidmachine/protobuf/InitResponse;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    return-object p1
.end method

.method public static synthetic access$1202(Lio/bidmachine/protobuf/InitResponse;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse;->adNetworksLoadingTimeout_:I

    return p1
.end method

.method public static synthetic access$1302(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object p1
.end method

.method public static synthetic access$1402(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    return-object p1
.end method

.method public static synthetic access$1500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitResponse;->tokenConfigurations_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1502(Lio/bidmachine/protobuf/InitResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse;->tokenConfigurations_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$1602(Lio/bidmachine/protobuf/InitResponse;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/InitResponse;->showWithoutInternet_:Z

    return p1
.end method

.method public static synthetic access$1702(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/Extras;)Lio/bidmachine/protobuf/Extras;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse;->extras_:Lio/bidmachine/protobuf/Extras;

    return-object p1
.end method

.method public static synthetic access$1802(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/sdk/Configuration;)Lio/bidmachine/protobuf/sdk/Configuration;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    return-object p1
.end method

.method public static synthetic access$1902(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse;->assetCacheConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    return-object p1
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2000(Lio/bidmachine/protobuf/InitResponse;)I
    .registers 1

    .line 9
    iget p0, p0, Lio/bidmachine/protobuf/InitResponse;->restrictionMode_:I

    return p0
.end method

.method public static synthetic access$2002(Lio/bidmachine/protobuf/InitResponse;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse;->restrictionMode_:I

    return p1
.end method

.method public static synthetic access$2102(Lio/bidmachine/protobuf/InitResponse;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse;->bmifvTtlSessions_:I

    return p1
.end method

.method public static synthetic access$2202(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/SdkCrashSignalConfig;)Lio/bidmachine/protobuf/SdkCrashSignalConfig;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse;->crashSignalConfig_:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    return-object p1
.end method

.method public static synthetic access$2300()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2400()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2500(Lio/bidmachine/protobuf/InitResponse;)Lcom/explorestack/protobuf/MapField;
    .registers 1

    .line 9
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2600()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2700(Lio/bidmachine/protobuf/InitResponse;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$2800()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/InitResponse;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$2900(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$400(Lio/bidmachine/protobuf/InitResponse;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitResponse;->endpoint_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/InitResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse;->endpoint_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitResponse;->event_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/InitResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse;->event_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/InitResponse;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse;->sessionResetAfter_:I

    return p1
.end method

.method public static synthetic access$700(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitResponse;->adNetworks_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/InitResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse;->adNetworks_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$800(Lio/bidmachine/protobuf/InitResponse;)I
    .registers 1

    .line 9
    iget p0, p0, Lio/bidmachine/protobuf/InitResponse;->adCacheControl_:I

    return p0
.end method

.method public static synthetic access$802(Lio/bidmachine/protobuf/InitResponse;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse;->adCacheControl_:I

    return p1
.end method

.method public static synthetic access$902(Lio/bidmachine/protobuf/InitResponse;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse;->adCacheMaxAge_:I

    return p1
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/InitResponse;
    .registers 1

    .line 3715
    sget-object v0, Lio/bidmachine/protobuf/InitResponse;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 254
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitResponse_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_a

    .line 464
    sget-object v0, Lio/bidmachine/protobuf/InitResponse$AdCachePlacementControlDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 1

    .line 1201
    sget-object v0, Lio/bidmachine/protobuf/InitResponse;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitResponse;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitResponse;->toBuilder()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/InitResponse;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    .line 1204
    sget-object v0, Lio/bidmachine/protobuf/InitResponse;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitResponse;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitResponse;->toBuilder()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitResponse;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/InitResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1174
    sget-object v0, Lio/bidmachine/protobuf/InitResponse;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1175
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1181
    sget-object v0, Lio/bidmachine/protobuf/InitResponse;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1182
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1142
    sget-object v0, Lio/bidmachine/protobuf/InitResponse;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1148
    sget-object v0, Lio/bidmachine/protobuf/InitResponse;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/InitResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1187
    sget-object v0, Lio/bidmachine/protobuf/InitResponse;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1188
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1194
    sget-object v0, Lio/bidmachine/protobuf/InitResponse;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1195
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/InitResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1162
    sget-object v0, Lio/bidmachine/protobuf/InitResponse;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1163
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1169
    sget-object v0, Lio/bidmachine/protobuf/InitResponse;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1170
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/InitResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1131
    sget-object v0, Lio/bidmachine/protobuf/InitResponse;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1137
    sget-object v0, Lio/bidmachine/protobuf/InitResponse;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/InitResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1152
    sget-object v0, Lio/bidmachine/protobuf/InitResponse;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1158
    sget-object v0, Lio/bidmachine/protobuf/InitResponse;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitResponse;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/InitResponse;",
            ">;"
        }
    .end annotation

    .line 3730
    sget-object v0, Lio/bidmachine/protobuf/InitResponse;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public containsAdCachePlacementControl(Ljava/lang/String;)Z
    .registers 3

    .line 484
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 485
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 994
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/InitResponse;

    if-nez v1, :cond_d

    .line 995
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 997
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/InitResponse;

    .line 999
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    .line 1000
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 1001
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getEventList()Ljava/util/List;

    move-result-object v1

    .line 1002
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getEventList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    .line 1003
    :cond_2e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getSessionResetAfter()I

    move-result v1

    .line 1004
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getSessionResetAfter()I

    move-result v3

    if-eq v1, v3, :cond_39

    return v2

    .line 1005
    :cond_39
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getAdNetworksList()Ljava/util/List;

    move-result-object v1

    .line 1006
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdNetworksList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    return v2

    .line 1007
    :cond_48
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse;->adCacheControl_:I

    iget v3, p1, Lio/bidmachine/protobuf/InitResponse;->adCacheControl_:I

    if-eq v1, v3, :cond_4f

    return v2

    .line 1008
    :cond_4f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getAdCacheMaxAge()I

    move-result v1

    .line 1009
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdCacheMaxAge()I

    move-result v3

    if-eq v1, v3, :cond_5a

    return v2

    .line 1010
    :cond_5a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getAdRequestTmax()I

    move-result v1

    .line 1011
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdRequestTmax()I

    move-result v3

    if-eq v1, v3, :cond_65

    return v2

    .line 1012
    :cond_65
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 1013
    invoke-direct {p1}, Lio/bidmachine/protobuf/InitResponse;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v3

    .line 1012
    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_74

    return v2

    .line 1014
    :cond_74
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getAdNetworksLoadingTimeout()I

    move-result v1

    .line 1015
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdNetworksLoadingTimeout()I

    move-result v3

    if-eq v1, v3, :cond_7f

    return v2

    .line 1016
    :cond_7f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->hasSdkAnalyticConfig()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->hasSdkAnalyticConfig()Z

    move-result v3

    if-eq v1, v3, :cond_8a

    return v2

    .line 1017
    :cond_8a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->hasSdkAnalyticConfig()Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 1018
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getSdkAnalyticConfig()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v1

    .line 1019
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getSdkAnalyticConfig()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9f

    return v2

    .line 1021
    :cond_9f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->hasEventConfiguration()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->hasEventConfiguration()Z

    move-result v3

    if-eq v1, v3, :cond_aa

    return v2

    .line 1022
    :cond_aa
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->hasEventConfiguration()Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 1023
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v1

    .line 1024
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bf

    return v2

    .line 1026
    :cond_bf
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getTokenConfigurationsList()Ljava/util/List;

    move-result-object v1

    .line 1027
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getTokenConfigurationsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ce

    return v2

    .line 1028
    :cond_ce
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getShowWithoutInternet()Z

    move-result v1

    .line 1029
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getShowWithoutInternet()Z

    move-result v3

    if-eq v1, v3, :cond_d9

    return v2

    .line 1030
    :cond_d9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->hasExtras()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->hasExtras()Z

    move-result v3

    if-eq v1, v3, :cond_e4

    return v2

    .line 1031
    :cond_e4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->hasExtras()Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 1032
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getExtras()Lio/bidmachine/protobuf/Extras;

    move-result-object v1

    .line 1033
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getExtras()Lio/bidmachine/protobuf/Extras;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/Extras;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f9

    return v2

    .line 1035
    :cond_f9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->hasSdkAnalyticConfigV2()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->hasSdkAnalyticConfigV2()Z

    move-result v3

    if-eq v1, v3, :cond_104

    return v2

    .line 1036
    :cond_104
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->hasSdkAnalyticConfigV2()Z

    move-result v1

    if-eqz v1, :cond_119

    .line 1037
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getSdkAnalyticConfigV2()Lio/bidmachine/protobuf/sdk/Configuration;

    move-result-object v1

    .line 1038
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getSdkAnalyticConfigV2()Lio/bidmachine/protobuf/sdk/Configuration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/sdk/Configuration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_119

    return v2

    .line 1040
    :cond_119
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->hasAssetCacheConfiguration()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->hasAssetCacheConfiguration()Z

    move-result v3

    if-eq v1, v3, :cond_124

    return v2

    .line 1041
    :cond_124
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->hasAssetCacheConfiguration()Z

    move-result v1

    if-eqz v1, :cond_139

    .line 1042
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getAssetCacheConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object v1

    .line 1043
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAssetCacheConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_139

    return v2

    .line 1045
    :cond_139
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse;->restrictionMode_:I

    iget v3, p1, Lio/bidmachine/protobuf/InitResponse;->restrictionMode_:I

    if-eq v1, v3, :cond_140

    return v2

    .line 1046
    :cond_140
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getBmifvTtlSessions()I

    move-result v1

    .line 1047
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getBmifvTtlSessions()I

    move-result v3

    if-eq v1, v3, :cond_14b

    return v2

    .line 1048
    :cond_14b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->hasCrashSignalConfig()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->hasCrashSignalConfig()Z

    move-result v3

    if-eq v1, v3, :cond_156

    return v2

    .line 1049
    :cond_156
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->hasCrashSignalConfig()Z

    move-result v1

    if-eqz v1, :cond_16b

    .line 1050
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getCrashSignalConfig()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object v1

    .line 1051
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getCrashSignalConfig()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16b

    return v2

    .line 1053
    :cond_16b
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_176

    return v2

    :cond_176
    return v0
.end method

.method public getAdCacheControl()Lio/bidmachine/protobuf/AdCacheControl;
    .registers 2

    .line 421
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse;->adCacheControl_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/AdCacheControl;->valueOf(I)Lio/bidmachine/protobuf/AdCacheControl;

    move-result-object v0

    if-nez v0, :cond_a

    .line 422
    sget-object v0, Lio/bidmachine/protobuf/AdCacheControl;->UNRECOGNIZED:Lio/bidmachine/protobuf/AdCacheControl;

    :cond_a
    return-object v0
.end method

.method public getAdCacheControlValue()I
    .registers 2

    .line 413
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse;->adCacheControl_:I

    return v0
.end method

.method public getAdCacheMaxAge()I
    .registers 2

    .line 433
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse;->adCacheMaxAge_:I

    return v0
.end method

.method public getAdCachePlacementControl()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 493
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getAdCachePlacementControlMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAdCachePlacementControlCount()I
    .registers 2

    .line 471
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getAdCachePlacementControlMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation

    .line 505
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAdCachePlacementControlOrDefault(Ljava/lang/String;Lio/bidmachine/protobuf/AdCachePlacementControl;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .registers 5

    .line 519
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 521
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 522
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p1

    :cond_18
    return-object p2
.end method

.method public getAdCachePlacementControlOrThrow(Ljava/lang/String;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .registers 4

    .line 535
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 537
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 538
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 541
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p1

    .line 539
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getAdNetworks(I)Lio/bidmachine/protobuf/AdNetwork;
    .registers 3

    .line 395
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->adNetworks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork;

    return-object p1
.end method

.method public getAdNetworksCount()I
    .registers 2

    .line 388
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->adNetworks_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAdNetworksList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork;",
            ">;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->adNetworks_:Ljava/util/List;

    return-object v0
.end method

.method public getAdNetworksLoadingTimeout()I
    .registers 2

    .line 556
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse;->adNetworksLoadingTimeout_:I

    return v0
.end method

.method public getAdNetworksOrBuilder(I)Lio/bidmachine/protobuf/AdNetworkOrBuilder;
    .registers 3

    .line 403
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->adNetworks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetworkOrBuilder;

    return-object p1
.end method

.method public getAdNetworksOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/AdNetworkOrBuilder;",
            ">;"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->adNetworks_:Ljava/util/List;

    return-object v0
.end method

.method public getAdRequestTmax()I
    .registers 2

    .line 444
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse;->adRequestTmax_:I

    return v0
.end method

.method public getAssetCacheConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
    .registers 2

    .line 730
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->assetCacheConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getAssetCacheConfigurationOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$ConfigurationOrBuilder;
    .registers 2

    .line 737
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getAssetCacheConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getBmifvTtlSessions()I
    .registers 2

    .line 779
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse;->bmifvTtlSessions_:I

    return v0
.end method

.method public getCrashSignalConfig()Lio/bidmachine/protobuf/SdkCrashSignalConfig;
    .registers 2

    .line 806
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->crashSignalConfig_:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getCrashSignalConfigOrBuilder()Lio/bidmachine/protobuf/SdkCrashSignalConfigOrBuilder;
    .registers 2

    .line 817
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getCrashSignalConfig()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/InitResponse;
    .registers 2

    .line 3740
    sget-object v0, Lio/bidmachine/protobuf/InitResponse;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitResponse;

    return-object v0
.end method

.method public getEndpoint()Ljava/lang/String;
    .registers 3

    .line 285
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->endpoint_:Ljava/lang/Object;

    .line 286
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 287
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 289
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 291
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 292
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->endpoint_:Ljava/lang/Object;

    return-object v0
.end method

.method public getEndpointBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 303
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->endpoint_:Ljava/lang/Object;

    .line 304
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 305
    check-cast v0, Ljava/lang/String;

    .line 306
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 308
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->endpoint_:Ljava/lang/Object;

    return-object v0

    .line 311
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getEvent(I)Lcom/explorestack/protobuf/adcom/Ad$Event;
    .registers 3

    .line 344
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p1
.end method

.method public getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 2

    .line 601
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getEventConfigurationOrBuilder()Lio/bidmachine/protobuf/AdExtension$EventConfigurationOrBuilder;
    .registers 2

    .line 608
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getEventCount()I
    .registers 2

    .line 337
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEventList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->event_:Ljava/util/List;

    return-object v0
.end method

.method public getEventOrBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;
    .registers 3

    .line 352
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;

    return-object p1
.end method

.method public getEventOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->event_:Ljava/util/List;

    return-object v0
.end method

.method public getExtras()Lio/bidmachine/protobuf/Extras;
    .registers 2

    .line 678
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->extras_:Lio/bidmachine/protobuf/Extras;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/Extras;->getDefaultInstance()Lio/bidmachine/protobuf/Extras;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getExtrasOrBuilder()Lio/bidmachine/protobuf/ExtrasOrBuilder;
    .registers 2

    .line 685
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getExtras()Lio/bidmachine/protobuf/Extras;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/InitResponse;",
            ">;"
        }
    .end annotation

    .line 3735
    sget-object v0, Lio/bidmachine/protobuf/InitResponse;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getRestrictionMode()Lio/bidmachine/protobuf/sdk/RestrictionMode;
    .registers 2

    .line 763
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse;->restrictionMode_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/RestrictionMode;->valueOf(I)Lio/bidmachine/protobuf/sdk/RestrictionMode;

    move-result-object v0

    if-nez v0, :cond_a

    .line 764
    sget-object v0, Lio/bidmachine/protobuf/sdk/RestrictionMode;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/RestrictionMode;

    :cond_a
    return-object v0
.end method

.method public getRestrictionModeValue()I
    .registers 2

    .line 751
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse;->restrictionMode_:I

    return v0
.end method

.method public getSdkAnalyticConfig()Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .registers 2

    .line 575
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getSdkAnalyticConfigOrBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfigOrBuilder;
    .registers 2

    .line 582
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getSdkAnalyticConfig()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSdkAnalyticConfigV2()Lio/bidmachine/protobuf/sdk/Configuration;
    .registers 2

    .line 704
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Configuration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Configuration;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getSdkAnalyticConfigV2OrBuilder()Lio/bidmachine/protobuf/sdk/ConfigurationOrBuilder;
    .registers 2

    .line 711
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getSdkAnalyticConfigV2()Lio/bidmachine/protobuf/sdk/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .line 899
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 903
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getEndpointBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 904
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->endpoint_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    move v2, v1

    .line 906
    :goto_1b
    iget-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->event_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 907
    iget-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->event_:Ljava/util/List;

    .line 908
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 910
    :cond_34
    iget v2, p0, Lio/bidmachine/protobuf/InitResponse;->sessionResetAfter_:I

    if-eqz v2, :cond_3e

    const/4 v3, 0x3

    .line 912
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3e
    move v2, v1

    .line 914
    :goto_3f
    iget-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->adNetworks_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_58

    .line 915
    iget-object v3, p0, Lio/bidmachine/protobuf/InitResponse;->adNetworks_:Ljava/util/List;

    .line 916
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 918
    :cond_58
    iget v2, p0, Lio/bidmachine/protobuf/InitResponse;->adCacheControl_:I

    sget-object v3, Lio/bidmachine/protobuf/AdCacheControl;->AD_CACHE_CONTROL_DISABLED:Lio/bidmachine/protobuf/AdCacheControl;

    invoke-virtual {v3}, Lio/bidmachine/protobuf/AdCacheControl;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_6a

    const/4 v2, 0x5

    .line 919
    iget v3, p0, Lio/bidmachine/protobuf/InitResponse;->adCacheControl_:I

    .line 920
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 922
    :cond_6a
    iget v2, p0, Lio/bidmachine/protobuf/InitResponse;->adCacheMaxAge_:I

    if-eqz v2, :cond_74

    const/4 v3, 0x6

    .line 924
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 926
    :cond_74
    iget v2, p0, Lio/bidmachine/protobuf/InitResponse;->adRequestTmax_:I

    if-eqz v2, :cond_7e

    const/4 v3, 0x7

    .line 928
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 931
    :cond_7e
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 933
    sget-object v4, Lio/bidmachine/protobuf/InitResponse$AdCachePlacementControlDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapEntry;->newBuilderForType()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v4

    .line 934
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/MapEntry$Builder;->setKey(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v4

    .line 935
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/MapEntry$Builder;->setValue(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 936
    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry$Builder;->build()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v3

    const/16 v4, 0x8

    .line 938
    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_8e

    .line 940
    :cond_bc
    iget v2, p0, Lio/bidmachine/protobuf/InitResponse;->adNetworksLoadingTimeout_:I

    if-eqz v2, :cond_c7

    const/16 v3, 0x9

    .line 942
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 944
    :cond_c7
    iget-object v2, p0, Lio/bidmachine/protobuf/InitResponse;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    if-eqz v2, :cond_d6

    const/16 v2, 0xa

    .line 946
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getSdkAnalyticConfig()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 948
    :cond_d6
    iget-object v2, p0, Lio/bidmachine/protobuf/InitResponse;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    if-eqz v2, :cond_e5

    const/16 v2, 0xb

    .line 950
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 952
    :cond_e5
    :goto_e5
    iget-object v2, p0, Lio/bidmachine/protobuf/InitResponse;->tokenConfigurations_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_ff

    .line 953
    iget-object v2, p0, Lio/bidmachine/protobuf/InitResponse;->tokenConfigurations_:Ljava/util/List;

    .line 954
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/16 v3, 0xc

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_e5

    .line 956
    :cond_ff
    iget-boolean v1, p0, Lio/bidmachine/protobuf/InitResponse;->showWithoutInternet_:Z

    if-eqz v1, :cond_10a

    const/16 v2, 0xd

    .line 958
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 960
    :cond_10a
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse;->extras_:Lio/bidmachine/protobuf/Extras;

    if-eqz v1, :cond_119

    const/16 v1, 0xe

    .line 962
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getExtras()Lio/bidmachine/protobuf/Extras;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 964
    :cond_119
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    if-eqz v1, :cond_128

    const/16 v1, 0xf

    .line 966
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getSdkAnalyticConfigV2()Lio/bidmachine/protobuf/sdk/Configuration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 968
    :cond_128
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse;->assetCacheConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    if-eqz v1, :cond_137

    const/16 v1, 0x10

    .line 970
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getAssetCacheConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 972
    :cond_137
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse;->restrictionMode_:I

    sget-object v2, Lio/bidmachine/protobuf/sdk/RestrictionMode;->RESTRICTION_MODE_STRICT:Lio/bidmachine/protobuf/sdk/RestrictionMode;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/RestrictionMode;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_14a

    const/16 v1, 0x11

    .line 973
    iget v2, p0, Lio/bidmachine/protobuf/InitResponse;->restrictionMode_:I

    .line 974
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 976
    :cond_14a
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse;->bmifvTtlSessions_:I

    if-eqz v1, :cond_155

    const/16 v2, 0x12

    .line 978
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 980
    :cond_155
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse;->crashSignalConfig_:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    if-eqz v1, :cond_164

    const/16 v1, 0x13

    .line 982
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getCrashSignalConfig()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 984
    :cond_164
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 985
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getSessionResetAfter()I
    .registers 2

    .line 363
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse;->sessionResetAfter_:I

    return v0
.end method

.method public getShowWithoutInternet()Z
    .registers 2

    .line 659
    iget-boolean v0, p0, Lio/bidmachine/protobuf/InitResponse;->showWithoutInternet_:Z

    return v0
.end method

.method public getTokenConfigurations(I)Lio/bidmachine/protobuf/TokenConfiguration;
    .registers 3

    .line 640
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->tokenConfigurations_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/TokenConfiguration;

    return-object p1
.end method

.method public getTokenConfigurationsCount()I
    .registers 2

    .line 633
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->tokenConfigurations_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTokenConfigurationsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/TokenConfiguration;",
            ">;"
        }
    .end annotation

    .line 618
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->tokenConfigurations_:Ljava/util/List;

    return-object v0
.end method

.method public getTokenConfigurationsOrBuilder(I)Lio/bidmachine/protobuf/TokenConfigurationOrBuilder;
    .registers 3

    .line 648
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->tokenConfigurations_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/TokenConfigurationOrBuilder;

    return-object p1
.end method

.method public getTokenConfigurationsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/TokenConfigurationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 626
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->tokenConfigurations_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAssetCacheConfiguration()Z
    .registers 2

    .line 722
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->assetCacheConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasCrashSignalConfig()Z
    .registers 2

    .line 794
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->crashSignalConfig_:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasEventConfiguration()Z
    .registers 2

    .line 593
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasExtras()Z
    .registers 2

    .line 670
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->extras_:Lio/bidmachine/protobuf/Extras;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasSdkAnalyticConfig()Z
    .registers 2

    .line 567
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasSdkAnalyticConfigV2()Z
    .registers 2

    .line 696
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1059
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 1063
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 1065
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1066
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getEventCount()I

    move-result v0

    if-lez v0, :cond_34

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 1068
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getEventList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_34
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 1071
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getSessionResetAfter()I

    move-result v0

    add-int/2addr v1, v0

    .line 1072
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getAdNetworksCount()I

    move-result v0

    if-lez v0, :cond_54

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 1074
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getAdNetworksList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_54
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 1077
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse;->adCacheControl_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 1079
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getAdCacheMaxAge()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 1081
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getAdRequestTmax()I

    move-result v0

    add-int/2addr v1, v0

    .line 1082
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_90

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 1084
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_90
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 1087
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getAdNetworksLoadingTimeout()I

    move-result v0

    add-int/2addr v1, v0

    .line 1088
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->hasSdkAnalyticConfig()Z

    move-result v0

    if-eqz v0, :cond_b0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 1090
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getSdkAnalyticConfig()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1092
    :cond_b0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->hasEventConfiguration()Z

    move-result v0

    if-eqz v0, :cond_c5

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    .line 1094
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1096
    :cond_c5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getTokenConfigurationsCount()I

    move-result v0

    if-lez v0, :cond_da

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    .line 1098
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getTokenConfigurationsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_da
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    .line 1102
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getShowWithoutInternet()Z

    move-result v0

    .line 1101
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 1103
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->hasExtras()Z

    move-result v0

    if-eqz v0, :cond_fe

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xe

    mul-int/lit8 v1, v1, 0x35

    .line 1105
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getExtras()Lio/bidmachine/protobuf/Extras;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/Extras;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1107
    :cond_fe
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->hasSdkAnalyticConfigV2()Z

    move-result v0

    if-eqz v0, :cond_113

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x35

    .line 1109
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getSdkAnalyticConfigV2()Lio/bidmachine/protobuf/sdk/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Configuration;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1111
    :cond_113
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->hasAssetCacheConfiguration()Z

    move-result v0

    if-eqz v0, :cond_128

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x35

    .line 1113
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getAssetCacheConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_128
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x11

    mul-int/lit8 v1, v1, 0x35

    .line 1116
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse;->restrictionMode_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x12

    mul-int/lit8 v1, v1, 0x35

    .line 1118
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getBmifvTtlSessions()I

    move-result v0

    add-int/2addr v1, v0

    .line 1119
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->hasCrashSignalConfig()Z

    move-result v0

    if-eqz v0, :cond_151

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x13

    mul-int/lit8 v1, v1, 0x35

    .line 1121
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getCrashSignalConfig()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_151
    mul-int/lit8 v1, v1, 0x1d

    .line 1123
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1124
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 272
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitResponse_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/InitResponse;

    const-class v2, Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 273
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .registers 5

    const/16 v0, 0x8

    if-ne p1, v0, :cond_9

    .line 263
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 265
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 823
    iget-byte v0, p0, Lio/bidmachine/protobuf/InitResponse;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 827
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/InitResponse;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->newBuilderForType()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->newBuilderForType()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    .line 1199
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->newBuilder()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 4

    .line 1215
    new-instance v0, Lio/bidmachine/protobuf/InitResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/InitResponse$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/InitResponse$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 31
    new-instance p1, Lio/bidmachine/protobuf/InitResponse;

    invoke-direct {p1}, Lio/bidmachine/protobuf/InitResponse;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->toBuilder()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->toBuilder()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 1208
    sget-object v0, Lio/bidmachine/protobuf/InitResponse;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitResponse;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 1209
    new-instance v0, Lio/bidmachine/protobuf/InitResponse$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/InitResponse$Builder;-><init>(Lio/bidmachine/protobuf/InitResponse$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/InitResponse$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/InitResponse$Builder;-><init>(Lio/bidmachine/protobuf/InitResponse$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitResponse;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 834
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getEndpointBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 835
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->endpoint_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_10
    const/4 v0, 0x0

    move v1, v0

    .line 837
    :goto_12
    iget-object v2, p0, Lio/bidmachine/protobuf/InitResponse;->event_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 838
    iget-object v2, p0, Lio/bidmachine/protobuf/InitResponse;->event_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 840
    :cond_29
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse;->sessionResetAfter_:I

    if-eqz v1, :cond_31

    const/4 v2, 0x3

    .line 841
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_31
    move v1, v0

    .line 843
    :goto_32
    iget-object v2, p0, Lio/bidmachine/protobuf/InitResponse;->adNetworks_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    .line 844
    iget-object v2, p0, Lio/bidmachine/protobuf/InitResponse;->adNetworks_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 846
    :cond_49
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse;->adCacheControl_:I

    sget-object v2, Lio/bidmachine/protobuf/AdCacheControl;->AD_CACHE_CONTROL_DISABLED:Lio/bidmachine/protobuf/AdCacheControl;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/AdCacheControl;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_59

    const/4 v1, 0x5

    .line 847
    iget v2, p0, Lio/bidmachine/protobuf/InitResponse;->adCacheControl_:I

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 849
    :cond_59
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse;->adCacheMaxAge_:I

    if-eqz v1, :cond_61

    const/4 v2, 0x6

    .line 850
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 852
    :cond_61
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse;->adRequestTmax_:I

    if-eqz v1, :cond_69

    const/4 v2, 0x7

    .line 853
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 858
    :cond_69
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    sget-object v2, Lio/bidmachine/protobuf/InitResponse$AdCachePlacementControlDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    const/16 v3, 0x8

    .line 856
    invoke-static {p1, v1, v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapField;Lcom/explorestack/protobuf/MapEntry;I)V

    .line 861
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse;->adNetworksLoadingTimeout_:I

    if-eqz v1, :cond_7d

    const/16 v2, 0x9

    .line 862
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 864
    :cond_7d
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    if-eqz v1, :cond_8a

    const/16 v1, 0xa

    .line 865
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getSdkAnalyticConfig()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 867
    :cond_8a
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    if-eqz v1, :cond_97

    const/16 v1, 0xb

    .line 868
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 870
    :cond_97
    :goto_97
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse;->tokenConfigurations_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_af

    .line 871
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse;->tokenConfigurations_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_97

    .line 873
    :cond_af
    iget-boolean v0, p0, Lio/bidmachine/protobuf/InitResponse;->showWithoutInternet_:Z

    if-eqz v0, :cond_b8

    const/16 v1, 0xd

    .line 874
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 876
    :cond_b8
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->extras_:Lio/bidmachine/protobuf/Extras;

    if-eqz v0, :cond_c5

    const/16 v0, 0xe

    .line 877
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getExtras()Lio/bidmachine/protobuf/Extras;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 879
    :cond_c5
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    if-eqz v0, :cond_d2

    const/16 v0, 0xf

    .line 880
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getSdkAnalyticConfigV2()Lio/bidmachine/protobuf/sdk/Configuration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 882
    :cond_d2
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->assetCacheConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    if-eqz v0, :cond_df

    const/16 v0, 0x10

    .line 883
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getAssetCacheConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 885
    :cond_df
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse;->restrictionMode_:I

    sget-object v1, Lio/bidmachine/protobuf/sdk/RestrictionMode;->RESTRICTION_MODE_STRICT:Lio/bidmachine/protobuf/sdk/RestrictionMode;

    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/RestrictionMode;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_f0

    const/16 v0, 0x11

    .line 886
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse;->restrictionMode_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 888
    :cond_f0
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse;->bmifvTtlSessions_:I

    if-eqz v0, :cond_f9

    const/16 v1, 0x12

    .line 889
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 891
    :cond_f9
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse;->crashSignalConfig_:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    if-eqz v0, :cond_106

    const/16 v0, 0x13

    .line 892
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse;->getCrashSignalConfig()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 894
    :cond_106
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.InitResponse.AnonymousClass1 (io.bidmachine.protobuf.InitResponse$1)
.class Lio/bidmachine/protobuf/InitResponse$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "InitResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/InitResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3719
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3725
    new-instance v0, Lio/bidmachine/protobuf/InitResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/InitResponse;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/InitResponse$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3719
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitResponse;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.InitResponse.AdCachePlacementControlDefaultEntryHolder (io.bidmachine.protobuf.InitResponse$AdCachePlacementControlDefaultEntryHolder)
.class final Lio/bidmachine/protobuf/InitResponse$AdCachePlacementControlDefaultEntryHolder;
.super Ljava/lang/Object;
.source "InitResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdCachePlacementControlDefaultEntryHolder"
.end annotation


# static fields
.field static final defaultEntry:Lcom/explorestack/protobuf/MapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapEntry<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 450
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitResponse_AdCachePlacementControlEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->STRING:Lcom/explorestack/protobuf/WireFormat$FieldType;

    sget-object v2, Lcom/explorestack/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 457
    invoke-static {}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getDefaultInstance()Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object v3

    .line 452
    const-string v4, ""

    invoke-static {v0, v1, v4, v2, v3}, Lcom/explorestack/protobuf/MapEntry;->newDefaultInstance(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/InitResponse$AdCachePlacementControlDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.bidmachine.protobuf.InitResponse.Builder (io.bidmachine.protobuf.InitResponse$Builder)
.class public final Lio/bidmachine/protobuf/InitResponse$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "InitResponse.java"

# interfaces
.implements Lio/bidmachine/protobuf/InitResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/InitResponse$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/InitResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private adCacheControl_:I

.field private adCacheMaxAge_:I

.field private adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation
.end field

.field private adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/AdNetwork;",
            "Lio/bidmachine/protobuf/AdNetwork$Builder;",
            "Lio/bidmachine/protobuf/AdNetworkOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private adNetworksLoadingTimeout_:I

.field private adNetworks_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private adRequestTmax_:I

.field private assetCacheConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$ConfigurationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private assetCacheConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

.field private bitField0_:I

.field private bmifvTtlSessions_:I

.field private crashSignalConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/SdkCrashSignalConfig;",
            "Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;",
            "Lio/bidmachine/protobuf/SdkCrashSignalConfigOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private crashSignalConfig_:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

.field private endpoint_:Ljava/lang/Object;

.field private eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            "Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/AdExtension$EventConfiguration;",
            "Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;",
            "Lio/bidmachine/protobuf/AdExtension$EventConfigurationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

.field private event_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;"
        }
    .end annotation
.end field

.field private extrasBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/Extras;",
            "Lio/bidmachine/protobuf/Extras$Builder;",
            "Lio/bidmachine/protobuf/ExtrasOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private extras_:Lio/bidmachine/protobuf/Extras;

.field private restrictionMode_:I

.field private sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig;",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;",
            "Lio/bidmachine/protobuf/SdkAnalyticConfigOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Configuration;",
            "Lio/bidmachine/protobuf/sdk/Configuration$Builder;",
            "Lio/bidmachine/protobuf/sdk/ConfigurationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

.field private sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

.field private sessionResetAfter_:I

.field private showWithoutInternet_:Z

.field private tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/TokenConfiguration;",
            "Lio/bidmachine/protobuf/TokenConfiguration$Builder;",
            "Lio/bidmachine/protobuf/TokenConfigurationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private tokenConfigurations_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/TokenConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1261
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1653
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 1730
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 2001
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    const/4 v1, 0x0

    .line 2240
    iput v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    .line 2794
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 3421
    iput v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->restrictionMode_:I

    .line 1262
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 3

    .line 1267
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1653
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 1730
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 2001
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    const/4 v0, 0x0

    .line 2240
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    .line 2794
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 3421
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->restrictionMode_:I

    .line 1268
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/InitResponse$1;)V
    .registers 3

    .line 1221
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/InitResponse$1;)V
    .registers 2

    .line 1221
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;-><init>()V

    return-void
.end method

.method private ensureAdNetworksIsMutable()V
    .registers 3

    .line 2003
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_15

    .line 2004
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 2005
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method private ensureEventIsMutable()V
    .registers 3

    .line 1732
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 1733
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 1734
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method private ensureTokenConfigurationsIsMutable()V
    .registers 3

    .line 2796
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_15

    .line 2797
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 2798
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method private getAdNetworksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/AdNetwork;",
            "Lio/bidmachine/protobuf/AdNetwork$Builder;",
            "Lio/bidmachine/protobuf/AdNetworkOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2228
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_21

    .line 2229
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 2233
    :goto_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 2234
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 2235
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 2237
    :cond_21
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getAssetCacheConfigurationFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;",
            "Lio/bidmachine/protobuf/sdk/AssetCache$ConfigurationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3410
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 3411
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3413
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getAssetCacheConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object v1

    .line 3414
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 3415
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 3416
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    .line 3418
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getCrashSignalConfigFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/SdkCrashSignalConfig;",
            "Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;",
            "Lio/bidmachine/protobuf/SdkCrashSignalConfigOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3682
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 3683
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3685
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getCrashSignalConfig()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object v1

    .line 3686
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 3687
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 3688
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfig_:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    .line 3690
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1227
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitResponse_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getEventConfigurationFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/AdExtension$EventConfiguration;",
            "Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;",
            "Lio/bidmachine/protobuf/AdExtension$EventConfigurationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2782
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 2783
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2785
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v1

    .line 2786
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2787
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 2788
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 2790
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            "Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1957
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_20

    .line 1958
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    .line 1962
    :goto_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1963
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 1964
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 1966
    :cond_20
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getExtrasFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/Extras;",
            "Lio/bidmachine/protobuf/Extras$Builder;",
            "Lio/bidmachine/protobuf/ExtrasOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3172
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 3173
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3175
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getExtras()Lio/bidmachine/protobuf/Extras;

    move-result-object v1

    .line 3176
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 3177
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 3178
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    .line 3180
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getSdkAnalyticConfigFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig;",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;",
            "Lio/bidmachine/protobuf/SdkAnalyticConfigOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2663
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 2664
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2666
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getSdkAnalyticConfig()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v1

    .line 2667
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2668
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 2669
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 2671
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getSdkAnalyticConfigV2FieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Configuration;",
            "Lio/bidmachine/protobuf/sdk/Configuration$Builder;",
            "Lio/bidmachine/protobuf/sdk/ConfigurationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3291
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 3292
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3294
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getSdkAnalyticConfigV2()Lio/bidmachine/protobuf/sdk/Configuration;

    move-result-object v1

    .line 3295
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 3296
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 3297
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    .line 3299
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getTokenConfigurationsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/TokenConfiguration;",
            "Lio/bidmachine/protobuf/TokenConfiguration$Builder;",
            "Lio/bidmachine/protobuf/TokenConfigurationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3021
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_21

    .line 3022
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 3026
    :goto_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 3027
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 3028
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 3030
    :cond_21
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation

    .line 2360
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_a

    .line 2361
    sget-object v0, Lio/bidmachine/protobuf/InitResponse$AdCachePlacementControlDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method private internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation

    .line 2368
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2369
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_f

    .line 2370
    sget-object v0, Lio/bidmachine/protobuf/InitResponse$AdCachePlacementControlDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    .line 2373
    :cond_f
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->isMutable()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2374
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->copy()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    .line 2376
    :cond_1f
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCachePlacementControl_:Lcom/explorestack/protobuf/MapField;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 1272
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->access$200()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1273
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1274
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getAdNetworksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1275
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getTokenConfigurationsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_f
    return-void
.end method


# virtual methods
.method public addAdNetworks(ILio/bidmachine/protobuf/AdNetwork$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 4

    .line 2125
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 2126
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 2127
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->build()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2128
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2130
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->build()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addAdNetworks(ILio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 4

    .line 2094
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 2096
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2098
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 2099
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2100
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2102
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addAdNetworks(Lio/bidmachine/protobuf/AdNetwork$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 2111
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 2112
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 2113
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->build()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2114
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2116
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->build()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addAdNetworks(Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 2077
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 2079
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2081
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 2082
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2085
    :cond_13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addAdNetworksBuilder()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 3

    .line 2207
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getAdNetworksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2208
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v1

    .line 2207
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object v0
.end method

.method public addAdNetworksBuilder(I)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 4

    .line 2215
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getAdNetworksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2216
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v1

    .line 2215
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method

.method public addAllAdNetworks(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/AdNetwork;",
            ">;)",
            "Lio/bidmachine/protobuf/InitResponse$Builder;"
        }
    .end annotation

    .line 2139
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 2140
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 2141
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2143
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2145
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addAllEvent(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;)",
            "Lio/bidmachine/protobuf/InitResponse$Builder;"
        }
    .end annotation

    .line 1868
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 1869
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 1870
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1872
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1874
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addAllTokenConfigurations(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/TokenConfiguration;",
            ">;)",
            "Lio/bidmachine/protobuf/InitResponse$Builder;"
        }
    .end annotation

    .line 2932
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 2933
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureTokenConfigurationsIsMutable()V

    .line 2934
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2936
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2938
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEvent(ILcom/explorestack/protobuf/adcom/Ad$Event$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 4

    .line 1854
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 1855
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 1856
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1857
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1859
    :cond_14
    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEvent(ILcom/explorestack/protobuf/adcom/Ad$Event;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 4

    .line 1823
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 1825
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1827
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 1828
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1829
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1831
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEvent(Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 1840
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 1841
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 1842
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1843
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1845
    :cond_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEvent(Lcom/explorestack/protobuf/adcom/Ad$Event;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 1806
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 1808
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1810
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 1811
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1812
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1814
    :cond_13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEventBuilder()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .registers 3

    .line 1936
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1937
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v1

    .line 1936
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object v0
.end method

.method public addEventBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .registers 4

    .line 1944
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1945
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v1

    .line 1944
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1221
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1221
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 1483
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitResponse$Builder;

    return-object p1
.end method

.method public addTokenConfigurations(ILio/bidmachine/protobuf/TokenConfiguration$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 4

    .line 2918
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 2919
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureTokenConfigurationsIsMutable()V

    .line 2920
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->build()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2921
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2923
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->build()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addTokenConfigurations(ILio/bidmachine/protobuf/TokenConfiguration;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 4

    .line 2887
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 2889
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2891
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureTokenConfigurationsIsMutable()V

    .line 2892
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2893
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2895
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addTokenConfigurations(Lio/bidmachine/protobuf/TokenConfiguration$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 2904
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 2905
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureTokenConfigurationsIsMutable()V

    .line 2906
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->build()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2907
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2909
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->build()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addTokenConfigurations(Lio/bidmachine/protobuf/TokenConfiguration;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 2870
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 2872
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2874
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureTokenConfigurationsIsMutable()V

    .line 2875
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2876
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2878
    :cond_13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addTokenConfigurationsBuilder()Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 3

    .line 3000
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getTokenConfigurationsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 3001
    invoke-static {}, Lio/bidmachine/protobuf/TokenConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object v1

    .line 3000
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    return-object v0
.end method

.method public addTokenConfigurationsBuilder(I)Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 4

    .line 3008
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getTokenConfigurationsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 3009
    invoke-static {}, Lio/bidmachine/protobuf/TokenConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object v1

    .line 3008
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->build()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->build()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/InitResponse;
    .registers 3

    .line 1370
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->buildPartial()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    .line 1371
    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitResponse;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 1372
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->buildPartial()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->buildPartial()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/InitResponse;
    .registers 3

    .line 1379
    new-instance v0, Lio/bidmachine/protobuf/InitResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/InitResponse;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/InitResponse$1;)V

    .line 1381
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$402(Lio/bidmachine/protobuf/InitResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_29

    .line 1383
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_23

    .line 1384
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 1385
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 1387
    :cond_23
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$502(Lio/bidmachine/protobuf/InitResponse;Ljava/util/List;)Ljava/util/List;

    goto :goto_30

    .line 1389
    :cond_29
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$502(Lio/bidmachine/protobuf/InitResponse;Ljava/util/List;)Ljava/util/List;

    .line 1391
    :goto_30
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sessionResetAfter_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$602(Lio/bidmachine/protobuf/InitResponse;I)I

    .line 1392
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_53

    .line 1393
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4d

    .line 1394
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 1395
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 1397
    :cond_4d
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$702(Lio/bidmachine/protobuf/InitResponse;Ljava/util/List;)Ljava/util/List;

    goto :goto_5a

    .line 1399
    :cond_53
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$702(Lio/bidmachine/protobuf/InitResponse;Ljava/util/List;)Ljava/util/List;

    .line 1401
    :goto_5a
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$802(Lio/bidmachine/protobuf/InitResponse;I)I

    .line 1402
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheMaxAge_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$902(Lio/bidmachine/protobuf/InitResponse;I)I

    .line 1403
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adRequestTmax_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1002(Lio/bidmachine/protobuf/InitResponse;I)I

    .line 1404
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1102(Lio/bidmachine/protobuf/InitResponse;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;

    .line 1405
    invoke-static {v0}, Lio/bidmachine/protobuf/InitResponse;->access$1100(Lio/bidmachine/protobuf/InitResponse;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->makeImmutable()V

    .line 1406
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksLoadingTimeout_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1202(Lio/bidmachine/protobuf/InitResponse;I)I

    .line 1407
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_86

    .line 1408
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1302(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig;

    goto :goto_8f

    .line 1410
    :cond_86
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1302(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 1412
    :goto_8f
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_99

    .line 1413
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1402(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    goto :goto_a2

    .line 1415
    :cond_99
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1402(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 1417
    :goto_a2
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_c0

    .line 1418
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_ba

    .line 1419
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 1420
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 1422
    :cond_ba
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1502(Lio/bidmachine/protobuf/InitResponse;Ljava/util/List;)Ljava/util/List;

    goto :goto_c7

    .line 1424
    :cond_c0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1502(Lio/bidmachine/protobuf/InitResponse;Ljava/util/List;)Ljava/util/List;

    .line 1426
    :goto_c7
    iget-boolean v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->showWithoutInternet_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1602(Lio/bidmachine/protobuf/InitResponse;Z)Z

    .line 1427
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_d6

    .line 1428
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1702(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/Extras;)Lio/bidmachine/protobuf/Extras;

    goto :goto_df

    .line 1430
    :cond_d6
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/Extras;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1702(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/Extras;)Lio/bidmachine/protobuf/Extras;

    .line 1432
    :goto_df
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_e9

    .line 1433
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1802(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/sdk/Configuration;)Lio/bidmachine/protobuf/sdk/Configuration;

    goto :goto_f2

    .line 1435
    :cond_e9
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/Configuration;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1802(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/sdk/Configuration;)Lio/bidmachine/protobuf/sdk/Configuration;

    .line 1437
    :goto_f2
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_fc

    .line 1438
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1902(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    goto :goto_105

    .line 1440
    :cond_fc
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$1902(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    .line 1442
    :goto_105
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->restrictionMode_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$2002(Lio/bidmachine/protobuf/InitResponse;I)I

    .line 1443
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bmifvTtlSessions_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$2102(Lio/bidmachine/protobuf/InitResponse;I)I

    .line 1444
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_119

    .line 1445
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfig_:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$2202(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/SdkCrashSignalConfig;)Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    goto :goto_122

    .line 1447
    :cond_119
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitResponse;->access$2202(Lio/bidmachine/protobuf/InitResponse;Lio/bidmachine/protobuf/SdkCrashSignalConfig;)Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    .line 1449
    :goto_122
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clear()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clear()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clear()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clear()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 4

    .line 1280
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 1281
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 1283
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_16

    .line 1284
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 1285
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    goto :goto_19

    .line 1287
    :cond_16
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_19
    const/4 v0, 0x0

    .line 1289
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sessionResetAfter_:I

    .line 1291
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_2b

    .line 1292
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 1293
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    goto :goto_2e

    .line 1295
    :cond_2b
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 1297
    :goto_2e
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    .line 1299
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheMaxAge_:I

    .line 1301
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adRequestTmax_:I

    .line 1303
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->clear()V

    .line 1304
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksLoadingTimeout_:I

    .line 1306
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v2, 0x0

    if-nez v1, :cond_45

    .line 1307
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    goto :goto_49

    .line 1309
    :cond_45
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 1310
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1312
    :goto_49
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_50

    .line 1313
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    goto :goto_54

    .line 1315
    :cond_50
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 1316
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1318
    :goto_54
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_63

    .line 1319
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 1320
    iget v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    goto :goto_66

    .line 1322
    :cond_63
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 1324
    :goto_66
    iput-boolean v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->showWithoutInternet_:Z

    .line 1326
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_6f

    .line 1327
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    goto :goto_73

    .line 1329
    :cond_6f
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    .line 1330
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1332
    :goto_73
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_7a

    .line 1333
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    goto :goto_7e

    .line 1335
    :cond_7a
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    .line 1336
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1338
    :goto_7e
    iget-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_85

    .line 1339
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    goto :goto_89

    .line 1341
    :cond_85
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    .line 1342
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1344
    :goto_89
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->restrictionMode_:I

    .line 1346
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bmifvTtlSessions_:I

    .line 1348
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_94

    .line 1349
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfig_:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    return-object p0

    .line 1351
    :cond_94
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfig_:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    .line 1352
    iput-object v2, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearAdCacheControl()Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2289
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    .line 2290
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAdCacheMaxAge()Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2320
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheMaxAge_:I

    .line 2321
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAdCachePlacementControl()Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    .line 2454
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 2455
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public clearAdNetworks()Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    .line 2153
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 2154
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 2155
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 2156
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2158
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public clearAdNetworksLoadingTimeout()Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2550
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksLoadingTimeout_:I

    .line 2551
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAdRequestTmax()Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2351
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adRequestTmax_:I

    .line 2352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAssetCacheConfiguration()Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 3375
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 3376
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    .line 3377
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3379
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    .line 3380
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearBmifvTtlSessions()Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 3533
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bmifvTtlSessions_:I

    .line 3534
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCrashSignalConfig()Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 3635
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 3636
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfig_:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    .line 3637
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3639
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfig_:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    .line 3640
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearEndpoint()Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    .line 1708
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->getDefaultInstance()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitResponse;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 1709
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearEvent()Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    .line 1882
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 1883
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 1884
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 1885
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1887
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public clearEventConfiguration()Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 2747
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2748
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 2749
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2751
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 2752
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearExtras()Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 3137
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 3138
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    .line 3139
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3141
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    .line 3142
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1221
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1221
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    .line 1466
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1221
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1221
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1221
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    .line 1471
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitResponse$Builder;

    return-object p1
.end method

.method public clearRestrictionMode()Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 3490
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->restrictionMode_:I

    .line 3491
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSdkAnalyticConfig()Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 2628
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2629
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 2630
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2632
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 2633
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearSdkAnalyticConfigV2()Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 3256
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 3257
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    .line 3258
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3260
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    .line 3261
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearSessionResetAfter()Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1995
    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sessionResetAfter_:I

    .line 1996
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearShowWithoutInternet()Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 3059
    iput-boolean v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->showWithoutInternet_:Z

    .line 3060
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTokenConfigurations()Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    .line 2946
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 2947
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 2948
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 2949
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2951
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clone()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 1221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clone()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clone()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clone()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clone()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    .line 1455
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/InitResponse$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->clone()Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public containsAdCachePlacementControl(Ljava/lang/String;)Z
    .registers 3

    .line 2393
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2394
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAdCacheControl()Lio/bidmachine/protobuf/AdCacheControl;
    .registers 2

    .line 2266
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/AdCacheControl;->valueOf(I)Lio/bidmachine/protobuf/AdCacheControl;

    move-result-object v0

    if-nez v0, :cond_a

    .line 2267
    sget-object v0, Lio/bidmachine/protobuf/AdCacheControl;->UNRECOGNIZED:Lio/bidmachine/protobuf/AdCacheControl;

    :cond_a
    return-object v0
.end method

.method public getAdCacheControlValue()I
    .registers 2

    .line 2246
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    return v0
.end method

.method public getAdCacheMaxAge()I
    .registers 2

    .line 2301
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheMaxAge_:I

    return v0
.end method

.method public getAdCachePlacementControl()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2402
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getAdCachePlacementControlMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAdCachePlacementControlCount()I
    .registers 2

    .line 2380
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getAdCachePlacementControlMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation

    .line 2414
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAdCachePlacementControlOrDefault(Ljava/lang/String;Lio/bidmachine/protobuf/AdCachePlacementControl;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .registers 5

    .line 2428
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2430
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 2431
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p1

    :cond_18
    return-object p2
.end method

.method public getAdCachePlacementControlOrThrow(Ljava/lang/String;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .registers 4

    .line 2444
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2446
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 2447
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2450
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p1

    .line 2448
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getAdNetworks(I)Lio/bidmachine/protobuf/AdNetwork;
    .registers 3

    .line 2036
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2037
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork;

    return-object p1

    .line 2039
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork;

    return-object p1
.end method

.method public getAdNetworksBuilder(I)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .registers 3

    .line 2180
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getAdNetworksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method

.method public getAdNetworksBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork$Builder;",
            ">;"
        }
    .end annotation

    .line 2223
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getAdNetworksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdNetworksCount()I
    .registers 2

    .line 2026
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 2027
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 2029
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getAdNetworksList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork;",
            ">;"
        }
    .end annotation

    .line 2016
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 2017
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2019
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdNetworksLoadingTimeout()I
    .registers 2

    .line 2523
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksLoadingTimeout_:I

    return v0
.end method

.method public getAdNetworksOrBuilder(I)Lio/bidmachine/protobuf/AdNetworkOrBuilder;
    .registers 3

    .line 2187
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2188
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetworkOrBuilder;

    return-object p1

    .line 2189
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetworkOrBuilder;

    return-object p1
.end method

.method public getAdNetworksOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/AdNetworkOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2197
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 2198
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2200
    :cond_9
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdRequestTmax()I
    .registers 2

    .line 2332
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adRequestTmax_:I

    return v0
.end method

.method public getAssetCacheConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
    .registers 2

    .line 3317
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3318
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object v0

    :cond_c
    return-object v0

    .line 3320
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    return-object v0
.end method

.method public getAssetCacheConfigurationBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;
    .registers 2

    .line 3390
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 3391
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getAssetCacheConfigurationFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    return-object v0
.end method

.method public getAssetCacheConfigurationOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$ConfigurationOrBuilder;
    .registers 2

    .line 3397
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 3398
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AssetCache$ConfigurationOrBuilder;

    return-object v0

    .line 3400
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    if-nez v0, :cond_13

    .line 3401
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getBmifvTtlSessions()I
    .registers 2

    .line 3506
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bmifvTtlSessions_:I

    return v0
.end method

.method public getCrashSignalConfig()Lio/bidmachine/protobuf/SdkCrashSignalConfig;
    .registers 2

    .line 3561
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3562
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfig_:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object v0

    :cond_c
    return-object v0

    .line 3564
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    return-object v0
.end method

.method public getCrashSignalConfigBuilder()Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;
    .registers 2

    .line 3654
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 3655
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getCrashSignalConfigFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    return-object v0
.end method

.method public getCrashSignalConfigOrBuilder()Lio/bidmachine/protobuf/SdkCrashSignalConfigOrBuilder;
    .registers 2

    .line 3665
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 3666
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/SdkCrashSignalConfigOrBuilder;

    return-object v0

    .line 3668
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfig_:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    if-nez v0, :cond_13

    .line 3669
    invoke-static {}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/InitResponse;
    .registers 2

    .line 1365
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->getDefaultInstance()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 1360
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitResponse_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getEndpoint()Ljava/lang/String;
    .registers 3

    .line 1659
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 1660
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1661
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1663
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1664
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    return-object v0

    .line 1667
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEndpointBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1676
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 1677
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1678
    check-cast v0, Ljava/lang/String;

    .line 1679
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1681
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    return-object v0

    .line 1684
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getEvent(I)Lcom/explorestack/protobuf/adcom/Ad$Event;
    .registers 3

    .line 1765
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1766
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p1

    .line 1768
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p1
.end method

.method public getEventBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .registers 3

    .line 1909
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object p1
.end method

.method public getEventBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;",
            ">;"
        }
    .end annotation

    .line 1952
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 2

    .line 2689
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2690
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    :cond_c
    return-object v0

    .line 2692
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    return-object v0
.end method

.method public getEventConfigurationBuilder()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 2

    .line 2762
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2763
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getEventConfigurationFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    return-object v0
.end method

.method public getEventConfigurationOrBuilder()Lio/bidmachine/protobuf/AdExtension$EventConfigurationOrBuilder;
    .registers 2

    .line 2769
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 2770
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$EventConfigurationOrBuilder;

    return-object v0

    .line 2772
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    if-nez v0, :cond_13

    .line 2773
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getEventCount()I
    .registers 2

    .line 1755
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 1756
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1758
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getEventList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;"
        }
    .end annotation

    .line 1745
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 1746
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1748
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEventOrBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;
    .registers 3

    .line 1916
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1917
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;

    return-object p1

    .line 1918
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;

    return-object p1
.end method

.method public getEventOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1926
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 1927
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1929
    :cond_9
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Lio/bidmachine/protobuf/Extras;
    .registers 2

    .line 3079
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3080
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/Extras;->getDefaultInstance()Lio/bidmachine/protobuf/Extras;

    move-result-object v0

    :cond_c
    return-object v0

    .line 3082
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/Extras;

    return-object v0
.end method

.method public getExtrasBuilder()Lio/bidmachine/protobuf/Extras$Builder;
    .registers 2

    .line 3152
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 3153
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getExtrasFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/Extras$Builder;

    return-object v0
.end method

.method public getExtrasOrBuilder()Lio/bidmachine/protobuf/ExtrasOrBuilder;
    .registers 2

    .line 3159
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 3160
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/ExtrasOrBuilder;

    return-object v0

    .line 3162
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    if-nez v0, :cond_13

    .line 3163
    invoke-static {}, Lio/bidmachine/protobuf/Extras;->getDefaultInstance()Lio/bidmachine/protobuf/Extras;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getMutableAdCachePlacementControl()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2479
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRestrictionMode()Lio/bidmachine/protobuf/sdk/RestrictionMode;
    .registers 2

    .line 3459
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->restrictionMode_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/RestrictionMode;->valueOf(I)Lio/bidmachine/protobuf/sdk/RestrictionMode;

    move-result-object v0

    if-nez v0, :cond_a

    .line 3460
    sget-object v0, Lio/bidmachine/protobuf/sdk/RestrictionMode;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/RestrictionMode;

    :cond_a
    return-object v0
.end method

.method public getRestrictionModeValue()I
    .registers 2

    .line 3431
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->restrictionMode_:I

    return v0
.end method

.method public getSdkAnalyticConfig()Lio/bidmachine/protobuf/SdkAnalyticConfig;
    .registers 2

    .line 2570
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2571
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    :cond_c
    return-object v0

    .line 2573
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/SdkAnalyticConfig;

    return-object v0
.end method

.method public getSdkAnalyticConfigBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;
    .registers 2

    .line 2643
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2644
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getSdkAnalyticConfigFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    return-object v0
.end method

.method public getSdkAnalyticConfigOrBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfigOrBuilder;
    .registers 2

    .line 2650
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 2651
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/SdkAnalyticConfigOrBuilder;

    return-object v0

    .line 2653
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    if-nez v0, :cond_13

    .line 2654
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getSdkAnalyticConfigV2()Lio/bidmachine/protobuf/sdk/Configuration;
    .registers 2

    .line 3198
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3199
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Configuration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Configuration;

    move-result-object v0

    :cond_c
    return-object v0

    .line 3201
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Configuration;

    return-object v0
.end method

.method public getSdkAnalyticConfigV2Builder()Lio/bidmachine/protobuf/sdk/Configuration$Builder;
    .registers 2

    .line 3271
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 3272
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getSdkAnalyticConfigV2FieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Configuration$Builder;

    return-object v0
.end method

.method public getSdkAnalyticConfigV2OrBuilder()Lio/bidmachine/protobuf/sdk/ConfigurationOrBuilder;
    .registers 2

    .line 3278
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 3279
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/ConfigurationOrBuilder;

    return-object v0

    .line 3281
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    if-nez v0, :cond_13

    .line 3282
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Configuration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Configuration;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getSessionResetAfter()I
    .registers 2

    .line 1976
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sessionResetAfter_:I

    return v0
.end method

.method public getShowWithoutInternet()Z
    .registers 2

    .line 3040
    iget-boolean v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->showWithoutInternet_:Z

    return v0
.end method

.method public getTokenConfigurations(I)Lio/bidmachine/protobuf/TokenConfiguration;
    .registers 3

    .line 2829
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2830
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/TokenConfiguration;

    return-object p1

    .line 2832
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/TokenConfiguration;

    return-object p1
.end method

.method public getTokenConfigurationsBuilder(I)Lio/bidmachine/protobuf/TokenConfiguration$Builder;
    .registers 3

    .line 2973
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getTokenConfigurationsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    return-object p1
.end method

.method public getTokenConfigurationsBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/TokenConfiguration$Builder;",
            ">;"
        }
    .end annotation

    .line 3016
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getTokenConfigurationsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTokenConfigurationsCount()I
    .registers 2

    .line 2819
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 2820
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 2822
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getTokenConfigurationsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/TokenConfiguration;",
            ">;"
        }
    .end annotation

    .line 2809
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 2810
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2812
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTokenConfigurationsOrBuilder(I)Lio/bidmachine/protobuf/TokenConfigurationOrBuilder;
    .registers 3

    .line 2980
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2981
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/TokenConfigurationOrBuilder;

    return-object p1

    .line 2982
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/TokenConfigurationOrBuilder;

    return-object p1
.end method

.method public getTokenConfigurationsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/TokenConfigurationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2990
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 2991
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2993
    :cond_9
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasAssetCacheConfiguration()Z
    .registers 2

    .line 3310
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public hasCrashSignalConfig()Z
    .registers 2

    .line 3550
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfig_:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public hasEventConfiguration()Z
    .registers 2

    .line 2682
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public hasExtras()Z
    .registers 2

    .line 3072
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public hasSdkAnalyticConfig()Z
    .registers 2

    .line 2563
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public hasSdkAnalyticConfigV2()Z
    .registers 2

    .line 3191
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 1255
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitResponse_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/InitResponse;

    const-class v2, Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 1256
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .registers 5

    const/16 v0, 0x8

    if-ne p1, v0, :cond_9

    .line 1235
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 1237
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public internalGetMutableMapField(I)Lcom/explorestack/protobuf/MapField;
    .registers 5

    const/16 v0, 0x8

    if-ne p1, v0, :cond_9

    .line 1246
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 1248
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isInitialized()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public mergeAssetCacheConfiguration(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 3357
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 3358
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    if-eqz v0, :cond_17

    .line 3360
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;->newBuilder(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;)Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    goto :goto_19

    .line 3362
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    .line 3364
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3366
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeCrashSignalConfig(Lio/bidmachine/protobuf/SdkCrashSignalConfig;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 3613
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 3614
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfig_:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    if-eqz v0, :cond_17

    .line 3616
    invoke-static {v0}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->newBuilder(Lio/bidmachine/protobuf/SdkCrashSignalConfig;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkCrashSignalConfig;)Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfig_:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    goto :goto_19

    .line 3618
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfig_:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    .line 3620
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3622
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeEventConfiguration(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 2729
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 2730
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    if-eqz v0, :cond_17

    .line 2732
    invoke-static {v0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->newBuilder(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    goto :goto_19

    .line 2734
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 2736
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2738
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeExtras(Lio/bidmachine/protobuf/Extras;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 3119
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 3120
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    if-eqz v0, :cond_17

    .line 3122
    invoke-static {v0}, Lio/bidmachine/protobuf/Extras;->newBuilder(Lio/bidmachine/protobuf/Extras;)Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/Extras$Builder;->mergeFrom(Lio/bidmachine/protobuf/Extras;)Lio/bidmachine/protobuf/Extras$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/Extras$Builder;->buildPartial()Lio/bidmachine/protobuf/Extras;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    goto :goto_19

    .line 3124
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    .line 3126
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3128
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1221
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1221
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1221
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1221
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1221
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1221
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1640
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->access$2800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitResponse;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 1646
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitResponse;)Lio/bidmachine/protobuf/InitResponse$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 1642
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/InitResponse;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 1643
    :try_start_1a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p1

    move-object v0, p2

    :goto_21
    if-eqz v0, :cond_26

    .line 1646
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitResponse;)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 1648
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 1487
    instance-of v0, p1, Lio/bidmachine/protobuf/InitResponse;

    if-eqz v0, :cond_b

    .line 1488
    check-cast p1, Lio/bidmachine/protobuf/InitResponse;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitResponse;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1

    .line 1490
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/InitResponse;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 5

    .line 1496
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->getDefaultInstance()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 1497
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1498
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$400(Lio/bidmachine/protobuf/InitResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 1499
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1501
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_4e

    .line 1502
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 1503
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1504
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 1505
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    goto :goto_4a

    .line 1507
    :cond_3e
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 1508
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1510
    :goto_4a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_8b

    .line 1513
    :cond_4e
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 1514
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 1515
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 1516
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1517
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    .line 1518
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 1520
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->access$2300()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1521
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_7f

    :cond_7e
    move-object v0, v1

    :goto_7f
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_8b

    .line 1523
    :cond_82
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1527
    :cond_8b
    :goto_8b
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getSessionResetAfter()I

    move-result v0

    if-eqz v0, :cond_98

    .line 1528
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getSessionResetAfter()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->setSessionResetAfter(I)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 1530
    :cond_98
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_cb

    .line 1531
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$700(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_108

    .line 1532
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 1533
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$700(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 1534
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    goto :goto_c7

    .line 1536
    :cond_bb
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 1537
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$700(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1539
    :goto_c7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_108

    .line 1542
    :cond_cb
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$700(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_108

    .line 1543
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 1544
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 1545
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1546
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$700(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    .line 1547
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 1549
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->access$2400()Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 1550
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getAdNetworksFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_fc

    :cond_fb
    move-object v0, v1

    :goto_fc
    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_108

    .line 1552
    :cond_ff
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$700(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1556
    :cond_108
    :goto_108
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$800(Lio/bidmachine/protobuf/InitResponse;)I

    move-result v0

    if-eqz v0, :cond_115

    .line 1557
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdCacheControlValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->setAdCacheControlValue(I)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 1559
    :cond_115
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdCacheMaxAge()I

    move-result v0

    if-eqz v0, :cond_122

    .line 1560
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdCacheMaxAge()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->setAdCacheMaxAge(I)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 1562
    :cond_122
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdRequestTmax()I

    move-result v0

    if-eqz v0, :cond_12f

    .line 1563
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdRequestTmax()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->setAdRequestTmax(I)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 1565
    :cond_12f
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    .line 1566
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$2500(Lio/bidmachine/protobuf/InitResponse;)Lcom/explorestack/protobuf/MapField;

    move-result-object v2

    .line 1565
    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/MapField;->mergeFrom(Lcom/explorestack/protobuf/MapField;)V

    .line 1567
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdNetworksLoadingTimeout()I

    move-result v0

    if-eqz v0, :cond_147

    .line 1568
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdNetworksLoadingTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->setAdNetworksLoadingTimeout(I)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 1570
    :cond_147
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->hasSdkAnalyticConfig()Z

    move-result v0

    if-eqz v0, :cond_154

    .line 1571
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getSdkAnalyticConfig()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeSdkAnalyticConfig(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 1573
    :cond_154
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->hasEventConfiguration()Z

    move-result v0

    if-eqz v0, :cond_161

    .line 1574
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeEventConfiguration(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 1576
    :cond_161
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_194

    .line 1577
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$1500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1cf

    .line 1578
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_184

    .line 1579
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$1500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 1580
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    goto :goto_190

    .line 1582
    :cond_184
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureTokenConfigurationsIsMutable()V

    .line 1583
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$1500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1585
    :goto_190
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1cf

    .line 1588
    :cond_194
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$1500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1cf

    .line 1589
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c6

    .line 1590
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 1591
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1592
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$1500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    .line 1593
    iget v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bitField0_:I

    .line 1595
    invoke-static {}, Lio/bidmachine/protobuf/InitResponse;->access$2600()Z

    move-result v0

    if-eqz v0, :cond_1c3

    .line 1596
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->getTokenConfigurationsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_1c3
    iput-object v1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1cf

    .line 1598
    :cond_1c6
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$1500(Lio/bidmachine/protobuf/InitResponse;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1602
    :cond_1cf
    :goto_1cf
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getShowWithoutInternet()Z

    move-result v0

    if-eqz v0, :cond_1dc

    .line 1603
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getShowWithoutInternet()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->setShowWithoutInternet(Z)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 1605
    :cond_1dc
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->hasExtras()Z

    move-result v0

    if-eqz v0, :cond_1e9

    .line 1606
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getExtras()Lio/bidmachine/protobuf/Extras;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeExtras(Lio/bidmachine/protobuf/Extras;)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 1608
    :cond_1e9
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->hasSdkAnalyticConfigV2()Z

    move-result v0

    if-eqz v0, :cond_1f6

    .line 1609
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getSdkAnalyticConfigV2()Lio/bidmachine/protobuf/sdk/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeSdkAnalyticConfigV2(Lio/bidmachine/protobuf/sdk/Configuration;)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 1611
    :cond_1f6
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->hasAssetCacheConfiguration()Z

    move-result v0

    if-eqz v0, :cond_203

    .line 1612
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAssetCacheConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeAssetCacheConfiguration(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 1614
    :cond_203
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$2000(Lio/bidmachine/protobuf/InitResponse;)I

    move-result v0

    if-eqz v0, :cond_210

    .line 1615
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getRestrictionModeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->setRestrictionModeValue(I)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 1617
    :cond_210
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getBmifvTtlSessions()I

    move-result v0

    if-eqz v0, :cond_21d

    .line 1618
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getBmifvTtlSessions()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->setBmifvTtlSessions(I)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 1620
    :cond_21d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->hasCrashSignalConfig()Z

    move-result v0

    if-eqz v0, :cond_22a

    .line 1621
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getCrashSignalConfig()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeCrashSignalConfig(Lio/bidmachine/protobuf/SdkCrashSignalConfig;)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 1623
    :cond_22a
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$2700(Lio/bidmachine/protobuf/InitResponse;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitResponse$Builder;

    .line 1624
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeSdkAnalyticConfig(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 2610
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 2611
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    if-eqz v0, :cond_17

    .line 2613
    invoke-static {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig;->newBuilder(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    goto :goto_19

    .line 2615
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 2617
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2619
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeSdkAnalyticConfigV2(Lio/bidmachine/protobuf/sdk/Configuration;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 3238
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 3239
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    if-eqz v0, :cond_17

    .line 3241
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Configuration;->newBuilder(Lio/bidmachine/protobuf/sdk/Configuration;)Lio/bidmachine/protobuf/sdk/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Configuration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Configuration;)Lio/bidmachine/protobuf/sdk/Configuration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Configuration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Configuration;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    goto :goto_19

    .line 3243
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    .line 3245
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3247
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1221
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1221
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1221
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    .line 3701
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitResponse$Builder;

    return-object p1
.end method

.method public putAdCachePlacementControl(Ljava/lang/String;Lio/bidmachine/protobuf/AdCachePlacementControl;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 4

    .line 2491
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2492
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2493
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 2494
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putAllAdCachePlacementControl(Ljava/util/Map;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;)",
            "Lio/bidmachine/protobuf/InitResponse$Builder;"
        }
    .end annotation

    .line 2507
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 2508
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public removeAdCachePlacementControl(Ljava/lang/String;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 2468
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2469
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->internalGetMutableAdCachePlacementControl()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 2470
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeAdNetworks(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 2166
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 2167
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 2168
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2169
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2171
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public removeEvent(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 1895
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 1896
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 1897
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1898
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1900
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public removeTokenConfigurations(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 2959
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 2960
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureTokenConfigurationsIsMutable()V

    .line 2961
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2962
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2964
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public setAdCacheControl(Lio/bidmachine/protobuf/AdCacheControl;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    .line 2276
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2279
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCacheControl;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    .line 2280
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAdCacheControlValue(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    .line 2255
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheControl_:I

    .line 2256
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAdCacheMaxAge(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    .line 2310
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adCacheMaxAge_:I

    .line 2311
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAdNetworks(ILio/bidmachine/protobuf/AdNetwork$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 4

    .line 2064
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 2065
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 2066
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->build()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2067
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2069
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->build()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setAdNetworks(ILio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 4

    .line 2047
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 2049
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2051
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureAdNetworksIsMutable()V

    .line 2052
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworks_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2053
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2055
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setAdNetworksLoadingTimeout(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    .line 2536
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adNetworksLoadingTimeout_:I

    .line 2537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAdRequestTmax(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    .line 2341
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->adRequestTmax_:I

    .line 2342
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAssetCacheConfiguration(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 3344
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 3345
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    .line 3346
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3348
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/AssetCache$Configuration$Builder;->build()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setAssetCacheConfiguration(Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 3327
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3329
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3331
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->assetCacheConfiguration_:Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;

    .line 3332
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3334
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setBmifvTtlSessions(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    .line 3519
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->bmifvTtlSessions_:I

    .line 3520
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCrashSignalConfig(Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 3596
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 3597
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->build()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfig_:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    .line 3598
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3600
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig$Builder;->build()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCrashSignalConfig(Lio/bidmachine/protobuf/SdkCrashSignalConfig;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 3575
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3577
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3579
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->crashSignalConfig_:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    .line 3580
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3582
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setEndpoint(Ljava/lang/String;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    .line 1695
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1698
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 1699
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setEndpointBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    .line 1720
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1722
    invoke-static {p1}, Lio/bidmachine/protobuf/InitResponse;->access$2900(Lcom/explorestack/protobuf/ByteString;)V

    .line 1724
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->endpoint_:Ljava/lang/Object;

    .line 1725
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setEvent(ILcom/explorestack/protobuf/adcom/Ad$Event$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 4

    .line 1793
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 1794
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 1795
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1796
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1798
    :cond_14
    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setEvent(ILcom/explorestack/protobuf/adcom/Ad$Event;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 4

    .line 1776
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 1778
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1780
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureEventIsMutable()V

    .line 1781
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1782
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1784
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setEventConfiguration(Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 2716
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 2717
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->build()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 2718
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2720
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->build()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setEventConfiguration(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 2699
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2701
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2703
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 2704
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2706
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setExtras(Lio/bidmachine/protobuf/Extras$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 3106
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 3107
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Extras$Builder;->build()Lio/bidmachine/protobuf/Extras;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    .line 3108
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3110
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Extras$Builder;->build()Lio/bidmachine/protobuf/Extras;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setExtras(Lio/bidmachine/protobuf/Extras;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 3089
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extrasBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3091
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3093
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->extras_:Lio/bidmachine/protobuf/Extras;

    .line 3094
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3096
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1221
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1221
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitResponse$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 1461
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 1221
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/InitResponse$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 1221
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/InitResponse$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 4

    .line 1477
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitResponse$Builder;

    return-object p1
.end method

.method public setRestrictionMode(Lio/bidmachine/protobuf/sdk/RestrictionMode;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    .line 3473
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3476
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/RestrictionMode;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->restrictionMode_:I

    .line 3477
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setRestrictionModeValue(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    .line 3444
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->restrictionMode_:I

    .line 3445
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSdkAnalyticConfig(Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 2597
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 2598
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 2599
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2601
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setSdkAnalyticConfig(Lio/bidmachine/protobuf/SdkAnalyticConfig;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 2580
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2582
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2584
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfig_:Lio/bidmachine/protobuf/SdkAnalyticConfig;

    .line 2585
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2587
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setSdkAnalyticConfigV2(Lio/bidmachine/protobuf/sdk/Configuration$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 3225
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 3226
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Configuration$Builder;->build()Lio/bidmachine/protobuf/sdk/Configuration;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    .line 3227
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3229
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Configuration$Builder;->build()Lio/bidmachine/protobuf/sdk/Configuration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setSdkAnalyticConfigV2(Lio/bidmachine/protobuf/sdk/Configuration;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 3

    .line 3208
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3210
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3212
    iput-object p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sdkAnalyticConfigV2_:Lio/bidmachine/protobuf/sdk/Configuration;

    .line 3213
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3215
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setSessionResetAfter(I)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    .line 1985
    iput p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->sessionResetAfter_:I

    .line 1986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setShowWithoutInternet(Z)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    .line 3049
    iput-boolean p1, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->showWithoutInternet_:Z

    .line 3050
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTokenConfigurations(ILio/bidmachine/protobuf/TokenConfiguration$Builder;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 4

    .line 2857
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 2858
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureTokenConfigurationsIsMutable()V

    .line 2859
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->build()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2860
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2862
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->build()Lio/bidmachine/protobuf/TokenConfiguration;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setTokenConfigurations(ILio/bidmachine/protobuf/TokenConfiguration;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 4

    .line 2840
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurationsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 2842
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2844
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitResponse$Builder;->ensureTokenConfigurationsIsMutable()V

    .line 2845
    iget-object v0, p0, Lio/bidmachine/protobuf/InitResponse$Builder;->tokenConfigurations_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2846
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2848
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1221
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1221
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitResponse$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitResponse$Builder;
    .registers 2

    .line 3695
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitResponse$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.AdExtension (io.bidmachine.protobuf.AdExtension)
.class public final Lio/bidmachine/protobuf/AdExtension;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "AdExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/AdExtensionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/AdExtension$Builder;,
        Lio/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder;,
        Lio/bidmachine/protobuf/AdExtension$EventConfiguration;,
        Lio/bidmachine/protobuf/AdExtension$EventConfigurationOrBuilder;,
        Lio/bidmachine/protobuf/AdExtension$ControlAsset;,
        Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
    }
.end annotation


# static fields
.field public static final AD_CACHE_CONTROL_FIELD_NUMBER:I = 0x15

.field public static final AD_CACHE_MAX_AGE_FIELD_NUMBER:I = 0x16

.field public static final AD_FLEXIBLE_SIZE_FIELD_NUMBER:I = 0x20

.field public static final AD_MARKUP_LOADING_TIMEOUT_FIELD_NUMBER:I = 0x18

.field public static final CLOSE_BUTTON_FIELD_NUMBER:I = 0xf

.field public static final COMPANION_SKIPOFFSET_FIELD_NUMBER:I = 0xa

.field public static final COUNTDOWN_FIELD_NUMBER:I = 0xe

.field public static final CREATIVE_EXTENSION_FIELD_NUMBER:I = 0x1f

.field public static final CREATIVE_LOADING_METHOD_FIELD_NUMBER:I = 0x1b

.field public static final CREATIVE_LOADING_TIMEOUT_FIELD_NUMBER:I = 0x23

.field public static final CRID_MONITORING_ENABLED_FIELD_NUMBER:I = 0x24

.field public static final CUSTOM_PARAMS_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension;

.field public static final EVENT_CONFIGURATION_FIELD_NUMBER:I = 0x1d

.field public static final EVENT_FIELD_NUMBER:I = 0x7

.field public static final IGNORES_SAFE_AREA_LAYOUT_GUIDE_FIELD_NUMBER:I = 0x10

.field public static final LOAD_SKIPOFFSET_FIELD_NUMBER:I = 0x3

.field public static final MRAID_CREATIVE_VALIDATION_REQUIRED_FIELD_NUMBER:I = 0x22

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdExtension;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLACEHOLDER_TIMEOUT_FIELD_NUMBER:I = 0x1c

.field public static final PRELOAD_AD_FIELD_NUMBER:I = 0x1a

.field public static final PRELOAD_FIELD_NUMBER:I = 0x2

.field public static final PROGRESS_DURATION_FIELD_NUMBER:I = 0x13

.field public static final PROGRESS_FIELD_NUMBER:I = 0x12

.field public static final R1_DELAY_FIELD_NUMBER:I = 0x17

.field public static final R1_FIELD_NUMBER:I = 0xc

.field public static final R2_FIELD_NUMBER:I = 0xd

.field public static final RENDERING_CONFIGURATION_FIELD_NUMBER:I = 0x21

.field public static final SKIPOFFSET_FIELD_NUMBER:I = 0x9

.field public static final STORE_URL_FIELD_NUMBER:I = 0x11

.field public static final USE_EMBEDDED_BROWSER_FIELD_NUMBER:I = 0x19

.field public static final USE_NATIVE_CLOSE_FIELD_NUMBER:I = 0xb

.field public static final VIEWABILITY_CONFIGURATION_FIELD_NUMBER:I = 0x25

.field public static final VIEWABILITY_DURATION_THRESHOLD_FIELD_NUMBER:I = 0x6

.field public static final VIEWABILITY_IGNORE_OVERLAP_FIELD_NUMBER:I = 0x1e

.field public static final VIEWABILITY_IGNORE_WINDOW_FOCUS_FIELD_NUMBER:I = 0x14

.field public static final VIEWABILITY_PIXEL_THRESHOLD_FIELD_NUMBER:I = 0x5

.field public static final VIEWABILITY_TIME_THRESHOLD_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private adCacheControl_:I

.field private adCacheMaxAge_:I

.field private adFlexibleSize_:Z

.field private adMarkupLoadingTimeout_:I

.field private bitField0_:I

.field private closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

.field private companionSkipoffset_:I

.field private countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

.field private creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

.field private creativeLoadingMethod_:I

.field private creativeLoadingTimeout_:I

.field private cridMonitoringEnabled_:Z

.field private customParams_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

.field private ignoresSafeAreaLayoutGuide_:Z

.field private loadSkipoffset_:I

.field private memoizedIsInitialized:B

.field private mraidCreativeValidationRequired_:Z

.field private placeholderTimeout_:F

.field private preloadAd_:Z

.field private preload_:Z

.field private progressDuration_:I

.field private progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

.field private r1Delay_:I

.field private r1_:Z

.field private r2_:Z

.field private renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

.field private skipoffset_:I

.field private volatile storeUrl_:Ljava/lang/Object;

.field private useEmbeddedBrowser_:Z

.field private useNativeClose_:Z

.field private viewabilityConfiguration_:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

.field private viewabilityDurationThreshold_:F

.field private viewabilityIgnoreOverlap_:Z

.field private viewabilityIgnoreWindowFocus_:Z

.field private viewabilityPixelThreshold_:F

.field private viewabilityTimeThreshold_:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9041
    new-instance v0, Lio/bidmachine/protobuf/AdExtension;

    invoke-direct {v0}, Lio/bidmachine/protobuf/AdExtension;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/AdExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension;

    .line 9049
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/AdExtension$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 5099
    iput-byte v0, p0, Lio/bidmachine/protobuf/AdExtension;->memoizedIsInitialized:B

    .line 19
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    .line 22
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;-><init>()V

    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    const/4 v3, 0x1

    if-nez v1, :cond_257

    .line 51
    :try_start_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_26e

    .line 308
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_c

    :sswitch_1d
    move v1, v3

    goto :goto_c

    :catchall_1f
    move-exception p1

    goto/16 :goto_241

    :catch_22
    move-exception p1

    goto/16 :goto_232

    :catch_25
    move-exception p1

    goto/16 :goto_23c

    .line 296
    :sswitch_28
    iget v4, p0, Lio/bidmachine/protobuf/AdExtension;->bitField0_:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_33

    .line 297
    iget-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityConfiguration_:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    invoke-virtual {v4}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->toBuilder()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object v5

    .line 299
    :cond_33
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityConfiguration_:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    if-eqz v5, :cond_4a

    .line 301
    invoke-virtual {v5, v4}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    .line 302
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityConfiguration_:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    .line 304
    :cond_4a
    iget v4, p0, Lio/bidmachine/protobuf/AdExtension;->bitField0_:I

    or-int/2addr v4, v3

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->bitField0_:I

    goto :goto_c

    .line 291
    :sswitch_50
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->cridMonitoringEnabled_:Z

    goto :goto_c

    .line 286
    :sswitch_57
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingTimeout_:I

    goto :goto_c

    .line 281
    :sswitch_5e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->mraidCreativeValidationRequired_:Z

    goto :goto_c

    .line 268
    :sswitch_65
    iget-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    if-eqz v4, :cond_6d

    .line 269
    invoke-virtual {v4}, Lio/bidmachine/protobuf/rendering/Rendering;->toBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Builder;

    move-result-object v5

    .line 271
    :cond_6d
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/rendering/Rendering;

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    if-eqz v5, :cond_c

    .line 273
    invoke-virtual {v5, v4}, Lio/bidmachine/protobuf/rendering/Rendering$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/Rendering;)Lio/bidmachine/protobuf/rendering/Rendering$Builder;

    .line 274
    invoke-virtual {v5}, Lio/bidmachine/protobuf/rendering/Rendering$Builder;->buildPartial()Lio/bidmachine/protobuf/rendering/Rendering;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    goto :goto_c

    .line 263
    :sswitch_85
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->adFlexibleSize_:Z

    goto :goto_c

    .line 250
    :sswitch_8c
    iget-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    if-eqz v4, :cond_94

    .line 251
    invoke-virtual {v4}, Lio/bidmachine/protobuf/CreativeExtension;->toBuilder()Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object v5

    .line 253
    :cond_94
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/CreativeExtension;

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    if-eqz v5, :cond_c

    .line 255
    invoke-virtual {v5, v4}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    .line 256
    invoke-virtual {v5}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    goto/16 :goto_c

    .line 245
    :sswitch_ad
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreOverlap_:Z

    goto/16 :goto_c

    .line 232
    :sswitch_b5
    iget-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    if-eqz v4, :cond_bd

    .line 233
    invoke-virtual {v4}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->toBuilder()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object v5

    .line 235
    :cond_bd
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    if-eqz v5, :cond_c

    .line 237
    invoke-virtual {v5, v4}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    .line 238
    invoke-virtual {v5}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    goto/16 :goto_c

    .line 227
    :sswitch_d6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->placeholderTimeout_:F

    goto/16 :goto_c

    .line 220
    :sswitch_de
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 222
    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    goto/16 :goto_c

    .line 216
    :sswitch_e6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->preloadAd_:Z

    goto/16 :goto_c

    .line 211
    :sswitch_ee
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->useEmbeddedBrowser_:Z

    goto/16 :goto_c

    .line 206
    :sswitch_f6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->adMarkupLoadingTimeout_:I

    goto/16 :goto_c

    .line 201
    :sswitch_fe
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->r1Delay_:I

    goto/16 :goto_c

    .line 196
    :sswitch_106
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheMaxAge_:I

    goto/16 :goto_c

    .line 189
    :sswitch_10e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 191
    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    goto/16 :goto_c

    .line 185
    :sswitch_116
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreWindowFocus_:Z

    goto/16 :goto_c

    .line 180
    :sswitch_11e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->progressDuration_:I

    goto/16 :goto_c

    .line 167
    :sswitch_126
    iget-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v4, :cond_12e

    .line 168
    invoke-virtual {v4}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->toBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v5

    .line 170
    :cond_12e
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v5, :cond_c

    .line 172
    invoke-virtual {v5, v4}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 173
    invoke-virtual {v5}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto/16 :goto_c

    .line 160
    :sswitch_147
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 162
    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    goto/16 :goto_c

    .line 156
    :sswitch_14f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->ignoresSafeAreaLayoutGuide_:Z

    goto/16 :goto_c

    .line 143
    :sswitch_157
    iget-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v4, :cond_15f

    .line 144
    invoke-virtual {v4}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->toBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v5

    .line 146
    :cond_15f
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v5, :cond_c

    .line 148
    invoke-virtual {v5, v4}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 149
    invoke-virtual {v5}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto/16 :goto_c

    .line 130
    :sswitch_178
    iget-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v4, :cond_180

    .line 131
    invoke-virtual {v4}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->toBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v5

    .line 133
    :cond_180
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v5, :cond_c

    .line 135
    invoke-virtual {v5, v4}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 136
    invoke-virtual {v5}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto/16 :goto_c

    .line 125
    :sswitch_199
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->r2_:Z

    goto/16 :goto_c

    .line 120
    :sswitch_1a1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->r1_:Z

    goto/16 :goto_c

    .line 115
    :sswitch_1a9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->useNativeClose_:Z

    goto/16 :goto_c

    .line 110
    :sswitch_1b1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->companionSkipoffset_:I

    goto/16 :goto_c

    .line 105
    :sswitch_1b9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->skipoffset_:I

    goto/16 :goto_c

    :sswitch_1c1
    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_1cf

    .line 92
    sget-object v4, Lio/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v4}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->customParams_:Lcom/explorestack/protobuf/MapField;

    or-int/lit8 v2, v2, 0x2

    .line 97
    :cond_1cf
    sget-object v4, Lio/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    .line 98
    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapEntry;->getParserForType()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    .line 97
    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MapEntry;

    .line 99
    iget-object v5, p0, Lio/bidmachine/protobuf/AdExtension;->customParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v5}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v5

    .line 100
    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 99
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :sswitch_1ee
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_1fb

    .line 83
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 86
    :cond_1fb
    iget-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    .line 87
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 86
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 78
    :sswitch_20a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityDurationThreshold_:F

    goto/16 :goto_c

    .line 73
    :sswitch_212
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityPixelThreshold_:F

    goto/16 :goto_c

    .line 68
    :sswitch_21a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityTimeThreshold_:I

    goto/16 :goto_c

    .line 63
    :sswitch_222
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->loadSkipoffset_:I

    goto/16 :goto_c

    .line 58
    :sswitch_22a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->preload_:Z
    :try_end_230
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_230} :catch_25
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_230} :catch_22
    .catchall {:try_start_f .. :try_end_230} :catchall_1f

    goto/16 :goto_c

    .line 319
    :goto_232
    :try_start_232
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 320
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 317
    :goto_23c
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_241
    .catchall {:try_start_232 .. :try_end_241} :catchall_1f

    :goto_241
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_24d

    .line 323
    iget-object p2, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    .line 325
    :cond_24d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 326
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 327
    throw p1

    :cond_257
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_263

    .line 323
    iget-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    .line 325
    :cond_263
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 326
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_26e
    .sparse-switch
        0x0 -> :sswitch_1d
        0x10 -> :sswitch_22a
        0x18 -> :sswitch_222
        0x20 -> :sswitch_21a
        0x2d -> :sswitch_212
        0x35 -> :sswitch_20a
        0x3a -> :sswitch_1ee
        0x42 -> :sswitch_1c1
        0x48 -> :sswitch_1b9
        0x50 -> :sswitch_1b1
        0x58 -> :sswitch_1a9
        0x60 -> :sswitch_1a1
        0x68 -> :sswitch_199
        0x72 -> :sswitch_178
        0x7a -> :sswitch_157
        0x80 -> :sswitch_14f
        0x8a -> :sswitch_147
        0x92 -> :sswitch_126
        0x98 -> :sswitch_11e
        0xa0 -> :sswitch_116
        0xa8 -> :sswitch_10e
        0xb0 -> :sswitch_106
        0xb8 -> :sswitch_fe
        0xc0 -> :sswitch_f6
        0xc8 -> :sswitch_ee
        0xd0 -> :sswitch_e6
        0xd8 -> :sswitch_de
        0xe5 -> :sswitch_d6
        0xea -> :sswitch_b5
        0xf0 -> :sswitch_ad
        0xfa -> :sswitch_8c
        0x100 -> :sswitch_85
        0x10a -> :sswitch_65
        0x110 -> :sswitch_5e
        0x118 -> :sswitch_57
        0x120 -> :sswitch_50
        0x12a -> :sswitch_28
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/AdExtension$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 5099
    iput-byte p1, p0, Lio/bidmachine/protobuf/AdExtension;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AdExtension$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdExtension;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$5100()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$5302(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->preload_:Z

    return p1
.end method

.method public static synthetic access$5402(Lio/bidmachine/protobuf/AdExtension;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->loadSkipoffset_:I

    return p1
.end method

.method public static synthetic access$5502(Lio/bidmachine/protobuf/AdExtension;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityTimeThreshold_:I

    return p1
.end method

.method public static synthetic access$5602(Lio/bidmachine/protobuf/AdExtension;F)F
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityPixelThreshold_:F

    return p1
.end method

.method public static synthetic access$5702(Lio/bidmachine/protobuf/AdExtension;F)F
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityDurationThreshold_:F

    return p1
.end method

.method public static synthetic access$5800(Lio/bidmachine/protobuf/AdExtension;)Ljava/util/List;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$5802(Lio/bidmachine/protobuf/AdExtension;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$5900(Lio/bidmachine/protobuf/AdExtension;)Lcom/explorestack/protobuf/MapField;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension;->customParams_:Lcom/explorestack/protobuf/MapField;

    return-object p0
.end method

.method public static synthetic access$5902(Lio/bidmachine/protobuf/AdExtension;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->customParams_:Lcom/explorestack/protobuf/MapField;

    return-object p1
.end method

.method public static synthetic access$6002(Lio/bidmachine/protobuf/AdExtension;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->skipoffset_:I

    return p1
.end method

.method public static synthetic access$6102(Lio/bidmachine/protobuf/AdExtension;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->companionSkipoffset_:I

    return p1
.end method

.method public static synthetic access$6202(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->useNativeClose_:Z

    return p1
.end method

.method public static synthetic access$6302(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->r1_:Z

    return p1
.end method

.method public static synthetic access$6402(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->r2_:Z

    return p1
.end method

.method public static synthetic access$6502(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p1
.end method

.method public static synthetic access$6602(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p1
.end method

.method public static synthetic access$6702(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->ignoresSafeAreaLayoutGuide_:Z

    return p1
.end method

.method public static synthetic access$6800(Lio/bidmachine/protobuf/AdExtension;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$6802(Lio/bidmachine/protobuf/AdExtension;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$6902(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p1
.end method

.method public static synthetic access$7002(Lio/bidmachine/protobuf/AdExtension;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->progressDuration_:I

    return p1
.end method

.method public static synthetic access$7102(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreWindowFocus_:Z

    return p1
.end method

.method public static synthetic access$7200(Lio/bidmachine/protobuf/AdExtension;)I
    .registers 1

    .line 9
    iget p0, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    return p0
.end method

.method public static synthetic access$7202(Lio/bidmachine/protobuf/AdExtension;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    return p1
.end method

.method public static synthetic access$7302(Lio/bidmachine/protobuf/AdExtension;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheMaxAge_:I

    return p1
.end method

.method public static synthetic access$7402(Lio/bidmachine/protobuf/AdExtension;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->r1Delay_:I

    return p1
.end method

.method public static synthetic access$7502(Lio/bidmachine/protobuf/AdExtension;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->adMarkupLoadingTimeout_:I

    return p1
.end method

.method public static synthetic access$7602(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->useEmbeddedBrowser_:Z

    return p1
.end method

.method public static synthetic access$7702(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->preloadAd_:Z

    return p1
.end method

.method public static synthetic access$7800(Lio/bidmachine/protobuf/AdExtension;)I
    .registers 1

    .line 9
    iget p0, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    return p0
.end method

.method public static synthetic access$7802(Lio/bidmachine/protobuf/AdExtension;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    return p1
.end method

.method public static synthetic access$7902(Lio/bidmachine/protobuf/AdExtension;F)F
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->placeholderTimeout_:F

    return p1
.end method

.method public static synthetic access$8002(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    return-object p1
.end method

.method public static synthetic access$8102(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreOverlap_:Z

    return p1
.end method

.method public static synthetic access$8202(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/CreativeExtension;)Lio/bidmachine/protobuf/CreativeExtension;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    return-object p1
.end method

.method public static synthetic access$8302(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->adFlexibleSize_:Z

    return p1
.end method

.method public static synthetic access$8402(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/rendering/Rendering;)Lio/bidmachine/protobuf/rendering/Rendering;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    return-object p1
.end method

.method public static synthetic access$8502(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->mraidCreativeValidationRequired_:Z

    return p1
.end method

.method public static synthetic access$8602(Lio/bidmachine/protobuf/AdExtension;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingTimeout_:I

    return p1
.end method

.method public static synthetic access$8702(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->cridMonitoringEnabled_:Z

    return p1
.end method

.method public static synthetic access$8802(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityConfiguration_:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    return-object p1
.end method

.method public static synthetic access$8902(Lio/bidmachine/protobuf/AdExtension;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->bitField0_:I

    return p1
.end method

.method public static synthetic access$9000()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$9100(Lio/bidmachine/protobuf/AdExtension;)Lcom/explorestack/protobuf/MapField;
    .registers 1

    .line 9
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$9200(Lio/bidmachine/protobuf/AdExtension;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$9300()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$9400(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static getDefaultInstance()Lio/bidmachine/protobuf/AdExtension;
    .registers 1

    .line 9045
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 331
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private internalGetCustomParams()Lcom/explorestack/protobuf/MapField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4365
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->customParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_a

    .line 4366
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 1

    .line 5685
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension;->toBuilder()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 5688
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension;->toBuilder()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5658
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5659
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5665
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5666
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5626
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5632
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/AdExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5671
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5672
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5678
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5679
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5646
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5647
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5653
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5654
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/AdExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5615
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5621
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/AdExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5636
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5642
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdExtension;",
            ">;"
        }
    .end annotation

    .line 9060
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public containsCustomParams(Ljava/lang/String;)Z
    .registers 3

    .line 4386
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4387
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

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

    .line 5392
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/AdExtension;

    if-nez v1, :cond_d

    .line 5393
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5395
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/AdExtension;

    .line 5397
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getPreload()Z

    move-result v1

    .line 5398
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getPreload()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 5399
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getLoadSkipoffset()I

    move-result v1

    .line 5400
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getLoadSkipoffset()I

    move-result v2

    if-eq v1, v2, :cond_26

    return v3

    .line 5401
    :cond_26
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityTimeThreshold()I

    move-result v1

    .line 5402
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityTimeThreshold()I

    move-result v2

    if-eq v1, v2, :cond_31

    return v3

    .line 5403
    :cond_31
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityPixelThreshold()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 5405
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityPixelThreshold()F

    move-result v2

    .line 5404
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_44

    return v3

    .line 5406
    :cond_44
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityDurationThreshold()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 5408
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityDurationThreshold()F

    move-result v2

    .line 5407
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_57

    return v3

    .line 5409
    :cond_57
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getEventList()Ljava/util/List;

    move-result-object v1

    .line 5410
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getEventList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    return v3

    .line 5411
    :cond_66
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 5412
    invoke-direct {p1}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v2

    .line 5411
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    return v3

    .line 5413
    :cond_75
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getSkipoffset()I

    move-result v1

    .line 5414
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getSkipoffset()I

    move-result v2

    if-eq v1, v2, :cond_80

    return v3

    .line 5415
    :cond_80
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCompanionSkipoffset()I

    move-result v1

    .line 5416
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCompanionSkipoffset()I

    move-result v2

    if-eq v1, v2, :cond_8b

    return v3

    .line 5417
    :cond_8b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getUseNativeClose()Z

    move-result v1

    .line 5418
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getUseNativeClose()Z

    move-result v2

    if-eq v1, v2, :cond_96

    return v3

    .line 5419
    :cond_96
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getR1()Z

    move-result v1

    .line 5420
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getR1()Z

    move-result v2

    if-eq v1, v2, :cond_a1

    return v3

    .line 5421
    :cond_a1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getR2()Z

    move-result v1

    .line 5422
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getR2()Z

    move-result v2

    if-eq v1, v2, :cond_ac

    return v3

    .line 5423
    :cond_ac
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasCountdown()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasCountdown()Z

    move-result v2

    if-eq v1, v2, :cond_b7

    return v3

    .line 5424
    :cond_b7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasCountdown()Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 5425
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v1

    .line 5426
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cc

    return v3

    .line 5428
    :cond_cc
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasCloseButton()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasCloseButton()Z

    move-result v2

    if-eq v1, v2, :cond_d7

    return v3

    .line 5429
    :cond_d7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasCloseButton()Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 5430
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v1

    .line 5431
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ec

    return v3

    .line 5433
    :cond_ec
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getIgnoresSafeAreaLayoutGuide()Z

    move-result v1

    .line 5434
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getIgnoresSafeAreaLayoutGuide()Z

    move-result v2

    if-eq v1, v2, :cond_f7

    return v3

    .line 5435
    :cond_f7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getStoreUrl()Ljava/lang/String;

    move-result-object v1

    .line 5436
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getStoreUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_106

    return v3

    .line 5437
    :cond_106
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasProgress()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasProgress()Z

    move-result v2

    if-eq v1, v2, :cond_111

    return v3

    .line 5438
    :cond_111
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasProgress()Z

    move-result v1

    if-eqz v1, :cond_126

    .line 5439
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v1

    .line 5440
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_126

    return v3

    .line 5442
    :cond_126
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getProgressDuration()I

    move-result v1

    .line 5443
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getProgressDuration()I

    move-result v2

    if-eq v1, v2, :cond_131

    return v3

    .line 5444
    :cond_131
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreWindowFocus()Z

    move-result v1

    .line 5445
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreWindowFocus()Z

    move-result v2

    if-eq v1, v2, :cond_13c

    return v3

    .line 5446
    :cond_13c
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    iget v2, p1, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    if-eq v1, v2, :cond_143

    return v3

    .line 5447
    :cond_143
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getAdCacheMaxAge()I

    move-result v1

    .line 5448
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getAdCacheMaxAge()I

    move-result v2

    if-eq v1, v2, :cond_14e

    return v3

    .line 5449
    :cond_14e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getR1Delay()I

    move-result v1

    .line 5450
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getR1Delay()I

    move-result v2

    if-eq v1, v2, :cond_159

    return v3

    .line 5451
    :cond_159
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getAdMarkupLoadingTimeout()I

    move-result v1

    .line 5452
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getAdMarkupLoadingTimeout()I

    move-result v2

    if-eq v1, v2, :cond_164

    return v3

    .line 5453
    :cond_164
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getUseEmbeddedBrowser()Z

    move-result v1

    .line 5454
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getUseEmbeddedBrowser()Z

    move-result v2

    if-eq v1, v2, :cond_16f

    return v3

    .line 5455
    :cond_16f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getPreloadAd()Z

    move-result v1

    .line 5456
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getPreloadAd()Z

    move-result v2

    if-eq v1, v2, :cond_17a

    return v3

    .line 5457
    :cond_17a
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    iget v2, p1, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    if-eq v1, v2, :cond_181

    return v3

    .line 5458
    :cond_181
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getPlaceholderTimeout()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 5460
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getPlaceholderTimeout()F

    move-result v2

    .line 5459
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_194

    return v3

    .line 5461
    :cond_194
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasEventConfiguration()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasEventConfiguration()Z

    move-result v2

    if-eq v1, v2, :cond_19f

    return v3

    .line 5462
    :cond_19f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasEventConfiguration()Z

    move-result v1

    if-eqz v1, :cond_1b4

    .line 5463
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v1

    .line 5464
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b4

    return v3

    .line 5466
    :cond_1b4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreOverlap()Z

    move-result v1

    .line 5467
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreOverlap()Z

    move-result v2

    if-eq v1, v2, :cond_1bf

    return v3

    .line 5468
    :cond_1bf
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasCreativeExtension()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasCreativeExtension()Z

    move-result v2

    if-eq v1, v2, :cond_1ca

    return v3

    .line 5469
    :cond_1ca
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasCreativeExtension()Z

    move-result v1

    if-eqz v1, :cond_1df

    .line 5470
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCreativeExtension()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object v1

    .line 5471
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCreativeExtension()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/CreativeExtension;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1df

    return v3

    .line 5473
    :cond_1df
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getAdFlexibleSize()Z

    move-result v1

    .line 5474
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getAdFlexibleSize()Z

    move-result v2

    if-eq v1, v2, :cond_1ea

    return v3

    .line 5475
    :cond_1ea
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasRenderingConfiguration()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasRenderingConfiguration()Z

    move-result v2

    if-eq v1, v2, :cond_1f5

    return v3

    .line 5476
    :cond_1f5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasRenderingConfiguration()Z

    move-result v1

    if-eqz v1, :cond_20a

    .line 5477
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getRenderingConfiguration()Lio/bidmachine/protobuf/rendering/Rendering;

    move-result-object v1

    .line 5478
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getRenderingConfiguration()Lio/bidmachine/protobuf/rendering/Rendering;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/rendering/Rendering;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20a

    return v3

    .line 5480
    :cond_20a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getMraidCreativeValidationRequired()Z

    move-result v1

    .line 5481
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getMraidCreativeValidationRequired()Z

    move-result v2

    if-eq v1, v2, :cond_215

    return v3

    .line 5482
    :cond_215
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCreativeLoadingTimeout()I

    move-result v1

    .line 5483
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCreativeLoadingTimeout()I

    move-result v2

    if-eq v1, v2, :cond_220

    return v3

    .line 5484
    :cond_220
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCridMonitoringEnabled()Z

    move-result v1

    .line 5485
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCridMonitoringEnabled()Z

    move-result v2

    if-eq v1, v2, :cond_22b

    return v3

    .line 5486
    :cond_22b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasViewabilityConfiguration()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasViewabilityConfiguration()Z

    move-result v2

    if-eq v1, v2, :cond_236

    return v3

    .line 5487
    :cond_236
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasViewabilityConfiguration()Z

    move-result v1

    if-eqz v1, :cond_24b

    .line 5488
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityConfiguration()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v1

    .line 5489
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityConfiguration()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24b

    return v3

    .line 5491
    :cond_24b
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_256

    return v3

    :cond_256
    return v0
.end method

.method public getAdCacheControl()Lio/bidmachine/protobuf/AdCacheControl;
    .registers 2

    .line 4749
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/AdCacheControl;->valueOf(I)Lio/bidmachine/protobuf/AdCacheControl;

    move-result-object v0

    if-nez v0, :cond_a

    .line 4750
    sget-object v0, Lio/bidmachine/protobuf/AdCacheControl;->UNRECOGNIZED:Lio/bidmachine/protobuf/AdCacheControl;

    :cond_a
    return-object v0
.end method

.method public getAdCacheControlValue()I
    .registers 2

    .line 4737
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    return v0
.end method

.method public getAdCacheMaxAge()I
    .registers 2

    .line 4765
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheMaxAge_:I

    return v0
.end method

.method public getAdFlexibleSize()Z
    .registers 2

    .line 4975
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->adFlexibleSize_:Z

    return v0
.end method

.method public getAdMarkupLoadingTimeout()I
    .registers 2

    .line 4795
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->adMarkupLoadingTimeout_:I

    return v0
.end method

.method public getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 2

    .line 4583
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getCloseButtonOrBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
    .registers 2

    .line 4594
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public getCompanionSkipoffset()I
    .registers 2

    .line 4473
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->companionSkipoffset_:I

    return v0
.end method

.method public getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 2

    .line 4545
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getCountdownOrBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
    .registers 2

    .line 4556
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public getCreativeExtension()Lio/bidmachine/protobuf/CreativeExtension;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4947
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getCreativeExtensionOrBuilder()Lio/bidmachine/protobuf/CreativeExtensionOrBuilder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4958
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCreativeExtension()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object v0

    return-object v0
.end method

.method public getCreativeLoadingMethod()Lio/bidmachine/protobuf/CreativeLoadingMethod;
    .registers 2

    .line 4851
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/CreativeLoadingMethod;->valueOf(I)Lio/bidmachine/protobuf/CreativeLoadingMethod;

    move-result-object v0

    if-nez v0, :cond_a

    .line 4852
    sget-object v0, Lio/bidmachine/protobuf/CreativeLoadingMethod;->UNRECOGNIZED:Lio/bidmachine/protobuf/CreativeLoadingMethod;

    :cond_a
    return-object v0
.end method

.method public getCreativeLoadingMethodValue()I
    .registers 2

    .line 4839
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    return v0
.end method

.method public getCreativeLoadingTimeout()I
    .registers 2

    .line 5043
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingTimeout_:I

    return v0
.end method

.method public getCridMonitoringEnabled()Z
    .registers 2

    .line 5058
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->cridMonitoringEnabled_:Z

    return v0
.end method

.method public getCustomParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4395
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCustomParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCustomParamsCount()I
    .registers 2

    .line 4373
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getCustomParamsMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4407
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCustomParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 4421
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4423
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 4424
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_18
    return-object p2
.end method

.method public getCustomParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 4437
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4439
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 4440
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4443
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 4441
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension;
    .registers 2

    .line 9070
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension;

    return-object v0
.end method

.method public getEvent(I)Lcom/explorestack/protobuf/adcom/Ad$Event;
    .registers 3

    .line 4334
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p1
.end method

.method public getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 2

    .line 4894
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getEventConfigurationOrBuilder()Lio/bidmachine/protobuf/AdExtension$EventConfigurationOrBuilder;
    .registers 2

    .line 4905
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getEventCount()I
    .registers 2

    .line 4323
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

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

    .line 4300
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    return-object v0
.end method

.method public getEventOrBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;
    .registers 3

    .line 4346
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

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

    .line 4312
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    return-object v0
.end method

.method public getIgnoresSafeAreaLayoutGuide()Z
    .registers 2

    .line 4609
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->ignoresSafeAreaLayoutGuide_:Z

    return v0
.end method

.method public getLoadSkipoffset()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4239
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->loadSkipoffset_:I

    return v0
.end method

.method public getMraidCreativeValidationRequired()Z
    .registers 2

    .line 5028
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->mraidCreativeValidationRequired_:Z

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdExtension;",
            ">;"
        }
    .end annotation

    .line 9065
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPlaceholderTimeout()F
    .registers 2

    .line 4867
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->placeholderTimeout_:F

    return v0
.end method

.method public getPreload()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4224
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->preload_:Z

    return v0
.end method

.method public getPreloadAd()Z
    .registers 2

    .line 4825
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->preloadAd_:Z

    return v0
.end method

.method public getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 2

    .line 4682
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getProgressDuration()I
    .registers 2

    .line 4708
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->progressDuration_:I

    return v0
.end method

.method public getProgressOrBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
    .registers 2

    .line 4693
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public getR1()Z
    .registers 2

    .line 4503
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->r1_:Z

    return v0
.end method

.method public getR1Delay()I
    .registers 2

    .line 4780
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->r1Delay_:I

    return v0
.end method

.method public getR2()Z
    .registers 2

    .line 4518
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->r2_:Z

    return v0
.end method

.method public getRenderingConfiguration()Lio/bidmachine/protobuf/rendering/Rendering;
    .registers 2

    .line 5002
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getRenderingConfigurationOrBuilder()Lio/bidmachine/protobuf/rendering/RenderingOrBuilder;
    .registers 2

    .line 5013
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getRenderingConfiguration()Lio/bidmachine/protobuf/rendering/Rendering;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .line 5229
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 5233
    :cond_6
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->preload_:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/4 v2, 0x2

    .line 5235
    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    goto :goto_12

    :cond_11
    move v0, v1

    .line 5237
    :goto_12
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension;->loadSkipoffset_:I

    if-eqz v2, :cond_1c

    const/4 v3, 0x3

    .line 5239
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5241
    :cond_1c
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityTimeThreshold_:I

    if-eqz v2, :cond_26

    const/4 v3, 0x4

    .line 5243
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5245
    :cond_26
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityPixelThreshold_:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_33

    const/4 v4, 0x5

    .line 5247
    invoke-static {v4, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 5249
    :cond_33
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityDurationThreshold_:F

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_3f

    const/4 v4, 0x6

    .line 5251
    invoke-static {v4, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 5253
    :cond_3f
    :goto_3f
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_58

    .line 5254
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    .line 5255
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v4, 0x7

    invoke-static {v4, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 5258
    :cond_58
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5260
    sget-object v4, Lio/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapEntry;->newBuilderForType()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v4

    .line 5261
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/MapEntry$Builder;->setKey(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v4

    .line 5262
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->setValue(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v2

    .line 5263
    invoke-virtual {v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->build()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v2

    const/16 v4, 0x8

    .line 5265
    invoke-static {v4, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_68

    .line 5267
    :cond_96
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->skipoffset_:I

    if-eqz v1, :cond_a1

    const/16 v2, 0x9

    .line 5269
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5271
    :cond_a1
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->companionSkipoffset_:I

    if-eqz v1, :cond_ac

    const/16 v2, 0xa

    .line 5273
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5275
    :cond_ac
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->useNativeClose_:Z

    if-eqz v1, :cond_b7

    const/16 v2, 0xb

    .line 5277
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5279
    :cond_b7
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->r1_:Z

    if-eqz v1, :cond_c2

    const/16 v2, 0xc

    .line 5281
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5283
    :cond_c2
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->r2_:Z

    if-eqz v1, :cond_cd

    const/16 v2, 0xd

    .line 5285
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5287
    :cond_cd
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v1, :cond_dc

    const/16 v1, 0xe

    .line 5289
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5291
    :cond_dc
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v1, :cond_eb

    const/16 v1, 0xf

    .line 5293
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5295
    :cond_eb
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->ignoresSafeAreaLayoutGuide_:Z

    if-eqz v1, :cond_f6

    const/16 v2, 0x10

    .line 5297
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5299
    :cond_f6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getStoreUrlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_109

    const/16 v1, 0x11

    .line 5300
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5302
    :cond_109
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v1, :cond_118

    const/16 v1, 0x12

    .line 5304
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5306
    :cond_118
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->progressDuration_:I

    if-eqz v1, :cond_123

    const/16 v2, 0x13

    .line 5308
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5310
    :cond_123
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreWindowFocus_:Z

    if-eqz v1, :cond_12e

    const/16 v2, 0x14

    .line 5312
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5314
    :cond_12e
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    sget-object v2, Lio/bidmachine/protobuf/AdCacheControl;->AD_CACHE_CONTROL_DISABLED:Lio/bidmachine/protobuf/AdCacheControl;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/AdCacheControl;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_141

    const/16 v1, 0x15

    .line 5315
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    .line 5316
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5318
    :cond_141
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheMaxAge_:I

    if-eqz v1, :cond_14c

    const/16 v2, 0x16

    .line 5320
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5322
    :cond_14c
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->r1Delay_:I

    if-eqz v1, :cond_157

    const/16 v2, 0x17

    .line 5324
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5326
    :cond_157
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->adMarkupLoadingTimeout_:I

    if-eqz v1, :cond_162

    const/16 v2, 0x18

    .line 5328
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5330
    :cond_162
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->useEmbeddedBrowser_:Z

    if-eqz v1, :cond_16d

    const/16 v2, 0x19

    .line 5332
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5334
    :cond_16d
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->preloadAd_:Z

    if-eqz v1, :cond_178

    const/16 v2, 0x1a

    .line 5336
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5338
    :cond_178
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    sget-object v2, Lio/bidmachine/protobuf/CreativeLoadingMethod;->FullLoad:Lio/bidmachine/protobuf/CreativeLoadingMethod;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/CreativeLoadingMethod;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_18b

    const/16 v1, 0x1b

    .line 5339
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    .line 5340
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5342
    :cond_18b
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->placeholderTimeout_:F

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_198

    const/16 v2, 0x1c

    .line 5344
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 5346
    :cond_198
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    if-eqz v1, :cond_1a7

    const/16 v1, 0x1d

    .line 5348
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5350
    :cond_1a7
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreOverlap_:Z

    if-eqz v1, :cond_1b2

    const/16 v2, 0x1e

    .line 5352
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5354
    :cond_1b2
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    if-eqz v1, :cond_1c1

    const/16 v1, 0x1f

    .line 5356
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCreativeExtension()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5358
    :cond_1c1
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->adFlexibleSize_:Z

    if-eqz v1, :cond_1cc

    const/16 v2, 0x20

    .line 5360
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5362
    :cond_1cc
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    if-eqz v1, :cond_1db

    const/16 v1, 0x21

    .line 5364
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getRenderingConfiguration()Lio/bidmachine/protobuf/rendering/Rendering;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5366
    :cond_1db
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->mraidCreativeValidationRequired_:Z

    if-eqz v1, :cond_1e6

    const/16 v2, 0x22

    .line 5368
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5370
    :cond_1e6
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingTimeout_:I

    if-eqz v1, :cond_1f1

    const/16 v2, 0x23

    .line 5372
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5374
    :cond_1f1
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->cridMonitoringEnabled_:Z

    if-eqz v1, :cond_1fc

    const/16 v2, 0x24

    .line 5376
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5378
    :cond_1fc
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_20d

    const/16 v1, 0x25

    .line 5380
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityConfiguration()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5382
    :cond_20d
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 5383
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getSkipoffset()I
    .registers 2

    .line 4458
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->skipoffset_:I

    return v0
.end method

.method public getStoreUrl()Ljava/lang/String;
    .registers 3

    .line 4624
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    .line 4625
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 4626
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4628
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4630
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4631
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method public getStoreUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 4646
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    .line 4647
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 4648
    check-cast v0, Ljava/lang/String;

    .line 4649
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4651
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    return-object v0

    .line 4654
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUseEmbeddedBrowser()Z
    .registers 2

    .line 4810
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->useEmbeddedBrowser_:Z

    return v0
.end method

.method public getUseNativeClose()Z
    .registers 2

    .line 4488
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->useNativeClose_:Z

    return v0
.end method

.method public getViewabilityConfiguration()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
    .registers 2

    .line 5085
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityConfiguration_:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getViewabilityConfigurationOrBuilder()Lio/bidmachine/protobuf/sdk/ViewabilityConfigurationOrBuilder;
    .registers 2

    .line 5096
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityConfiguration_:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getViewabilityDurationThreshold()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4286
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityDurationThreshold_:F

    return v0
.end method

.method public getViewabilityIgnoreOverlap()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4920
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreOverlap_:Z

    return v0
.end method

.method public getViewabilityIgnoreWindowFocus()Z
    .registers 2

    .line 4723
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreWindowFocus_:Z

    return v0
.end method

.method public getViewabilityPixelThreshold()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4270
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityPixelThreshold_:F

    return v0
.end method

.method public getViewabilityTimeThreshold()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4254
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityTimeThreshold_:I

    return v0
.end method

.method public hasCloseButton()Z
    .registers 2

    .line 4571
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasCountdown()Z
    .registers 2

    .line 4533
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasCreativeExtension()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4935
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasEventConfiguration()Z
    .registers 2

    .line 4882
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasProgress()Z
    .registers 2

    .line 4670
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasRenderingConfiguration()Z
    .registers 2

    .line 4990
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasViewabilityConfiguration()Z
    .registers 3

    .line 5073
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 5497
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 5501
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 5504
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getPreload()Z

    move-result v0

    .line 5503
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 5506
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getLoadSkipoffset()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 5508
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityTimeThreshold()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 5511
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityPixelThreshold()F

    move-result v0

    .line 5510
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 5514
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityDurationThreshold()F

    move-result v0

    .line 5513
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    .line 5515
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getEventCount()I

    move-result v0

    if-lez v0, :cond_68

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 5517
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getEventList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 5519
    :cond_68
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_85

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 5521
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_85
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 5524
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getSkipoffset()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 5526
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCompanionSkipoffset()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    .line 5529
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getUseNativeClose()Z

    move-result v0

    .line 5528
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    .line 5532
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getR1()Z

    move-result v0

    .line 5531
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    .line 5535
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getR2()Z

    move-result v0

    .line 5534
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 5536
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasCountdown()Z

    move-result v0

    if-eqz v0, :cond_dd

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xe

    mul-int/lit8 v1, v1, 0x35

    .line 5538
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 5540
    :cond_dd
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasCloseButton()Z

    move-result v0

    if-eqz v0, :cond_f2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x35

    .line 5542
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_f2
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x35

    .line 5546
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getIgnoresSafeAreaLayoutGuide()Z

    move-result v0

    .line 5545
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x11

    mul-int/lit8 v1, v1, 0x35

    .line 5548
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getStoreUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 5549
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasProgress()Z

    move-result v0

    if-eqz v0, :cond_125

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x12

    mul-int/lit8 v1, v1, 0x35

    .line 5551
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_125
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x13

    mul-int/lit8 v1, v1, 0x35

    .line 5554
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getProgressDuration()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x14

    mul-int/lit8 v1, v1, 0x35

    .line 5557
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreWindowFocus()Z

    move-result v0

    .line 5556
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x15

    mul-int/lit8 v1, v1, 0x35

    .line 5559
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x16

    mul-int/lit8 v1, v1, 0x35

    .line 5561
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getAdCacheMaxAge()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x17

    mul-int/lit8 v1, v1, 0x35

    .line 5563
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getR1Delay()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x35

    .line 5565
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getAdMarkupLoadingTimeout()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x19

    mul-int/lit8 v1, v1, 0x35

    .line 5568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getUseEmbeddedBrowser()Z

    move-result v0

    .line 5567
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1a

    mul-int/lit8 v1, v1, 0x35

    .line 5571
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getPreloadAd()Z

    move-result v0

    .line 5570
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1b

    mul-int/lit8 v1, v1, 0x35

    .line 5573
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1c

    mul-int/lit8 v1, v1, 0x35

    .line 5576
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getPlaceholderTimeout()F

    move-result v0

    .line 5575
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    .line 5577
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasEventConfiguration()Z

    move-result v0

    if-eqz v0, :cond_1b4

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1d

    mul-int/lit8 v1, v1, 0x35

    .line 5579
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1b4
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1e

    mul-int/lit8 v1, v1, 0x35

    .line 5583
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreOverlap()Z

    move-result v0

    .line 5582
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 5584
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasCreativeExtension()Z

    move-result v0

    if-eqz v0, :cond_1d8

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1f

    mul-int/lit8 v1, v1, 0x35

    .line 5586
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCreativeExtension()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/CreativeExtension;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1d8
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x20

    mul-int/lit8 v1, v1, 0x35

    .line 5590
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getAdFlexibleSize()Z

    move-result v0

    .line 5589
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 5591
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasRenderingConfiguration()Z

    move-result v0

    if-eqz v0, :cond_1fc

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x21

    mul-int/lit8 v1, v1, 0x35

    .line 5593
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getRenderingConfiguration()Lio/bidmachine/protobuf/rendering/Rendering;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/Rendering;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1fc
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x22

    mul-int/lit8 v1, v1, 0x35

    .line 5597
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getMraidCreativeValidationRequired()Z

    move-result v0

    .line 5596
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x23

    mul-int/lit8 v1, v1, 0x35

    .line 5599
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCreativeLoadingTimeout()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x24

    mul-int/lit8 v1, v1, 0x35

    .line 5602
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCridMonitoringEnabled()Z

    move-result v0

    .line 5601
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 5603
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasViewabilityConfiguration()Z

    move-result v0

    if-eqz v0, :cond_23a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x25

    mul-int/lit8 v1, v1, 0x35

    .line 5605
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityConfiguration()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_23a
    mul-int/lit8 v1, v1, 0x1d

    .line 5607
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 5608
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 349
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AdExtension;

    const-class v2, Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 350
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .registers 5

    const/16 v0, 0x8

    if-ne p1, v0, :cond_9

    .line 340
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 342
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

    .line 5102
    iget-byte v0, p0, Lio/bidmachine/protobuf/AdExtension;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 5106
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/AdExtension;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->newBuilderForType()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->newBuilderForType()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 5683
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension;->newBuilder()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 4

    .line 5699
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/AdExtension$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AdExtension$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 29
    new-instance p1, Lio/bidmachine/protobuf/AdExtension;

    invoke-direct {p1}, Lio/bidmachine/protobuf/AdExtension;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->toBuilder()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->toBuilder()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 5692
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 5693
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdExtension$Builder;-><init>(Lio/bidmachine/protobuf/AdExtension$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdExtension$Builder;-><init>(Lio/bidmachine/protobuf/AdExtension$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdExtension$Builder;

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

    .line 5113
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->preload_:Z

    if-eqz v0, :cond_8

    const/4 v1, 0x2

    .line 5114
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5116
    :cond_8
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->loadSkipoffset_:I

    if-eqz v0, :cond_10

    const/4 v1, 0x3

    .line 5117
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 5119
    :cond_10
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityTimeThreshold_:I

    if-eqz v0, :cond_18

    const/4 v1, 0x4

    .line 5120
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 5122
    :cond_18
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityPixelThreshold_:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_23

    const/4 v2, 0x5

    .line 5123
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 5125
    :cond_23
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityDurationThreshold_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2d

    const/4 v2, 0x6

    .line 5126
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_2d
    const/4 v0, 0x0

    .line 5128
    :goto_2e
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_45

    .line 5129
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 5134
    :cond_45
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    sget-object v2, Lio/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    const/16 v3, 0x8

    .line 5132
    invoke-static {p1, v0, v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapField;Lcom/explorestack/protobuf/MapEntry;I)V

    .line 5137
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->skipoffset_:I

    if-eqz v0, :cond_59

    const/16 v2, 0x9

    .line 5138
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 5140
    :cond_59
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->companionSkipoffset_:I

    if-eqz v0, :cond_62

    const/16 v2, 0xa

    .line 5141
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 5143
    :cond_62
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->useNativeClose_:Z

    if-eqz v0, :cond_6b

    const/16 v2, 0xb

    .line 5144
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5146
    :cond_6b
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->r1_:Z

    if-eqz v0, :cond_74

    const/16 v2, 0xc

    .line 5147
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5149
    :cond_74
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->r2_:Z

    if-eqz v0, :cond_7d

    const/16 v2, 0xd

    .line 5150
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5152
    :cond_7d
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v0, :cond_8a

    const/16 v0, 0xe

    .line 5153
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 5155
    :cond_8a
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v0, :cond_97

    const/16 v0, 0xf

    .line 5156
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 5158
    :cond_97
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->ignoresSafeAreaLayoutGuide_:Z

    if-eqz v0, :cond_a0

    const/16 v2, 0x10

    .line 5159
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5161
    :cond_a0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getStoreUrlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b1

    const/16 v0, 0x11

    .line 5162
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5164
    :cond_b1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v0, :cond_be

    const/16 v0, 0x12

    .line 5165
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 5167
    :cond_be
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->progressDuration_:I

    if-eqz v0, :cond_c7

    const/16 v2, 0x13

    .line 5168
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 5170
    :cond_c7
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreWindowFocus_:Z

    if-eqz v0, :cond_d0

    const/16 v2, 0x14

    .line 5171
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5173
    :cond_d0
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    sget-object v2, Lio/bidmachine/protobuf/AdCacheControl;->AD_CACHE_CONTROL_DISABLED:Lio/bidmachine/protobuf/AdCacheControl;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/AdCacheControl;->getNumber()I

    move-result v2

    if-eq v0, v2, :cond_e1

    const/16 v0, 0x15

    .line 5174
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheControl_:I

    invoke-virtual {p1, v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5176
    :cond_e1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->adCacheMaxAge_:I

    if-eqz v0, :cond_ea

    const/16 v2, 0x16

    .line 5177
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 5179
    :cond_ea
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->r1Delay_:I

    if-eqz v0, :cond_f3

    const/16 v2, 0x17

    .line 5180
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 5182
    :cond_f3
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->adMarkupLoadingTimeout_:I

    if-eqz v0, :cond_fc

    const/16 v2, 0x18

    .line 5183
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 5185
    :cond_fc
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->useEmbeddedBrowser_:Z

    if-eqz v0, :cond_105

    const/16 v2, 0x19

    .line 5186
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5188
    :cond_105
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->preloadAd_:Z

    if-eqz v0, :cond_10e

    const/16 v2, 0x1a

    .line 5189
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5191
    :cond_10e
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    sget-object v2, Lio/bidmachine/protobuf/CreativeLoadingMethod;->FullLoad:Lio/bidmachine/protobuf/CreativeLoadingMethod;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/CreativeLoadingMethod;->getNumber()I

    move-result v2

    if-eq v0, v2, :cond_11f

    const/16 v0, 0x1b

    .line 5192
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingMethod_:I

    invoke-virtual {p1, v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5194
    :cond_11f
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->placeholderTimeout_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_12a

    const/16 v1, 0x1c

    .line 5195
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 5197
    :cond_12a
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    if-eqz v0, :cond_137

    const/16 v0, 0x1d

    .line 5198
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 5200
    :cond_137
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreOverlap_:Z

    if-eqz v0, :cond_140

    const/16 v1, 0x1e

    .line 5201
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5203
    :cond_140
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    if-eqz v0, :cond_14d

    const/16 v0, 0x1f

    .line 5204
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCreativeExtension()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 5206
    :cond_14d
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->adFlexibleSize_:Z

    if-eqz v0, :cond_156

    const/16 v1, 0x20

    .line 5207
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5209
    :cond_156
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    if-eqz v0, :cond_163

    const/16 v0, 0x21

    .line 5210
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getRenderingConfiguration()Lio/bidmachine/protobuf/rendering/Rendering;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 5212
    :cond_163
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->mraidCreativeValidationRequired_:Z

    if-eqz v0, :cond_16c

    const/16 v1, 0x22

    .line 5213
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5215
    :cond_16c
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->creativeLoadingTimeout_:I

    if-eqz v0, :cond_175

    const/16 v1, 0x23

    .line 5216
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5218
    :cond_175
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->cridMonitoringEnabled_:Z

    if-eqz v0, :cond_17e

    const/16 v1, 0x24

    .line 5219
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5221
    :cond_17e
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18d

    const/16 v0, 0x25

    .line 5222
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityConfiguration()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 5224
    :cond_18d
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.AdExtension.AnonymousClass1 (io.bidmachine.protobuf.AdExtension$1)
.class Lio/bidmachine/protobuf/AdExtension$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "AdExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/AdExtension;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9049
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9055
    new-instance v0, Lio/bidmachine/protobuf/AdExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/AdExtension;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/AdExtension$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9049
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.AdExtension.Builder (io.bidmachine.protobuf.AdExtension$Builder)
.class public final Lio/bidmachine/protobuf/AdExtension$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AdExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/AdExtensionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/AdExtension$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/AdExtensionOrBuilder;"
    }
.end annotation


# instance fields
.field private adCacheControl_:I

.field private adCacheMaxAge_:I

.field private adFlexibleSize_:Z

.field private adMarkupLoadingTimeout_:I

.field private bitField0_:I

.field private closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset;",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;",
            "Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

.field private companionSkipoffset_:I

.field private countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset;",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;",
            "Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

.field private creativeExtensionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/CreativeExtension;",
            "Lio/bidmachine/protobuf/CreativeExtension$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtensionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

.field private creativeLoadingMethod_:I

.field private creativeLoadingTimeout_:I

.field private cridMonitoringEnabled_:Z

.field private customParams_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private ignoresSafeAreaLayoutGuide_:Z

.field private loadSkipoffset_:I

.field private mraidCreativeValidationRequired_:Z

.field private placeholderTimeout_:F

.field private preloadAd_:Z

.field private preload_:Z

.field private progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset;",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;",
            "Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private progressDuration_:I

.field private progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

.field private r1Delay_:I

.field private r1_:Z

.field private r2_:Z

.field private renderingConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/rendering/Rendering;",
            "Lio/bidmachine/protobuf/rendering/Rendering$Builder;",
            "Lio/bidmachine/protobuf/rendering/RenderingOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

.field private skipoffset_:I

.field private storeUrl_:Ljava/lang/Object;

.field private useEmbeddedBrowser_:Z

.field private useNativeClose_:Z

.field private viewabilityConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;",
            "Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;",
            "Lio/bidmachine/protobuf/sdk/ViewabilityConfigurationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private viewabilityConfiguration_:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

.field private viewabilityDurationThreshold_:F

.field private viewabilityIgnoreOverlap_:Z

.field private viewabilityIgnoreWindowFocus_:Z

.field private viewabilityPixelThreshold_:F

.field private viewabilityTimeThreshold_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 5745
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 6403
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    .line 7438
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->storeUrl_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 7775
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->adCacheControl_:I

    .line 8064
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeLoadingMethod_:I

    .line 5746
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 5751
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 6403
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    .line 7438
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->storeUrl_:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 7775
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->adCacheControl_:I

    .line 8064
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeLoadingMethod_:I

    .line 5752
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AdExtension$1;)V
    .registers 3

    .line 5705
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/AdExtension$1;)V
    .registers 2

    .line 5705
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;-><init>()V

    return-void
.end method

.method private ensureEventIsMutable()V
    .registers 3

    .line 6405
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 6406
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    .line 6407
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method private getCloseButtonFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset;",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;",
            "Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7384
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 7385
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 7387
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v1

    .line 7388
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 7389
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 7390
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 7392
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getCountdownFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset;",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;",
            "Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7229
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 7230
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 7232
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v1

    .line 7233
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 7234
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 7235
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 7237
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getCreativeExtensionFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/CreativeExtension;",
            "Lio/bidmachine/protobuf/CreativeExtension$Builder;",
            "Lio/bidmachine/protobuf/CreativeExtensionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8523
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtensionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 8524
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8526
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getCreativeExtension()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object v1

    .line 8527
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 8528
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtensionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 8529
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    .line 8531
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtensionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 5711
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 8325
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 8326
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8328
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v1

    .line 8329
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 8330
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 8331
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 8333
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 6702
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_20

    .line 6703
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    .line 6707
    :goto_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 6708
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 6709
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    .line 6711
    :cond_20
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getProgressFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset;",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;",
            "Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7678
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 7679
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 7681
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v1

    .line 7682
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 7683
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 7684
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 7686
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getRenderingConfigurationFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/rendering/Rendering;",
            "Lio/bidmachine/protobuf/rendering/Rendering$Builder;",
            "Lio/bidmachine/protobuf/rendering/RenderingOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8727
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 8728
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8730
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getRenderingConfiguration()Lio/bidmachine/protobuf/rendering/Rendering;

    move-result-object v1

    .line 8731
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 8732
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 8733
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    .line 8735
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getViewabilityConfigurationFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;",
            "Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;",
            "Lio/bidmachine/protobuf/sdk/ViewabilityConfigurationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9012
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 9013
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 9015
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getViewabilityConfiguration()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v1

    .line 9016
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9017
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 9018
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityConfiguration_:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    .line 9020
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private internalGetCustomParams()Lcom/explorestack/protobuf/MapField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6718
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_a

    .line 6719
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method private internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6726
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6727
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_f

    .line 6728
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    .line 6731
    :cond_f
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->isMutable()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 6732
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->copy()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    .line 6734
    :cond_1f
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 5756
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension;->access$5100()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5757
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 5758
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getViewabilityConfigurationFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :cond_c
    return-void
.end method


# virtual methods
.method public addAllEvent(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;)",
            "Lio/bidmachine/protobuf/AdExtension$Builder;"
        }
    .end annotation

    .line 6581
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 6582
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->ensureEventIsMutable()V

    .line 6583
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 6585
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6587
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEvent(ILcom/explorestack/protobuf/adcom/Ad$Event$Builder;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 4

    .line 6563
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 6564
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->ensureEventIsMutable()V

    .line 6565
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6566
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6568
    :cond_14
    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEvent(ILcom/explorestack/protobuf/adcom/Ad$Event;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 4

    .line 6524
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 6526
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6528
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->ensureEventIsMutable()V

    .line 6529
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6530
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6532
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEvent(Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 6545
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 6546
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->ensureEventIsMutable()V

    .line 6547
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6548
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6550
    :cond_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEvent(Lcom/explorestack/protobuf/adcom/Ad$Event;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 6503
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 6505
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6507
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->ensureEventIsMutable()V

    .line 6508
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6509
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6511
    :cond_13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addEventBuilder()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .registers 3

    .line 6673
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 6674
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v1

    .line 6673
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object v0
.end method

.method public addEventBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .registers 4

    .line 6685
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 6686
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v1

    .line 6685
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 5705
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 5705
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 6006
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 5705
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->build()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 5705
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->build()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/AdExtension;
    .registers 3

    .line 5883
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    .line 5884
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 5885
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 5705
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 5705
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/AdExtension;
    .registers 5

    .line 5892
    new-instance v0, Lio/bidmachine/protobuf/AdExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/AdExtension;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AdExtension$1;)V

    .line 5893
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    .line 5895
    iget-boolean v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->preload_:Z

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$5302(Lio/bidmachine/protobuf/AdExtension;Z)Z

    .line 5896
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->loadSkipoffset_:I

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$5402(Lio/bidmachine/protobuf/AdExtension;I)I

    .line 5897
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityTimeThreshold_:I

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$5502(Lio/bidmachine/protobuf/AdExtension;I)I

    .line 5898
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityPixelThreshold_:F

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$5602(Lio/bidmachine/protobuf/AdExtension;F)F

    .line 5899
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityDurationThreshold_:F

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$5702(Lio/bidmachine/protobuf/AdExtension;F)F

    .line 5900
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v3, 0x1

    if-nez v2, :cond_3f

    .line 5901
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_39

    .line 5902
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    .line 5903
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    .line 5905
    :cond_39
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$5802(Lio/bidmachine/protobuf/AdExtension;Ljava/util/List;)Ljava/util/List;

    goto :goto_46

    .line 5907
    :cond_3f
    invoke-virtual {v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$5802(Lio/bidmachine/protobuf/AdExtension;Ljava/util/List;)Ljava/util/List;

    .line 5909
    :goto_46
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v2

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$5902(Lio/bidmachine/protobuf/AdExtension;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;

    .line 5910
    invoke-static {v0}, Lio/bidmachine/protobuf/AdExtension;->access$5900(Lio/bidmachine/protobuf/AdExtension;)Lcom/explorestack/protobuf/MapField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/MapField;->makeImmutable()V

    .line 5911
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->skipoffset_:I

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$6002(Lio/bidmachine/protobuf/AdExtension;I)I

    .line 5912
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->companionSkipoffset_:I

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$6102(Lio/bidmachine/protobuf/AdExtension;I)I

    .line 5913
    iget-boolean v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->useNativeClose_:Z

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$6202(Lio/bidmachine/protobuf/AdExtension;Z)Z

    .line 5914
    iget-boolean v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r1_:Z

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$6302(Lio/bidmachine/protobuf/AdExtension;Z)Z

    .line 5915
    iget-boolean v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r2_:Z

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$6402(Lio/bidmachine/protobuf/AdExtension;Z)Z

    .line 5916
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_77

    .line 5917
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$6502(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto :goto_80

    .line 5919
    :cond_77
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$6502(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 5921
    :goto_80
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_8a

    .line 5922
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$6602(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto :goto_93

    .line 5924
    :cond_8a
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$6602(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 5926
    :goto_93
    iget-boolean v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->ignoresSafeAreaLayoutGuide_:Z

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$6702(Lio/bidmachine/protobuf/AdExtension;Z)Z

    .line 5927
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->storeUrl_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$6802(Lio/bidmachine/protobuf/AdExtension;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5928
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_a7

    .line 5929
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$6902(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto :goto_b0

    .line 5931
    :cond_a7
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$6902(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 5933
    :goto_b0
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressDuration_:I

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$7002(Lio/bidmachine/protobuf/AdExtension;I)I

    .line 5934
    iget-boolean v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityIgnoreWindowFocus_:Z

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$7102(Lio/bidmachine/protobuf/AdExtension;Z)Z

    .line 5935
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->adCacheControl_:I

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$7202(Lio/bidmachine/protobuf/AdExtension;I)I

    .line 5936
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->adCacheMaxAge_:I

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$7302(Lio/bidmachine/protobuf/AdExtension;I)I

    .line 5937
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r1Delay_:I

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$7402(Lio/bidmachine/protobuf/AdExtension;I)I

    .line 5938
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->adMarkupLoadingTimeout_:I

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$7502(Lio/bidmachine/protobuf/AdExtension;I)I

    .line 5939
    iget-boolean v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->useEmbeddedBrowser_:Z

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$7602(Lio/bidmachine/protobuf/AdExtension;Z)Z

    .line 5940
    iget-boolean v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->preloadAd_:Z

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$7702(Lio/bidmachine/protobuf/AdExtension;Z)Z

    .line 5941
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeLoadingMethod_:I

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$7802(Lio/bidmachine/protobuf/AdExtension;I)I

    .line 5942
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->placeholderTimeout_:F

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$7902(Lio/bidmachine/protobuf/AdExtension;F)F

    .line 5943
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_ec

    .line 5944
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$8002(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    goto :goto_f5

    .line 5946
    :cond_ec
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$8002(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 5948
    :goto_f5
    iget-boolean v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityIgnoreOverlap_:Z

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$8102(Lio/bidmachine/protobuf/AdExtension;Z)Z

    .line 5949
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtensionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_104

    .line 5950
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$8202(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/CreativeExtension;)Lio/bidmachine/protobuf/CreativeExtension;

    goto :goto_10d

    .line 5952
    :cond_104
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/CreativeExtension;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$8202(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/CreativeExtension;)Lio/bidmachine/protobuf/CreativeExtension;

    .line 5954
    :goto_10d
    iget-boolean v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->adFlexibleSize_:Z

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$8302(Lio/bidmachine/protobuf/AdExtension;Z)Z

    .line 5955
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_11c

    .line 5956
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$8402(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/rendering/Rendering;)Lio/bidmachine/protobuf/rendering/Rendering;

    goto :goto_125

    .line 5958
    :cond_11c
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/rendering/Rendering;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$8402(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/rendering/Rendering;)Lio/bidmachine/protobuf/rendering/Rendering;

    .line 5960
    :goto_125
    iget-boolean v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->mraidCreativeValidationRequired_:Z

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$8502(Lio/bidmachine/protobuf/AdExtension;Z)Z

    .line 5961
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeLoadingTimeout_:I

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$8602(Lio/bidmachine/protobuf/AdExtension;I)I

    .line 5962
    iget-boolean v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->cridMonitoringEnabled_:Z

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/AdExtension;->access$8702(Lio/bidmachine/protobuf/AdExtension;Z)Z

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_14c

    .line 5964
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_142

    .line 5965
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityConfiguration_:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$8802(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    goto :goto_14d

    .line 5967
    :cond_142
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension;->access$8802(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    goto :goto_14d

    :cond_14c
    const/4 v3, 0x0

    .line 5971
    :goto_14d
    invoke-static {v0, v3}, Lio/bidmachine/protobuf/AdExtension;->access$8902(Lio/bidmachine/protobuf/AdExtension;I)I

    .line 5972
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5705
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->clear()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5705
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->clear()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5705
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->clear()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 5705
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->clear()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 5

    .line 5763
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 5764
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->preload_:Z

    .line 5766
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->loadSkipoffset_:I

    .line 5768
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityTimeThreshold_:I

    const/4 v1, 0x0

    .line 5770
    iput v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityPixelThreshold_:F

    .line 5772
    iput v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityDurationThreshold_:F

    .line 5774
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_1e

    .line 5775
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    .line 5776
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    goto :goto_21

    .line 5778
    :cond_1e
    invoke-virtual {v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 5780
    :goto_21
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/MapField;->clear()V

    .line 5781
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->skipoffset_:I

    .line 5783
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->companionSkipoffset_:I

    .line 5785
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->useNativeClose_:Z

    .line 5787
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r1_:Z

    .line 5789
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r2_:Z

    .line 5791
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v3, 0x0

    if-nez v2, :cond_3a

    .line 5792
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto :goto_3e

    .line 5794
    :cond_3a
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 5795
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5797
    :goto_3e
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_45

    .line 5798
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto :goto_49

    .line 5800
    :cond_45
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 5801
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5803
    :goto_49
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->ignoresSafeAreaLayoutGuide_:Z

    .line 5805
    const-string v2, ""

    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->storeUrl_:Ljava/lang/Object;

    .line 5807
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_56

    .line 5808
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto :goto_5a

    .line 5810
    :cond_56
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 5811
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5813
    :goto_5a
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressDuration_:I

    .line 5815
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityIgnoreWindowFocus_:Z

    .line 5817
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->adCacheControl_:I

    .line 5819
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->adCacheMaxAge_:I

    .line 5821
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r1Delay_:I

    .line 5823
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->adMarkupLoadingTimeout_:I

    .line 5825
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->useEmbeddedBrowser_:Z

    .line 5827
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->preloadAd_:Z

    .line 5829
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeLoadingMethod_:I

    .line 5831
    iput v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->placeholderTimeout_:F

    .line 5833
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_75

    .line 5834
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    goto :goto_79

    .line 5836
    :cond_75
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 5837
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5839
    :goto_79
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityIgnoreOverlap_:Z

    .line 5841
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtensionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_82

    .line 5842
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    goto :goto_86

    .line 5844
    :cond_82
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    .line 5845
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtensionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5847
    :goto_86
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->adFlexibleSize_:Z

    .line 5849
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_8f

    .line 5850
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    goto :goto_93

    .line 5852
    :cond_8f
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    .line 5853
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5855
    :goto_93
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->mraidCreativeValidationRequired_:Z

    .line 5857
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeLoadingTimeout_:I

    .line 5859
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->cridMonitoringEnabled_:Z

    .line 5861
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_a0

    .line 5862
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityConfiguration_:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    goto :goto_a3

    .line 5864
    :cond_a0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5866
    :goto_a3
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAdCacheControl()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 7844
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->adCacheControl_:I

    .line 7845
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAdCacheMaxAge()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 7887
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->adCacheMaxAge_:I

    .line 7888
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAdFlexibleSize()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 8578
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->adFlexibleSize_:Z

    .line 8579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAdMarkupLoadingTimeout()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 7973
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->adMarkupLoadingTimeout_:I

    .line 7974
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCloseButton()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 7337
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 7338
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 7339
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7341
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 7342
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearCompanionSkipoffset()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 6951
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->companionSkipoffset_:I

    .line 6952
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCountdown()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 7182
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 7183
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 7184
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7186
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 7187
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearCreativeExtension()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8476
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtensionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 8477
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    .line 8478
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8480
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    .line 8481
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtensionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearCreativeLoadingMethod()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 8133
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeLoadingMethod_:I

    .line 8134
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCreativeLoadingTimeout()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 8819
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeLoadingTimeout_:I

    .line 8820
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCridMonitoringEnabled()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 8862
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->cridMonitoringEnabled_:Z

    .line 8863
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCustomParams()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 6812
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 6813
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public clearEvent()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 6599
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 6600
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    .line 6601
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    .line 6602
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6604
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public clearEventConfiguration()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 8278
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 8279
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 8280
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8282
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 8283
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5705
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5705
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 5989
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$Builder;

    return-object p1
.end method

.method public clearIgnoresSafeAreaLayoutGuide()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 7433
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->ignoresSafeAreaLayoutGuide_:Z

    .line 7434
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLoadSkipoffset()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 6262
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->loadSkipoffset_:I

    .line 6263
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMraidCreativeValidationRequired()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 8776
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->mraidCreativeValidationRequired_:Z

    .line 8777
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5705
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5705
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5705
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 5994
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$Builder;

    return-object p1
.end method

.method public clearPlaceholderTimeout()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 8176
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->placeholderTimeout_:F

    .line 8177
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPreload()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 6219
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->preload_:Z

    .line 6220
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPreloadAd()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 8059
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->preloadAd_:Z

    .line 8060
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearProgress()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 7631
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 7632
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 7633
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7635
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 7636
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearProgressDuration()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 7727
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressDuration_:I

    .line 7728
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearR1()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 7037
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r1_:Z

    .line 7038
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearR1Delay()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 7930
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r1Delay_:I

    .line 7931
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearR2()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 7080
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r2_:Z

    .line 7081
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRenderingConfiguration()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 8680
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 8681
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    .line 8682
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8684
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    .line 8685
    iput-object v1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearSkipoffset()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 6908
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->skipoffset_:I

    .line 6909
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStoreUrl()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 7509
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension;->getStoreUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->storeUrl_:Ljava/lang/Object;

    .line 7510
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUseEmbeddedBrowser()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 8016
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->useEmbeddedBrowser_:Z

    .line 8017
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUseNativeClose()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 6994
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->useNativeClose_:Z

    .line 6995
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearViewabilityConfiguration()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 8966
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 8967
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityConfiguration_:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    .line 8968
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_e

    .line 8970
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8972
    :goto_e
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearViewabilityDurationThreshold()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 6397
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityDurationThreshold_:F

    .line 6398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearViewabilityIgnoreOverlap()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 8374
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityIgnoreOverlap_:Z

    .line 8375
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearViewabilityIgnoreWindowFocus()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 7770
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityIgnoreWindowFocus_:Z

    .line 7771
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearViewabilityPixelThreshold()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 6351
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityPixelThreshold_:F

    .line 6352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearViewabilityTimeThreshold()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 6305
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityTimeThreshold_:I

    .line 6306
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5705
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 5705
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5705
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5705
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 5705
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 5978
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5705
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public containsCustomParams(Ljava/lang/String;)Z
    .registers 3

    .line 6751
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6752
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAdCacheControl()Lio/bidmachine/protobuf/AdCacheControl;
    .registers 2

    .line 7813
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->adCacheControl_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/AdCacheControl;->valueOf(I)Lio/bidmachine/protobuf/AdCacheControl;

    move-result-object v0

    if-nez v0, :cond_a

    .line 7814
    sget-object v0, Lio/bidmachine/protobuf/AdCacheControl;->UNRECOGNIZED:Lio/bidmachine/protobuf/AdCacheControl;

    :cond_a
    return-object v0
.end method

.method public getAdCacheControlValue()I
    .registers 2

    .line 7785
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->adCacheControl_:I

    return v0
.end method

.method public getAdCacheMaxAge()I
    .registers 2

    .line 7860
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->adCacheMaxAge_:I

    return v0
.end method

.method public getAdFlexibleSize()Z
    .registers 2

    .line 8547
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->adFlexibleSize_:Z

    return v0
.end method

.method public getAdMarkupLoadingTimeout()I
    .registers 2

    .line 7946
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->adMarkupLoadingTimeout_:I

    return v0
.end method

.method public getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 2

    .line 7263
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7264
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    :cond_c
    return-object v0

    .line 7266
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object v0
.end method

.method public getCloseButtonBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 7356
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7357
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getCloseButtonFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    return-object v0
.end method

.method public getCloseButtonOrBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
    .registers 2

    .line 7367
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 7368
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;

    return-object v0

    .line 7370
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-nez v0, :cond_13

    .line 7371
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getCompanionSkipoffset()I
    .registers 2

    .line 6924
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->companionSkipoffset_:I

    return v0
.end method

.method public getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 2

    .line 7108
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7109
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    :cond_c
    return-object v0

    .line 7111
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object v0
.end method

.method public getCountdownBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 7201
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7202
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getCountdownFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    return-object v0
.end method

.method public getCountdownOrBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
    .registers 2

    .line 7212
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 7213
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;

    return-object v0

    .line 7215
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-nez v0, :cond_13

    .line 7216
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getCreativeExtension()Lio/bidmachine/protobuf/CreativeExtension;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8402
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtensionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8403
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object v0

    :cond_c
    return-object v0

    .line 8405
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension;

    return-object v0
.end method

.method public getCreativeExtensionBuilder()Lio/bidmachine/protobuf/CreativeExtension$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8495
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8496
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getCreativeExtensionFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtension$Builder;

    return-object v0
.end method

.method public getCreativeExtensionOrBuilder()Lio/bidmachine/protobuf/CreativeExtensionOrBuilder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8506
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtensionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 8507
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/CreativeExtensionOrBuilder;

    return-object v0

    .line 8509
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    if-nez v0, :cond_13

    .line 8510
    invoke-static {}, Lio/bidmachine/protobuf/CreativeExtension;->getDefaultInstance()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getCreativeLoadingMethod()Lio/bidmachine/protobuf/CreativeLoadingMethod;
    .registers 2

    .line 8102
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeLoadingMethod_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/CreativeLoadingMethod;->valueOf(I)Lio/bidmachine/protobuf/CreativeLoadingMethod;

    move-result-object v0

    if-nez v0, :cond_a

    .line 8103
    sget-object v0, Lio/bidmachine/protobuf/CreativeLoadingMethod;->UNRECOGNIZED:Lio/bidmachine/protobuf/CreativeLoadingMethod;

    :cond_a
    return-object v0
.end method

.method public getCreativeLoadingMethodValue()I
    .registers 2

    .line 8074
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeLoadingMethod_:I

    return v0
.end method

.method public getCreativeLoadingTimeout()I
    .registers 2

    .line 8792
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeLoadingTimeout_:I

    return v0
.end method

.method public getCridMonitoringEnabled()Z
    .registers 2

    .line 8835
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->cridMonitoringEnabled_:Z

    return v0
.end method

.method public getCustomParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6760
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getCustomParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCustomParamsCount()I
    .registers 2

    .line 6738
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getCustomParamsMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6772
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCustomParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 6786
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6788
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 6789
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_18
    return-object p2
.end method

.method public getCustomParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 6802
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6804
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 6805
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 6808
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 6806
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 5705
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 5705
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension;
    .registers 2

    .line 5878
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 5873
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getEvent(I)Lcom/explorestack/protobuf/adcom/Ad$Event;
    .registers 3

    .line 6450
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6451
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p1

    .line 6453
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p1
.end method

.method public getEventBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .registers 3

    .line 6634
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 6697
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 2

    .line 8204
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8205
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    :cond_c
    return-object v0

    .line 8207
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    return-object v0
.end method

.method public getEventConfigurationBuilder()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 2

    .line 8297
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8298
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getEventConfigurationFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    return-object v0
.end method

.method public getEventConfigurationOrBuilder()Lio/bidmachine/protobuf/AdExtension$EventConfigurationOrBuilder;
    .registers 2

    .line 8308
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 8309
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$EventConfigurationOrBuilder;

    return-object v0

    .line 8311
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    if-nez v0, :cond_13

    .line 8312
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getEventCount()I
    .registers 2

    .line 6436
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 6437
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 6439
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

    .line 6422
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 6423
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 6425
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEventOrBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;
    .registers 3

    .line 6645
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6646
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;

    return-object p1

    .line 6647
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

    .line 6659
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 6660
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 6662
    :cond_9
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIgnoresSafeAreaLayoutGuide()Z
    .registers 2

    .line 7406
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->ignoresSafeAreaLayoutGuide_:Z

    return v0
.end method

.method public getLoadSkipoffset()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6235
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->loadSkipoffset_:I

    return v0
.end method

.method public getMraidCreativeValidationRequired()Z
    .registers 2

    .line 8749
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->mraidCreativeValidationRequired_:Z

    return v0
.end method

.method public getMutableCustomParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6837
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceholderTimeout()F
    .registers 2

    .line 8149
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->placeholderTimeout_:F

    return v0
.end method

.method public getPreload()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6192
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->preload_:Z

    return v0
.end method

.method public getPreloadAd()Z
    .registers 2

    .line 8032
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->preloadAd_:Z

    return v0
.end method

.method public getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 2

    .line 7557
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7558
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    :cond_c
    return-object v0

    .line 7560
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object v0
.end method

.method public getProgressBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 7650
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7651
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getProgressFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    return-object v0
.end method

.method public getProgressDuration()I
    .registers 2

    .line 7700
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressDuration_:I

    return v0
.end method

.method public getProgressOrBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
    .registers 2

    .line 7661
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 7662
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;

    return-object v0

    .line 7664
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-nez v0, :cond_13

    .line 7665
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getR1()Z
    .registers 2

    .line 7010
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r1_:Z

    return v0
.end method

.method public getR1Delay()I
    .registers 2

    .line 7903
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r1Delay_:I

    return v0
.end method

.method public getR2()Z
    .registers 2

    .line 7053
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r2_:Z

    return v0
.end method

.method public getRenderingConfiguration()Lio/bidmachine/protobuf/rendering/Rendering;
    .registers 2

    .line 8606
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8607
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering;

    move-result-object v0

    :cond_c
    return-object v0

    .line 8609
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/rendering/Rendering;

    return-object v0
.end method

.method public getRenderingConfigurationBuilder()Lio/bidmachine/protobuf/rendering/Rendering$Builder;
    .registers 2

    .line 8699
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8700
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getRenderingConfigurationFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/rendering/Rendering$Builder;

    return-object v0
.end method

.method public getRenderingConfigurationOrBuilder()Lio/bidmachine/protobuf/rendering/RenderingOrBuilder;
    .registers 2

    .line 8710
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 8711
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/rendering/RenderingOrBuilder;

    return-object v0

    .line 8713
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    if-nez v0, :cond_13

    .line 8714
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getSkipoffset()I
    .registers 2

    .line 6881
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->skipoffset_:I

    return v0
.end method

.method public getStoreUrl()Ljava/lang/String;
    .registers 3

    .line 7448
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->storeUrl_:Ljava/lang/Object;

    .line 7449
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 7450
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 7452
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7453
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->storeUrl_:Ljava/lang/Object;

    return-object v0

    .line 7456
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStoreUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 7469
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->storeUrl_:Ljava/lang/Object;

    .line 7470
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 7471
    check-cast v0, Ljava/lang/String;

    .line 7472
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 7474
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->storeUrl_:Ljava/lang/Object;

    return-object v0

    .line 7477
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getUseEmbeddedBrowser()Z
    .registers 2

    .line 7989
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->useEmbeddedBrowser_:Z

    return v0
.end method

.method public getUseNativeClose()Z
    .registers 2

    .line 6967
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->useNativeClose_:Z

    return v0
.end method

.method public getViewabilityConfiguration()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
    .registers 2

    .line 8890
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8891
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityConfiguration_:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v0

    :cond_c
    return-object v0

    .line 8893
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    return-object v0
.end method

.method public getViewabilityConfigurationBuilder()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;
    .registers 2

    .line 8983
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    .line 8984
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8985
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getViewabilityConfigurationFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    return-object v0
.end method

.method public getViewabilityConfigurationOrBuilder()Lio/bidmachine/protobuf/sdk/ViewabilityConfigurationOrBuilder;
    .registers 2

    .line 8995
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 8996
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/ViewabilityConfigurationOrBuilder;

    return-object v0

    .line 8998
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityConfiguration_:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    if-nez v0, :cond_13

    .line 8999
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getViewabilityDurationThreshold()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6368
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityDurationThreshold_:F

    return v0
.end method

.method public getViewabilityIgnoreOverlap()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8347
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityIgnoreOverlap_:Z

    return v0
.end method

.method public getViewabilityIgnoreWindowFocus()Z
    .registers 2

    .line 7743
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityIgnoreWindowFocus_:Z

    return v0
.end method

.method public getViewabilityPixelThreshold()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6322
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityPixelThreshold_:F

    return v0
.end method

.method public getViewabilityTimeThreshold()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6278
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityTimeThreshold_:I

    return v0
.end method

.method public hasCloseButton()Z
    .registers 2

    .line 7252
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

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

.method public hasCountdown()Z
    .registers 2

    .line 7097
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

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

.method public hasCreativeExtension()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8391
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtensionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

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

    .line 8193
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

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

.method public hasProgress()Z
    .registers 2

    .line 7546
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

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

.method public hasRenderingConfiguration()Z
    .registers 2

    .line 8595
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

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

.method public hasViewabilityConfiguration()Z
    .registers 2

    .line 8879
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 5739
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AdExtension;

    const-class v2, Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 5740
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .registers 5

    const/16 v0, 0x8

    if-ne p1, v0, :cond_9

    .line 5719
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 5721
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

    .line 5730
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 5732
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

.method public mergeCloseButton(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 7315
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 7316
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v0, :cond_17

    .line 7318
    invoke-static {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->newBuilder(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto :goto_19

    .line 7320
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 7322
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7324
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeCountdown(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 7160
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 7161
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v0, :cond_17

    .line 7163
    invoke-static {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->newBuilder(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto :goto_19

    .line 7165
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 7167
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7169
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeCreativeExtension(Lio/bidmachine/protobuf/CreativeExtension;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8454
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtensionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 8455
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    if-eqz v0, :cond_17

    .line 8457
    invoke-static {v0}, Lio/bidmachine/protobuf/CreativeExtension;->newBuilder(Lio/bidmachine/protobuf/CreativeExtension;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/CreativeExtension;)Lio/bidmachine/protobuf/CreativeExtension$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    goto :goto_19

    .line 8459
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    .line 8461
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8463
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeEventConfiguration(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 8256
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 8257
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    if-eqz v0, :cond_17

    .line 8259
    invoke-static {v0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->newBuilder(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    goto :goto_19

    .line 8261
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 8263
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8265
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

    .line 5705
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5705
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdExtension$Builder;

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

    .line 5705
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$Builder;

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

    .line 5705
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5705
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdExtension$Builder;

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

    .line 5705
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6168
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension;->access$9300()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 6174
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdExtension$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 6170
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/AdExtension;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 6171
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

    .line 6174
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6176
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 6010
    instance-of v0, p1, Lio/bidmachine/protobuf/AdExtension;

    if-eqz v0, :cond_b

    .line 6011
    check-cast p1, Lio/bidmachine/protobuf/AdExtension;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1

    .line 6013
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 5

    .line 6019
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 6020
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getPreload()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6021
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getPreload()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setPreload(Z)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6023
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getLoadSkipoffset()I

    move-result v0

    if-eqz v0, :cond_21

    .line 6024
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getLoadSkipoffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setLoadSkipoffset(I)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6026
    :cond_21
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityTimeThreshold()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 6027
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityTimeThreshold()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setViewabilityTimeThreshold(I)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6029
    :cond_2e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityPixelThreshold()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3e

    .line 6030
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityPixelThreshold()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setViewabilityPixelThreshold(F)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6032
    :cond_3e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityDurationThreshold()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4d

    .line 6033
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityDurationThreshold()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setViewabilityDurationThreshold(F)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6035
    :cond_4d
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_80

    .line 6036
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension;->access$5800(Lio/bidmachine/protobuf/AdExtension;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bc

    .line 6037
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 6038
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension;->access$5800(Lio/bidmachine/protobuf/AdExtension;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    .line 6039
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    goto :goto_7c

    .line 6041
    :cond_70
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->ensureEventIsMutable()V

    .line 6042
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension;->access$5800(Lio/bidmachine/protobuf/AdExtension;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6044
    :goto_7c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_bc

    .line 6047
    :cond_80
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension;->access$5800(Lio/bidmachine/protobuf/AdExtension;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bc

    .line 6048
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 6049
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 6050
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 6051
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension;->access$5800(Lio/bidmachine/protobuf/AdExtension;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    .line 6052
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    .line 6054
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension;->access$9000()Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 6055
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_b0
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_bc

    .line 6057
    :cond_b3
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension;->access$5800(Lio/bidmachine/protobuf/AdExtension;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 6061
    :cond_bc
    :goto_bc
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    .line 6062
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension;->access$9100(Lio/bidmachine/protobuf/AdExtension;)Lcom/explorestack/protobuf/MapField;

    move-result-object v2

    .line 6061
    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/MapField;->mergeFrom(Lcom/explorestack/protobuf/MapField;)V

    .line 6063
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getSkipoffset()I

    move-result v0

    if-eqz v0, :cond_d4

    .line 6064
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getSkipoffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setSkipoffset(I)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6066
    :cond_d4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCompanionSkipoffset()I

    move-result v0

    if-eqz v0, :cond_e1

    .line 6067
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCompanionSkipoffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setCompanionSkipoffset(I)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6069
    :cond_e1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getUseNativeClose()Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 6070
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getUseNativeClose()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setUseNativeClose(Z)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6072
    :cond_ee
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getR1()Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 6073
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getR1()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setR1(Z)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6075
    :cond_fb
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getR2()Z

    move-result v0

    if-eqz v0, :cond_108

    .line 6076
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getR2()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setR2(Z)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6078
    :cond_108
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasCountdown()Z

    move-result v0

    if-eqz v0, :cond_115

    .line 6079
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeCountdown(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6081
    :cond_115
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasCloseButton()Z

    move-result v0

    if-eqz v0, :cond_122

    .line 6082
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeCloseButton(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6084
    :cond_122
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getIgnoresSafeAreaLayoutGuide()Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 6085
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getIgnoresSafeAreaLayoutGuide()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setIgnoresSafeAreaLayoutGuide(Z)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6087
    :cond_12f
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getStoreUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_142

    .line 6088
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension;->access$6800(Lio/bidmachine/protobuf/AdExtension;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->storeUrl_:Ljava/lang/Object;

    .line 6089
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6091
    :cond_142
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasProgress()Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 6092
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeProgress(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6094
    :cond_14f
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getProgressDuration()I

    move-result v0

    if-eqz v0, :cond_15c

    .line 6095
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getProgressDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setProgressDuration(I)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6097
    :cond_15c
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_169

    .line 6098
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreWindowFocus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setViewabilityIgnoreWindowFocus(Z)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6100
    :cond_169
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension;->access$7200(Lio/bidmachine/protobuf/AdExtension;)I

    move-result v0

    if-eqz v0, :cond_176

    .line 6101
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getAdCacheControlValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setAdCacheControlValue(I)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6103
    :cond_176
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getAdCacheMaxAge()I

    move-result v0

    if-eqz v0, :cond_183

    .line 6104
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getAdCacheMaxAge()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setAdCacheMaxAge(I)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6106
    :cond_183
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getR1Delay()I

    move-result v0

    if-eqz v0, :cond_190

    .line 6107
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getR1Delay()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setR1Delay(I)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6109
    :cond_190
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getAdMarkupLoadingTimeout()I

    move-result v0

    if-eqz v0, :cond_19d

    .line 6110
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getAdMarkupLoadingTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setAdMarkupLoadingTimeout(I)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6112
    :cond_19d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getUseEmbeddedBrowser()Z

    move-result v0

    if-eqz v0, :cond_1aa

    .line 6113
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getUseEmbeddedBrowser()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setUseEmbeddedBrowser(Z)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6115
    :cond_1aa
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getPreloadAd()Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 6116
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getPreloadAd()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setPreloadAd(Z)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6118
    :cond_1b7
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension;->access$7800(Lio/bidmachine/protobuf/AdExtension;)I

    move-result v0

    if-eqz v0, :cond_1c4

    .line 6119
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCreativeLoadingMethodValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setCreativeLoadingMethodValue(I)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6121
    :cond_1c4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getPlaceholderTimeout()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1d3

    .line 6122
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getPlaceholderTimeout()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setPlaceholderTimeout(F)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6124
    :cond_1d3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasEventConfiguration()Z

    move-result v0

    if-eqz v0, :cond_1e0

    .line 6125
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeEventConfiguration(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6127
    :cond_1e0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreOverlap()Z

    move-result v0

    if-eqz v0, :cond_1ed

    .line 6128
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreOverlap()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setViewabilityIgnoreOverlap(Z)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6130
    :cond_1ed
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasCreativeExtension()Z

    move-result v0

    if-eqz v0, :cond_1fa

    .line 6131
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCreativeExtension()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeCreativeExtension(Lio/bidmachine/protobuf/CreativeExtension;)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6133
    :cond_1fa
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getAdFlexibleSize()Z

    move-result v0

    if-eqz v0, :cond_207

    .line 6134
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getAdFlexibleSize()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setAdFlexibleSize(Z)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6136
    :cond_207
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasRenderingConfiguration()Z

    move-result v0

    if-eqz v0, :cond_214

    .line 6137
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getRenderingConfiguration()Lio/bidmachine/protobuf/rendering/Rendering;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeRenderingConfiguration(Lio/bidmachine/protobuf/rendering/Rendering;)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6139
    :cond_214
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getMraidCreativeValidationRequired()Z

    move-result v0

    if-eqz v0, :cond_221

    .line 6140
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getMraidCreativeValidationRequired()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setMraidCreativeValidationRequired(Z)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6142
    :cond_221
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCreativeLoadingTimeout()I

    move-result v0

    if-eqz v0, :cond_22e

    .line 6143
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCreativeLoadingTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setCreativeLoadingTimeout(I)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6145
    :cond_22e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCridMonitoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_23b

    .line 6146
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCridMonitoringEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->setCridMonitoringEnabled(Z)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6148
    :cond_23b
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasViewabilityConfiguration()Z

    move-result v0

    if-eqz v0, :cond_248

    .line 6149
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityConfiguration()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeViewabilityConfiguration(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6151
    :cond_248
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension;->access$9200(Lio/bidmachine/protobuf/AdExtension;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 6152
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeProgress(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 7609
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 7610
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v0, :cond_17

    .line 7612
    invoke-static {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->newBuilder(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto :goto_19

    .line 7614
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 7616
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7618
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeRenderingConfiguration(Lio/bidmachine/protobuf/rendering/Rendering;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 8658
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 8659
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    if-eqz v0, :cond_17

    .line 8661
    invoke-static {v0}, Lio/bidmachine/protobuf/rendering/Rendering;->newBuilder(Lio/bidmachine/protobuf/rendering/Rendering;)Lio/bidmachine/protobuf/rendering/Rendering$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/rendering/Rendering$Builder;->mergeFrom(Lio/bidmachine/protobuf/rendering/Rendering;)Lio/bidmachine/protobuf/rendering/Rendering$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Builder;->buildPartial()Lio/bidmachine/protobuf/rendering/Rendering;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    goto :goto_19

    .line 8663
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    .line 8665
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8667
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 5705
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5705
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5705
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 9031
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$Builder;

    return-object p1
.end method

.method public mergeViewabilityConfiguration(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 4

    .line 8942
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2b

    .line 8943
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_25

    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityConfiguration_:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    if-eqz v0, :cond_25

    .line 8945
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 8946
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityConfiguration_:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    .line 8947
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->newBuilder(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityConfiguration_:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    goto :goto_27

    .line 8949
    :cond_25
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityConfiguration_:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    .line 8951
    :goto_27
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_2e

    .line 8953
    :cond_2b
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8955
    :goto_2e
    iget p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    return-object p0
.end method

.method public putAllCustomParams(Ljava/util/Map;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/AdExtension$Builder;"
        }
    .end annotation

    .line 6865
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 6866
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putCustomParams(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 4

    .line 6849
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6850
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6851
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 6852
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeCustomParams(Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 6826
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6827
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 6828
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeEvent(I)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 6616
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 6617
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->ensureEventIsMutable()V

    .line 6618
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6619
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6621
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public setAdCacheControl(Lio/bidmachine/protobuf/AdCacheControl;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 7827
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7830
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCacheControl;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->adCacheControl_:I

    .line 7831
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAdCacheControlValue(I)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 7798
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->adCacheControl_:I

    .line 7799
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAdCacheMaxAge(I)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 7873
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->adCacheMaxAge_:I

    .line 7874
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAdFlexibleSize(Z)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 8562
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->adFlexibleSize_:Z

    .line 8563
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAdMarkupLoadingTimeout(I)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 7959
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->adMarkupLoadingTimeout_:I

    .line 7960
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCloseButton(Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 7298
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 7299
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->build()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 7300
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7302
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->build()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCloseButton(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 7277
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButtonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7279
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7281
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 7282
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7284
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCompanionSkipoffset(I)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 6937
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->companionSkipoffset_:I

    .line 6938
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCountdown(Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 7143
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 7144
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->build()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 7145
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7147
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->build()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCountdown(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 7122
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdownBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7126
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 7127
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7129
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCreativeExtension(Lio/bidmachine/protobuf/CreativeExtension$Builder;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8437
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtensionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 8438
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    .line 8439
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8441
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeExtension$Builder;->build()Lio/bidmachine/protobuf/CreativeExtension;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCreativeExtension(Lio/bidmachine/protobuf/CreativeExtension;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8416
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtensionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8418
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8420
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeExtension_:Lio/bidmachine/protobuf/CreativeExtension;

    .line 8421
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8423
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCreativeLoadingMethod(Lio/bidmachine/protobuf/CreativeLoadingMethod;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 8116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8119
    invoke-virtual {p1}, Lio/bidmachine/protobuf/CreativeLoadingMethod;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeLoadingMethod_:I

    .line 8120
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCreativeLoadingMethodValue(I)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 8087
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeLoadingMethod_:I

    .line 8088
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCreativeLoadingTimeout(I)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 8805
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->creativeLoadingTimeout_:I

    .line 8806
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCridMonitoringEnabled(Z)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 8848
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->cridMonitoringEnabled_:Z

    .line 8849
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setEvent(ILcom/explorestack/protobuf/adcom/Ad$Event$Builder;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 4

    .line 6486
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 6487
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->ensureEventIsMutable()V

    .line 6488
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6489
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6491
    :cond_14
    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setEvent(ILcom/explorestack/protobuf/adcom/Ad$Event;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 4

    .line 6465
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 6467
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6469
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->ensureEventIsMutable()V

    .line 6470
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6471
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6473
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setEventConfiguration(Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 8239
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 8240
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->build()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 8241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8243
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->build()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setEventConfiguration(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 8218
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8220
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8222
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->eventConfiguration_:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 8223
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8225
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 5705
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 5705
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 5984
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$Builder;

    return-object p1
.end method

.method public setIgnoresSafeAreaLayoutGuide(Z)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 7419
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->ignoresSafeAreaLayoutGuide_:Z

    .line 7420
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setLoadSkipoffset(I)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6248
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->loadSkipoffset_:I

    .line 6249
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setMraidCreativeValidationRequired(Z)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 8762
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->mraidCreativeValidationRequired_:Z

    .line 8763
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setPlaceholderTimeout(F)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 8162
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->placeholderTimeout_:F

    .line 8163
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setPreload(Z)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6205
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->preload_:Z

    .line 6206
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setPreloadAd(Z)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 8045
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->preloadAd_:Z

    .line 8046
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setProgress(Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 7592
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 7593
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->build()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 7594
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7596
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->build()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setProgress(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 7571
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7573
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7575
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 7576
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7578
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setProgressDuration(I)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 7713
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->progressDuration_:I

    .line 7714
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setR1(Z)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 7023
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r1_:Z

    .line 7024
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setR1Delay(I)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 7916
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r1Delay_:I

    .line 7917
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setR2(Z)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 7066
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->r2_:Z

    .line 7067
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setRenderingConfiguration(Lio/bidmachine/protobuf/rendering/Rendering$Builder;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 8641
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 8642
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    .line 8643
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8645
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Builder;->build()Lio/bidmachine/protobuf/rendering/Rendering;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setRenderingConfiguration(Lio/bidmachine/protobuf/rendering/Rendering;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 8620
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8622
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8624
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->renderingConfiguration_:Lio/bidmachine/protobuf/rendering/Rendering;

    .line 8625
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8627
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 5705
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AdExtension$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 5705
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AdExtension$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 4

    .line 6000
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$Builder;

    return-object p1
.end method

.method public setSkipoffset(I)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 6894
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->skipoffset_:I

    .line 6895
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStoreUrl(Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 7492
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7495
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->storeUrl_:Ljava/lang/Object;

    .line 7496
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStoreUrlBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 7525
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7527
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension;->access$9400(Lcom/explorestack/protobuf/ByteString;)V

    .line 7529
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->storeUrl_:Ljava/lang/Object;

    .line 7530
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 5705
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 5705
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 9025
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$Builder;

    return-object p1
.end method

.method public setUseEmbeddedBrowser(Z)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 8002
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->useEmbeddedBrowser_:Z

    .line 8003
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setUseNativeClose(Z)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 6980
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->useNativeClose_:Z

    .line 6981
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setViewabilityConfiguration(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 8925
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 8926
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->build()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityConfiguration_:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    .line 8927
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 8929
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration$Builder;->build()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8931
    :goto_15
    iget p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    return-object p0
.end method

.method public setViewabilityConfiguration(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 3

    .line 8904
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityConfigurationBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8906
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8908
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityConfiguration_:Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    .line 8909
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 8911
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8913
    :goto_10
    iget p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->bitField0_:I

    return-object p0
.end method

.method public setViewabilityDurationThreshold(F)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6382
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityDurationThreshold_:F

    .line 6383
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setViewabilityIgnoreOverlap(Z)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8360
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityIgnoreOverlap_:Z

    .line 8361
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setViewabilityIgnoreWindowFocus(Z)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2

    .line 7756
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityIgnoreWindowFocus_:Z

    .line 7757
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setViewabilityPixelThreshold(F)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6336
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityPixelThreshold_:F

    .line 6337
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setViewabilityTimeThreshold(I)Lio/bidmachine/protobuf/AdExtension$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6291
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$Builder;->viewabilityTimeThreshold_:I

    .line 6292
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

###### Class io.bidmachine.protobuf.AdExtension.ControlAsset (io.bidmachine.protobuf.AdExtension$ControlAsset)
.class public final Lio/bidmachine/protobuf/AdExtension$ControlAsset;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "AdExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ControlAsset"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    }
.end annotation


# static fields
.field public static final CONTENT_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

.field public static final FILL_FIELD_NUMBER:I = 0x2

.field public static final FONT_STYLE_FIELD_NUMBER:I = 0x3

.field public static final HEIGHT_FIELD_NUMBER:I = 0x4

.field public static final HIDEAFTER_FIELD_NUMBER:I = 0x5

.field public static final MARGIN_FIELD_NUMBER:I = 0x6

.field public static final OPACITY_FIELD_NUMBER:I = 0x7

.field public static final OUTLINED_FIELD_NUMBER:I = 0x8

.field public static final PADDING_FIELD_NUMBER:I = 0x9

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHADOW_FIELD_NUMBER:I = 0xa

.field public static final STROKE_FIELD_NUMBER:I = 0xb

.field public static final STROKE_WIDTH_FIELD_NUMBER:I = 0x12

.field public static final STYLE_FIELD_NUMBER:I = 0xd

.field public static final VISIBLE_FIELD_NUMBER:I = 0xe

.field public static final WIDTH_FIELD_NUMBER:I = 0xf

.field public static final X_FIELD_NUMBER:I = 0x10

.field public static final Y_FIELD_NUMBER:I = 0x11

.field private static final serialVersionUID:J


# instance fields
.field private volatile content_:Ljava/lang/Object;

.field private volatile fill_:Ljava/lang/Object;

.field private fontStyle_:I

.field private height_:I

.field private hideafter_:I

.field private volatile margin_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private opacity_:F

.field private outlined_:Z

.field private volatile padding_:Ljava/lang/Object;

.field private volatile shadow_:Ljava/lang/Object;

.field private strokeWidth_:F

.field private volatile stroke_:Ljava/lang/Object;

.field private volatile style_:Ljava/lang/Object;

.field private visible_:Z

.field private width_:I

.field private volatile x_:Ljava/lang/Object;

.field private volatile y_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3138
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-direct {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 3146
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 630
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1332
    iput-byte v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->memoizedIsInitialized:B

    .line 631
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

    .line 632
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    .line 633
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    .line 634
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    .line 635
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    .line 636
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    .line 637
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    .line 638
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    .line 639
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 658
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;-><init>()V

    .line 660
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 663
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_b9

    .line 667
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_c4

    .line 767
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :sswitch_1b
    move v1, v3

    goto :goto_b

    :catchall_1d
    move-exception p1

    goto/16 :goto_af

    :catch_20
    move-exception p1

    goto/16 :goto_a0

    :catch_23
    move-exception p1

    goto/16 :goto_aa

    .line 763
    :sswitch_26
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->strokeWidth_:F

    goto :goto_b

    .line 756
    :sswitch_2d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 758
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    goto :goto_b

    .line 750
    :sswitch_34
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 752
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    goto :goto_b

    .line 746
    :sswitch_3b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->width_:I

    goto :goto_b

    .line 741
    :sswitch_42
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->visible_:Z

    goto :goto_b

    .line 734
    :sswitch_49
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 736
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    goto :goto_b

    .line 728
    :sswitch_50
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 730
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    goto :goto_b

    .line 722
    :sswitch_57
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 724
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    goto :goto_b

    .line 716
    :sswitch_5e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 718
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    goto :goto_b

    .line 712
    :sswitch_65
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->outlined_:Z

    goto :goto_b

    .line 707
    :sswitch_6c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->opacity_:F

    goto :goto_b

    .line 700
    :sswitch_73
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 702
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    goto :goto_b

    .line 696
    :sswitch_7a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->hideafter_:I

    goto :goto_b

    .line 691
    :sswitch_81
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->height_:I

    goto :goto_b

    .line 686
    :sswitch_88
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fontStyle_:I

    goto/16 :goto_b

    .line 679
    :sswitch_90
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 681
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    goto/16 :goto_b

    .line 673
    :sswitch_98
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 675
    iput-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;
    :try_end_9e
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_9e} :catch_23
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_9e} :catch_20
    .catchall {:try_start_d .. :try_end_9e} :catchall_1d

    goto/16 :goto_b

    .line 778
    :goto_a0
    :try_start_a0
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 779
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 776
    :goto_aa
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_af
    .catchall {:try_start_a0 .. :try_end_af} :catchall_1d

    .line 781
    :goto_af
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 782
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 783
    throw p1

    .line 781
    :cond_b9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 782
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_c4
    .sparse-switch
        0x0 -> :sswitch_1b
        0xa -> :sswitch_98
        0x12 -> :sswitch_90
        0x18 -> :sswitch_88
        0x20 -> :sswitch_81
        0x28 -> :sswitch_7a
        0x32 -> :sswitch_73
        0x3d -> :sswitch_6c
        0x40 -> :sswitch_65
        0x4a -> :sswitch_5e
        0x52 -> :sswitch_57
        0x5a -> :sswitch_50
        0x6a -> :sswitch_49
        0x70 -> :sswitch_42
        0x78 -> :sswitch_3b
        0x82 -> :sswitch_34
        0x8a -> :sswitch_2d
        0x95 -> :sswitch_26
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/AdExtension$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 621
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 628
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1332
    iput-byte p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AdExtension$1;)V
    .registers 3

    .line 621
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1002(Lio/bidmachine/protobuf/AdExtension$ControlAsset;F)F
    .registers 2

    .line 621
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->opacity_:F

    return p1
.end method

.method public static synthetic access$1102(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Z)Z
    .registers 2

    .line 621
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->outlined_:Z

    return p1
.end method

.method public static synthetic access$1200(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .registers 1

    .line 621
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1202(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 621
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1300(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .registers 1

    .line 621
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1302(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 621
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1400(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .registers 1

    .line 621
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1402(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 621
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1502(Lio/bidmachine/protobuf/AdExtension$ControlAsset;F)F
    .registers 2

    .line 621
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->strokeWidth_:F

    return p1
.end method

.method public static synthetic access$1600(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .registers 1

    .line 621
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1602(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 621
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1702(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Z)Z
    .registers 2

    .line 621
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->visible_:Z

    return p1
.end method

.method public static synthetic access$1802(Lio/bidmachine/protobuf/AdExtension$ControlAsset;I)I
    .registers 2

    .line 621
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->width_:I

    return p1
.end method

.method public static synthetic access$1900(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .registers 1

    .line 621
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1902(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 621
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 621
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2000(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .registers 1

    .line 621
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2002(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 621
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2100(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 621
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$2200()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 621
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$2300(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 621
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2400(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 621
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2500(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 621
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 621
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2700(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 621
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2800(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 621
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2900(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 621
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3000(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 621
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3100(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 621
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$400(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .registers 1

    .line 621
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 621
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$500(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .registers 1

    .line 621
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 621
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/AdExtension$ControlAsset;I)I
    .registers 2

    .line 621
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fontStyle_:I

    return p1
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/AdExtension$ControlAsset;I)I
    .registers 2

    .line 621
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->height_:I

    return p1
.end method

.method public static synthetic access$802(Lio/bidmachine/protobuf/AdExtension$ControlAsset;I)I
    .registers 2

    .line 621
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->hideafter_:I

    return p1
.end method

.method public static synthetic access$900(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .registers 1

    .line 621
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$902(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 621
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 1

    .line 3142
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 787
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_ControlAsset_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 1

    .line 1643
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->toBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 1646
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->toBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1616
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1617
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1623
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1624
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1584
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1590
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1629
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1630
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1636
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1637
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1604
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1605
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1611
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1612
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1573
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1579
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1594
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1600
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset;",
            ">;"
        }
    .end annotation

    .line 3157
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1475
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-nez v1, :cond_d

    .line 1476
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1478
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 1480
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 1481
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 1482
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFill()Ljava/lang/String;

    move-result-object v1

    .line 1483
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFill()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    .line 1484
    :cond_2e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFontStyle()I

    move-result v1

    .line 1485
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFontStyle()I

    move-result v3

    if-eq v1, v3, :cond_39

    return v2

    .line 1486
    :cond_39
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHeight()I

    move-result v1

    .line 1487
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHeight()I

    move-result v3

    if-eq v1, v3, :cond_44

    return v2

    .line 1488
    :cond_44
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHideafter()I

    move-result v1

    .line 1489
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHideafter()I

    move-result v3

    if-eq v1, v3, :cond_4f

    return v2

    .line 1490
    :cond_4f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getMargin()Ljava/lang/String;

    move-result-object v1

    .line 1491
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getMargin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    return v2

    .line 1492
    :cond_5e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOpacity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1494
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOpacity()F

    move-result v3

    .line 1493
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_71

    return v2

    .line 1495
    :cond_71
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOutlined()Z

    move-result v1

    .line 1496
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOutlined()Z

    move-result v3

    if-eq v1, v3, :cond_7c

    return v2

    .line 1497
    :cond_7c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getPadding()Ljava/lang/String;

    move-result-object v1

    .line 1498
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getPadding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    return v2

    .line 1499
    :cond_8b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getShadow()Ljava/lang/String;

    move-result-object v1

    .line 1500
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getShadow()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    return v2

    .line 1501
    :cond_9a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStroke()Ljava/lang/String;

    move-result-object v1

    .line 1502
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStroke()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a9

    return v2

    .line 1503
    :cond_a9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStrokeWidth()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1505
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStrokeWidth()F

    move-result v3

    .line 1504
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_bc

    return v2

    .line 1506
    :cond_bc
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStyle()Ljava/lang/String;

    move-result-object v1

    .line 1507
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cb

    return v2

    .line 1508
    :cond_cb
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getVisible()Z

    move-result v1

    .line 1509
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getVisible()Z

    move-result v3

    if-eq v1, v3, :cond_d6

    return v2

    .line 1510
    :cond_d6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getWidth()I

    move-result v1

    .line 1511
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getWidth()I

    move-result v3

    if-eq v1, v3, :cond_e1

    return v2

    .line 1512
    :cond_e1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getX()Ljava/lang/String;

    move-result-object v1

    .line 1513
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getX()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f0

    return v2

    .line 1514
    :cond_f0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getY()Ljava/lang/String;

    move-result-object v1

    .line 1515
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getY()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ff

    return v2

    .line 1516
    :cond_ff
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10a

    return v2

    :cond_10a
    return v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 3

    .line 810
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

    .line 811
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 812
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 814
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 816
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 817
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

    return-object v0
.end method

.method public getContentBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 832
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

    .line 833
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 834
    check-cast v0, Ljava/lang/String;

    .line 835
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 837
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

    return-object v0

    .line 840
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 621
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 621
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 2

    .line 3167
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object v0
.end method

.method public getFill()Ljava/lang/String;
    .registers 3

    .line 856
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    .line 857
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 858
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 860
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 862
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 863
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    return-object v0
.end method

.method public getFillBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 878
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    .line 879
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 880
    check-cast v0, Ljava/lang/String;

    .line 881
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 883
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    return-object v0

    .line 886
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getFontStyle()I
    .registers 2

    .line 902
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fontStyle_:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 917
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->height_:I

    return v0
.end method

.method public getHideafter()I
    .registers 2

    .line 932
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->hideafter_:I

    return v0
.end method

.method public getMargin()Ljava/lang/String;
    .registers 3

    .line 947
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    .line 948
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 949
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 951
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 953
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 954
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    return-object v0
.end method

.method public getMarginBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 969
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    .line 970
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 971
    check-cast v0, Ljava/lang/String;

    .line 972
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 974
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    return-object v0

    .line 977
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getOpacity()F
    .registers 2

    .line 993
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->opacity_:F

    return v0
.end method

.method public getOutlined()Z
    .registers 2

    .line 1008
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->outlined_:Z

    return v0
.end method

.method public getPadding()Ljava/lang/String;
    .registers 3

    .line 1023
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    .line 1024
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1025
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1027
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1029
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1030
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPaddingBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1045
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    .line 1046
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1047
    check-cast v0, Ljava/lang/String;

    .line 1048
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1050
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    return-object v0

    .line 1053
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset;",
            ">;"
        }
    .end annotation

    .line 3162
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 1402
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 1406
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getContentBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 1407
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 1409
    :goto_19
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFillBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    const/4 v1, 0x2

    .line 1410
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1412
    :cond_2b
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fontStyle_:I

    if-eqz v1, :cond_35

    const/4 v2, 0x3

    .line 1414
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1416
    :cond_35
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->height_:I

    if-eqz v1, :cond_3f

    const/4 v2, 0x4

    .line 1418
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1420
    :cond_3f
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->hideafter_:I

    if-eqz v1, :cond_49

    const/4 v2, 0x5

    .line 1422
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1424
    :cond_49
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getMarginBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5b

    const/4 v1, 0x6

    .line 1425
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1427
    :cond_5b
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->opacity_:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_68

    const/4 v3, 0x7

    .line 1429
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1431
    :cond_68
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->outlined_:Z

    if-eqz v1, :cond_73

    const/16 v3, 0x8

    .line 1433
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1435
    :cond_73
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getPaddingBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_86

    const/16 v1, 0x9

    .line 1436
    iget-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1438
    :cond_86
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getShadowBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_99

    const/16 v1, 0xa

    .line 1439
    iget-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1441
    :cond_99
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStrokeBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ac

    const/16 v1, 0xb

    .line 1442
    iget-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1444
    :cond_ac
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStyleBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_bf

    const/16 v1, 0xd

    .line 1445
    iget-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1447
    :cond_bf
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->visible_:Z

    if-eqz v1, :cond_ca

    const/16 v3, 0xe

    .line 1449
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1451
    :cond_ca
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->width_:I

    if-eqz v1, :cond_d5

    const/16 v3, 0xf

    .line 1453
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1455
    :cond_d5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getXBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e8

    const/16 v1, 0x10

    .line 1456
    iget-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1458
    :cond_e8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getYBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_fb

    const/16 v1, 0x11

    .line 1459
    iget-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1461
    :cond_fb
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->strokeWidth_:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_108

    const/16 v2, 0x12

    .line 1463
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1465
    :cond_108
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1466
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getShadow()Ljava/lang/String;
    .registers 3

    .line 1069
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    .line 1070
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1071
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1073
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1075
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1076
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    return-object v0
.end method

.method public getShadowBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1091
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    .line 1092
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1093
    check-cast v0, Ljava/lang/String;

    .line 1094
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1096
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    return-object v0

    .line 1099
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getStroke()Ljava/lang/String;
    .registers 3

    .line 1115
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    .line 1116
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1117
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1119
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1121
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1122
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    return-object v0
.end method

.method public getStrokeBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1137
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    .line 1138
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1139
    check-cast v0, Ljava/lang/String;

    .line 1140
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1142
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    return-object v0

    .line 1145
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getStrokeWidth()F
    .registers 2

    .line 1161
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->strokeWidth_:F

    return v0
.end method

.method public getStyle()Ljava/lang/String;
    .registers 3

    .line 1176
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    .line 1177
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1178
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1180
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1182
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1183
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    return-object v0
.end method

.method public getStyleBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1198
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    .line 1199
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1200
    check-cast v0, Ljava/lang/String;

    .line 1201
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1203
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    return-object v0

    .line 1206
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 652
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVisible()Z
    .registers 2

    .line 1222
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->visible_:Z

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 1237
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->width_:I

    return v0
.end method

.method public getX()Ljava/lang/String;
    .registers 3

    .line 1252
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    .line 1253
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1254
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1256
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1258
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1259
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    return-object v0
.end method

.method public getXBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1274
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    .line 1275
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1276
    check-cast v0, Ljava/lang/String;

    .line 1277
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1279
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    return-object v0

    .line 1282
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getY()Ljava/lang/String;
    .registers 3

    .line 1298
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    .line 1299
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1300
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1302
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1304
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1305
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    return-object v0
.end method

.method public getYBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1320
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    .line 1321
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1322
    check-cast v0, Ljava/lang/String;

    .line 1323
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1325
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    return-object v0

    .line 1328
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1522
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 1526
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 1528
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 1530
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFill()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 1532
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFontStyle()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 1534
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 1536
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHideafter()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 1538
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getMargin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 1541
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOpacity()F

    move-result v0

    .line 1540
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 1544
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOutlined()Z

    move-result v0

    .line 1543
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 1546
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getPadding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 1548
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getShadow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    .line 1550
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStroke()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x12

    mul-int/lit8 v1, v1, 0x35

    .line 1553
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStrokeWidth()F

    move-result v0

    .line 1552
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    .line 1555
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xe

    mul-int/lit8 v1, v1, 0x35

    .line 1558
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getVisible()Z

    move-result v0

    .line 1557
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x35

    .line 1560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getWidth()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x35

    .line 1562
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x11

    mul-int/lit8 v1, v1, 0x35

    .line 1564
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 1565
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1566
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 793
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_ControlAsset_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    const-class v2, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 794
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 1335
    iget-byte v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 1339
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 621
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->newBuilderForType()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 621
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 621
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->newBuilderForType()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 1641
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->newBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 4

    .line 1657
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AdExtension$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 646
    new-instance p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-direct {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 621
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->toBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 621
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->toBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 3

    .line 1650
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 1651
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;-><init>(Lio/bidmachine/protobuf/AdExtension$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;-><init>(Lio/bidmachine/protobuf/AdExtension$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1346
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getContentBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 1347
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1349
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFillBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x2

    .line 1350
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1352
    :cond_20
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fontStyle_:I

    if-eqz v0, :cond_28

    const/4 v1, 0x3

    .line 1353
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1355
    :cond_28
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->height_:I

    if-eqz v0, :cond_30

    const/4 v1, 0x4

    .line 1356
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1358
    :cond_30
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->hideafter_:I

    if-eqz v0, :cond_38

    const/4 v1, 0x5

    .line 1359
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1361
    :cond_38
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getMarginBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    const/4 v0, 0x6

    .line 1362
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1364
    :cond_48
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->opacity_:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_53

    const/4 v2, 0x7

    .line 1365
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1367
    :cond_53
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->outlined_:Z

    if-eqz v0, :cond_5c

    const/16 v2, 0x8

    .line 1368
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1370
    :cond_5c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getPaddingBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6d

    const/16 v0, 0x9

    .line 1371
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1373
    :cond_6d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getShadowBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7e

    const/16 v0, 0xa

    .line 1374
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1376
    :cond_7e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStrokeBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8f

    const/16 v0, 0xb

    .line 1377
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1379
    :cond_8f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStyleBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a0

    const/16 v0, 0xd

    .line 1380
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1382
    :cond_a0
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->visible_:Z

    if-eqz v0, :cond_a9

    const/16 v2, 0xe

    .line 1383
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1385
    :cond_a9
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->width_:I

    if-eqz v0, :cond_b2

    const/16 v2, 0xf

    .line 1386
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1388
    :cond_b2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getXBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c3

    const/16 v0, 0x10

    .line 1389
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1391
    :cond_c3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getYBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d4

    const/16 v0, 0x11

    .line 1392
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1394
    :cond_d4
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->strokeWidth_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_df

    const/16 v1, 0x12

    .line 1395
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1397
    :cond_df
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.AdExtension.ControlAsset.AnonymousClass1 (io.bidmachine.protobuf.AdExtension$ControlAsset$1)
.class Lio/bidmachine/protobuf/AdExtension$ControlAsset$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "AdExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdExtension$ControlAsset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/AdExtension$ControlAsset;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3146
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3152
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/AdExtension$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3146
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.AdExtension.ControlAsset.Builder (io.bidmachine.protobuf.AdExtension$ControlAsset$Builder)
.class public final Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AdExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdExtension$ControlAsset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;"
    }
.end annotation


# instance fields
.field private content_:Ljava/lang/Object;

.field private fill_:Ljava/lang/Object;

.field private fontStyle_:I

.field private height_:I

.field private hideafter_:I

.field private margin_:Ljava/lang/Object;

.field private opacity_:F

.field private outlined_:Z

.field private padding_:Ljava/lang/Object;

.field private shadow_:Ljava/lang/Object;

.field private strokeWidth_:F

.field private stroke_:Ljava/lang/Object;

.field private style_:Ljava/lang/Object;

.field private visible_:Z

.field private width_:I

.field private x_:Ljava/lang/Object;

.field private y_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1681
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1912
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->content_:Ljava/lang/Object;

    .line 2008
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fill_:Ljava/lang/Object;

    .line 2233
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->margin_:Ljava/lang/Object;

    .line 2415
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->padding_:Ljava/lang/Object;

    .line 2511
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->shadow_:Ljava/lang/Object;

    .line 2607
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->stroke_:Ljava/lang/Object;

    .line 2746
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->style_:Ljava/lang/Object;

    .line 2928
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->x_:Ljava/lang/Object;

    .line 3024
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->y_:Ljava/lang/Object;

    .line 1682
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 1687
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1912
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->content_:Ljava/lang/Object;

    .line 2008
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fill_:Ljava/lang/Object;

    .line 2233
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->margin_:Ljava/lang/Object;

    .line 2415
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->padding_:Ljava/lang/Object;

    .line 2511
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->shadow_:Ljava/lang/Object;

    .line 2607
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->stroke_:Ljava/lang/Object;

    .line 2746
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->style_:Ljava/lang/Object;

    .line 2928
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->x_:Ljava/lang/Object;

    .line 3024
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->y_:Ljava/lang/Object;

    .line 1688
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AdExtension$1;)V
    .registers 3

    .line 1663
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/AdExtension$1;)V
    .registers 2

    .line 1663
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1669
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_ControlAsset_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 1692
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1663
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1663
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 3

    .line 1809
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1663
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->build()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1663
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->build()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 3

    .line 1748
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    .line 1749
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 1750
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1663
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1663
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 3

    .line 1757
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AdExtension$1;)V

    .line 1758
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->content_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$402(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fill_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$502(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fontStyle_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$602(Lio/bidmachine/protobuf/AdExtension$ControlAsset;I)I

    .line 1761
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->height_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$702(Lio/bidmachine/protobuf/AdExtension$ControlAsset;I)I

    .line 1762
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->hideafter_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$802(Lio/bidmachine/protobuf/AdExtension$ControlAsset;I)I

    .line 1763
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->margin_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$902(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->opacity_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1002(Lio/bidmachine/protobuf/AdExtension$ControlAsset;F)F

    .line 1765
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->outlined_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1102(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Z)Z

    .line 1766
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->padding_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1202(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->shadow_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1302(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->stroke_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1402(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->strokeWidth_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1502(Lio/bidmachine/protobuf/AdExtension$ControlAsset;F)F

    .line 1770
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->style_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1602(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->visible_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1702(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Z)Z

    .line 1772
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->width_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1802(Lio/bidmachine/protobuf/AdExtension$ControlAsset;I)I

    .line 1773
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->x_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1902(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->y_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$2002(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1663
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clear()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1663
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clear()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1663
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clear()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1663
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clear()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 4

    .line 1697
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 1698
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->content_:Ljava/lang/Object;

    .line 1700
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fill_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1702
    iput v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fontStyle_:I

    .line 1704
    iput v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->height_:I

    .line 1706
    iput v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->hideafter_:I

    .line 1708
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->margin_:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1710
    iput v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->opacity_:F

    .line 1712
    iput-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->outlined_:Z

    .line 1714
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->padding_:Ljava/lang/Object;

    .line 1716
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->shadow_:Ljava/lang/Object;

    .line 1718
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->stroke_:Ljava/lang/Object;

    .line 1720
    iput v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->strokeWidth_:F

    .line 1722
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->style_:Ljava/lang/Object;

    .line 1724
    iput-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->visible_:Z

    .line 1726
    iput v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->width_:I

    .line 1728
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->x_:Ljava/lang/Object;

    .line 1730
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->y_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearContent()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 1983
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->content_:Ljava/lang/Object;

    .line 1984
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1663
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1663
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 1792
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    return-object p1
.end method

.method public clearFill()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2079
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFill()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fill_:Ljava/lang/Object;

    .line 2080
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFontStyle()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2142
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fontStyle_:I

    .line 2143
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearHeight()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2185
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->height_:I

    .line 2186
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearHideafter()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2228
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->hideafter_:I

    .line 2229
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMargin()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2304
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getMargin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->margin_:Ljava/lang/Object;

    .line 2305
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1663
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1663
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1663
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 1797
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    return-object p1
.end method

.method public clearOpacity()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2367
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->opacity_:F

    .line 2368
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOutlined()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2410
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->outlined_:Z

    .line 2411
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPadding()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2486
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getPadding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->padding_:Ljava/lang/Object;

    .line 2487
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearShadow()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2582
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getShadow()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->shadow_:Ljava/lang/Object;

    .line 2583
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStroke()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2678
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStroke()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->stroke_:Ljava/lang/Object;

    .line 2679
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStrokeWidth()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2741
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->strokeWidth_:F

    .line 2742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStyle()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2817
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStyle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->style_:Ljava/lang/Object;

    .line 2818
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVisible()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2880
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->visible_:Z

    .line 2881
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearWidth()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2923
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->width_:I

    .line 2924
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearX()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2999
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getX()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->x_:Ljava/lang/Object;

    .line 3000
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearY()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 3095
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->y_:Ljava/lang/Object;

    .line 3096
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1663
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 1663
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1663
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1663
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1663
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 1781
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1663
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 3

    .line 1922
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->content_:Ljava/lang/Object;

    .line 1923
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1924
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1926
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1927
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->content_:Ljava/lang/Object;

    return-object v0

    .line 1930
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1943
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->content_:Ljava/lang/Object;

    .line 1944
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1945
    check-cast v0, Ljava/lang/String;

    .line 1946
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1948
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->content_:Ljava/lang/Object;

    return-object v0

    .line 1951
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1663
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1663
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .registers 2

    .line 1743
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 1738
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_ControlAsset_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getFill()Ljava/lang/String;
    .registers 3

    .line 2018
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fill_:Ljava/lang/Object;

    .line 2019
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2020
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2022
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2023
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fill_:Ljava/lang/Object;

    return-object v0

    .line 2026
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFillBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2039
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fill_:Ljava/lang/Object;

    .line 2040
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2041
    check-cast v0, Ljava/lang/String;

    .line 2042
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2044
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fill_:Ljava/lang/Object;

    return-object v0

    .line 2047
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getFontStyle()I
    .registers 2

    .line 2115
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fontStyle_:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 2158
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->height_:I

    return v0
.end method

.method public getHideafter()I
    .registers 2

    .line 2201
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->hideafter_:I

    return v0
.end method

.method public getMargin()Ljava/lang/String;
    .registers 3

    .line 2243
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->margin_:Ljava/lang/Object;

    .line 2244
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2245
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2247
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2248
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->margin_:Ljava/lang/Object;

    return-object v0

    .line 2251
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMarginBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2264
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->margin_:Ljava/lang/Object;

    .line 2265
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2266
    check-cast v0, Ljava/lang/String;

    .line 2267
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2269
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->margin_:Ljava/lang/Object;

    return-object v0

    .line 2272
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getOpacity()F
    .registers 2

    .line 2340
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->opacity_:F

    return v0
.end method

.method public getOutlined()Z
    .registers 2

    .line 2383
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->outlined_:Z

    return v0
.end method

.method public getPadding()Ljava/lang/String;
    .registers 3

    .line 2425
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->padding_:Ljava/lang/Object;

    .line 2426
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2427
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2429
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2430
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->padding_:Ljava/lang/Object;

    return-object v0

    .line 2433
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPaddingBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2446
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->padding_:Ljava/lang/Object;

    .line 2447
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2448
    check-cast v0, Ljava/lang/String;

    .line 2449
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2451
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->padding_:Ljava/lang/Object;

    return-object v0

    .line 2454
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getShadow()Ljava/lang/String;
    .registers 3

    .line 2521
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->shadow_:Ljava/lang/Object;

    .line 2522
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2523
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2525
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2526
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->shadow_:Ljava/lang/Object;

    return-object v0

    .line 2529
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getShadowBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2542
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->shadow_:Ljava/lang/Object;

    .line 2543
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2544
    check-cast v0, Ljava/lang/String;

    .line 2545
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2547
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->shadow_:Ljava/lang/Object;

    return-object v0

    .line 2550
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getStroke()Ljava/lang/String;
    .registers 3

    .line 2617
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->stroke_:Ljava/lang/Object;

    .line 2618
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2619
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2621
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2622
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->stroke_:Ljava/lang/Object;

    return-object v0

    .line 2625
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStrokeBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2638
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->stroke_:Ljava/lang/Object;

    .line 2639
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2640
    check-cast v0, Ljava/lang/String;

    .line 2641
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2643
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->stroke_:Ljava/lang/Object;

    return-object v0

    .line 2646
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getStrokeWidth()F
    .registers 2

    .line 2714
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->strokeWidth_:F

    return v0
.end method

.method public getStyle()Ljava/lang/String;
    .registers 3

    .line 2756
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->style_:Ljava/lang/Object;

    .line 2757
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2758
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2760
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2761
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->style_:Ljava/lang/Object;

    return-object v0

    .line 2764
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStyleBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2777
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->style_:Ljava/lang/Object;

    .line 2778
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2779
    check-cast v0, Ljava/lang/String;

    .line 2780
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2782
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->style_:Ljava/lang/Object;

    return-object v0

    .line 2785
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getVisible()Z
    .registers 2

    .line 2853
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->visible_:Z

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 2896
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->width_:I

    return v0
.end method

.method public getX()Ljava/lang/String;
    .registers 3

    .line 2938
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->x_:Ljava/lang/Object;

    .line 2939
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2940
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2942
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2943
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->x_:Ljava/lang/Object;

    return-object v0

    .line 2946
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getXBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2959
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->x_:Ljava/lang/Object;

    .line 2960
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2961
    check-cast v0, Ljava/lang/String;

    .line 2962
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2964
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->x_:Ljava/lang/Object;

    return-object v0

    .line 2967
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getY()Ljava/lang/String;
    .registers 3

    .line 3034
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->y_:Ljava/lang/Object;

    .line 3035
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 3036
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3038
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3039
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->y_:Ljava/lang/Object;

    return-object v0

    .line 3042
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getYBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3055
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->y_:Ljava/lang/Object;

    .line 3056
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3057
    check-cast v0, Ljava/lang/String;

    .line 3058
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3060
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->y_:Ljava/lang/Object;

    return-object v0

    .line 3063
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 1675
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_ControlAsset_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    const-class v2, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 1676
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1663
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1663
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

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

    .line 1663
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

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

    .line 1663
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1663
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

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

    .line 1663
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1900
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$2200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 1906
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 1902
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 1903
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

    .line 1906
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 1908
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 3

    .line 1813
    instance-of v0, p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v0, :cond_b

    .line 1814
    check-cast p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1

    .line 1816
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 4

    .line 1822
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 1823
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1824
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$400(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->content_:Ljava/lang/Object;

    .line 1825
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1827
    :cond_1a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFill()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1828
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$500(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fill_:Ljava/lang/Object;

    .line 1829
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1831
    :cond_2d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFontStyle()I

    move-result v0

    if-eqz v0, :cond_3a

    .line 1832
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFontStyle()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setFontStyle(I)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 1834
    :cond_3a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHeight()I

    move-result v0

    if-eqz v0, :cond_47

    .line 1835
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setHeight(I)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 1837
    :cond_47
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHideafter()I

    move-result v0

    if-eqz v0, :cond_54

    .line 1838
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHideafter()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setHideafter(I)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 1840
    :cond_54
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getMargin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_67

    .line 1841
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$900(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->margin_:Ljava/lang/Object;

    .line 1842
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1844
    :cond_67
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOpacity()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_77

    .line 1845
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOpacity()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setOpacity(F)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 1847
    :cond_77
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOutlined()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 1848
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOutlined()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setOutlined(Z)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 1850
    :cond_84
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getPadding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_97

    .line 1851
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1200(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->padding_:Ljava/lang/Object;

    .line 1852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1854
    :cond_97
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getShadow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_aa

    .line 1855
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1300(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->shadow_:Ljava/lang/Object;

    .line 1856
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1858
    :cond_aa
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStroke()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bd

    .line 1859
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1400(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->stroke_:Ljava/lang/Object;

    .line 1860
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1862
    :cond_bd
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_cc

    .line 1863
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setStrokeWidth(F)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 1865
    :cond_cc
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_df

    .line 1866
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1600(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->style_:Ljava/lang/Object;

    .line 1867
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1869
    :cond_df
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 1870
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setVisible(Z)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 1872
    :cond_ec
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getWidth()I

    move-result v0

    if-eqz v0, :cond_f9

    .line 1873
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setWidth(I)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 1875
    :cond_f9
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10c

    .line 1876
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1900(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->x_:Ljava/lang/Object;

    .line 1877
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1879
    :cond_10c
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11f

    .line 1880
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$2000(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->y_:Ljava/lang/Object;

    .line 1881
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1883
    :cond_11f
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$2100(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 1884
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1663
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1663
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1663
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 3128
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    return-object p1
.end method

.method public setContent(Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 1966
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1969
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->content_:Ljava/lang/Object;

    .line 1970
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setContentBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 1999
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2001
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$2300(Lcom/explorestack/protobuf/ByteString;)V

    .line 2003
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->content_:Ljava/lang/Object;

    .line 2004
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1663
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1663
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 3

    .line 1787
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    return-object p1
.end method

.method public setFill(Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2062
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2065
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fill_:Ljava/lang/Object;

    .line 2066
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setFillBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2095
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2097
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$2400(Lcom/explorestack/protobuf/ByteString;)V

    .line 2099
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fill_:Ljava/lang/Object;

    .line 2100
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setFontStyle(I)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2128
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fontStyle_:I

    .line 2129
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setHeight(I)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2171
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->height_:I

    .line 2172
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setHideafter(I)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2214
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->hideafter_:I

    .line 2215
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setMargin(Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2287
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2290
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->margin_:Ljava/lang/Object;

    .line 2291
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setMarginBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2320
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2322
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$2500(Lcom/explorestack/protobuf/ByteString;)V

    .line 2324
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->margin_:Ljava/lang/Object;

    .line 2325
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setOpacity(F)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2353
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->opacity_:F

    .line 2354
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setOutlined(Z)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2396
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->outlined_:Z

    .line 2397
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setPadding(Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2469
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2472
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->padding_:Ljava/lang/Object;

    .line 2473
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setPaddingBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2502
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2504
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$2600(Lcom/explorestack/protobuf/ByteString;)V

    .line 2506
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->padding_:Ljava/lang/Object;

    .line 2507
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 1663
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 1663
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 4

    .line 1803
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    return-object p1
.end method

.method public setShadow(Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2565
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2568
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->shadow_:Ljava/lang/Object;

    .line 2569
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setShadowBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2598
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2600
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$2700(Lcom/explorestack/protobuf/ByteString;)V

    .line 2602
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->shadow_:Ljava/lang/Object;

    .line 2603
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStroke(Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2661
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2664
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->stroke_:Ljava/lang/Object;

    .line 2665
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStrokeBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2694
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2696
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$2800(Lcom/explorestack/protobuf/ByteString;)V

    .line 2698
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->stroke_:Ljava/lang/Object;

    .line 2699
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStrokeWidth(F)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2727
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->strokeWidth_:F

    .line 2728
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStyle(Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2800
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2803
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->style_:Ljava/lang/Object;

    .line 2804
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStyleBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2833
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2835
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$2900(Lcom/explorestack/protobuf/ByteString;)V

    .line 2837
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->style_:Ljava/lang/Object;

    .line 2838
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1663
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1663
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 3122
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    return-object p1
.end method

.method public setVisible(Z)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2866
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->visible_:Z

    .line 2867
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setWidth(I)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2909
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->width_:I

    .line 2910
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setX(Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 2982
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2985
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->x_:Ljava/lang/Object;

    .line 2986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setXBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 3015
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3017
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$3000(Lcom/explorestack/protobuf/ByteString;)V

    .line 3019
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->x_:Ljava/lang/Object;

    .line 3020
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setY(Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 3078
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3081
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->y_:Ljava/lang/Object;

    .line 3082
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setYBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .registers 2

    .line 3111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3113
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$3100(Lcom/explorestack/protobuf/ByteString;)V

    .line 3115
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->y_:Ljava/lang/Object;

    .line 3116
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

###### Class io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder (io.bidmachine.protobuf.AdExtension$ControlAssetOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
.super Ljava/lang/Object;
.source "AdExtension.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ControlAssetOrBuilder"
.end annotation


# virtual methods
.method public abstract getContent()Ljava/lang/String;
.end method

.method public abstract getContentBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getFill()Ljava/lang/String;
.end method

.method public abstract getFillBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getFontStyle()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getHideafter()I
.end method

.method public abstract getMargin()Ljava/lang/String;
.end method

.method public abstract getMarginBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getOpacity()F
.end method

.method public abstract getOutlined()Z
.end method

.method public abstract getPadding()Ljava/lang/String;
.end method

.method public abstract getPaddingBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getShadow()Ljava/lang/String;
.end method

.method public abstract getShadowBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getStroke()Ljava/lang/String;
.end method

.method public abstract getStrokeBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getStrokeWidth()F
.end method

.method public abstract getStyle()Ljava/lang/String;
.end method

.method public abstract getStyleBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getVisible()Z
.end method

.method public abstract getWidth()I
.end method

.method public abstract getX()Ljava/lang/String;
.end method

.method public abstract getXBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getY()Ljava/lang/String;
.end method

.method public abstract getYBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract synthetic isInitialized()Z
.end method

###### Class io.bidmachine.protobuf.AdExtension.CustomParamsDefaultEntryHolder (io.bidmachine.protobuf.AdExtension$CustomParamsDefaultEntryHolder)
.class final Lio/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder;
.super Ljava/lang/Object;
.source "AdExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomParamsDefaultEntryHolder"
.end annotation


# static fields
.field static final defaultEntry:Lcom/explorestack/protobuf/MapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapEntry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 4352
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_CustomParamsEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->STRING:Lcom/explorestack/protobuf/WireFormat$FieldType;

    const-string v2, ""

    .line 4354
    invoke-static {v0, v1, v2, v1, v2}, Lcom/explorestack/protobuf/MapEntry;->newDefaultInstance(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 4350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.bidmachine.protobuf.AdExtension.EventConfiguration (io.bidmachine.protobuf.AdExtension$EventConfiguration)
.class public final Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "AdExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/AdExtension$EventConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final ACTIONS_FIELD_NUMBER:I = 0x3

.field public static final CONTEXT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdExtension$EventConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final URL_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private actionsMemoizedSerializedSize:I

.field private actions_:Lcom/explorestack/protobuf/Internal$IntList;

.field private volatile context_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 4177
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    invoke-direct {v0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 4185
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 3257
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 3492
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->actionsMemoizedSerializedSize:I

    .line 3494
    iput-byte v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->memoizedIsInitialized:B

    .line 3258
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->url_:Ljava/lang/Object;

    .line 3259
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->context_:Ljava/lang/Object;

    .line 3260
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3279
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;-><init>()V

    .line 3281
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3285
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_9f

    .line 3289
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2b

    const/16 v5, 0xa

    if-eq v3, v5, :cond_78

    const/16 v5, 0x12

    if-eq v3, v5, :cond_71

    const/16 v5, 0x18

    if-eq v3, v5, :cond_5e

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_33

    .line 3328
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_2b
    move v1, v4

    goto :goto_c

    :catchall_2d
    move-exception p1

    goto :goto_8e

    :catch_2f
    move-exception p1

    goto :goto_7f

    :catch_31
    move-exception p1

    goto :goto_89

    .line 3315
    :cond_33
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v3

    .line 3316
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    if-nez v2, :cond_4a

    .line 3317
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_4a

    .line 3318
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->newIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v5

    iput-object v5, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    move v2, v4

    .line 3321
    :cond_4a
    :goto_4a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_5a

    .line 3322
    iget-object v4, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/explorestack/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_4a

    .line 3324
    :cond_5a
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_c

    :cond_5e
    if-nez v2, :cond_67

    .line 3308
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->newIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    move v2, v4

    .line 3311
    :cond_67
    iget-object v3, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/explorestack/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_c

    .line 3301
    :cond_71
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 3303
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->context_:Ljava/lang/Object;

    goto :goto_c

    .line 3295
    :cond_78
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 3297
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->url_:Ljava/lang/Object;
    :try_end_7e
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_7e} :catch_31
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_7e} :catch_2f
    .catchall {:try_start_e .. :try_end_7e} :catchall_2d

    goto :goto_c

    .line 3339
    :goto_7f
    :try_start_7f
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 3340
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 3337
    :goto_89
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_8e
    .catchall {:try_start_7f .. :try_end_8e} :catchall_2d

    :goto_8e
    if-eqz v2, :cond_95

    .line 3343
    iget-object p2, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 3345
    :cond_95
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 3346
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 3347
    throw p1

    :cond_9f
    if-eqz v2, :cond_a6

    .line 3343
    iget-object p1, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 3345
    :cond_a6
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 3346
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/AdExtension$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3248
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 3255
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 3492
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->actionsMemoizedSerializedSize:I

    .line 3494
    iput-byte p1, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AdExtension$1;)V
    .registers 3

    .line 3248
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$3500()Z
    .registers 1

    .line 3248
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$3600()Lcom/explorestack/protobuf/Internal$IntList;
    .registers 1

    .line 3248
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$3800(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Ljava/lang/Object;
    .registers 1

    .line 3248
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->url_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3802(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 3248
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3900(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Ljava/lang/Object;
    .registers 1

    .line 3248
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->context_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3902(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 3248
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->context_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4000(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lcom/explorestack/protobuf/Internal$IntList;
    .registers 1

    .line 3248
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object p0
.end method

.method public static synthetic access$4002(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;
    .registers 2

    .line 3248
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object p1
.end method

.method public static synthetic access$4100(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 3248
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$4200()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 3248
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$4300(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3248
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$4400(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3248
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$4500()Lcom/explorestack/protobuf/Internal$IntList;
    .registers 1

    .line 3248
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$4600(Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;
    .registers 1

    .line 3248
    invoke-static {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$4700()Lcom/explorestack/protobuf/Internal$IntList;
    .registers 1

    .line 3248
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 1

    .line 4181
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 3351
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_EventConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 1

    .line 3669
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->toBuilder()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 2

    .line 3672
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->toBuilder()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3642
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3643
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3649
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3650
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3610
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3616
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3655
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3656
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3662
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3663
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3630
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3631
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3637
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3638
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3599
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3605
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3620
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3626
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdExtension$EventConfiguration;",
            ">;"
        }
    .end annotation

    .line 4196
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 3561
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    if-nez v1, :cond_d

    .line 3562
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3564
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 3566
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 3567
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 3568
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getContext()Ljava/lang/String;

    move-result-object v1

    .line 3569
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    .line 3570
    :cond_2e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getActionsList()Ljava/util/List;

    move-result-object v1

    .line 3571
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getActionsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    return v2

    .line 3572
    :cond_3d
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    return v2

    :cond_48
    return v0
.end method

.method public getActions(I)I
    .registers 3

    .line 3490
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getActionsCount()I
    .registers 2

    .line 3478
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getActionsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3467
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getContext()Ljava/lang/String;
    .registers 3

    .line 3420
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->context_:Ljava/lang/Object;

    .line 3421
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3422
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3424
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3426
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3427
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->context_:Ljava/lang/Object;

    return-object v0
.end method

.method public getContextBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3442
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->context_:Ljava/lang/Object;

    .line 3443
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3444
    check-cast v0, Ljava/lang/String;

    .line 3445
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3447
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->context_:Ljava/lang/Object;

    return-object v0

    .line 3450
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 3248
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 3248
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 2

    .line 4206
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdExtension$EventConfiguration;",
            ">;"
        }
    .end annotation

    .line 4201
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 3527
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 3531
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getUrlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 3532
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->url_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 3534
    :goto_1a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getContextBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    const/4 v2, 0x2

    .line 3535
    iget-object v3, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->context_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2c
    move v2, v1

    .line 3539
    :goto_2d
    iget-object v3, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_43

    .line 3540
    iget-object v3, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 3541
    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_43
    add-int/2addr v0, v2

    .line 3544
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getActionsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_55

    add-int/lit8 v0, v0, 0x1

    .line 3547
    invoke-static {v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 3549
    :cond_55
    iput v2, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->actionsMemoizedSerializedSize:I

    .line 3551
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3552
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 3273
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 3

    .line 3374
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->url_:Ljava/lang/Object;

    .line 3375
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3376
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3378
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3380
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3381
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->url_:Ljava/lang/Object;

    return-object v0
.end method

.method public getUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3396
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->url_:Ljava/lang/Object;

    .line 3397
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3398
    check-cast v0, Ljava/lang/String;

    .line 3399
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3401
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->url_:Ljava/lang/Object;

    return-object v0

    .line 3404
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 3578
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 3582
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 3584
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 3586
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getContext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3587
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getActionsCount()I

    move-result v0

    if-lez v0, :cond_43

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 3589
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getActionsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_43
    mul-int/lit8 v1, v1, 0x1d

    .line 3591
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3592
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 3357
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_EventConfiguration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    const-class v2, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    .line 3358
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 3497
    iget-byte v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 3501
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3248
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->newBuilderForType()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3248
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 3248
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->newBuilderForType()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 2

    .line 3667
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->newBuilder()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 4

    .line 3683
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AdExtension$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 3267
    new-instance p1, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    invoke-direct {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3248
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->toBuilder()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 3248
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->toBuilder()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 3

    .line 3676
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 3677
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;-><init>(Lio/bidmachine/protobuf/AdExtension$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;-><init>(Lio/bidmachine/protobuf/AdExtension$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3508
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getSerializedSize()I

    .line 3509
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getUrlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 3510
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->url_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3512
    :cond_13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getContextBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x2

    .line 3513
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->context_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3515
    :cond_23
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getActionsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_37

    const/16 v0, 0x1a

    .line 3516
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 3517
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->actionsMemoizedSerializedSize:I

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    :cond_37
    const/4 v0, 0x0

    .line 3519
    :goto_38
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4c

    .line 3520
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v1, v0}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 3522
    :cond_4c
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.AdExtension.EventConfiguration.AnonymousClass1 (io.bidmachine.protobuf.AdExtension$EventConfiguration$1)
.class Lio/bidmachine/protobuf/AdExtension$EventConfiguration$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "AdExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/AdExtension$EventConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4185
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4191
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/AdExtension$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4185
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.AdExtension.EventConfiguration.Builder (io.bidmachine.protobuf.AdExtension$EventConfiguration$Builder)
.class public final Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AdExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/AdExtension$EventConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/AdExtension$EventConfigurationOrBuilder;"
    }
.end annotation


# instance fields
.field private actions_:Lcom/explorestack/protobuf/Internal$IntList;

.field private bitField0_:I

.field private context_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 3707
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 3860
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->url_:Ljava/lang/Object;

    .line 3956
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->context_:Ljava/lang/Object;

    .line 4052
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->access$4500()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 3708
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 3713
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 3860
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->url_:Ljava/lang/Object;

    .line 3956
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->context_:Ljava/lang/Object;

    .line 4052
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->access$4500()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 3714
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AdExtension$1;)V
    .registers 3

    .line 3689
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/AdExtension$1;)V
    .registers 2

    .line 3689
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;-><init>()V

    return-void
.end method

.method private ensureActionsIsMutable()V
    .registers 2

    .line 4054
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_14

    .line 4055
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {v0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->access$4600(Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 4056
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->bitField0_:I

    :cond_14
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 3695
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_EventConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 3718
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->access$3500()Z

    return-void
.end method


# virtual methods
.method public addActions(I)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 3

    .line 4122
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->ensureActionsIsMutable()V

    .line 4123
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$IntList;->addInt(I)V

    .line 4124
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllActions(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;"
        }
    .end annotation

    .line 4138
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->ensureActionsIsMutable()V

    .line 4139
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 4141
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 3689
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 3689
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 3

    .line 3798
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 3689
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->build()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 3689
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->build()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 3

    .line 3746
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    .line 3747
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 3748
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 3689
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 3689
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 3

    .line 3755
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AdExtension$1;)V

    .line 3757
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->url_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->access$3802(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3758
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->context_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->access$3902(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3759
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_21

    .line 3760
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 3761
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->bitField0_:I

    .line 3763
    :cond_21
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->access$4002(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;

    .line 3764
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3689
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->clear()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3689
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->clear()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3689
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->clear()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 3689
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->clear()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 2

    .line 3723
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 3724
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->url_:Ljava/lang/Object;

    .line 3726
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->context_:Ljava/lang/Object;

    .line 3728
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->access$3600()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 3729
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearActions()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 2

    .line 4153
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->access$4700()Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 4154
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->bitField0_:I

    .line 4155
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearContext()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 2

    .line 4027
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getContext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->context_:Ljava/lang/Object;

    .line 4028
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3689
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3689
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 2

    .line 3781
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3689
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3689
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3689
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 2

    .line 3786
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    return-object p1
.end method

.method public clearUrl()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 2

    .line 3931
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->url_:Ljava/lang/Object;

    .line 3932
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3689
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 3689
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3689
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3689
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 3689
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 2

    .line 3770
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3689
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActions(I)I
    .registers 3

    .line 4093
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getActionsCount()I
    .registers 2

    .line 4081
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getActionsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4069
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    .line 4070
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getContext()Ljava/lang/String;
    .registers 3

    .line 3966
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->context_:Ljava/lang/Object;

    .line 3967
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 3968
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3970
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3971
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->context_:Ljava/lang/Object;

    return-object v0

    .line 3974
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContextBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3987
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->context_:Ljava/lang/Object;

    .line 3988
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3989
    check-cast v0, Ljava/lang/String;

    .line 3990
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3992
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->context_:Ljava/lang/Object;

    return-object v0

    .line 3995
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 3689
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 3689
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .registers 2

    .line 3741
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 3736
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_EventConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 3

    .line 3870
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->url_:Ljava/lang/Object;

    .line 3871
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 3872
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3874
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3875
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->url_:Ljava/lang/Object;

    return-object v0

    .line 3878
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3891
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->url_:Ljava/lang/Object;

    .line 3892
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3893
    check-cast v0, Ljava/lang/String;

    .line 3894
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3896
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->url_:Ljava/lang/Object;

    return-object v0

    .line 3899
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 3701
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_EventConfiguration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    const-class v2, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    .line 3702
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3689
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3689
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

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

    .line 3689
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

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

    .line 3689
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3689
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

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

    .line 3689
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3847
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->access$4200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 3853
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 3849
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 3850
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

    .line 3853
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    .line 3855
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 3

    .line 3802
    instance-of v0, p1, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    if-eqz v0, :cond_b

    .line 3803
    check-cast p1, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object p1

    return-object p1

    .line 3805
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 4

    .line 3811
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 3812
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 3813
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->access$3800(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->url_:Ljava/lang/Object;

    .line 3814
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 3816
    :cond_1a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getContext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 3817
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->access$3900(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->context_:Ljava/lang/Object;

    .line 3818
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 3820
    :cond_2d
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->access$4000(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 3821
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 3822
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->access$4000(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    .line 3823
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->bitField0_:I

    goto :goto_58

    .line 3825
    :cond_4c
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->ensureActionsIsMutable()V

    .line 3826
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->access$4000(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3828
    :goto_58
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 3830
    :cond_5b
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->access$4100(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    .line 3831
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3689
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3689
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3689
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 2

    .line 4167
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    return-object p1
.end method

.method public setActions(II)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 4

    .line 4107
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->ensureActionsIsMutable()V

    .line 4108
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->actions_:Lcom/explorestack/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/Internal$IntList;->setInt(II)I

    .line 4109
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setContext(Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 2

    .line 4010
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4013
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->context_:Ljava/lang/Object;

    .line 4014
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setContextBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 2

    .line 4043
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4045
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->access$4400(Lcom/explorestack/protobuf/ByteString;)V

    .line 4047
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->context_:Ljava/lang/Object;

    .line 4048
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 3689
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 3689
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 3

    .line 3776
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 3689
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 3689
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 4

    .line 3792
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3689
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3689
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 2

    .line 4161
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;

    return-object p1
.end method

.method public setUrl(Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 2

    .line 3914
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3917
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->url_:Ljava/lang/Object;

    .line 3918
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setUrlBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;
    .registers 2

    .line 3947
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3949
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->access$4300(Lcom/explorestack/protobuf/ByteString;)V

    .line 3951
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$EventConfiguration$Builder;->url_:Ljava/lang/Object;

    .line 3952
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

###### Class io.bidmachine.protobuf.AdExtension.EventConfigurationOrBuilder (io.bidmachine.protobuf.AdExtension$EventConfigurationOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/AdExtension$EventConfigurationOrBuilder;
.super Ljava/lang/Object;
.source "AdExtension.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventConfigurationOrBuilder"
.end annotation


# virtual methods
.method public abstract getActions(I)I
.end method

.method public abstract getActionsCount()I
.end method

.method public abstract getActionsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContext()Ljava/lang/String;
.end method

.method public abstract getContextBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getUrlBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract synthetic isInitialized()Z
.end method

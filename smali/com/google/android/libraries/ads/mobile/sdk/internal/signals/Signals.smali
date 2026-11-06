###### Class com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals (com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lads_mobile_sdk/nj3;


# instance fields
.field public adChoicesPlacement:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "preferred_ad_choices_position"
    .end annotation
.end field

.field public adEventId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fbs_aeid"
    .end annotation
.end field

.field public adIdPermission:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "adid_p"
    .end annotation
.end field

.field public adResponseEncryptionKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "arek"
    .end annotation
.end field

.field public adShieldSignal:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ms"
    .end annotation
.end field

.field public final adSizeArray:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "valid_ad_sizes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdSizeBundle;",
            ">;"
        }
    .end annotation
.end field

.field public final adTypes:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ad_types"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public adUnitId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "slotname"
    .end annotation
.end field

.field public adUnitQualitySignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdUnitQualitySignals;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ad_unit_quality_signals"
    .end annotation
.end field

.field public adUnitRequestSignals:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fwd_cld"
    .end annotation
.end field

.field public adUnitRequestSignalsObject:Lcom/google/gson/JsonArray;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fwd_cld_obj"
    .end annotation
.end field

.field public final adapterVersionData:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "installed_adapter_data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;",
            ">;"
        }
    .end annotation
.end field

.field public adaptiveSlot:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "inline_adaptive_slot"
    .end annotation
.end field

.field public additionalCapabilities:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extra_caps"
    .end annotation
.end field

.field public afmaVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "js"
    .end annotation
.end field

.field public appIdOrigin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apm_id_origin"
    .end annotation
.end field

.field public appInstanceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fbs_aiid"
    .end annotation
.end field

.field public appName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "an"
    .end annotation
.end field

.field public appSwitched:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_switched"
    .end annotation
.end field

.field public appVolume:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "android_app_volume"
    .end annotation
.end field

.field public appWebPropertyCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_wp_code"
    .end annotation
.end field

.field public applicationCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_code"
    .end annotation
.end field

.field public audioMode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "am"
    .end annotation
.end field

.field public buildApiLevel:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "build_api_level"
    .end annotation
.end field

.field public canOpenGeo:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cog"
    .end annotation
.end field

.field public canOpenHttp:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coh"
    .end annotation
.end field

.field public carrierCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "carrier"
    .end annotation
.end field

.field public clientEoid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_eoid"
    .end annotation
.end field

.field public clientEoidTimestampInMs:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_eoid_timestamp"
    .end annotation
.end field

.field public clientLanguageCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_hl"
    .end annotation
.end field

.field public clientOmidVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_omid_v"
    .end annotation
.end field

.field public clientRequestBuildingData:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "csrb_output"
    .end annotation
.end field

.field public commonCldSignals:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fwd_common_cld"
    .end annotation
.end field

.field public commonCldSignalsObject:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fwd_common_cld_obj"
    .end annotation
.end field

.field public contentUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field

.field public correlator:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "correlation_id"
    .end annotation
.end field

.field public countryCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gl"
    .end annotation
.end field

.field public creativeToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gct"
    .end annotation
.end field

.field public crossProcessRequest:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cpr"
    .end annotation
.end field

.field public csrbEcoData:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eco"
    .end annotation
.end field

.field public customClickGestureAllowTaps:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sccg_tap"
    .end annotation
.end field

.field public customClickGestureDirection:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sccg_dir"
    .end annotation
.end field

.field public customClickGestureEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ccg_on"
    .end annotation
.end field

.field public customMuteThisAdRequested:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "use_custom_mute"
    .end annotation
.end field

.field public customTargeting:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "custom_targeting"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public debugSignalsEnabled:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "de"
    .end annotation
.end field

.field public deviceCountryCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dgl"
    .end annotation
.end field

.field public deviceLanguageCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dlc"
    .end annotation
.end field

.field public final deviceSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device"
    .end annotation
.end field

.field public displayCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dspct"
    .end annotation
.end field

.field public displayLabel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dl"
    .end annotation
.end field

.field public enableNativeMediaOrientation:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enable_native_media_orientation"
    .end annotation
.end field

.field public excludedAppIds:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iconad_faids"
    .end annotation
.end field

.field public experimentIds:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eid"
    .end annotation
.end field

.field public fluidType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fluid"
    .end annotation
.end field

.field public format:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "format"
    .end annotation
.end field

.field public gmpAppId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gmp_app_id"
    .end annotation
.end field

.field public googleExtrasBundle:Landroid/os/Bundle;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extras"
    .end annotation
.end field

.field public final grantedPermissions:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "android_permissions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public granularVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ev"
    .end annotation
.end field

.field public holdingHand:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "holding_hand"
    .end annotation
.end field

.field public iconAdPlacement:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iconad_placement"
    .end annotation
.end field

.field public inMemorySdkCoreData:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "m_state"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public initiatorPackage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ini_pn"
    .end annotation
.end field

.field public inspectorExtras:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "inspector_extras"
    .end annotation
.end field

.field public installerPackage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ins_pn"
    .end annotation
.end field

.field private isAdapterInitConfigSet:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ic"
    .end annotation
.end field

.field public isAppMuted:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "android_app_muted"
    .end annotation
.end field

.field public isBannerRefreshRequest:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ibrr"
    .end annotation
.end field

.field public isBattlestarDevice:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_bstar"
    .end annotation
.end field

.field public isDecagon:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_decagon"
    .end annotation
.end field

.field public isDeviceHeld:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "idh"
    .end annotation
.end field

.field public isEmulator:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "simulator"
    .end annotation
.end field

.field public isGreaterThanMaxAllowedBannerSize:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_greater_than_max_allowed_banner_size"
    .end annotation
.end field

.field public isHsdpSupported:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lft"
    .end annotation
.end field

.field public isIconAdRequest:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iconad"
    .end annotation
.end field

.field public isImageLoadingDisabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disable_image_loading"
    .end annotation
.end field

.field public isLatchskyDevice:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_latchsky"
    .end annotation
.end field

.field public isMusicActive:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ma"
    .end annotation
.end field

.field public final isNonagon:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_nonagon"
    .end annotation
.end field

.field public isPictureInPictureAdRequest:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "picture_in_picture"
    .end annotation
.end field

.field public isPrefetchRequest:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_sdk_preload"
    .end annotation
.end field

.field public isRewarded:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rbv"
    .end annotation
.end field

.field public isRewardedInterstitial:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rbi"
    .end annotation
.end field

.field private isS2SRecursiveRequest:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s2s_rr"
    .end annotation
.end field

.field public isScarRequest:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scar"
    .end annotation
.end field

.field public isSpeakerPhoneOn:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sp"
    .end annotation
.end field

.field public isSwipeableInterstitial:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isi"
    .end annotation
.end field

.field public isTestRequest:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "test_request"
    .end annotation
.end field

.field public keywords:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "kw"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public languageCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hl"
    .end annotation
.end field

.field public final languageCodeList:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hl_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public linkedDevice:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "linked_device"
    .end annotation
.end field

.field public localSignals:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "l_signals"
    .end annotation
.end field

.field public manualImpressionsEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "d_imp_hdr"
    .end annotation
.end field

.field public marketVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mv"
    .end annotation
.end field

.field public maxAdContentRating:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max_ad_content_rating"
    .end annotation
.end field

.field public maxMusicVolume:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "muv_max"
    .end annotation
.end field

.field public maxScreenHoldDurationSeconds:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max_shd_s"
    .end annotation
.end field

.field public maxSlotHeight:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max_h"
    .end annotation
.end field

.field public maxSlotWidth:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max_w"
    .end annotation
.end field

.field public minMusicVolume:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "muv_min"
    .end annotation
.end field

.field public multipleAdSizeString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sz"
    .end annotation
.end field

.field public musicVolume:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "muv"
    .end annotation
.end field

.field public musicVolumePercent:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "muv_percent"
    .end annotation
.end field

.field public nativeCustomTemplates:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "native_custom_templates"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public nativeMediaOrientation:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "native_media_orientation"
    .end annotation
.end field

.field public nativeTemplates:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "native_templates"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public nativeVersion:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "native_version"
    .end annotation
.end field

.field public neighboringContentUrls:Ljava/util/Set;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "neighboring_content_urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public networkTypeCoarse:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cnt"
    .end annotation
.end field

.field public networkTypeFine:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gnt"
    .end annotation
.end field

.field public numberOfAdsRequested:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max_num_ads"
    .end annotation
.end field

.field public numberOfRegisteredWebViews:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nrwv"
    .end annotation
.end field

.field public omidPartnerName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_omid_p"
    .end annotation
.end field

.field public omidVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "omid_v"
    .end annotation
.end field

.field public orientation:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "u_so"
    .end annotation
.end field

.field public osVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "osver"
    .end annotation
.end field

.field public packageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pn"
    .end annotation
.end field

.field public parentAdConfig:Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parent_ad_config"
    .end annotation
.end field

.field public parentCommonConfig:Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parent_common_config"
    .end annotation
.end field

.field public persistentCacheRequest:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pcr"
    .end annotation
.end field

.field public final personallyIdentifiableInformation:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pii"
    .end annotation
.end field

.field public phoneOrientation:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phone_orientation"
    .end annotation
.end field

.field public phoneType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pt"
    .end annotation
.end field

.field public preProcessedSignals:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "p_signals"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public publisherPrivacyPersonalizationState:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ppt_p13n"
    .end annotation
.end field

.field public publisherProvidedId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ppid"
    .end annotation
.end field

.field public qualitySignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/QualitySignals;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quality_signals"
    .end annotation
.end field

.field public realTimeBiddingSignals:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rtb"
    .end annotation
.end field

.field public realTimeBiddingSignalsObject:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lads_mobile_sdk/m83;",
            ">;"
        }
    .end annotation
.end field

.field public requestAgent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "request_agent"
    .end annotation
.end field

.field public requestId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "request_id"
    .end annotation
.end field

.field public requestServerData:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "risd"
    .end annotation
.end field

.field public requestTimeMilliseconds:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start_signals_timestamp"
    .end annotation
.end field

.field public responsiveAutoFormat:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rafmt"
    .end annotation
.end field

.field public ringerMode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rm"
    .end annotation
.end field

.field public ringerVolume:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "riv"
    .end annotation
.end field

.field public roundedCornerBottomLeftDip:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rc_bl"
    .end annotation
.end field

.field public roundedCornerBottomRightDip:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rc_br"
    .end annotation
.end field

.field public roundedCornerTopLeftDip:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rc_tl"
    .end annotation
.end field

.field public roundedCornerTopRightDip:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rc_tr"
    .end annotation
.end field

.field public safeAreaMarginBottomDip:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sam_b"
    .end annotation
.end field

.field public safeAreaMarginLeftDip:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sam_l"
    .end annotation
.end field

.field public safeAreaMarginRightDip:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sam_r"
    .end annotation
.end field

.field public safeAreaMarginTopDip:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sam_t"
    .end annotation
.end field

.field public screenDensity:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "u_sd"
    .end annotation
.end field

.field public screenHeight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sh"
    .end annotation
.end field

.field public screenHeightDip:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "u_h"
    .end annotation
.end field

.field public screenWidth:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sw"
    .end annotation
.end field

.field public screenWidthDip:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "u_w"
    .end annotation
.end field

.field public final sdkEnvironment:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sdk_env"
    .end annotation
.end field

.field public sessionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "session_id"
    .end annotation
.end field

.field public sharedPreferenceSignals:Landroid/os/Bundle;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shared_pref"
    .end annotation
.end field

.field public shouldCollectAdResponseLogs:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "collect_response_logs"
    .end annotation
.end field

.field public signalType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signal_type"
    .end annotation
.end field

.field public submodel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "submodel"
    .end annotation
.end field

.field public tagForAgeTreatment:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tfat"
    .end annotation
.end field

.field public tagForChildDirectedTreatment:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tag_for_child_directed_treatment"
    .end annotation
.end field

.field public tagForUnderAgeOfConsent:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tag_for_under_age_of_consent"
    .end annotation
.end field

.field public targetApi:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "target_api"
    .end annotation
.end field

.field public testMode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "test_mode"
    .end annotation
.end field

.field public timeSinceCldUpdate:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cldut"
    .end annotation
.end field

.field private timeSinceSdkInitMs:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tsi"
    .end annotation
.end field

.field public transparentBackgroundSupported:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "support_transparent_background"
    .end annotation
.end field

.field public usesMediaView:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uses_media_view"
    .end annotation
.end field

.field public versionCode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vc"
    .end annotation
.end field

.field public versionName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vnm"
    .end annotation
.end field

.field public videoOptionsSignal:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lads_mobile_sdk/nj3;

    .line 1
    invoke-direct {v0}, Lads_mobile_sdk/nj3;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->Companion:Lads_mobile_sdk/nj3;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 173

    .line 206
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 252
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    .line 255
    new-instance v44, Ljava/util/LinkedHashMap;

    invoke-direct/range {v44 .. v44}, Ljava/util/LinkedHashMap;-><init>()V

    .line 259
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    .line 263
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;-><init>(I)V

    .line 276
    new-instance v3, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;

    invoke-direct {v3, v1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;-><init>(I)V

    .line 282
    new-instance v67, Landroid/os/Bundle;

    invoke-direct/range {v67 .. v67}, Landroid/os/Bundle;-><init>()V

    .line 315
    new-instance v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;

    invoke-direct {v4, v1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;-><init>(I)V

    .line 324
    new-instance v107, Ljava/util/ArrayList;

    invoke-direct/range {v107 .. v107}, Ljava/util/ArrayList;-><init>()V

    .line 325
    const-string v1, "0"

    move-object/from16 v60, v3

    const/4 v3, 0x0

    move-object/from16 v98, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, ""

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const-string v42, ""

    const/16 v45, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const-wide/16 v61, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const-string v78, ""

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const-string v92, ""

    const/16 v93, 0x0

    const/16 v94, 0x1

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    const/16 v99, 0x0

    const/16 v100, 0x0

    const/16 v101, 0x0

    const/16 v102, 0x0

    const/16 v103, 0x0

    const/16 v104, 0x0

    const/16 v105, 0x0

    const/16 v106, 0x0

    const/16 v108, 0x0

    const/16 v109, 0x0

    const/16 v110, 0x0

    const/16 v111, 0x0

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v114, 0x0

    const/16 v115, 0x0

    const/16 v116, 0x0

    const/16 v117, 0x0

    const/16 v118, 0x0

    const/16 v119, 0x0

    const/16 v120, 0x0

    const/16 v121, 0x0

    const/16 v122, 0x0

    const/16 v123, 0x0

    const/16 v124, 0x0

    const/16 v125, 0x0

    const/16 v126, 0x0

    const/16 v127, 0x0

    const/16 v128, 0x0

    const/16 v129, 0x0

    const/16 v130, 0x0

    const/16 v131, 0x0

    const/16 v132, 0x0

    const/16 v133, 0x0

    const/16 v134, 0x0

    const/16 v135, 0x0

    const/16 v136, 0x0

    const/16 v137, 0x0

    const/16 v138, 0x0

    const/16 v139, 0x0

    const/16 v140, 0x0

    const/16 v141, 0x0

    const/16 v142, 0x0

    const/16 v143, 0x0

    const/16 v144, 0x0

    const/16 v145, 0x0

    const/16 v146, 0x0

    const/16 v147, 0x0

    const/16 v148, 0x0

    const/16 v149, 0x0

    const/16 v150, 0x0

    const/16 v151, 0x0

    const/16 v152, 0x0

    const/16 v153, 0x0

    const/16 v154, 0x0

    const/16 v155, 0x0

    const/16 v156, 0x0

    const/16 v157, 0x0

    const/16 v158, 0x0

    const/16 v159, 0x0

    const/16 v160, 0x0

    const/16 v161, 0x0

    const/16 v162, 0x0

    const/16 v163, 0x0

    const/16 v164, 0x0

    const/16 v165, 0x0

    const/16 v166, 0x0

    const/16 v167, 0x0

    const/16 v168, 0x0

    const/16 v169, 0x0

    const/16 v170, 0x0

    const/16 v171, 0x0

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v171}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;-><init>(Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;JLjava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Integer;Lcom/google/gson/JsonObject;ZZLjava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;Ljava/lang/Boolean;Ljava/util/ArrayList;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/QualitySignals;IZZILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;IIFZLcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;JLjava/lang/String;Lcom/google/gson/JsonArray;Ljava/lang/String;Lcom/google/gson/JsonObject;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdUnitQualitySignals;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;Ljava/util/Map;Ljava/lang/Integer;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;JLjava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Integer;Lcom/google/gson/JsonObject;ZZLjava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;Ljava/lang/Boolean;Ljava/util/ArrayList;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/QualitySignals;IZZILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;IIFZLcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;JLjava/lang/String;Lcom/google/gson/JsonArray;Ljava/lang/String;Lcom/google/gson/JsonObject;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdUnitQualitySignals;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;Ljava/util/Map;Ljava/lang/Integer;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 172

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->adIdPermission:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->adSizeArray:Ljava/util/ArrayList;

    .line 8
    iput-boolean p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isGreaterThanMaxAllowedBannerSize:Z

    .line 11
    iput-object p4, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->responsiveAutoFormat:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->adaptiveSlot:Ljava/lang/Boolean;

    .line 13
    iput-object p6, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->format:Ljava/lang/String;

    .line 14
    iput-object p7, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->fluidType:Ljava/lang/String;

    .line 15
    iput-object p8, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->multipleAdSizeString:Ljava/lang/String;

    .line 16
    iput p9, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->screenDensity:F

    .line 17
    iput p10, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->screenWidth:I

    .line 18
    iput p11, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->screenHeight:I

    .line 19
    iput p12, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->screenWidthDip:I

    .line 20
    iput p13, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->screenHeightDip:I

    .line 21
    iput-object p14, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->orientation:Ljava/lang/String;

    .line 22
    iput-object p15, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->adUnitId:Ljava/lang/String;

    move-object/from16 p1, p16

    .line 23
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isRewarded:Ljava/lang/Boolean;

    move-object/from16 p1, p17

    .line 24
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isRewardedInterstitial:Ljava/lang/Boolean;

    move-wide/from16 p1, p18

    .line 25
    iput-wide p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->requestTimeMilliseconds:J

    move-object/from16 p1, p20

    .line 26
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->keywords:Ljava/util/ArrayList;

    move-object/from16 p1, p21

    .line 27
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->safeAreaMarginLeftDip:Ljava/lang/Integer;

    move-object/from16 p1, p22

    .line 28
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->safeAreaMarginTopDip:Ljava/lang/Integer;

    move-object/from16 p1, p23

    .line 29
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->safeAreaMarginRightDip:Ljava/lang/Integer;

    move-object/from16 p1, p24

    .line 30
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->safeAreaMarginBottomDip:Ljava/lang/Integer;

    move-object/from16 p1, p25

    .line 31
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->roundedCornerTopLeftDip:Ljava/lang/Integer;

    move-object/from16 p1, p26

    .line 32
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->roundedCornerTopRightDip:Ljava/lang/Integer;

    move-object/from16 p1, p27

    .line 33
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->roundedCornerBottomLeftDip:Ljava/lang/Integer;

    move-object/from16 p1, p28

    .line 34
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->roundedCornerBottomRightDip:Ljava/lang/Integer;

    move/from16 p1, p29

    .line 35
    iput p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->tagForChildDirectedTreatment:I

    move-object/from16 p1, p30

    .line 38
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->tagForAgeTreatment:Ljava/lang/Integer;

    move-object/from16 p1, p31

    .line 39
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->csrbEcoData:Lcom/google/gson/JsonObject;

    move/from16 p1, p32

    .line 40
    iput-boolean p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isTestRequest:Z

    move/from16 p1, p33

    .line 41
    iput-boolean p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->manualImpressionsEnabled:Z

    move-object/from16 p1, p34

    .line 42
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->publisherProvidedId:Ljava/lang/String;

    move-object/from16 p1, p35

    .line 43
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->contentUrl:Ljava/lang/String;

    move-object/from16 p1, p36

    .line 44
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->neighboringContentUrls:Ljava/util/Set;

    move-object/from16 p1, p37

    .line 47
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->customTargeting:Ljava/util/Map;

    move-object/from16 p1, p38

    .line 48
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->requestAgent:Ljava/lang/String;

    move/from16 p1, p39

    .line 49
    iput p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->tagForUnderAgeOfConsent:I

    move-object/from16 p1, p40

    .line 50
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->maxAdContentRating:Ljava/lang/String;

    move-object/from16 p1, p41

    .line 51
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->adResponseEncryptionKey:Ljava/lang/String;

    move-object/from16 p1, p42

    .line 52
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->adShieldSignal:Ljava/lang/String;

    move-object/from16 p1, p43

    .line 53
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->adTypes:Ljava/util/ArrayList;

    move-object/from16 p1, p44

    .line 54
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->adapterVersionData:Ljava/util/Map;

    move-object/from16 p1, p45

    .line 57
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->appSwitched:Ljava/lang/Boolean;

    move-object/from16 p1, p46

    .line 58
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->grantedPermissions:Ljava/util/ArrayList;

    move-object/from16 p1, p47

    .line 61
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->personallyIdentifiableInformation:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/PersonallyIdentifiableInformation;

    move-object/from16 p1, p48

    .line 65
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->qualitySignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/QualitySignals;

    move/from16 p1, p49

    .line 66
    iput p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->audioMode:I

    move/from16 p1, p50

    .line 67
    iput-boolean p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isMusicActive:Z

    move/from16 p1, p51

    .line 68
    iput-boolean p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isSpeakerPhoneOn:Z

    move/from16 p1, p52

    .line 69
    iput p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->musicVolume:I

    move-object/from16 p1, p53

    .line 70
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->minMusicVolume:Ljava/lang/Integer;

    move-object/from16 p1, p54

    .line 71
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->maxMusicVolume:Ljava/lang/Integer;

    move-object/from16 p1, p55

    .line 72
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->musicVolumePercent:Ljava/lang/Double;

    move/from16 p1, p56

    .line 73
    iput p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->ringerMode:I

    move/from16 p1, p57

    .line 74
    iput p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->ringerVolume:I

    move/from16 p1, p58

    .line 75
    iput p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->appVolume:F

    move/from16 p1, p59

    .line 76
    iput-boolean p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isAppMuted:Z

    move-object/from16 p1, p60

    .line 77
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->deviceSignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/DeviceSignals;

    move-wide/from16 p1, p61

    .line 78
    iput-wide p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->timeSinceCldUpdate:J

    move-object/from16 p1, p63

    .line 79
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->adUnitRequestSignals:Ljava/lang/String;

    move-object/from16 p1, p64

    .line 80
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->adUnitRequestSignalsObject:Lcom/google/gson/JsonArray;

    move-object/from16 p1, p65

    .line 81
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->commonCldSignals:Ljava/lang/String;

    move-object/from16 p1, p66

    .line 82
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->commonCldSignalsObject:Lcom/google/gson/JsonObject;

    move-object/from16 p1, p67

    .line 83
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->sharedPreferenceSignals:Landroid/os/Bundle;

    move-object/from16 p1, p68

    .line 84
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->creativeToken:Ljava/lang/String;

    move-object/from16 p1, p69

    .line 85
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->debugSignalsEnabled:Ljava/lang/String;

    move-object/from16 p1, p70

    .line 86
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->shouldCollectAdResponseLogs:Ljava/lang/Boolean;

    move/from16 p1, p71

    .line 89
    iput p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->testMode:I

    move/from16 p1, p72

    .line 90
    iput p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->linkedDevice:I

    move-object/from16 p1, p73

    .line 91
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->inspectorExtras:Ljava/lang/String;

    move-object/from16 p1, p74

    .line 92
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->requestServerData:Ljava/lang/Integer;

    move-object/from16 p1, p75

    .line 93
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->omidVersion:Ljava/lang/String;

    move-object/from16 p1, p76

    .line 94
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->clientOmidVersion:Ljava/lang/String;

    move-object/from16 p1, p77

    .line 95
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->omidPartnerName:Ljava/lang/String;

    move-object/from16 p1, p78

    .line 96
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->packageName:Ljava/lang/String;

    move-object/from16 p1, p79

    .line 97
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->versionCode:Ljava/lang/Integer;

    move-object/from16 p1, p80

    .line 98
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->appName:Ljava/lang/String;

    move-object/from16 p1, p81

    .line 99
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->versionName:Ljava/lang/String;

    move-object/from16 p1, p82

    .line 100
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->displayLabel:Ljava/lang/String;

    move-object/from16 p1, p83

    .line 101
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->requestId:Ljava/lang/String;

    move-object/from16 p1, p84

    .line 102
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->realTimeBiddingSignals:Ljava/lang/String;

    move-object/from16 p1, p85

    .line 103
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->realTimeBiddingSignalsObject:Ljava/util/List;

    move-object/from16 p1, p86

    .line 104
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->gmpAppId:Ljava/lang/String;

    move-object/from16 p1, p87

    .line 105
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->appInstanceId:Ljava/lang/String;

    move-object/from16 p1, p88

    .line 106
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->adEventId:Ljava/lang/String;

    move-object/from16 p1, p89

    .line 107
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->appIdOrigin:Ljava/lang/String;

    move-object/from16 p1, p90

    .line 108
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->appWebPropertyCode:Ljava/lang/String;

    move-object/from16 p1, p91

    .line 109
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->applicationCode:Ljava/lang/String;

    move-object/from16 p1, p92

    .line 110
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->afmaVersion:Ljava/lang/String;

    move/from16 p1, p93

    .line 111
    iput-boolean p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isNonagon:Z

    move/from16 p1, p94

    .line 112
    iput-boolean p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isDecagon:Z

    move-object/from16 p1, p95

    .line 113
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->additionalCapabilities:Ljava/lang/String;

    move-object/from16 p1, p96

    .line 114
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->targetApi:Ljava/lang/Integer;

    move-object/from16 p1, p97

    .line 115
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->granularVersion:Ljava/lang/String;

    move-object/from16 p1, p98

    .line 116
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->sdkEnvironment:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;

    move-object/from16 p1, p99

    .line 117
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->canOpenGeo:Ljava/lang/Boolean;

    move-object/from16 p1, p100

    .line 118
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->canOpenHttp:Ljava/lang/Boolean;

    move-object/from16 p1, p101

    .line 119
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->countryCode:Ljava/lang/String;

    move-object/from16 p1, p102

    .line 120
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->deviceCountryCode:Ljava/lang/String;

    move-object/from16 p1, p103

    .line 121
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isEmulator:Ljava/lang/Boolean;

    move/from16 p1, p104

    .line 122
    iput-boolean p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isLatchskyDevice:Z

    move-object/from16 p1, p105

    .line 123
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->languageCode:Ljava/lang/String;

    move-object/from16 p1, p106

    .line 124
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->clientLanguageCode:Ljava/lang/String;

    move-object/from16 p1, p107

    .line 125
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->languageCodeList:Ljava/util/ArrayList;

    move-object/from16 p1, p108

    .line 126
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->deviceLanguageCode:Ljava/lang/String;

    move-object/from16 p1, p109

    .line 127
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->marketVersion:Ljava/lang/String;

    move-object/from16 p1, p110

    .line 128
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->submodel:Ljava/lang/String;

    move-object/from16 p1, p111

    .line 129
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isBattlestarDevice:Ljava/lang/Boolean;

    move-object/from16 p1, p112

    .line 130
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->buildApiLevel:Ljava/lang/Integer;

    move-object/from16 p1, p113

    .line 131
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->osVersion:Ljava/lang/String;

    move-object/from16 p1, p114

    .line 132
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->carrierCode:Ljava/lang/String;

    move-object/from16 p1, p115

    .line 133
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->networkTypeCoarse:Ljava/lang/Integer;

    move-object/from16 p1, p116

    .line 134
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->networkTypeFine:Ljava/lang/Integer;

    move-object/from16 p1, p117

    .line 135
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->phoneType:Ljava/lang/Integer;

    move-object/from16 p1, p118

    .line 136
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->experimentIds:Ljava/lang/String;

    move-object/from16 p1, p119

    .line 137
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->transparentBackgroundSupported:Ljava/lang/Boolean;

    move-object/from16 p1, p120

    .line 140
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->sessionId:Ljava/lang/String;

    move-object/from16 p1, p121

    .line 141
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->adUnitQualitySignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdUnitQualitySignals;

    move-object/from16 p1, p122

    .line 144
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->googleExtrasBundle:Landroid/os/Bundle;

    move-object/from16 p1, p123

    .line 145
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->nativeVersion:Ljava/lang/Integer;

    move-object/from16 p1, p124

    .line 146
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->nativeTemplates:Ljava/util/List;

    move-object/from16 p1, p125

    .line 147
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->nativeCustomTemplates:Ljava/util/List;

    move-object/from16 p1, p126

    .line 150
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->enableNativeMediaOrientation:Ljava/lang/Boolean;

    move-object/from16 p1, p127

    .line 153
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->nativeMediaOrientation:Ljava/lang/String;

    move-object/from16 p1, p128

    .line 154
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->customMuteThisAdRequested:Ljava/lang/Boolean;

    move-object/from16 p1, p129

    .line 155
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->customClickGestureEnabled:Ljava/lang/Boolean;

    move-object/from16 p1, p130

    .line 156
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->customClickGestureDirection:Ljava/lang/Integer;

    move-object/from16 p1, p131

    .line 157
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->customClickGestureAllowTaps:Ljava/lang/Boolean;

    move-object/from16 p1, p132

    .line 158
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->videoOptionsSignal:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;

    move-object/from16 p1, p133

    .line 159
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isImageLoadingDisabled:Ljava/lang/Boolean;

    move-object/from16 p1, p134

    .line 160
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->adChoicesPlacement:Ljava/lang/Integer;

    move-object/from16 p1, p135

    .line 161
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->numberOfRegisteredWebViews:Ljava/lang/Integer;

    move-object/from16 p1, p136

    .line 162
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isBannerRefreshRequest:Ljava/lang/Boolean;

    move-object/from16 p1, p137

    .line 163
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isIconAdRequest:Ljava/lang/Boolean;

    move-object/from16 p1, p138

    .line 164
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isPictureInPictureAdRequest:Ljava/lang/Boolean;

    move-object/from16 p1, p139

    .line 165
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->iconAdPlacement:Ljava/lang/Integer;

    move-object/from16 p1, p140

    .line 166
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->excludedAppIds:Ljava/lang/String;

    move-object/from16 p1, p141

    .line 167
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->correlator:Ljava/lang/String;

    move-object/from16 p1, p142

    .line 168
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->usesMediaView:Ljava/lang/Boolean;

    move-object/from16 p1, p143

    .line 169
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->installerPackage:Ljava/lang/String;

    move-object/from16 p1, p144

    .line 170
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->initiatorPackage:Ljava/lang/String;

    move-object/from16 p1, p145

    .line 171
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->signalType:Ljava/lang/String;

    move-object/from16 p1, p146

    .line 172
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isScarRequest:Ljava/lang/Boolean;

    move-object/from16 p1, p147

    .line 173
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->publisherPrivacyPersonalizationState:Ljava/lang/Integer;

    move-object/from16 p1, p148

    .line 174
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isHsdpSupported:Ljava/lang/Integer;

    move-object/from16 p1, p149

    .line 175
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->preProcessedSignals:Ljava/util/Map;

    move-object/from16 p1, p150

    .line 176
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isPrefetchRequest:Ljava/lang/Boolean;

    move-object/from16 p1, p151

    .line 177
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->displayCount:Ljava/lang/Integer;

    move-object/from16 p1, p152

    .line 178
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->localSignals:Lcom/google/gson/JsonObject;

    move-object/from16 p1, p153

    .line 179
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->holdingHand:Ljava/lang/String;

    move-object/from16 p1, p154

    .line 180
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isDeviceHeld:Ljava/lang/Boolean;

    move-object/from16 p1, p155

    .line 181
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->phoneOrientation:Ljava/lang/Integer;

    move-object/from16 p1, p156

    .line 183
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->parentAdConfig:Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;

    move-object/from16 p1, p157

    .line 184
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->inMemorySdkCoreData:Ljava/util/Map;

    move-object/from16 p1, p158

    .line 185
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->numberOfAdsRequested:Ljava/lang/Integer;

    move-object/from16 p1, p159

    .line 186
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->clientRequestBuildingData:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;

    move-object/from16 p1, p160

    .line 189
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->parentCommonConfig:Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;

    move-object/from16 p1, p161

    .line 192
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->timeSinceSdkInitMs:Ljava/lang/Long;

    move-object/from16 p1, p162

    .line 193
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isS2SRecursiveRequest:Ljava/lang/Integer;

    move-object/from16 p1, p163

    .line 194
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isAdapterInitConfigSet:Ljava/lang/Boolean;

    move-object/from16 p1, p164

    .line 195
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isSwipeableInterstitial:Ljava/lang/Boolean;

    move-object/from16 p1, p165

    .line 196
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->maxScreenHoldDurationSeconds:Ljava/lang/Integer;

    move-object/from16 p1, p166

    .line 197
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->maxSlotWidth:Ljava/lang/Integer;

    move-object/from16 p1, p167

    .line 198
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->maxSlotHeight:Ljava/lang/Integer;

    move-object/from16 p1, p168

    .line 199
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->persistentCacheRequest:Ljava/lang/Boolean;

    move-object/from16 p1, p169

    .line 200
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->crossProcessRequest:Ljava/lang/Boolean;

    move-object/from16 p1, p170

    .line 201
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->clientEoid:Ljava/lang/String;

    move-object/from16 p1, p171

    .line 202
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->clientEoidTimestampInMs:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->realTimeBiddingSignalsObject:Ljava/util/List;

    return-object v0
.end method

.method public final a(Ljava/lang/Long;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->timeSinceSdkInitMs:Ljava/lang/Long;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->realTimeBiddingSignalsObject:Ljava/util/List;

    return-void
.end method

.method public final b()V
    .registers 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1
    iput-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isAdapterInitConfigSet:Ljava/lang/Boolean;

    return-void
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1
    iput-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isS2SRecursiveRequest:Ljava/lang/Integer;

    return-void
.end method

###### Class io.bidmachine.protobuf.ExtensionsProto (io.bidmachine.protobuf.ExtensionsProto)
.class public final Lio/bidmachine/protobuf/ExtensionsProto;
.super Ljava/lang/Object;
.source "ExtensionsProto.java"


# static fields
.field private static descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field static final internal_static_bidmachine_protobuf_AdExtension_ControlAsset_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_AdExtension_ControlAsset_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_AdExtension_CustomParamsEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_AdExtension_CustomParamsEntry_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_AdExtension_EventConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_AdExtension_EventConfiguration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_AdExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_AdExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_AppExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_AppExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_CreativeExtension_AssetAppearance_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_CreativeExtension_AssetAppearance_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_CreativeExtension_AssetModel_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_CreativeExtension_AssetModel_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_CreativeExtension_Feature_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_CreativeExtension_Feature_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_CreativeExtension_Postbanner_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_CreativeExtension_Postbanner_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_CreativeExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_CreativeExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_DeviceExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_DeviceExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_Extras_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_Extras_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_RegsCcpaExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_RegsCcpaExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_RequestExtension_SellerDataEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_RequestExtension_SellerDataEntry_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_RequestExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_RequestExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_Session_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_Session_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .registers 43

    .line 105
    const-string v0, "\n$bidmachine/protobuf/extensions.proto\u0012\u0013bidmachine.protobuf\u001a%bidmachine/protobuf/adcom/adcom.proto\u001a-bidmachine/protobuf/rendering/rendering.proto\u001a)bidmachine/protobuf/sdk/viewability.proto\u001a\u001fgoogle/protobuf/timestamp.proto\u001a\u001cgoogle/protobuf/struct.proto\"\u00b4\u0002\n\u0010RequestExtension\u0012\u0011\n\tseller_id\u0018\u0001 \u0001(\t\u0012J\n\u000bseller_data\u0018\u0002 \u0003(\u000b25.bidmachine.protobuf.RequestExtension.SellerDataEntry\u0012C\n\u0013header_bidding_type\u0018\u0003 \u0001(\u000e2&.bidmachine.protobuf.HeaderBiddingType\u0012\u000b\n\u0003ifv\u0018\u0004 \u0001(\t\u0012\u000e\n\u0006bm_ifv\u0018\u0005 \u0001(\t\u0012\u0012\n\nsession_id\u0018\u0006 \u0001(\t\u0012\u0018\n\u0010integration_type\u0018\u0007 \u0001(\t\u001a1\n\u000fSellerDataEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\"\u00c1\u000f\n\u000bAdExtension\u0012\u0013\n\u0007preload\u0018\u0002 \u0001(\u0008B\u0002\u0018\u0001\u0012\u001b\n\u000fload_skipoffset\u0018\u0003 \u0001(\rB\u0002\u0018\u0001\u0012&\n\u001aviewability_time_threshold\u0018\u0004 \u0001(\rB\u0002\u0018\u0001\u0012\'\n\u001bviewability_pixel_threshold\u0018\u0005 \u0001(\u0002B\u0002\u0018\u0001\u0012*\n\u001eviewability_duration_threshold\u0018\u0006 \u0001(\u0002B\u0002\u0018\u0001\u00122\n\u0005event\u0018\u0007 \u0003(\u000b2#.bidmachine.protobuf.adcom.Ad.Event\u0012I\n\rcustom_params\u0018\u0008 \u0003(\u000b22.bidmachine.protobuf.AdExtension.CustomParamsEntry\u0012\u0012\n\nskipoffset\u0018\t \u0001(\r\u0012\u001c\n\u0014companion_skipoffset\u0018\n \u0001(\r\u0012\u0018\n\u0010use_native_close\u0018\u000b \u0001(\u0008\u0012\n\n\u0002r1\u0018\u000c \u0001(\u0008\u0012\n\n\u0002r2\u0018\r \u0001(\u0008\u0012@\n\tcountdown\u0018\u000e \u0001(\u000b2-.bidmachine.protobuf.AdExtension.ControlAsset\u0012C\n\u000cclose_button\u0018\u000f \u0001(\u000b2-.bidmachine.protobuf.AdExtension.ControlAsset\u0012&\n\u001eignores_safe_area_layout_guide\u0018\u0010 \u0001(\u0008\u0012\u0011\n\tstore_url\u0018\u0011 \u0001(\t\u0012?\n\u0008progress\u0018\u0012 \u0001(\u000b2-.bidmachine.protobuf.AdExtension.ControlAsset\u0012\u0019\n\u0011progress_duration\u0018\u0013 \u0001(\r\u0012\'\n\u001fviewability_ignore_window_focus\u0018\u0014 \u0001(\u0008\u0012=\n\u0010ad_cache_control\u0018\u0015 \u0001(\u000e2#.bidmachine.protobuf.AdCacheControl\u0012\u0018\n\u0010ad_cache_max_age\u0018\u0016 \u0001(\r\u0012\u0010\n\u0008r1_delay\u0018\u0017 \u0001(\r\u0012!\n\u0019ad_markup_loading_timeout\u0018\u0018 \u0001(\r\u0012\u001c\n\u0014use_embedded_browser\u0018\u0019 \u0001(\u0008\u0012\u0012\n\npreload_ad\u0018\u001a \u0001(\u0008\u0012K\n\u0017creative_loading_method\u0018\u001b \u0001(\u000e2*.bidmachine.protobuf.CreativeLoadingMethod\u0012\u001b\n\u0013placeholder_timeout\u0018\u001c \u0001(\u0002\u0012P\n\u0013event_configuration\u0018\u001d \u0001(\u000b23.bidmachine.protobuf.AdExtension.EventConfiguration\u0012&\n\u001aviewability_ignore_overlap\u0018\u001e \u0001(\u0008B\u0002\u0018\u0001\u0012F\n\u0012creative_extension\u0018\u001f \u0001(\u000b2&.bidmachine.protobuf.CreativeExtensionB\u0002\u0018\u0001\u0012\u0018\n\u0010ad_flexible_size\u0018  \u0001(\u0008\u0012?\n\u0017rendering_configuration\u0018! \u0001(\u000b2\u001e.bidmachine.protobuf.Rendering\u0012*\n\"mraid_creative_validation_required\u0018\" \u0001(\u0008\u0012 \n\u0018creative_loading_timeout\u0018# \u0001(\u0005\u0012\u001f\n\u0017crid_monitoring_enabled\u0018$ \u0001(\u0008\u0012e\n\u0019viewability_configuration\u0018% \u0001(\u000b2=.bidmachine.protobuf.sdk.viewability.ViewabilityConfigurationH\u0000\u0088\u0001\u0001\u001a\u00a3\u0002\n\u000cControlAsset\u0012\u000f\n\u0007content\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004fill\u0018\u0002 \u0001(\t\u0012\u0012\n\nfont_style\u0018\u0003 \u0001(\r\u0012\u000e\n\u0006height\u0018\u0004 \u0001(\r\u0012\u0011\n\thideafter\u0018\u0005 \u0001(\r\u0012\u000e\n\u0006margin\u0018\u0006 \u0001(\t\u0012\u000f\n\u0007opacity\u0018\u0007 \u0001(\u0002\u0012\u0010\n\u0008outlined\u0018\u0008 \u0001(\u0008\u0012\u000f\n\u0007padding\u0018\t \u0001(\t\u0012\u000e\n\u0006shadow\u0018\n \u0001(\t\u0012\u000e\n\u0006stroke\u0018\u000b \u0001(\t\u0012\u0014\n\u000cstroke_width\u0018\u0012 \u0001(\u0002\u0012\r\n\u0005style\u0018\r \u0001(\t\u0012\u000f\n\u0007visible\u0018\u000e \u0001(\u0008\u0012\r\n\u0005width\u0018\u000f \u0001(\r\u0012\t\n\u0001x\u0018\u0010 \u0001(\t\u0012\t\n\u0001y\u0018\u0011 \u0001(\t\u001aC\n\u0012EventConfiguration\u0012\u000b\n\u0003url\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007context\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007actions\u0018\u0003 \u0003(\r\u001a3\n\u0011CustomParamsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001B\u001c\n\u001a_viewability_configuration\"T\n\u000cAppExtension\u00120\n\u000cinstall_time\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012\u000e\n\u0006uptime\u0018\u0002 \u0001(\u0004:\u0002\u0018\u0001\"6\n\u000fDeviceExtension\u0012\u000f\n\u0007battery\u0018\u0001 \u0001(\r\u0012\u000e\n\u0006rooted\u0018\u0002 \u0001(\u0008:\u0002\u0018\u0001\"+\n\u0011RegsCcpaExtension\u0012\u0012\n\nus_privacy\u0018\u0001 \u0001(\t:\u0002\u0018\u0001\")\n\u0007Session\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006uptime\u0018\u0002 \u0001(\u0004:\u0002\u0018\u0001\"\u00da\n\n\u0011CreativeExtension\u0012E\n\u0005asset\u0018\u0001 \u0001(\u000b26.bidmachine.protobuf.CreativeExtension.AssetAppearance\u0012@\n\u0008features\u0018\u0002 \u0003(\u000b2..bidmachine.protobuf.CreativeExtension.Feature\u0012F\n\u000bpostbanners\u0018\u0003 \u0003(\u000b21.bidmachine.protobuf.CreativeExtension.Postbanner\u001a\u00a1\u0002\n\nAssetModel\u0012\u000f\n\u0007content\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004fill\u0018\u0002 \u0001(\t\u0012\u0012\n\nfont_style\u0018\u0003 \u0001(\r\u0012\u000e\n\u0006height\u0018\u0004 \u0001(\r\u0012\u0011\n\thideafter\u0018\u0005 \u0001(\r\u0012\u000e\n\u0006margin\u0018\u0006 \u0001(\u0002\u0012\u000f\n\u0007opacity\u0018\u0007 \u0001(\u0002\u0012\u0010\n\u0008outlined\u0018\u0008 \u0001(\u0008\u0012\u000f\n\u0007padding\u0018\t \u0001(\u0002\u0012\u000e\n\u0006shadow\u0018\n \u0001(\t\u0012\u000e\n\u0006stroke\u0018\u000b \u0001(\t\u0012\u0014\n\u000cstroke_width\u0018\u0012 \u0001(\u0002\u0012\r\n\u0005style\u0018\r \u0001(\t\u0012\u000f\n\u0007visible\u0018\u000e \u0001(\u0008\u0012\r\n\u0005width\u0018\u000f \u0001(\r\u0012\t\n\u0001x\u0018\u0010 \u0001(\t\u0012\t\n\u0001y\u0018\u0011 \u0001(\t\u001a\u00cb\u0004\n\u000fAssetAppearance\u0012\u0012\n\nclose_time\u0018\u0001 \u0001(\u0002\u0012\u0010\n\u0008duration\u0018\u0002 \u0001(\r\u0012&\n\u001eignores_safe_area_layout_guide\u0018\u0003 \u0001(\u0008\u0012\u0018\n\u0010use_custom_close\u0018\u0004 \u0001(\u0008\u0012\u0012\n\nautorotate\u0018\u0005 \u0001(\u0008\u0012D\n\tcountdown\u0018\u0006 \u0001(\u000b21.bidmachine.protobuf.CreativeExtension.AssetModel\u0012H\n\rclosable_view\u0018\u0007 \u0001(\u000b21.bidmachine.protobuf.CreativeExtension.AssetModel\u0012C\n\u0008progress\u0018\u0008 \u0001(\u000b21.bidmachine.protobuf.CreativeExtension.AssetModel\u0012>\n\u0003cta\u0018\t \u0001(\u000b21.bidmachine.protobuf.CreativeExtension.AssetModel\u0012E\n\nmute_asset\u0018\n \u0001(\u000b21.bidmachine.protobuf.CreativeExtension.AssetModel\u0012F\n\u000bvideo_asset\u0018\u000b \u0001(\u000b21.bidmachine.protobuf.CreativeExtension.AssetModel\u0012\u0018\n\u0010background_color\u0018\u000c \u0001(\t\u001a&\n\u0007Feature\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t\u001a\u00d9\u0001\n\nPostbanner\u00120\n\u0003tpe\u0018\u0001 \u0001(\u000e2#.bidmachine.protobuf.PostbannerType\u0012\u0010\n\u0008sequence\u0018\u0002 \u0001(\r\u0012E\n\u0005asset\u0018\u0003 \u0001(\u000b26.bidmachine.protobuf.CreativeExtension.AssetAppearance\u0012@\n\u0008features\u0018\u0004 \u0003(\u000b2..bidmachine.protobuf.CreativeExtension.Feature\"\u0086\u0001\n\u0006Extras\u0012(\n\u0007private\u0018\u0001 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012)\n\u0008internal\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012\'\n\u0006public\u0018\u0003 \u0001(\u000b2\u0017.google.protobuf.Struct*>\n\u000ePostbannerType\u0012\u000c\n\u0008DISABLED\u0010\u0000\u0012\u0008\n\u0004MAIN\u0010\u0001\u0012\t\n\u0005STORE\u0010\u0002\u0012\t\n\u0005MIXED\u0010\u0003*\u00a3\u0013\n\u0011EventTypeExtended\u0012\u001f\n\u001bEVENT_TYPE_EXTENDED_INVALID\u0010\u0000\u0012\"\n\u001dEVENT_TYPE_EXTENDED_AD_LOADED\u0010\u00f4\u0003\u0012#\n\u001eEVENT_TYPE_EXTENDED_IMPRESSION\u0010\u00f5\u0003\u0012!\n\u001cEVENT_TYPE_EXTENDED_VIEWABLE\u0010\u00f6\u0003\u0012\u001e\n\u0019EVENT_TYPE_EXTENDED_CLICK\u0010\u00f7\u0003\u0012\u001f\n\u001aEVENT_TYPE_EXTENDED_CLOSED\u0010\u00f8\u0003\u0012%\n EVENT_TYPE_EXTENDED_AD_DESTROYED\u0010\u00f9\u0003\u0012#\n\u001eEVENT_TYPE_EXTENDED_AD_EXPIRED\u0010\u00ff\u0003\u0012(\n#EVENT_TYPE_EXTENDED_CONTAINER_ADDED\u0010\u0080\u0004\u0012(\n#EVENT_TYPE_EXTENDED_TOKEN_GENERATED\u0010\u0081\u0004\u0012/\n*EVENT_TYPE_EXTENDED_IMPRESSION_OPPORTUNITY\u0010\u0082\u0004\u00121\n,EVENT_TYPE_EXTENDED_BROKEN_CREATIVE_DETECTOR\u0010\u0083\u0004\u0012,\n\'EVENT_TYPE_EXTENDED_SESSION_INITIALIZED\u0010\u00fa\u0003\u0012\'\n\"EVENT_TYPE_EXTENDED_REQUEST_LOADED\u0010\u00fb\u0003\u0012)\n$EVENT_TYPE_EXTENDED_REQUEST_CANCELED\u0010\u00fc\u0003\u0012(\n#EVENT_TYPE_EXTENDED_REQUEST_EXPIRED\u0010\u00fd\u0003\u0012*\n%EVENT_TYPE_EXTENDED_REQUEST_DESTROYED\u0010\u00fe\u0003\u0012\u001e\n\u0019EVENT_TYPE_EXTENDED_START\u0010\u00d8\u0004\u0012\'\n\"EVENT_TYPE_EXTENDED_FIRST_QUARTILE\u0010\u00d9\u0004\u0012!\n\u001cEVENT_TYPE_EXTENDED_MIDPOINT\u0010\u00da\u0004\u0012\'\n\"EVENT_TYPE_EXTENDED_THIRD_QUARTILE\u0010\u00db\u0004\u0012!\n\u001cEVENT_TYPE_EXTENDED_COMPLETE\u0010\u00dc\u0004\u0012\u001d\n\u0018EVENT_TYPE_EXTENDED_MUTE\u0010\u00dd\u0004\u0012\u001f\n\u001aEVENT_TYPE_EXTENDED_UNMUTE\u0010\u00de\u0004\u0012\u001d\n\u0018EVENT_TYPE_EXTENDED_SKIP\u0010\u00df\u0004\u0012\u001e\n\u0019EVENT_TYPE_EXTENDED_PAUSE\u0010\u00e0\u0004\u0012\u001f\n\u001aEVENT_TYPE_EXTENDED_REWIND\u0010\u00e1\u0004\u0012\u001f\n\u001aEVENT_TYPE_EXTENDED_RESUME\u0010\u00e2\u0004\u0012#\n\u001eEVENT_TYPE_EXTENDED_FULLSCREEN\u0010\u00e3\u0004\u0012\u001f\n\u001aEVENT_TYPE_EXTENDED_EXPAND\u0010\u00e4\u0004\u0012!\n\u001cEVENT_TYPE_EXTENDED_COLLAPSE\u0010\u00e5\u0004\u0012*\n%EVENT_TYPE_EXTENDED_ACCEPT_INVITATION\u0010\u00e6\u0004\u0012\u001e\n\u0019EVENT_TYPE_EXTENDED_CLOSE\u0010\u00e7\u0004\u0012&\n!EVENT_TYPE_EXTENDED_CREATIVE_VIEW\u0010\u00e8\u0004\u0012$\n\u001fEVENT_TYPE_EXTENDED_MRAID_CLICK\u0010\u00e9\u0004\u0012#\n\u001eEVENT_TYPE_EXTENDED_MRAID_OPEN\u0010\u00ea\u0004\u0012%\n EVENT_TYPE_EXTENDED_MRAID_LOADED\u0010\u00eb\u0004\u0012.\n)EVENT_TYPE_EXTENDED_SK_OVERLAY_PRESENTING\u0010\u0096\u0005\u0012.\n)EVENT_TYPE_EXTENDED_SK_OVERLAY_DISMISSING\u0010\u0097\u0005\u0012/\n*EVENT_TYPE_EXTENDED_HB_NETWORK_INITIALIZED\u0010\u00bd\u0005\u0012,\n\'EVENT_TYPE_EXTENDED_HB_NETWORK_PREPARED\u0010\u00be\u0005\u00121\n,EVENT_TYPE_EXTENDED_ALL_HB_NETWORKS_PREPARED\u0010\u00bf\u0005\u0012\u001d\n\u0018EVENT_TYPE_EXTENDED_BURL\u0010\u00a1\u0006\u0012\u001d\n\u0018EVENT_TYPE_EXTENDED_NURL\u0010\u00a2\u0006\u0012\u001d\n\u0018EVENT_TYPE_EXTENDED_LURL\u0010\u00a3\u0006\u0012\u001f\n\u001aEVENT_TYPE_EXTENDED_CUSTOM\u0010\u00a4\u0006\u0012$\n\u001fEVENT_TYPE_EXTENDED_CUSTOM_LOSS\u0010\u00a5\u0006\u0012#\n\u001eEVENT_TYPE_EXTENDED_CUSTOM_WIN\u0010\u00a6\u0006\u0012*\n%EVENT_TYPE_EXTENDED_WATERFALL_STARTED\u0010\u0085\u0007\u0012\'\n\"EVENT_TYPE_EXTENDED_AD_UNIT_LOADED\u0010\u0086\u0007\u0012)\n$EVENT_TYPE_EXTENDED_AD_UNIT_FINISHED\u0010\u0087\u0007\u0012+\n&EVENT_TYPE_EXTENDED_WATERFALL_FINISHED\u0010\u0088\u0007\u0012(\n#EVENT_TYPE_EXTENDED_AD_UNIT_EXPIRED\u0010\u0089\u0007\u0012,\n\'EVENT_TYPE_EXTENDED_AD_UNIT_INVALIDATED\u0010\u008a\u0007\u0012+\n&EVENT_TYPE_EXTENDED_AD_UNIT_IMPRESSION\u0010\u008b\u0007\u0012$\n\u001fEVENT_TYPE_EXTENDED_AD_UNIT_WIN\u0010\u008c\u0007\u0012%\n EVENT_TYPE_EXTENDED_AD_UNIT_LOSS\u0010\u008d\u0007\u0012%\n EVENT_TYPE_EXTENDED_AD_UNIT_PAID\u0010\u008e\u0007\u0012\u001e\n\u0019EVENT_TYPE_EXTENDED_ERROR\u0010\u00e8\u0007\u0012\'\n\"EVENT_TYPE_EXTENDED_TRACKING_ERROR\u0010\u00e9\u0007\u0012\u001f\n\u001aEVENT_TYPE_CLICK_BY_SOURCE\u0010\u00cd\u0008\u0012\u001d\n\u0018EVENT_TYPE_ENGAGED_CLICK\u0010\u00b1\t\u0012\u0019\n\u0014EVENT_TYPE_SDK_CRASH\u0010\u0094\n\u0012\u0017\n\u0012EVENT_TYPE_SDK_ANR\u0010\u0095\n*\u00f9\u0002\n\nActionType\u0012\u0017\n\u0013ACTION_TYPE_INVALID\u0010\u0000\u0012\u001b\n\u0016ACTION_TYPE_AD_LOADING\u0010\u00f4\u0003\u0012\u0018\n\u0013ACTION_TYPE_SHOWING\u0010\u00f5\u0003\u0012\u0018\n\u0013ACTION_TYPE_VIEWING\u0010\u00f6\u0003\u0012\u0019\n\u0014ACTION_TYPE_CLICKING\u0010\u00f7\u0003\u0012\u0018\n\u0013ACTION_TYPE_CLOSING\u0010\u00f8\u0003\u0012\u001e\n\u0019ACTION_TYPE_AD_DESTROYING\u0010\u00f9\u0003\u0012%\n ACTION_TYPE_SESSION_INITIALIZING\u0010\u00fa\u0003\u0012 \n\u001bACTION_TYPE_REQUEST_LOADING\u0010\u00fb\u0003\u0012\"\n\u001dACTION_TYPE_REQUEST_CANCELING\u0010\u00fc\u0003\u0012 \n\u001bACTION_TYPE_HB_INITIALIZING\u0010\u00bd\u0005\u0012\u001d\n\u0018ACTION_TYPE_HB_PREPARING\u0010\u00be\u0005*\u00b3\u0004\n\u000bErrorReason\u0012\u0018\n\u0014ERROR_REASON_INVALID\u0010\u0000\u0012\u001e\n\u001aERROR_REASON_NO_CONNECTION\u0010d\u0012\u001c\n\u0018ERROR_REASON_BAD_CONTENT\u0010e\u0012\u0018\n\u0014ERROR_REASON_TIMEOUT\u0010f\u0012\u001b\n\u0017ERROR_REASON_NO_CONTENT\u0010g\u0012\"\n\u001eERROR_REASON_HANDLED_EXCEPTION\u0010h\u0012\u001b\n\u0017ERROR_REASON_WAS_CLOSED\u0010i\u0012\u001e\n\u001aERROR_REASON_WAS_DESTROYED\u0010j\u0012\u001c\n\u0018ERROR_REASON_WAS_EXPIRED\u0010k\u0012!\n\u001dERROR_REASON_WAS_USED_ALREADY\u0010o\u0012\u0019\n\u0015ERROR_REASON_INTERNAL\u0010l\u0012\"\n\u001eERROR_REASON_HTTP_SERVER_ERROR\u0010m\u0012!\n\u001dERROR_REASON_HTTP_BAD_REQUEST\u0010n\u0012\u001f\n\u001bERROR_REASON_INVALID_JS_XHR\u0010p\u0012+\n\'ERROR_REASON_MEDIA_PLAYS_IN_WRONG_STATE\u0010q\u0012\u001c\n\u0017ERROR_REASON_HB_NETWORK\u0010\u00c8\u0001\u0012%\n ERROR_REASON_PLACEHOLDER_TIMEOUT\u0010\u00c9\u0001*\u0080\u0001\n\u0011HeaderBiddingType\u0012\u001f\n\u001bHEADER_BIDDING_TYPE_INVALID\u0010\u0000\u0012)\n\u001cHEADER_BIDDING_TYPE_DISABLED\u0010\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u00ff\u0001\u0012\u001f\n\u001bHEADER_BIDDING_TYPE_ENABLED\u0010\u0001*M\n\u000eAdCacheControl\u0012\u001d\n\u0019AD_CACHE_CONTROL_DISABLED\u0010\u0000\u0012\u001c\n\u0018AD_CACHE_CONTROL_ENABLED\u0010\u0001*B\n\u0015CreativeLoadingMethod\u0012\u000c\n\u0008FullLoad\u0010\u0000\u0012\n\n\u0006Stream\u0010\u0001\u0012\u000f\n\u000bPartialLoad\u0010\u0002B1\n\u0016io.bidmachine.protobufB\u000fExtensionsProtoP\u0001\u00a2\u0002\u0003BDMb\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {}, Lcom/explorestack/protobuf/adcom/AdcomProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    .line 314
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    .line 315
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    .line 316
    invoke-static {}, Lcom/explorestack/protobuf/TimestampProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    .line 317
    invoke-static {}, Lcom/explorestack/protobuf/StructProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    .line 311
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 320
    invoke-static {}, Lio/bidmachine/protobuf/ExtensionsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RequestExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 321
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v8, "SessionId"

    const-string v9, "IntegrationType"

    const-string v3, "SellerId"

    const-string v4, "SellerData"

    const-string v5, "HeaderBiddingType"

    const-string v6, "Ifv"

    const-string v7, "BmIfv"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v2, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RequestExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 326
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RequestExtension_SellerDataEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 327
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v3, "Key"

    const-string v4, "Value"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v2, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RequestExtension_SellerDataEntry_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 332
    invoke-static {}, Lio/bidmachine/protobuf/ExtensionsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 333
    new-instance v5, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v41, "ViewabilityConfiguration"

    const-string v42, "ViewabilityConfiguration"

    const-string v6, "Preload"

    const-string v7, "LoadSkipoffset"

    const-string v8, "ViewabilityTimeThreshold"

    const-string v9, "ViewabilityPixelThreshold"

    const-string v10, "ViewabilityDurationThreshold"

    const-string v11, "Event"

    const-string v12, "CustomParams"

    const-string v13, "Skipoffset"

    const-string v14, "CompanionSkipoffset"

    const-string v15, "UseNativeClose"

    const-string v16, "R1"

    const-string v17, "R2"

    const-string v18, "Countdown"

    const-string v19, "CloseButton"

    const-string v20, "IgnoresSafeAreaLayoutGuide"

    const-string v21, "StoreUrl"

    const-string v22, "Progress"

    const-string v23, "ProgressDuration"

    const-string v24, "ViewabilityIgnoreWindowFocus"

    const-string v25, "AdCacheControl"

    const-string v26, "AdCacheMaxAge"

    const-string v27, "R1Delay"

    const-string v28, "AdMarkupLoadingTimeout"

    const-string v29, "UseEmbeddedBrowser"

    const-string v30, "PreloadAd"

    const-string v31, "CreativeLoadingMethod"

    const-string v32, "PlaceholderTimeout"

    const-string v33, "EventConfiguration"

    const-string v34, "ViewabilityIgnoreOverlap"

    const-string v35, "CreativeExtension"

    const-string v36, "AdFlexibleSize"

    const-string v37, "RenderingConfiguration"

    const-string v38, "MraidCreativeValidationRequired"

    const-string v39, "CreativeLoadingTimeout"

    const-string v40, "CridMonitoringEnabled"

    filled-new-array/range {v6 .. v42}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v5, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 338
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v5, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_ControlAsset_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 339
    new-instance v6, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v22, "X"

    const-string v23, "Y"

    const-string v7, "Content"

    const-string v8, "Fill"

    const-string v9, "FontStyle"

    const-string v10, "Height"

    const-string v11, "Hideafter"

    const-string v12, "Margin"

    const-string v13, "Opacity"

    const-string v14, "Outlined"

    const-string v15, "Padding"

    const-string v16, "Shadow"

    const-string v17, "Stroke"

    const-string v18, "StrokeWidth"

    const-string v19, "Style"

    const-string v20, "Visible"

    const-string v21, "Width"

    filled-new-array/range {v7 .. v23}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v6, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_ControlAsset_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 344
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v5, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_EventConfiguration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 345
    new-instance v6, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v7, "Context"

    const-string v8, "Actions"

    const-string v9, "Url"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v6, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_EventConfiguration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 350
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_CustomParamsEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 351
    new-instance v6, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v6, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_CustomParamsEntry_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 356
    invoke-static {}, Lio/bidmachine/protobuf/ExtensionsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AppExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 357
    new-instance v3, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v6, "InstallTime"

    const-string v7, "Uptime"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v0, v6}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v3, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AppExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 362
    invoke-static {}, Lio/bidmachine/protobuf/ExtensionsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_DeviceExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 363
    new-instance v6, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v8, "Battery"

    const-string v9, "Rooted"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v0, v8}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v6, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_DeviceExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 368
    invoke-static {}, Lio/bidmachine/protobuf/ExtensionsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v6, 0x4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RegsCcpaExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 369
    new-instance v6, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v8, "UsPrivacy"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v0, v8}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v6, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RegsCcpaExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 374
    invoke-static {}, Lio/bidmachine/protobuf/ExtensionsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v6, 0x5

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_Session_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 375
    new-instance v6, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v8, "Id"

    filled-new-array {v8, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v6, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_Session_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 380
    invoke-static {}, Lio/bidmachine/protobuf/ExtensionsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v6, 0x6

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 381
    new-instance v6, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v7, "Postbanners"

    const-string v8, "Asset"

    const-string v9, "Features"

    filled-new-array {v8, v9, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v6, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 386
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v1, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_AssetModel_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 387
    new-instance v6, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v25, "X"

    const-string v26, "Y"

    const-string v10, "Content"

    const-string v11, "Fill"

    const-string v12, "FontStyle"

    const-string v13, "Height"

    const-string v14, "Hideafter"

    const-string v15, "Margin"

    const-string v16, "Opacity"

    const-string v17, "Outlined"

    const-string v18, "Padding"

    const-string v19, "Shadow"

    const-string v20, "Stroke"

    const-string v21, "StrokeWidth"

    const-string v22, "Style"

    const-string v23, "Visible"

    const-string v24, "Width"

    filled-new-array/range {v10 .. v26}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v6, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_AssetModel_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 392
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v1, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_AssetAppearance_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 393
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v20, "VideoAsset"

    const-string v21, "BackgroundColor"

    const-string v10, "CloseTime"

    const-string v11, "Duration"

    const-string v12, "IgnoresSafeAreaLayoutGuide"

    const-string v13, "UseCustomClose"

    const-string v14, "Autorotate"

    const-string v15, "Countdown"

    const-string v16, "ClosableView"

    const-string v17, "Progress"

    const-string v18, "Cta"

    const-string v19, "MuteAsset"

    filled-new-array/range {v10 .. v21}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v2, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_AssetAppearance_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 398
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v1, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_Feature_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 399
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v5, "Name"

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v2, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_Feature_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 404
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_Postbanner_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 405
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Tpe"

    const-string v3, "Sequence"

    filled-new-array {v2, v3, v8, v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_CreativeExtension_Postbanner_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 410
    invoke-static {}, Lio/bidmachine/protobuf/ExtensionsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_Extras_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 411
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Internal"

    const-string v3, "Public"

    const-string v4, "Private"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_Extras_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 415
    invoke-static {}, Lcom/explorestack/protobuf/adcom/AdcomProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 416
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 417
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKViewabilityProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 418
    invoke-static {}, Lcom/explorestack/protobuf/TimestampProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 419
    invoke-static {}, Lcom/explorestack/protobuf/StructProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .registers 1

    .line 100
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/ExtensionRegistry;)V
    .registers 1

    .line 14
    invoke-static {p0}, Lio/bidmachine/protobuf/ExtensionsProto;->registerAllExtensions(Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 1

    .line 0
    return-void
.end method

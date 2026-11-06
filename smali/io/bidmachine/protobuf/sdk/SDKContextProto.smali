###### Class io.bidmachine.protobuf.sdk.SDKContextProto (io.bidmachine.protobuf.sdk.SDKContextProto)
.class public final Lio/bidmachine/protobuf/sdk/SDKContextProto;
.super Ljava/lang/Object;
.source "SDKContextProto.java"


# static fields
.field private static descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field static final internal_static_bidmachine_protobuf_sdk_context_App_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_context_App_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_sdk_context_Context_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_context_Context_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_sdk_context_ContextualData_ImpressionData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_context_ContextualData_ImpressionData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_sdk_context_ContextualData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_context_ContextualData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_sdk_context_Device_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_context_Device_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_sdk_context_MaskedSignals_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_context_MaskedSignals_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_sdk_context_Regs_CMP_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_context_Regs_CMP_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_sdk_context_Regs_Pub_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_context_Regs_Pub_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_sdk_context_Regs_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_context_Regs_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_sdk_context_SDK_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_context_SDK_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_sdk_context_Session_Context_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_context_Session_Context_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_sdk_context_Session_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_context_Session_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_sdk_context_User_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_context_User_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .registers 50

    .line 90
    const-string v0, "\n%bidmachine/protobuf/sdk/context.proto\u0012\u001fbidmachine.protobuf.sdk.context\u001a\u001fgoogle/protobuf/timestamp.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a%bidmachine/protobuf/adcom/adcom.proto\"\u00b5\u0002\n\u000eContextualData\u0012\u0011\n\tplacement\u0018\u0001 \u0001(\t\u0012\u0015\n\rmediator_name\u0018\u0002 \u0001(\t\u0012L\n\u0004data\u0018\u0003 \u0001(\u000b2>.bidmachine.protobuf.sdk.context.ContextualData.ImpressionData\u001a\u00aa\u0001\n\u000eImpressionData\u0012\r\n\u0005imimd\u0018\u0001 \u0001(\r\u0012\u000b\n\u0003imd\u0018\u0002 \u0001(\r\u0012\u000c\n\u0004imwp\u0018\u0003 \u0001(\u0002\u0012\n\n\u0002wp\u0018\u0004 \u0001(\u0002\u0012\u0010\n\u0008imbundle\u0018\u0005 \u0001(\t\u0012\u000e\n\u0006bundle\u0018\u0006 \u0001(\t\u0012\u0010\n\u0008imagency\u0018\u0007 \u0001(\t\u0012\u000e\n\u0006agency\u0018\u0008 \u0001(\t\u0012\u000e\n\u0006imcurl\u0018\t \u0001(\t\u0012\u000e\n\u0006clcurl\u0018\n \u0001(\t\"\u00d4\u0002\n\u0007Session\u0012\u0012\n\nsession_id\u0018\u0001 \u0001(\t\u0012A\n\u0007context\u0018\u0002 \u0001(\u000b20.bidmachine.protobuf.sdk.context.Session.Context\u001a\u00f1\u0001\n\u0007Context\u0012\u0017\n\u000fsessionduration\u0018\u0001 \u0001(\u0004\u0012\n\n\u0002sc\u0018\u0002 \u0001(\r\u0012\u0011\n\tretention\u0018\u0003 \u0001(\r\u0012=\n\u0004data\u0018\u0004 \u0003(\u000b2/.bidmachine.protobuf.sdk.context.ContextualData\u0012\u001d\n\u0015last_session_duration\u0018\u0005 \u0001(\u0004\u0012\'\n\u0003iap\u0018\u0006 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012\'\n\u0003iaa\u0018\u0007 \u0001(\u000b2\u001a.google.protobuf.BoolValue\"B\n\u0003SDK\u0012\u000b\n\u0003sdk\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006sdkver\u0018\u0002 \u0001(\t\u0012\u000e\n\u0006omidpn\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006omidpv\u0018\u0004 \u0001(\t\"\u00ee\u0004\n\u0003App\u0012\u0010\n\u0008app_name\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007app_ver\u0018\u0002 \u0001(\t\u0012?\n\u0007release\u0018\u0003 \u0001(\u000b2..bidmachine.protobuf.adcom.Context.App.Release\u00120\n\u000cinstall_time\u0018\u0004 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u00125\n\u0011first_launch_time\u0018\u0005 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012\u0010\n\u0008storecat\u0018\u0006 \u0001(\t\u0012\u0013\n\u000bstoresubcat\u0018\u0007 \u0003(\t\u0012\u000f\n\u0007fmwname\u0018\u0008 \u0001(\t\u0012\u001c\n\u0014install_referrer_url\u0018\t \u0001(\t\u0012D\n install_referrer_click_timestamp\u0018\n \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012K\n\'install_referrer_click_server_timestamp\u0018\u000c \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012B\n\u001einstall_begin_server_timestamp\u0018\r \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012\u0017\n\u000finstall_version\u0018\u000e \u0001(\t\u0012\u001e\n\u0016is_google_play_instant\u0018\u000f \u0001(\u0008\u00124\n\u0010sdk_install_time\u0018\u0010 \u0001(\u000b2\u001a.google.protobuf.Timestamp\"`\n\u0004User\u0012\u000f\n\u0007consent\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004gdpr\u0018\u0002 \u0001(\u0008\u0012\u000c\n\u0004ccpa\u0018\u0003 \u0001(\t\u0012\u000b\n\u0003gpp\u0018\u0004 \u0001(\t\u0012\u000f\n\u0007gpp_sid\u0018\u0005 \u0003(\r\u0012\r\n\u0005coppa\u0018\u0006 \u0001(\u0008\"\u00f8\u0006\n\u0006Device\u0012\u000b\n\u0003ifv\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006bm_ifv\u0018\u0002 \u0001(\t\u0012\u0015\n\rinputlanguage\u0018\u0003 \u0003(\t\u0012\u0011\n\tdiskspace\u0018\u0004 \u0001(\u0004\u0012\u0011\n\ttotaldisk\u0018\u0005 \u0001(\u0004\u0012\u0010\n\u0008ringmute\u0018\u0006 \u0001(\u0008\u0012\u0010\n\u0008charging\u0018\u0007 \u0001(\u0008\u0012\u000f\n\u0007headset\u0018\u0008 \u0001(\u0008\u0012\u0014\n\u000cbatterylevel\u0018\t \u0001(\u0002\u0012\u0014\n\u000cbatterysaver\u0018\n \u0001(\u0008\u0012\u0010\n\u0008darkmode\u0018\u000b \u0001(\u0008\u0012\u0010\n\u0008airplane\u0018\u000c \u0001(\u0008\u0012\u000b\n\u0003dnd\u0018\r \u0001(\u0008\u0012\u0012\n\ndevicename\u0018\u000e \u0001(\t\u0012\u000c\n\u0004time\u0018\u000f \u0001(\u0004\u0012\u0014\n\u000cscreenbright\u0018\u0010 \u0001(\u0002\u0012\u0011\n\tjailbreak\u0018\u0011 \u0001(\u0008\u0012\u0012\n\nlastbootup\u0018\u0012 \u0001(\u0004\u0012\u0015\n\rlastbootup_v2\u0018# \u0001(\u0004\u0012\u001a\n\u0012lastbootup_history\u0018$ \u0003(\u0004\u0012\u000e\n\u0006access\u0018\u0013 \u0001(\t\u0012\u0013\n\u000bheadsetname\u0018\u0014 \u0001(\t\u0012\u0010\n\u0008totalmem\u0018\u0015 \u0001(\u0004\u0012\u000c\n\u0004atts\u0018\u0016 \u0001(\r\u0012\u000f\n\u0007cpuname\u0018\u0019 \u0001(\t\u0012\u0011\n\tcpuvendor\u0018\u001a \u0001(\t\u0012\u000f\n\u0007gpuname\u0018\u001b \u0001(\t\u0012\u0011\n\tgpuvendor\u0018\u001c \u0001(\t\u0012\u0010\n\u0008timezone\u0018\u001d \u0001(\t\u0012\u000f\n\u0007freemem\u0018\u001e \u0001(\u0004\u0012\u0010\n\u0008apilevel\u0018\u001f \u0001(\r\u00120\n\nsimCarrier\u0018  \u0001(\u000b2\u001c.google.protobuf.StringValue\u00120\n\nsimCountry\u0018! \u0001(\u000b2\u001c.google.protobuf.StringValue\u00122\n\u000enetworkRoaming\u0018\" \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012H\n\nconnection\u0018\u0017 \u0001(\u000b24.bidmachine.protobuf.adcom.Context.Device.Connection\u0012L\n\u000caudioContext\u0018\u0018 \u0001(\u000b26.bidmachine.protobuf.adcom.Context.Device.AudioContext\"\u00f9\u0007\n\u0004Regs\u00126\n\u0003pub\u0018\u0001 \u0001(\u000b2).bidmachine.protobuf.sdk.context.Regs.Pub\u00126\n\u0003cmp\u0018\u0002 \u0001(\u000b2).bidmachine.protobuf.sdk.context.Regs.CMP\u0012K\n\u0011restriction_kinds\u0018\u0003 \u0003(\u000e20.bidmachine.protobuf.sdk.context.RestrictionKind\u0012H\n\u000epersisted_mode\u0018\u0004 \u0001(\u000e20.bidmachine.protobuf.sdk.context.RestrictionMode\u0012F\n\u000emasked_signals\u0018\u0005 \u0001(\u000b2..bidmachine.protobuf.sdk.context.MaskedSignals\u001a\u00e5\u0002\n\u0003Pub\u0012)\n\u0005coppa\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012-\n\tgdpr_zone\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u00120\n\u000cgdpr_consent\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u00124\n\u000econsent_string\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012*\n\u0004ccpa\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012)\n\u0003gpp\u0018\u0006 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012\u000f\n\u0007gpp_sid\u0018\u0007 \u0003(\r\u00124\n\u0010non_personalized\u0018\u0008 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u001a\u00b9\u0002\n\u0003CMP\u00123\n\rtcf_v1_string\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012/\n\u000btcf_v1_zone\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u00123\n\rtcf_v2_string\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012/\n\u000btcf_v2_zone\u0018\u0004 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012*\n\u0004ccpa\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012)\n\u0003gpp\u0018\u0006 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012\u000f\n\u0007gpp_sid\u0018\u0007 \u0003(\r\"\u0091\u0012\n\rMaskedSignals\u0012)\n\u0003ifa\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012)\n\u0003lmt\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012)\n\u0003ifv\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012-\n\u0007user_id\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012.\n\u0008buyeruid\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.StringValue\u00127\n\u0011external_user_ids\u0018\u0006 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012-\n\u0007carrier\u0018\u0007 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012,\n\u0006mccmnc\u0018\u0008 \u0001(\u000b2\u001c.google.protobuf.StringValue\u00121\n\u000bsim_carrier\u0018\t \u0001(\u000b2\u001c.google.protobuf.StringValue\u00120\n\ndevice_lat\u0018\n \u0001(\u000b2\u001c.google.protobuf.StringValue\u00120\n\ndevice_lon\u0018\u000b \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012.\n\u0008accuracy\u0018\u000c \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012-\n\u0007lastfix\u0018\r \u0001(\u000b2\u001c.google.protobuf.StringValue\u00120\n\ndevice_zip\u0018\u000e \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012+\n\u0005metro\u0018\u000f \u0001(\u000b2\u001c.google.protobuf.StringValue\u00121\n\u000bdevice_city\u0018\u0010 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012.\n\u0008user_lat\u0018\u0011 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012.\n\u0008user_lon\u0018\u0012 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012.\n\u0008user_zip\u0018\u0013 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012/\n\tuser_city\u0018\u0014 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012+\n\u0005model\u0018\u0015 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012)\n\u0003hwv\u0018\u0016 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012)\n\u0003ppi\u0018\u0017 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012-\n\u0007pxratio\u0018\u0018 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012(\n\u0002ua\u0018\u0019 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012/\n\tdiskspace\u0018\u001a \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012/\n\ttotaldisk\u0018\u001b \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012.\n\u0008totalmem\u0018\u001c \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012-\n\u0007freemem\u0018\u001d \u0001(\u000b2\u001c.google.protobuf.StringValue\u00122\n\u000cbatterylevel\u0018\u001e \u0001(\u000b2\u001c.google.protobuf.StringValue\u00122\n\u000cscreenbright\u0018\u001f \u0001(\u000b2\u001c.google.protobuf.StringValue\u00121\n\u000bheadsetname\u0018  \u0001(\u000b2\u001c.google.protobuf.StringValue\u00122\n\u000cvolume_level\u0018! \u0001(\u000b2\u001c.google.protobuf.StringValue\u00120\n\ndevicename\u0018\" \u0001(\u000b2\u001c.google.protobuf.StringValue\u00120\n\nlastbootup\u0018# \u0001(\u000b2\u001c.google.protobuf.StringValue\u00123\n\rlastbootup_v2\u0018$ \u0001(\u000b2\u001c.google.protobuf.StringValue\u00128\n\u0012lastbootup_history\u00180 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012*\n\u0004time\u0018% \u0001(\u000b2\u001c.google.protobuf.StringValue\u00123\n\rinputlanguage\u0018& \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012,\n\u0006access\u0018\' \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012-\n\u0007cpuname\u0018( \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012/\n\tcpuvendor\u0018) \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012-\n\u0007gpuname\u0018* \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012/\n\tgpuvendor\u0018+ \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012*\n\u0004atts\u0018, \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012)\n\u0003yob\u0018- \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012,\n\u0006gender\u0018. \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012.\n\u0008keywords\u0018/ \u0001(\u000b2\u001c.google.protobuf.StringValue\"\u00cd\u0002\n\u0007Context\u00121\n\u0003sdk\u0018\u0001 \u0001(\u000b2$.bidmachine.protobuf.sdk.context.SDK\u00121\n\u0003app\u0018\u0002 \u0001(\u000b2$.bidmachine.protobuf.sdk.context.App\u00123\n\u0004user\u0018\u0003 \u0001(\u000b2%.bidmachine.protobuf.sdk.context.User\u00127\n\u0006device\u0018\u0004 \u0001(\u000b2\'.bidmachine.protobuf.sdk.context.Device\u00129\n\u0007session\u0018\u0005 \u0001(\u000b2(.bidmachine.protobuf.sdk.context.Session\u00123\n\u0004regs\u0018\u0006 \u0001(\u000b2%.bidmachine.protobuf.sdk.context.Regs*\u00b8\u0001\n\u000fRestrictionKind\u0012\u0019\n\u0015RESTRICTION_KIND_NONE\u0010\u0000\u0012\u001a\n\u0016RESTRICTION_KIND_COPPA\u0010\u0001\u0012%\n!RESTRICTION_KIND_NON_PERSONALIZED\u0010\u0002\u0012$\n RESTRICTION_KIND_GDPR_NO_CONSENT\u0010\u0003\u0012!\n\u001dRESTRICTION_KIND_CCPA_OPT_OUT\u0010\u0004*h\n\u000fRestrictionMode\u0012\u001b\n\u0017RESTRICTION_MODE_STRICT\u0010\u0000\u0012\u001d\n\u0019RESTRICTION_MODE_MODERATE\u0010\u0001\u0012\u0019\n\u0015RESTRICTION_MODE_OPEN\u0010\u0002B/\n\u001aio.bidmachine.protobuf.sdkB\u000fSDKContextProtoP\u0001b\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {}, Lcom/explorestack/protobuf/TimestampProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    .line 260
    invoke-static {}, Lcom/explorestack/protobuf/WrappersProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    .line 261
    invoke-static {}, Lcom/explorestack/protobuf/adcom/AdcomProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    .line 257
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 264
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKContextProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_ContextualData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 265
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v3, "MediatorName"

    const-string v4, "Data"

    const-string v5, "Placement"

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v2, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_ContextualData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 270
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_ContextualData_ImpressionData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 271
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v11, "Imcurl"

    const-string v12, "Clcurl"

    const-string v3, "Imimd"

    const-string v4, "Imd"

    const-string v5, "Imwp"

    const-string v6, "Wp"

    const-string v7, "Imbundle"

    const-string v8, "Bundle"

    const-string v9, "Imagency"

    const-string v10, "Agency"

    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v2, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_ContextualData_ImpressionData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 276
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKContextProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Session_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 277
    new-instance v3, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v4, "SessionId"

    const-string v5, "Context"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v3, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Session_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 282
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Session_Context_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 283
    new-instance v3, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v9, "Iap"

    const-string v10, "Iaa"

    const-string v4, "Sessionduration"

    const-string v5, "Sc"

    const-string v6, "Retention"

    const-string v7, "Data"

    const-string v8, "LastSessionDuration"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v3, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Session_Context_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 288
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKContextProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_SDK_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 289
    new-instance v3, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v4, "Omidpn"

    const-string v5, "Omidpv"

    const-string v6, "Sdk"

    const-string v7, "Sdkver"

    filled-new-array {v6, v7, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v3, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_SDK_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 294
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKContextProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_App_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 295
    new-instance v3, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v17, "IsGooglePlayInstant"

    const-string v18, "SdkInstallTime"

    const-string v4, "AppName"

    const-string v5, "AppVer"

    const-string v6, "Release"

    const-string v7, "InstallTime"

    const-string v8, "FirstLaunchTime"

    const-string v9, "Storecat"

    const-string v10, "Storesubcat"

    const-string v11, "Fmwname"

    const-string v12, "InstallReferrerUrl"

    const-string v13, "InstallReferrerClickTimestamp"

    const-string v14, "InstallReferrerClickServerTimestamp"

    const-string v15, "InstallBeginServerTimestamp"

    const-string v16, "InstallVersion"

    filled-new-array/range {v4 .. v18}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v3, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_App_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 300
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKContextProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_User_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 301
    new-instance v3, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v8, "GppSid"

    const-string v9, "Coppa"

    const-string v4, "Consent"

    const-string v5, "Gdpr"

    const-string v6, "Ccpa"

    const-string v7, "Gpp"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v3, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_User_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 306
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKContextProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Device_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 307
    new-instance v3, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v38, "Connection"

    const-string v39, "AudioContext"

    const-string v4, "Ifv"

    const-string v5, "BmIfv"

    const-string v6, "Inputlanguage"

    const-string v7, "Diskspace"

    const-string v8, "Totaldisk"

    const-string v9, "Ringmute"

    const-string v10, "Charging"

    const-string v11, "Headset"

    const-string v12, "Batterylevel"

    const-string v13, "Batterysaver"

    const-string v14, "Darkmode"

    const-string v15, "Airplane"

    const-string v16, "Dnd"

    const-string v17, "Devicename"

    const-string v18, "Time"

    const-string v19, "Screenbright"

    const-string v20, "Jailbreak"

    const-string v21, "Lastbootup"

    const-string v22, "LastbootupV2"

    const-string v23, "LastbootupHistory"

    const-string v24, "Access"

    const-string v25, "Headsetname"

    const-string v26, "Totalmem"

    const-string v27, "Atts"

    const-string v28, "Cpuname"

    const-string v29, "Cpuvendor"

    const-string v30, "Gpuname"

    const-string v31, "Gpuvendor"

    const-string v32, "Timezone"

    const-string v33, "Freemem"

    const-string v34, "Apilevel"

    const-string v35, "SimCarrier"

    const-string v36, "SimCountry"

    const-string v37, "NetworkRoaming"

    filled-new-array/range {v4 .. v39}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v3, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Device_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 312
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKContextProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Regs_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 313
    new-instance v3, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v4, "PersistedMode"

    const-string v5, "MaskedSignals"

    const-string v6, "Pub"

    const-string v7, "Cmp"

    const-string v8, "RestrictionKinds"

    filled-new-array {v6, v7, v8, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v3, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Regs_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 318
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v1, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Regs_Pub_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 319
    new-instance v3, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v10, "GppSid"

    const-string v11, "NonPersonalized"

    const-string v4, "Coppa"

    const-string v5, "GdprZone"

    const-string v6, "GdprConsent"

    const-string v7, "ConsentString"

    const-string v8, "Ccpa"

    const-string v9, "Gpp"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v3, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Regs_Pub_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 324
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Regs_CMP_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 325
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v7, "Gpp"

    const-string v8, "GppSid"

    const-string v2, "TcfV1String"

    const-string v3, "TcfV1Zone"

    const-string v4, "TcfV2String"

    const-string v5, "TcfV2Zone"

    const-string v6, "Ccpa"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Regs_CMP_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 330
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKContextProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_MaskedSignals_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 331
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v48, "Gender"

    const-string v49, "Keywords"

    const-string v2, "Ifa"

    const-string v3, "Lmt"

    const-string v4, "Ifv"

    const-string v5, "UserId"

    const-string v6, "Buyeruid"

    const-string v7, "ExternalUserIds"

    const-string v8, "Carrier"

    const-string v9, "Mccmnc"

    const-string v10, "SimCarrier"

    const-string v11, "DeviceLat"

    const-string v12, "DeviceLon"

    const-string v13, "Accuracy"

    const-string v14, "Lastfix"

    const-string v15, "DeviceZip"

    const-string v16, "Metro"

    const-string v17, "DeviceCity"

    const-string v18, "UserLat"

    const-string v19, "UserLon"

    const-string v20, "UserZip"

    const-string v21, "UserCity"

    const-string v22, "Model"

    const-string v23, "Hwv"

    const-string v24, "Ppi"

    const-string v25, "Pxratio"

    const-string v26, "Ua"

    const-string v27, "Diskspace"

    const-string v28, "Totaldisk"

    const-string v29, "Totalmem"

    const-string v30, "Freemem"

    const-string v31, "Batterylevel"

    const-string v32, "Screenbright"

    const-string v33, "Headsetname"

    const-string v34, "VolumeLevel"

    const-string v35, "Devicename"

    const-string v36, "Lastbootup"

    const-string v37, "LastbootupV2"

    const-string v38, "LastbootupHistory"

    const-string v39, "Time"

    const-string v40, "Inputlanguage"

    const-string v41, "Access"

    const-string v42, "Cpuname"

    const-string v43, "Cpuvendor"

    const-string v44, "Gpuname"

    const-string v45, "Gpuvendor"

    const-string v46, "Atts"

    const-string v47, "Yob"

    filled-new-array/range {v2 .. v49}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_MaskedSignals_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 336
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKContextProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Context_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 337
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v6, "Session"

    const-string v7, "Regs"

    const-string v2, "Sdk"

    const-string v3, "App"

    const-string v4, "User"

    const-string v5, "Device"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Context_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 341
    invoke-static {}, Lcom/explorestack/protobuf/TimestampProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 342
    invoke-static {}, Lcom/explorestack/protobuf/WrappersProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 343
    invoke-static {}, Lcom/explorestack/protobuf/adcom/AdcomProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

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

    .line 85
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/ExtensionRegistry;)V
    .registers 1

    .line 14
    invoke-static {p0}, Lio/bidmachine/protobuf/sdk/SDKContextProto;->registerAllExtensions(Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 1

    .line 0
    return-void
.end method

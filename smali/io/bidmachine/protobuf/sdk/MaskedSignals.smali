###### Class io.bidmachine.protobuf.sdk.MaskedSignals (io.bidmachine.protobuf.sdk.MaskedSignals)
.class public final Lio/bidmachine/protobuf/sdk/MaskedSignals;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "MaskedSignals.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/MaskedSignalsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    }
.end annotation


# static fields
.field public static final ACCESS_FIELD_NUMBER:I = 0x27

.field public static final ACCURACY_FIELD_NUMBER:I = 0xc

.field public static final ATTS_FIELD_NUMBER:I = 0x2c

.field public static final BATTERYLEVEL_FIELD_NUMBER:I = 0x1e

.field public static final BUYERUID_FIELD_NUMBER:I = 0x5

.field public static final CARRIER_FIELD_NUMBER:I = 0x7

.field public static final CPUNAME_FIELD_NUMBER:I = 0x28

.field public static final CPUVENDOR_FIELD_NUMBER:I = 0x29

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/MaskedSignals;

.field public static final DEVICENAME_FIELD_NUMBER:I = 0x22

.field public static final DEVICE_CITY_FIELD_NUMBER:I = 0x10

.field public static final DEVICE_LAT_FIELD_NUMBER:I = 0xa

.field public static final DEVICE_LON_FIELD_NUMBER:I = 0xb

.field public static final DEVICE_ZIP_FIELD_NUMBER:I = 0xe

.field public static final DISKSPACE_FIELD_NUMBER:I = 0x1a

.field public static final EXTERNAL_USER_IDS_FIELD_NUMBER:I = 0x6

.field public static final FREEMEM_FIELD_NUMBER:I = 0x1d

.field public static final GENDER_FIELD_NUMBER:I = 0x2e

.field public static final GPUNAME_FIELD_NUMBER:I = 0x2a

.field public static final GPUVENDOR_FIELD_NUMBER:I = 0x2b

.field public static final HEADSETNAME_FIELD_NUMBER:I = 0x20

.field public static final HWV_FIELD_NUMBER:I = 0x16

.field public static final IFA_FIELD_NUMBER:I = 0x1

.field public static final IFV_FIELD_NUMBER:I = 0x3

.field public static final INPUTLANGUAGE_FIELD_NUMBER:I = 0x26

.field public static final KEYWORDS_FIELD_NUMBER:I = 0x2f

.field public static final LASTBOOTUP_FIELD_NUMBER:I = 0x23

.field public static final LASTBOOTUP_HISTORY_FIELD_NUMBER:I = 0x30

.field public static final LASTBOOTUP_V2_FIELD_NUMBER:I = 0x24

.field public static final LASTFIX_FIELD_NUMBER:I = 0xd

.field public static final LMT_FIELD_NUMBER:I = 0x2

.field public static final MCCMNC_FIELD_NUMBER:I = 0x8

.field public static final METRO_FIELD_NUMBER:I = 0xf

.field public static final MODEL_FIELD_NUMBER:I = 0x15

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/MaskedSignals;",
            ">;"
        }
    .end annotation
.end field

.field public static final PPI_FIELD_NUMBER:I = 0x17

.field public static final PXRATIO_FIELD_NUMBER:I = 0x18

.field public static final SCREENBRIGHT_FIELD_NUMBER:I = 0x1f

.field public static final SIM_CARRIER_FIELD_NUMBER:I = 0x9

.field public static final TIME_FIELD_NUMBER:I = 0x25

.field public static final TOTALDISK_FIELD_NUMBER:I = 0x1b

.field public static final TOTALMEM_FIELD_NUMBER:I = 0x1c

.field public static final UA_FIELD_NUMBER:I = 0x19

.field public static final USER_CITY_FIELD_NUMBER:I = 0x14

.field public static final USER_ID_FIELD_NUMBER:I = 0x4

.field public static final USER_LAT_FIELD_NUMBER:I = 0x11

.field public static final USER_LON_FIELD_NUMBER:I = 0x12

.field public static final USER_ZIP_FIELD_NUMBER:I = 0x13

.field public static final VOLUME_LEVEL_FIELD_NUMBER:I = 0x21

.field public static final YOB_FIELD_NUMBER:I = 0x2d

.field private static final serialVersionUID:J


# instance fields
.field private access_:Lcom/explorestack/protobuf/StringValue;

.field private accuracy_:Lcom/explorestack/protobuf/StringValue;

.field private atts_:Lcom/explorestack/protobuf/StringValue;

.field private batterylevel_:Lcom/explorestack/protobuf/StringValue;

.field private buyeruid_:Lcom/explorestack/protobuf/StringValue;

.field private carrier_:Lcom/explorestack/protobuf/StringValue;

.field private cpuname_:Lcom/explorestack/protobuf/StringValue;

.field private cpuvendor_:Lcom/explorestack/protobuf/StringValue;

.field private deviceCity_:Lcom/explorestack/protobuf/StringValue;

.field private deviceLat_:Lcom/explorestack/protobuf/StringValue;

.field private deviceLon_:Lcom/explorestack/protobuf/StringValue;

.field private deviceZip_:Lcom/explorestack/protobuf/StringValue;

.field private devicename_:Lcom/explorestack/protobuf/StringValue;

.field private diskspace_:Lcom/explorestack/protobuf/StringValue;

.field private externalUserIds_:Lcom/explorestack/protobuf/StringValue;

.field private freemem_:Lcom/explorestack/protobuf/StringValue;

.field private gender_:Lcom/explorestack/protobuf/StringValue;

.field private gpuname_:Lcom/explorestack/protobuf/StringValue;

.field private gpuvendor_:Lcom/explorestack/protobuf/StringValue;

.field private headsetname_:Lcom/explorestack/protobuf/StringValue;

.field private hwv_:Lcom/explorestack/protobuf/StringValue;

.field private ifa_:Lcom/explorestack/protobuf/StringValue;

.field private ifv_:Lcom/explorestack/protobuf/StringValue;

.field private inputlanguage_:Lcom/explorestack/protobuf/StringValue;

.field private keywords_:Lcom/explorestack/protobuf/StringValue;

.field private lastbootupHistory_:Lcom/explorestack/protobuf/StringValue;

.field private lastbootupV2_:Lcom/explorestack/protobuf/StringValue;

.field private lastbootup_:Lcom/explorestack/protobuf/StringValue;

.field private lastfix_:Lcom/explorestack/protobuf/StringValue;

.field private lmt_:Lcom/explorestack/protobuf/StringValue;

.field private mccmnc_:Lcom/explorestack/protobuf/StringValue;

.field private memoizedIsInitialized:B

.field private metro_:Lcom/explorestack/protobuf/StringValue;

.field private model_:Lcom/explorestack/protobuf/StringValue;

.field private ppi_:Lcom/explorestack/protobuf/StringValue;

.field private pxratio_:Lcom/explorestack/protobuf/StringValue;

.field private screenbright_:Lcom/explorestack/protobuf/StringValue;

.field private simCarrier_:Lcom/explorestack/protobuf/StringValue;

.field private time_:Lcom/explorestack/protobuf/StringValue;

.field private totaldisk_:Lcom/explorestack/protobuf/StringValue;

.field private totalmem_:Lcom/explorestack/protobuf/StringValue;

.field private ua_:Lcom/explorestack/protobuf/StringValue;

.field private userCity_:Lcom/explorestack/protobuf/StringValue;

.field private userId_:Lcom/explorestack/protobuf/StringValue;

.field private userLat_:Lcom/explorestack/protobuf/StringValue;

.field private userLon_:Lcom/explorestack/protobuf/StringValue;

.field private userZip_:Lcom/explorestack/protobuf/StringValue;

.field private volumeLevel_:Lcom/explorestack/protobuf/StringValue;

.field private yob_:Lcom/explorestack/protobuf/StringValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11806
    new-instance v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    .line 11814
    new-instance v0, Lio/bidmachine/protobuf/sdk/MaskedSignals$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 2556
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;-><init>()V

    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_66d

    .line 50
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_678

    .line 680
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :sswitch_1c
    move v1, v3

    goto :goto_b

    :catchall_1e
    move-exception p1

    goto/16 :goto_663

    :catch_21
    move-exception p1

    goto/16 :goto_654

    :catch_24
    move-exception p1

    goto/16 :goto_65e

    .line 668
    :sswitch_27
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastbootupHistory_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_2f

    .line 669
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 671
    :cond_2f
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastbootupHistory_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 673
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 674
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastbootupHistory_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_b

    .line 655
    :sswitch_47
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->keywords_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_4f

    .line 656
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 658
    :cond_4f
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->keywords_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 660
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 661
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->keywords_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_b

    .line 642
    :sswitch_67
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->gender_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_6f

    .line 643
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 645
    :cond_6f
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->gender_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 647
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 648
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->gender_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_b

    .line 629
    :sswitch_87
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->yob_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_8f

    .line 630
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 632
    :cond_8f
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->yob_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 634
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 635
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->yob_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 616
    :sswitch_a8
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->atts_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_b0

    .line 617
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 619
    :cond_b0
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->atts_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 621
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 622
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->atts_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 603
    :sswitch_c9
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->gpuvendor_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_d1

    .line 604
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 606
    :cond_d1
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->gpuvendor_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 608
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 609
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->gpuvendor_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 590
    :sswitch_ea
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->gpuname_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_f2

    .line 591
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 593
    :cond_f2
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->gpuname_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 595
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 596
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->gpuname_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 577
    :sswitch_10b
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->cpuvendor_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_113

    .line 578
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 580
    :cond_113
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->cpuvendor_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 582
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 583
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->cpuvendor_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 564
    :sswitch_12c
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->cpuname_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_134

    .line 565
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 567
    :cond_134
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->cpuname_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 569
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 570
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->cpuname_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 551
    :sswitch_14d
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_155

    .line 552
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 554
    :cond_155
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 556
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 557
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 538
    :sswitch_16e
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->inputlanguage_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_176

    .line 539
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 541
    :cond_176
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->inputlanguage_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 543
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 544
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->inputlanguage_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 525
    :sswitch_18f
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->time_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_197

    .line 526
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 528
    :cond_197
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->time_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 530
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 531
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->time_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 512
    :sswitch_1b0
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastbootupV2_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_1b8

    .line 513
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 515
    :cond_1b8
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastbootupV2_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 517
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 518
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastbootupV2_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 499
    :sswitch_1d1
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastbootup_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_1d9

    .line 500
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 502
    :cond_1d9
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastbootup_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 504
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 505
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastbootup_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 486
    :sswitch_1f2
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->devicename_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_1fa

    .line 487
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 489
    :cond_1fa
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->devicename_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 491
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 492
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->devicename_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 473
    :sswitch_213
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->volumeLevel_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_21b

    .line 474
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 476
    :cond_21b
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->volumeLevel_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 478
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 479
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->volumeLevel_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 460
    :sswitch_234
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->headsetname_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_23c

    .line 461
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 463
    :cond_23c
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->headsetname_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 465
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 466
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->headsetname_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 447
    :sswitch_255
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->screenbright_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_25d

    .line 448
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 450
    :cond_25d
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->screenbright_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 452
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 453
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->screenbright_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 434
    :sswitch_276
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->batterylevel_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_27e

    .line 435
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 437
    :cond_27e
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->batterylevel_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 439
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 440
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->batterylevel_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 421
    :sswitch_297
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->freemem_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_29f

    .line 422
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 424
    :cond_29f
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->freemem_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 426
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 427
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->freemem_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 408
    :sswitch_2b8
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->totalmem_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_2c0

    .line 409
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 411
    :cond_2c0
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->totalmem_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 413
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 414
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->totalmem_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 395
    :sswitch_2d9
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->totaldisk_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_2e1

    .line 396
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 398
    :cond_2e1
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->totaldisk_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 400
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 401
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->totaldisk_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 382
    :sswitch_2fa
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->diskspace_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_302

    .line 383
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 385
    :cond_302
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->diskspace_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 387
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 388
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->diskspace_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 369
    :sswitch_31b
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ua_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_323

    .line 370
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 372
    :cond_323
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ua_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 374
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 375
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ua_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 356
    :sswitch_33c
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->pxratio_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_344

    .line 357
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 359
    :cond_344
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->pxratio_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 361
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 362
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->pxratio_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 343
    :sswitch_35d
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ppi_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_365

    .line 344
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 346
    :cond_365
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ppi_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 348
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 349
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ppi_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 330
    :sswitch_37e
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hwv_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_386

    .line 331
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 333
    :cond_386
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hwv_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 335
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 336
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hwv_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 317
    :sswitch_39f
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->model_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_3a7

    .line 318
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 320
    :cond_3a7
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->model_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 322
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 323
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->model_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 304
    :sswitch_3c0
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userCity_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_3c8

    .line 305
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 307
    :cond_3c8
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userCity_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 309
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 310
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userCity_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 291
    :sswitch_3e1
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userZip_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_3e9

    .line 292
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 294
    :cond_3e9
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userZip_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 296
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 297
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userZip_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 278
    :sswitch_402
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userLon_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_40a

    .line 279
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 281
    :cond_40a
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userLon_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 283
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 284
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userLon_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 265
    :sswitch_423
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userLat_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_42b

    .line 266
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 268
    :cond_42b
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userLat_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 270
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 271
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userLat_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 252
    :sswitch_444
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceCity_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_44c

    .line 253
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 255
    :cond_44c
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceCity_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 257
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 258
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceCity_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 239
    :sswitch_465
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->metro_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_46d

    .line 240
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 242
    :cond_46d
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->metro_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 244
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 245
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->metro_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 226
    :sswitch_486
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceZip_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_48e

    .line 227
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 229
    :cond_48e
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceZip_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 231
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 232
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceZip_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 213
    :sswitch_4a7
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastfix_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_4af

    .line 214
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 216
    :cond_4af
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastfix_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 218
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 219
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastfix_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 200
    :sswitch_4c8
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->accuracy_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_4d0

    .line 201
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 203
    :cond_4d0
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->accuracy_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 205
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 206
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->accuracy_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 187
    :sswitch_4e9
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceLon_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_4f1

    .line 188
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 190
    :cond_4f1
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceLon_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 192
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 193
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceLon_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 174
    :sswitch_50a
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceLat_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_512

    .line 175
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 177
    :cond_512
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceLat_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 179
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 180
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceLat_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 161
    :sswitch_52b
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_533

    .line 162
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 164
    :cond_533
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 166
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 167
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 148
    :sswitch_54c
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->mccmnc_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_554

    .line 149
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 151
    :cond_554
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->mccmnc_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 153
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 154
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->mccmnc_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 135
    :sswitch_56d
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->carrier_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_575

    .line 136
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 138
    :cond_575
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->carrier_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 140
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 141
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->carrier_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 122
    :sswitch_58e
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->externalUserIds_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_596

    .line 123
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 125
    :cond_596
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->externalUserIds_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 127
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 128
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->externalUserIds_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 109
    :sswitch_5af
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->buyeruid_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_5b7

    .line 110
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 112
    :cond_5b7
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->buyeruid_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 114
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 115
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->buyeruid_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 96
    :sswitch_5d0
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userId_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_5d8

    .line 97
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 99
    :cond_5d8
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userId_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 101
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 102
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userId_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 83
    :sswitch_5f1
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ifv_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_5f9

    .line 84
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 86
    :cond_5f9
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ifv_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 88
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 89
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ifv_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 70
    :sswitch_612
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lmt_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_61a

    .line 71
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 73
    :cond_61a
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lmt_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 75
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 76
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lmt_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 57
    :sswitch_633
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ifa_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_63b

    .line 58
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 60
    :cond_63b
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ifa_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 62
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 63
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ifa_:Lcom/explorestack/protobuf/StringValue;
    :try_end_652
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_652} :catch_24
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_652} :catch_21
    .catchall {:try_start_d .. :try_end_652} :catchall_1e

    goto/16 :goto_b

    .line 691
    :goto_654
    :try_start_654
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 692
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 689
    :goto_65e
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_663
    .catchall {:try_start_654 .. :try_end_663} :catchall_1e

    .line 694
    :goto_663
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 695
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 696
    throw p1

    .line 694
    :cond_66d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 695
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_678
    .sparse-switch
        0x0 -> :sswitch_1c
        0xa -> :sswitch_633
        0x12 -> :sswitch_612
        0x1a -> :sswitch_5f1
        0x22 -> :sswitch_5d0
        0x2a -> :sswitch_5af
        0x32 -> :sswitch_58e
        0x3a -> :sswitch_56d
        0x42 -> :sswitch_54c
        0x4a -> :sswitch_52b
        0x52 -> :sswitch_50a
        0x5a -> :sswitch_4e9
        0x62 -> :sswitch_4c8
        0x6a -> :sswitch_4a7
        0x72 -> :sswitch_486
        0x7a -> :sswitch_465
        0x82 -> :sswitch_444
        0x8a -> :sswitch_423
        0x92 -> :sswitch_402
        0x9a -> :sswitch_3e1
        0xa2 -> :sswitch_3c0
        0xaa -> :sswitch_39f
        0xb2 -> :sswitch_37e
        0xba -> :sswitch_35d
        0xc2 -> :sswitch_33c
        0xca -> :sswitch_31b
        0xd2 -> :sswitch_2fa
        0xda -> :sswitch_2d9
        0xe2 -> :sswitch_2b8
        0xea -> :sswitch_297
        0xf2 -> :sswitch_276
        0xfa -> :sswitch_255
        0x102 -> :sswitch_234
        0x10a -> :sswitch_213
        0x112 -> :sswitch_1f2
        0x11a -> :sswitch_1d1
        0x122 -> :sswitch_1b0
        0x12a -> :sswitch_18f
        0x132 -> :sswitch_16e
        0x13a -> :sswitch_14d
        0x142 -> :sswitch_12c
        0x14a -> :sswitch_10b
        0x152 -> :sswitch_ea
        0x15a -> :sswitch_c9
        0x162 -> :sswitch_a8
        0x16a -> :sswitch_87
        0x172 -> :sswitch_67
        0x17a -> :sswitch_47
        0x182 -> :sswitch_27
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/MaskedSignals$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/MaskedSignals;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 20
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 2556
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$1;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1002(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->carrier_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$1102(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->mccmnc_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$1202(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$1302(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceLat_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$1402(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceLon_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$1502(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->accuracy_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$1602(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastfix_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$1702(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceZip_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$1802(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->metro_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$1902(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceCity_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 13
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2002(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userLat_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$2102(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userLon_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$2202(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userZip_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$2302(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userCity_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$2402(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->model_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$2502(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hwv_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$2602(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ppi_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$2702(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->pxratio_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$2802(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ua_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$2902(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->diskspace_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$3002(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->totaldisk_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$3102(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->totalmem_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$3202(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->freemem_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$3302(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->batterylevel_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$3402(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->screenbright_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$3502(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->headsetname_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$3602(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->volumeLevel_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$3702(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->devicename_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$3802(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastbootup_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$3902(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastbootupV2_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$4002(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastbootupHistory_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ifa_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$4102(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->time_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$4202(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->inputlanguage_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$4302(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$4402(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->cpuname_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$4502(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->cpuvendor_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$4602(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->gpuname_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$4702(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->gpuvendor_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$4802(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->atts_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$4902(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->yob_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$5002(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->gender_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lmt_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$5102(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->keywords_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$5200(Lio/bidmachine/protobuf/sdk/MaskedSignals;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$5300()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ifv_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userId_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$802(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->buyeruid_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$902(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->externalUserIds_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/MaskedSignals;
    .registers 1

    .line 11810
    sget-object v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 700
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_MaskedSignals_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 1

    .line 3451
    sget-object v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->toBuilder()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/MaskedSignals;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 2

    .line 3454
    sget-object v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->toBuilder()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/MaskedSignals;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/MaskedSignals;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3424
    sget-object v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3425
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MaskedSignals;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3431
    sget-object v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3432
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/MaskedSignals;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3392
    sget-object v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MaskedSignals;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3398
    sget-object v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/MaskedSignals;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3437
    sget-object v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3438
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MaskedSignals;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3444
    sget-object v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3445
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/MaskedSignals;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3412
    sget-object v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3413
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MaskedSignals;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3419
    sget-object v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3420
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/MaskedSignals;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3381
    sget-object v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MaskedSignals;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3387
    sget-object v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/MaskedSignals;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3402
    sget-object v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MaskedSignals;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3408
    sget-object v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/MaskedSignals;",
            ">;"
        }
    .end annotation

    .line 11825
    sget-object v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 2925
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    if-nez v1, :cond_d

    .line 2926
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2928
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    .line 2930
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasIfa()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasIfa()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 2931
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasIfa()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2932
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getIfa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 2933
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getIfa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 2935
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLmt()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLmt()Z

    move-result v2

    if-eq v1, v2, :cond_3b

    return v3

    .line 2936
    :cond_3b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLmt()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 2937
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLmt()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 2938
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLmt()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    return v3

    .line 2940
    :cond_50
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasIfv()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasIfv()Z

    move-result v2

    if-eq v1, v2, :cond_5b

    return v3

    .line 2941
    :cond_5b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasIfv()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 2942
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getIfv()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 2943
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getIfv()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    return v3

    .line 2945
    :cond_70
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserId()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserId()Z

    move-result v2

    if-eq v1, v2, :cond_7b

    return v3

    .line 2946
    :cond_7b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserId()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 2947
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserId()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 2948
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserId()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    return v3

    .line 2950
    :cond_90
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasBuyeruid()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasBuyeruid()Z

    move-result v2

    if-eq v1, v2, :cond_9b

    return v3

    .line 2951
    :cond_9b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasBuyeruid()Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 2952
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getBuyeruid()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 2953
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getBuyeruid()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b0

    return v3

    .line 2955
    :cond_b0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasExternalUserIds()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasExternalUserIds()Z

    move-result v2

    if-eq v1, v2, :cond_bb

    return v3

    .line 2956
    :cond_bb
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasExternalUserIds()Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 2957
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getExternalUserIds()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 2958
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getExternalUserIds()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d0

    return v3

    .line 2960
    :cond_d0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasCarrier()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasCarrier()Z

    move-result v2

    if-eq v1, v2, :cond_db

    return v3

    .line 2961
    :cond_db
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasCarrier()Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 2962
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getCarrier()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 2963
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getCarrier()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f0

    return v3

    .line 2965
    :cond_f0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasMccmnc()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasMccmnc()Z

    move-result v2

    if-eq v1, v2, :cond_fb

    return v3

    .line 2966
    :cond_fb
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasMccmnc()Z

    move-result v1

    if-eqz v1, :cond_110

    .line 2967
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getMccmnc()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 2968
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getMccmnc()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_110

    return v3

    .line 2970
    :cond_110
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasSimCarrier()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasSimCarrier()Z

    move-result v2

    if-eq v1, v2, :cond_11b

    return v3

    .line 2971
    :cond_11b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasSimCarrier()Z

    move-result v1

    if-eqz v1, :cond_130

    .line 2972
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getSimCarrier()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 2973
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getSimCarrier()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_130

    return v3

    .line 2975
    :cond_130
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDeviceLat()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDeviceLat()Z

    move-result v2

    if-eq v1, v2, :cond_13b

    return v3

    .line 2976
    :cond_13b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDeviceLat()Z

    move-result v1

    if-eqz v1, :cond_150

    .line 2977
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceLat()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 2978
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceLat()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_150

    return v3

    .line 2980
    :cond_150
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDeviceLon()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDeviceLon()Z

    move-result v2

    if-eq v1, v2, :cond_15b

    return v3

    .line 2981
    :cond_15b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDeviceLon()Z

    move-result v1

    if-eqz v1, :cond_170

    .line 2982
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceLon()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 2983
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceLon()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_170

    return v3

    .line 2985
    :cond_170
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasAccuracy()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasAccuracy()Z

    move-result v2

    if-eq v1, v2, :cond_17b

    return v3

    .line 2986
    :cond_17b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_190

    .line 2987
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getAccuracy()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 2988
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getAccuracy()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_190

    return v3

    .line 2990
    :cond_190
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLastfix()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLastfix()Z

    move-result v2

    if-eq v1, v2, :cond_19b

    return v3

    .line 2991
    :cond_19b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLastfix()Z

    move-result v1

    if-eqz v1, :cond_1b0

    .line 2992
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastfix()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 2993
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastfix()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b0

    return v3

    .line 2995
    :cond_1b0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDeviceZip()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDeviceZip()Z

    move-result v2

    if-eq v1, v2, :cond_1bb

    return v3

    .line 2996
    :cond_1bb
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDeviceZip()Z

    move-result v1

    if-eqz v1, :cond_1d0

    .line 2997
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceZip()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 2998
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceZip()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d0

    return v3

    .line 3000
    :cond_1d0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasMetro()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasMetro()Z

    move-result v2

    if-eq v1, v2, :cond_1db

    return v3

    .line 3001
    :cond_1db
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasMetro()Z

    move-result v1

    if-eqz v1, :cond_1f0

    .line 3002
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getMetro()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3003
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getMetro()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f0

    return v3

    .line 3005
    :cond_1f0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDeviceCity()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDeviceCity()Z

    move-result v2

    if-eq v1, v2, :cond_1fb

    return v3

    .line 3006
    :cond_1fb
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDeviceCity()Z

    move-result v1

    if-eqz v1, :cond_210

    .line 3007
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceCity()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3008
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceCity()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_210

    return v3

    .line 3010
    :cond_210
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserLat()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserLat()Z

    move-result v2

    if-eq v1, v2, :cond_21b

    return v3

    .line 3011
    :cond_21b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserLat()Z

    move-result v1

    if-eqz v1, :cond_230

    .line 3012
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserLat()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3013
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserLat()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_230

    return v3

    .line 3015
    :cond_230
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserLon()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserLon()Z

    move-result v2

    if-eq v1, v2, :cond_23b

    return v3

    .line 3016
    :cond_23b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserLon()Z

    move-result v1

    if-eqz v1, :cond_250

    .line 3017
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserLon()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3018
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserLon()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_250

    return v3

    .line 3020
    :cond_250
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserZip()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserZip()Z

    move-result v2

    if-eq v1, v2, :cond_25b

    return v3

    .line 3021
    :cond_25b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserZip()Z

    move-result v1

    if-eqz v1, :cond_270

    .line 3022
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserZip()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3023
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserZip()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_270

    return v3

    .line 3025
    :cond_270
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserCity()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserCity()Z

    move-result v2

    if-eq v1, v2, :cond_27b

    return v3

    .line 3026
    :cond_27b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserCity()Z

    move-result v1

    if-eqz v1, :cond_290

    .line 3027
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserCity()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3028
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserCity()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_290

    return v3

    .line 3030
    :cond_290
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasModel()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasModel()Z

    move-result v2

    if-eq v1, v2, :cond_29b

    return v3

    .line 3031
    :cond_29b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasModel()Z

    move-result v1

    if-eqz v1, :cond_2b0

    .line 3032
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getModel()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3033
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getModel()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b0

    return v3

    .line 3035
    :cond_2b0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasHwv()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasHwv()Z

    move-result v2

    if-eq v1, v2, :cond_2bb

    return v3

    .line 3036
    :cond_2bb
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasHwv()Z

    move-result v1

    if-eqz v1, :cond_2d0

    .line 3037
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getHwv()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3038
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getHwv()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d0

    return v3

    .line 3040
    :cond_2d0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasPpi()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasPpi()Z

    move-result v2

    if-eq v1, v2, :cond_2db

    return v3

    .line 3041
    :cond_2db
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasPpi()Z

    move-result v1

    if-eqz v1, :cond_2f0

    .line 3042
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getPpi()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3043
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getPpi()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f0

    return v3

    .line 3045
    :cond_2f0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasPxratio()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasPxratio()Z

    move-result v2

    if-eq v1, v2, :cond_2fb

    return v3

    .line 3046
    :cond_2fb
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasPxratio()Z

    move-result v1

    if-eqz v1, :cond_310

    .line 3047
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getPxratio()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3048
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getPxratio()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_310

    return v3

    .line 3050
    :cond_310
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUa()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUa()Z

    move-result v2

    if-eq v1, v2, :cond_31b

    return v3

    .line 3051
    :cond_31b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUa()Z

    move-result v1

    if-eqz v1, :cond_330

    .line 3052
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3053
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_330

    return v3

    .line 3055
    :cond_330
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDiskspace()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDiskspace()Z

    move-result v2

    if-eq v1, v2, :cond_33b

    return v3

    .line 3056
    :cond_33b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDiskspace()Z

    move-result v1

    if-eqz v1, :cond_350

    .line 3057
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDiskspace()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3058
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDiskspace()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_350

    return v3

    .line 3060
    :cond_350
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasTotaldisk()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasTotaldisk()Z

    move-result v2

    if-eq v1, v2, :cond_35b

    return v3

    .line 3061
    :cond_35b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasTotaldisk()Z

    move-result v1

    if-eqz v1, :cond_370

    .line 3062
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getTotaldisk()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3063
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getTotaldisk()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_370

    return v3

    .line 3065
    :cond_370
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasTotalmem()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasTotalmem()Z

    move-result v2

    if-eq v1, v2, :cond_37b

    return v3

    .line 3066
    :cond_37b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasTotalmem()Z

    move-result v1

    if-eqz v1, :cond_390

    .line 3067
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getTotalmem()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3068
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getTotalmem()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_390

    return v3

    .line 3070
    :cond_390
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasFreemem()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasFreemem()Z

    move-result v2

    if-eq v1, v2, :cond_39b

    return v3

    .line 3071
    :cond_39b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasFreemem()Z

    move-result v1

    if-eqz v1, :cond_3b0

    .line 3072
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getFreemem()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3073
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getFreemem()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b0

    return v3

    .line 3075
    :cond_3b0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasBatterylevel()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasBatterylevel()Z

    move-result v2

    if-eq v1, v2, :cond_3bb

    return v3

    .line 3076
    :cond_3bb
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasBatterylevel()Z

    move-result v1

    if-eqz v1, :cond_3d0

    .line 3077
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getBatterylevel()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3078
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getBatterylevel()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d0

    return v3

    .line 3080
    :cond_3d0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasScreenbright()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasScreenbright()Z

    move-result v2

    if-eq v1, v2, :cond_3db

    return v3

    .line 3081
    :cond_3db
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasScreenbright()Z

    move-result v1

    if-eqz v1, :cond_3f0

    .line 3082
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getScreenbright()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3083
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getScreenbright()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f0

    return v3

    .line 3085
    :cond_3f0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasHeadsetname()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasHeadsetname()Z

    move-result v2

    if-eq v1, v2, :cond_3fb

    return v3

    .line 3086
    :cond_3fb
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasHeadsetname()Z

    move-result v1

    if-eqz v1, :cond_410

    .line 3087
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getHeadsetname()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3088
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getHeadsetname()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_410

    return v3

    .line 3090
    :cond_410
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasVolumeLevel()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasVolumeLevel()Z

    move-result v2

    if-eq v1, v2, :cond_41b

    return v3

    .line 3091
    :cond_41b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasVolumeLevel()Z

    move-result v1

    if-eqz v1, :cond_430

    .line 3092
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getVolumeLevel()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3093
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getVolumeLevel()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_430

    return v3

    .line 3095
    :cond_430
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDevicename()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDevicename()Z

    move-result v2

    if-eq v1, v2, :cond_43b

    return v3

    .line 3096
    :cond_43b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDevicename()Z

    move-result v1

    if-eqz v1, :cond_450

    .line 3097
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDevicename()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3098
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDevicename()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_450

    return v3

    .line 3100
    :cond_450
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLastbootup()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLastbootup()Z

    move-result v2

    if-eq v1, v2, :cond_45b

    return v3

    .line 3101
    :cond_45b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLastbootup()Z

    move-result v1

    if-eqz v1, :cond_470

    .line 3102
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastbootup()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3103
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastbootup()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_470

    return v3

    .line 3105
    :cond_470
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLastbootupV2()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLastbootupV2()Z

    move-result v2

    if-eq v1, v2, :cond_47b

    return v3

    .line 3106
    :cond_47b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLastbootupV2()Z

    move-result v1

    if-eqz v1, :cond_490

    .line 3107
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastbootupV2()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3108
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastbootupV2()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_490

    return v3

    .line 3110
    :cond_490
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLastbootupHistory()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLastbootupHistory()Z

    move-result v2

    if-eq v1, v2, :cond_49b

    return v3

    .line 3111
    :cond_49b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLastbootupHistory()Z

    move-result v1

    if-eqz v1, :cond_4b0

    .line 3112
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastbootupHistory()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3113
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastbootupHistory()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b0

    return v3

    .line 3115
    :cond_4b0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasTime()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasTime()Z

    move-result v2

    if-eq v1, v2, :cond_4bb

    return v3

    .line 3116
    :cond_4bb
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasTime()Z

    move-result v1

    if-eqz v1, :cond_4d0

    .line 3117
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getTime()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3118
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getTime()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d0

    return v3

    .line 3120
    :cond_4d0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasInputlanguage()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasInputlanguage()Z

    move-result v2

    if-eq v1, v2, :cond_4db

    return v3

    .line 3121
    :cond_4db
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasInputlanguage()Z

    move-result v1

    if-eqz v1, :cond_4f0

    .line 3122
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getInputlanguage()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3123
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getInputlanguage()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f0

    return v3

    .line 3125
    :cond_4f0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasAccess()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasAccess()Z

    move-result v2

    if-eq v1, v2, :cond_4fb

    return v3

    .line 3126
    :cond_4fb
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasAccess()Z

    move-result v1

    if-eqz v1, :cond_510

    .line 3127
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getAccess()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3128
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getAccess()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_510

    return v3

    .line 3130
    :cond_510
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasCpuname()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasCpuname()Z

    move-result v2

    if-eq v1, v2, :cond_51b

    return v3

    .line 3131
    :cond_51b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasCpuname()Z

    move-result v1

    if-eqz v1, :cond_530

    .line 3132
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getCpuname()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3133
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getCpuname()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_530

    return v3

    .line 3135
    :cond_530
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasCpuvendor()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasCpuvendor()Z

    move-result v2

    if-eq v1, v2, :cond_53b

    return v3

    .line 3136
    :cond_53b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasCpuvendor()Z

    move-result v1

    if-eqz v1, :cond_550

    .line 3137
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getCpuvendor()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3138
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getCpuvendor()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_550

    return v3

    .line 3140
    :cond_550
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasGpuname()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasGpuname()Z

    move-result v2

    if-eq v1, v2, :cond_55b

    return v3

    .line 3141
    :cond_55b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasGpuname()Z

    move-result v1

    if-eqz v1, :cond_570

    .line 3142
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getGpuname()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3143
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getGpuname()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_570

    return v3

    .line 3145
    :cond_570
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasGpuvendor()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasGpuvendor()Z

    move-result v2

    if-eq v1, v2, :cond_57b

    return v3

    .line 3146
    :cond_57b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasGpuvendor()Z

    move-result v1

    if-eqz v1, :cond_590

    .line 3147
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getGpuvendor()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3148
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getGpuvendor()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_590

    return v3

    .line 3150
    :cond_590
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasAtts()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasAtts()Z

    move-result v2

    if-eq v1, v2, :cond_59b

    return v3

    .line 3151
    :cond_59b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasAtts()Z

    move-result v1

    if-eqz v1, :cond_5b0

    .line 3152
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getAtts()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3153
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getAtts()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b0

    return v3

    .line 3155
    :cond_5b0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasYob()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasYob()Z

    move-result v2

    if-eq v1, v2, :cond_5bb

    return v3

    .line 3156
    :cond_5bb
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasYob()Z

    move-result v1

    if-eqz v1, :cond_5d0

    .line 3157
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getYob()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3158
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getYob()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d0

    return v3

    .line 3160
    :cond_5d0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasGender()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasGender()Z

    move-result v2

    if-eq v1, v2, :cond_5db

    return v3

    .line 3161
    :cond_5db
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasGender()Z

    move-result v1

    if-eqz v1, :cond_5f0

    .line 3162
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getGender()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3163
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getGender()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f0

    return v3

    .line 3165
    :cond_5f0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasKeywords()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasKeywords()Z

    move-result v2

    if-eq v1, v2, :cond_5fb

    return v3

    .line 3166
    :cond_5fb
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasKeywords()Z

    move-result v1

    if-eqz v1, :cond_610

    .line 3167
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getKeywords()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3168
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getKeywords()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_610

    return v3

    .line 3170
    :cond_610
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61b

    return v3

    :cond_61b
    return v0
.end method

.method public getAccess()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2235
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getAccessOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 2246
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getAccess()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getAccuracy()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1162
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->accuracy_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getAccuracyOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1173
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getAccuracy()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getAtts()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2425
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->atts_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getAttsOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 2436
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getAtts()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getBatterylevel()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1855
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->batterylevel_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getBatterylevelOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1866
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getBatterylevel()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getBuyeruid()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 890
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->buyeruid_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getBuyeruidOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 901
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getBuyeruid()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getCarrier()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 968
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->carrier_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getCarrierOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 980
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getCarrier()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getCpuname()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2273
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->cpuname_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getCpunameOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 2284
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getCpuname()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getCpuvendor()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2311
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->cpuvendor_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getCpuvendorOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 2322
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getCpuvendor()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/MaskedSignals;
    .registers 2

    .line 11835
    sget-object v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    return-object v0
.end method

.method public getDeviceCity()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1314
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceCity_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getDeviceCityOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1325
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceCity()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceLat()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1085
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceLat_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getDeviceLatOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1097
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceLat()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceLon()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1124
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceLon_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getDeviceLonOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1135
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceLon()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceZip()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1238
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceZip_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getDeviceZipOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1249
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceZip()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getDevicename()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2007
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->devicename_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getDevicenameOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 2018
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDevicename()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getDiskspace()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1702
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->diskspace_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getDiskspaceOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1714
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDiskspace()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getExternalUserIds()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 928
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->externalUserIds_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getExternalUserIdsOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 939
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getExternalUserIds()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getFreemem()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1817
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->freemem_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getFreememOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1828
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getFreemem()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getGender()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2504
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->gender_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getGenderOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 2515
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getGender()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getGpuname()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2349
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->gpuname_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getGpunameOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 2360
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getGpuname()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getGpuvendor()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2387
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->gpuvendor_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getGpuvendorOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 2398
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getGpuvendor()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getHeadsetname()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1931
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->headsetname_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getHeadsetnameOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1942
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getHeadsetname()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getHwv()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1548
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hwv_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getHwvOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1559
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getHwv()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getIfa()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 737
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ifa_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getIfaOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 749
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getIfa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getIfv()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 814
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ifv_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getIfvOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 825
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getIfv()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getInputlanguage()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2197
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->inputlanguage_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getInputlanguageOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 2208
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getInputlanguage()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getKeywords()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2542
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->keywords_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getKeywordsOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 2553
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getKeywords()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getLastbootup()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2045
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastbootup_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getLastbootupHistory()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2121
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastbootupHistory_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getLastbootupHistoryOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 2132
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastbootupHistory()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getLastbootupOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 2056
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastbootup()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getLastbootupV2()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2083
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastbootupV2_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getLastbootupV2OrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 2094
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastbootupV2()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getLastfix()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1200
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastfix_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getLastfixOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1211
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastfix()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getLmt()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 776
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lmt_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getLmtOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 787
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLmt()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getMccmnc()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1007
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->mccmnc_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getMccmncOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1018
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getMccmnc()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getMetro()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1276
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->metro_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getMetroOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1287
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getMetro()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1509
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->model_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getModelOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1521
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getModel()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/MaskedSignals;",
            ">;"
        }
    .end annotation

    .line 11830
    sget-object v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPpi()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1586
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ppi_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getPpiOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1597
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getPpi()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getPxratio()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1624
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->pxratio_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getPxratioOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1635
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getPxratio()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getScreenbright()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1893
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->screenbright_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getScreenbrightOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1904
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getScreenbright()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 2719
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 2723
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ifa_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 2725
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getIfa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 2727
    :goto_15
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lmt_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_23

    const/4 v1, 0x2

    .line 2729
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLmt()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2731
    :cond_23
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ifv_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_31

    const/4 v1, 0x3

    .line 2733
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getIfv()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2735
    :cond_31
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userId_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_3f

    const/4 v1, 0x4

    .line 2737
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserId()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2739
    :cond_3f
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->buyeruid_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_4d

    const/4 v1, 0x5

    .line 2741
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getBuyeruid()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2743
    :cond_4d
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->externalUserIds_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_5b

    const/4 v1, 0x6

    .line 2745
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getExternalUserIds()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2747
    :cond_5b
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->carrier_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_69

    const/4 v1, 0x7

    .line 2749
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getCarrier()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2751
    :cond_69
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->mccmnc_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_78

    const/16 v1, 0x8

    .line 2753
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getMccmnc()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2755
    :cond_78
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_87

    const/16 v1, 0x9

    .line 2757
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getSimCarrier()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2759
    :cond_87
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceLat_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_96

    const/16 v1, 0xa

    .line 2761
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceLat()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2763
    :cond_96
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceLon_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_a5

    const/16 v1, 0xb

    .line 2765
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceLon()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2767
    :cond_a5
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->accuracy_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_b4

    const/16 v1, 0xc

    .line 2769
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getAccuracy()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2771
    :cond_b4
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastfix_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_c3

    const/16 v1, 0xd

    .line 2773
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastfix()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2775
    :cond_c3
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceZip_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_d2

    const/16 v1, 0xe

    .line 2777
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceZip()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2779
    :cond_d2
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->metro_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_e1

    const/16 v1, 0xf

    .line 2781
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getMetro()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2783
    :cond_e1
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceCity_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_f0

    const/16 v1, 0x10

    .line 2785
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceCity()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2787
    :cond_f0
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userLat_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_ff

    const/16 v1, 0x11

    .line 2789
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserLat()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2791
    :cond_ff
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userLon_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_10e

    const/16 v1, 0x12

    .line 2793
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserLon()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2795
    :cond_10e
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userZip_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_11d

    const/16 v1, 0x13

    .line 2797
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserZip()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2799
    :cond_11d
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userCity_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_12c

    const/16 v1, 0x14

    .line 2801
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserCity()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2803
    :cond_12c
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->model_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_13b

    const/16 v1, 0x15

    .line 2805
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getModel()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2807
    :cond_13b
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hwv_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_14a

    const/16 v1, 0x16

    .line 2809
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getHwv()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2811
    :cond_14a
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ppi_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_159

    const/16 v1, 0x17

    .line 2813
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getPpi()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2815
    :cond_159
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->pxratio_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_168

    const/16 v1, 0x18

    .line 2817
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getPxratio()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2819
    :cond_168
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ua_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_177

    const/16 v1, 0x19

    .line 2821
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2823
    :cond_177
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->diskspace_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_186

    const/16 v1, 0x1a

    .line 2825
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDiskspace()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2827
    :cond_186
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->totaldisk_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_195

    const/16 v1, 0x1b

    .line 2829
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getTotaldisk()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2831
    :cond_195
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->totalmem_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_1a4

    const/16 v1, 0x1c

    .line 2833
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getTotalmem()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2835
    :cond_1a4
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->freemem_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_1b3

    const/16 v1, 0x1d

    .line 2837
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getFreemem()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2839
    :cond_1b3
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->batterylevel_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_1c2

    const/16 v1, 0x1e

    .line 2841
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getBatterylevel()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2843
    :cond_1c2
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->screenbright_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_1d1

    const/16 v1, 0x1f

    .line 2845
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getScreenbright()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2847
    :cond_1d1
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->headsetname_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_1e0

    const/16 v1, 0x20

    .line 2849
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getHeadsetname()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2851
    :cond_1e0
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->volumeLevel_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_1ef

    const/16 v1, 0x21

    .line 2853
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getVolumeLevel()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2855
    :cond_1ef
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->devicename_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_1fe

    const/16 v1, 0x22

    .line 2857
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDevicename()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2859
    :cond_1fe
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastbootup_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_20d

    const/16 v1, 0x23

    .line 2861
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastbootup()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2863
    :cond_20d
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastbootupV2_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_21c

    const/16 v1, 0x24

    .line 2865
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastbootupV2()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2867
    :cond_21c
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->time_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_22b

    const/16 v1, 0x25

    .line 2869
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getTime()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2871
    :cond_22b
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->inputlanguage_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_23a

    const/16 v1, 0x26

    .line 2873
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getInputlanguage()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2875
    :cond_23a
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_249

    const/16 v1, 0x27

    .line 2877
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getAccess()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2879
    :cond_249
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->cpuname_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_258

    const/16 v1, 0x28

    .line 2881
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getCpuname()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2883
    :cond_258
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->cpuvendor_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_267

    const/16 v1, 0x29

    .line 2885
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getCpuvendor()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2887
    :cond_267
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->gpuname_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_276

    const/16 v1, 0x2a

    .line 2889
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getGpuname()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2891
    :cond_276
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->gpuvendor_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_285

    const/16 v1, 0x2b

    .line 2893
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getGpuvendor()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2895
    :cond_285
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->atts_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_294

    const/16 v1, 0x2c

    .line 2897
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getAtts()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2899
    :cond_294
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->yob_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_2a3

    const/16 v1, 0x2d

    .line 2901
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getYob()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2903
    :cond_2a3
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->gender_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_2b2

    const/16 v1, 0x2e

    .line 2905
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getGender()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2907
    :cond_2b2
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->keywords_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_2c1

    const/16 v1, 0x2f

    .line 2909
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getKeywords()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2911
    :cond_2c1
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastbootupHistory_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_2d0

    const/16 v1, 0x30

    .line 2913
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastbootupHistory()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2915
    :cond_2d0
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2916
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getSimCarrier()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1045
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getSimCarrierOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1056
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getSimCarrier()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getTime()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2159
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->time_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getTimeOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 2170
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getTime()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getTotaldisk()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1741
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->totaldisk_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getTotaldiskOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1752
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getTotaldisk()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getTotalmem()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1779
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->totalmem_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getTotalmemOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1790
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getTotalmem()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getUa()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1662
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ua_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getUaOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1673
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUserCity()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1469
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userCity_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getUserCityOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1480
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserCity()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 852
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userId_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getUserIdOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 863
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserId()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getUserLat()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1354
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userLat_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getUserLatOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1366
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserLat()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getUserLon()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1393
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userLon_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getUserLonOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1404
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserLon()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getUserZip()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1431
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userZip_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getUserZipOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1442
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserZip()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeLevel()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1969
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->volumeLevel_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getVolumeLevelOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1980
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getVolumeLevel()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getYob()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2465
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->yob_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getYobOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 2477
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getYob()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public hasAccess()Z
    .registers 2

    .line 2223
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasAccuracy()Z
    .registers 2

    .line 1150
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->accuracy_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasAtts()Z
    .registers 2

    .line 2413
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->atts_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasBatterylevel()Z
    .registers 2

    .line 1843
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->batterylevel_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasBuyeruid()Z
    .registers 2

    .line 878
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->buyeruid_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasCarrier()Z
    .registers 2

    .line 955
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->carrier_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasCpuname()Z
    .registers 2

    .line 2261
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->cpuname_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasCpuvendor()Z
    .registers 2

    .line 2299
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->cpuvendor_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasDeviceCity()Z
    .registers 2

    .line 1302
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceCity_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasDeviceLat()Z
    .registers 2

    .line 1072
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceLat_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasDeviceLon()Z
    .registers 2

    .line 1112
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceLon_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasDeviceZip()Z
    .registers 2

    .line 1226
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceZip_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasDevicename()Z
    .registers 2

    .line 1995
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->devicename_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasDiskspace()Z
    .registers 2

    .line 1689
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->diskspace_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasExternalUserIds()Z
    .registers 2

    .line 916
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->externalUserIds_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasFreemem()Z
    .registers 2

    .line 1805
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->freemem_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasGender()Z
    .registers 2

    .line 2492
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->gender_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasGpuname()Z
    .registers 2

    .line 2337
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->gpuname_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasGpuvendor()Z
    .registers 2

    .line 2375
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->gpuvendor_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasHeadsetname()Z
    .registers 2

    .line 1919
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->headsetname_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasHwv()Z
    .registers 2

    .line 1536
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hwv_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasIfa()Z
    .registers 2

    .line 724
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ifa_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasIfv()Z
    .registers 2

    .line 802
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ifv_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasInputlanguage()Z
    .registers 2

    .line 2185
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->inputlanguage_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasKeywords()Z
    .registers 2

    .line 2530
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->keywords_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasLastbootup()Z
    .registers 2

    .line 2033
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastbootup_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasLastbootupHistory()Z
    .registers 2

    .line 2109
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastbootupHistory_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasLastbootupV2()Z
    .registers 2

    .line 2071
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastbootupV2_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasLastfix()Z
    .registers 2

    .line 1188
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastfix_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasLmt()Z
    .registers 2

    .line 764
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lmt_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasMccmnc()Z
    .registers 2

    .line 995
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->mccmnc_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasMetro()Z
    .registers 2

    .line 1264
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->metro_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasModel()Z
    .registers 2

    .line 1496
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->model_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasPpi()Z
    .registers 2

    .line 1574
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ppi_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasPxratio()Z
    .registers 2

    .line 1612
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->pxratio_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasScreenbright()Z
    .registers 2

    .line 1881
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->screenbright_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasSimCarrier()Z
    .registers 2

    .line 1033
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasTime()Z
    .registers 2

    .line 2147
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->time_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasTotaldisk()Z
    .registers 2

    .line 1729
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->totaldisk_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasTotalmem()Z
    .registers 2

    .line 1767
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->totalmem_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasUa()Z
    .registers 2

    .line 1650
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ua_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasUserCity()Z
    .registers 2

    .line 1457
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userCity_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasUserId()Z
    .registers 2

    .line 840
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userId_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasUserLat()Z
    .registers 2

    .line 1341
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userLat_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasUserLon()Z
    .registers 2

    .line 1381
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userLon_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasUserZip()Z
    .registers 2

    .line 1419
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userZip_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasVolumeLevel()Z
    .registers 2

    .line 1957
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->volumeLevel_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasYob()Z
    .registers 2

    .line 2452
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->yob_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 3176
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 3180
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 3181
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasIfa()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 3183
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getIfa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3185
    :cond_25
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLmt()Z

    move-result v0

    if-eqz v0, :cond_3a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 3187
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLmt()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3189
    :cond_3a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasIfv()Z

    move-result v0

    if-eqz v0, :cond_4f

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 3191
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getIfv()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3193
    :cond_4f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_64

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 3195
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserId()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3197
    :cond_64
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasBuyeruid()Z

    move-result v0

    if-eqz v0, :cond_79

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 3199
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getBuyeruid()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3201
    :cond_79
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasExternalUserIds()Z

    move-result v0

    if-eqz v0, :cond_8e

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 3203
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getExternalUserIds()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3205
    :cond_8e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasCarrier()Z

    move-result v0

    if-eqz v0, :cond_a3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 3207
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getCarrier()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3209
    :cond_a3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasMccmnc()Z

    move-result v0

    if-eqz v0, :cond_b8

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 3211
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getMccmnc()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3213
    :cond_b8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasSimCarrier()Z

    move-result v0

    if-eqz v0, :cond_cd

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 3215
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getSimCarrier()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3217
    :cond_cd
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDeviceLat()Z

    move-result v0

    if-eqz v0, :cond_e2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 3219
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceLat()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3221
    :cond_e2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDeviceLon()Z

    move-result v0

    if-eqz v0, :cond_f7

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    .line 3223
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceLon()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3225
    :cond_f7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_10c

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    .line 3227
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getAccuracy()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3229
    :cond_10c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLastfix()Z

    move-result v0

    if-eqz v0, :cond_121

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    .line 3231
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastfix()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3233
    :cond_121
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDeviceZip()Z

    move-result v0

    if-eqz v0, :cond_136

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xe

    mul-int/lit8 v1, v1, 0x35

    .line 3235
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceZip()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3237
    :cond_136
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasMetro()Z

    move-result v0

    if-eqz v0, :cond_14b

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x35

    .line 3239
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getMetro()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3241
    :cond_14b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDeviceCity()Z

    move-result v0

    if-eqz v0, :cond_160

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x35

    .line 3243
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceCity()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3245
    :cond_160
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserLat()Z

    move-result v0

    if-eqz v0, :cond_175

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x11

    mul-int/lit8 v1, v1, 0x35

    .line 3247
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserLat()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3249
    :cond_175
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserLon()Z

    move-result v0

    if-eqz v0, :cond_18a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x12

    mul-int/lit8 v1, v1, 0x35

    .line 3251
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserLon()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3253
    :cond_18a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserZip()Z

    move-result v0

    if-eqz v0, :cond_19f

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x13

    mul-int/lit8 v1, v1, 0x35

    .line 3255
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserZip()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3257
    :cond_19f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserCity()Z

    move-result v0

    if-eqz v0, :cond_1b4

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x14

    mul-int/lit8 v1, v1, 0x35

    .line 3259
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserCity()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3261
    :cond_1b4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasModel()Z

    move-result v0

    if-eqz v0, :cond_1c9

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x15

    mul-int/lit8 v1, v1, 0x35

    .line 3263
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getModel()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3265
    :cond_1c9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasHwv()Z

    move-result v0

    if-eqz v0, :cond_1de

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x16

    mul-int/lit8 v1, v1, 0x35

    .line 3267
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getHwv()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3269
    :cond_1de
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasPpi()Z

    move-result v0

    if-eqz v0, :cond_1f3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x17

    mul-int/lit8 v1, v1, 0x35

    .line 3271
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getPpi()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3273
    :cond_1f3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasPxratio()Z

    move-result v0

    if-eqz v0, :cond_208

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x35

    .line 3275
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getPxratio()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3277
    :cond_208
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUa()Z

    move-result v0

    if-eqz v0, :cond_21d

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x19

    mul-int/lit8 v1, v1, 0x35

    .line 3279
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3281
    :cond_21d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDiskspace()Z

    move-result v0

    if-eqz v0, :cond_232

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1a

    mul-int/lit8 v1, v1, 0x35

    .line 3283
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDiskspace()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3285
    :cond_232
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasTotaldisk()Z

    move-result v0

    if-eqz v0, :cond_247

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1b

    mul-int/lit8 v1, v1, 0x35

    .line 3287
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getTotaldisk()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3289
    :cond_247
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasTotalmem()Z

    move-result v0

    if-eqz v0, :cond_25c

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1c

    mul-int/lit8 v1, v1, 0x35

    .line 3291
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getTotalmem()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3293
    :cond_25c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasFreemem()Z

    move-result v0

    if-eqz v0, :cond_271

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1d

    mul-int/lit8 v1, v1, 0x35

    .line 3295
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getFreemem()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3297
    :cond_271
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasBatterylevel()Z

    move-result v0

    if-eqz v0, :cond_286

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1e

    mul-int/lit8 v1, v1, 0x35

    .line 3299
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getBatterylevel()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3301
    :cond_286
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasScreenbright()Z

    move-result v0

    if-eqz v0, :cond_29b

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1f

    mul-int/lit8 v1, v1, 0x35

    .line 3303
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getScreenbright()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3305
    :cond_29b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasHeadsetname()Z

    move-result v0

    if-eqz v0, :cond_2b0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x20

    mul-int/lit8 v1, v1, 0x35

    .line 3307
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getHeadsetname()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3309
    :cond_2b0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasVolumeLevel()Z

    move-result v0

    if-eqz v0, :cond_2c5

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x21

    mul-int/lit8 v1, v1, 0x35

    .line 3311
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getVolumeLevel()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3313
    :cond_2c5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDevicename()Z

    move-result v0

    if-eqz v0, :cond_2da

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x22

    mul-int/lit8 v1, v1, 0x35

    .line 3315
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDevicename()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3317
    :cond_2da
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLastbootup()Z

    move-result v0

    if-eqz v0, :cond_2ef

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x23

    mul-int/lit8 v1, v1, 0x35

    .line 3319
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastbootup()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3321
    :cond_2ef
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLastbootupV2()Z

    move-result v0

    if-eqz v0, :cond_304

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x24

    mul-int/lit8 v1, v1, 0x35

    .line 3323
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastbootupV2()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3325
    :cond_304
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLastbootupHistory()Z

    move-result v0

    if-eqz v0, :cond_319

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x30

    mul-int/lit8 v1, v1, 0x35

    .line 3327
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastbootupHistory()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3329
    :cond_319
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_32e

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x25

    mul-int/lit8 v1, v1, 0x35

    .line 3331
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getTime()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3333
    :cond_32e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasInputlanguage()Z

    move-result v0

    if-eqz v0, :cond_343

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x26

    mul-int/lit8 v1, v1, 0x35

    .line 3335
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getInputlanguage()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3337
    :cond_343
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasAccess()Z

    move-result v0

    if-eqz v0, :cond_358

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x27

    mul-int/lit8 v1, v1, 0x35

    .line 3339
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getAccess()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3341
    :cond_358
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasCpuname()Z

    move-result v0

    if-eqz v0, :cond_36d

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x28

    mul-int/lit8 v1, v1, 0x35

    .line 3343
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getCpuname()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3345
    :cond_36d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasCpuvendor()Z

    move-result v0

    if-eqz v0, :cond_382

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x29

    mul-int/lit8 v1, v1, 0x35

    .line 3347
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getCpuvendor()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3349
    :cond_382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasGpuname()Z

    move-result v0

    if-eqz v0, :cond_397

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2a

    mul-int/lit8 v1, v1, 0x35

    .line 3351
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getGpuname()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3353
    :cond_397
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasGpuvendor()Z

    move-result v0

    if-eqz v0, :cond_3ac

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2b

    mul-int/lit8 v1, v1, 0x35

    .line 3355
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getGpuvendor()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3357
    :cond_3ac
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasAtts()Z

    move-result v0

    if-eqz v0, :cond_3c1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2c

    mul-int/lit8 v1, v1, 0x35

    .line 3359
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getAtts()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3361
    :cond_3c1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasYob()Z

    move-result v0

    if-eqz v0, :cond_3d6

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2d

    mul-int/lit8 v1, v1, 0x35

    .line 3363
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getYob()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3365
    :cond_3d6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasGender()Z

    move-result v0

    if-eqz v0, :cond_3eb

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2e

    mul-int/lit8 v1, v1, 0x35

    .line 3367
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getGender()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3369
    :cond_3eb
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasKeywords()Z

    move-result v0

    if-eqz v0, :cond_400

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2f

    mul-int/lit8 v1, v1, 0x35

    .line 3371
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getKeywords()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_400
    mul-int/lit8 v1, v1, 0x1d

    .line 3373
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3374
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 706
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_MaskedSignals_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    const-class v2, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 707
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 2559
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 2563
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->newBuilderForType()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->newBuilderForType()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 2

    .line 3449
    invoke-static {}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->newBuilder()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 4

    .line 3465
    new-instance v0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/MaskedSignals$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 29
    new-instance p1, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->toBuilder()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->toBuilder()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 3458
    sget-object v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/MaskedSignals;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 3459
    new-instance v0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;-><init>(Lio/bidmachine/protobuf/sdk/MaskedSignals$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;-><init>(Lio/bidmachine/protobuf/sdk/MaskedSignals$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/MaskedSignals;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

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

    .line 2570
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ifa_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 2571
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getIfa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2573
    :cond_c
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lmt_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    .line 2574
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLmt()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2576
    :cond_18
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ifv_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_24

    const/4 v0, 0x3

    .line 2577
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getIfv()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2579
    :cond_24
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userId_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_30

    const/4 v0, 0x4

    .line 2580
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserId()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2582
    :cond_30
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->buyeruid_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_3c

    const/4 v0, 0x5

    .line 2583
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getBuyeruid()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2585
    :cond_3c
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->externalUserIds_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_48

    const/4 v0, 0x6

    .line 2586
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getExternalUserIds()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2588
    :cond_48
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->carrier_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_54

    const/4 v0, 0x7

    .line 2589
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getCarrier()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2591
    :cond_54
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->mccmnc_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_61

    const/16 v0, 0x8

    .line 2592
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getMccmnc()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2594
    :cond_61
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6e

    const/16 v0, 0x9

    .line 2595
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getSimCarrier()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2597
    :cond_6e
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceLat_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_7b

    const/16 v0, 0xa

    .line 2598
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceLat()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2600
    :cond_7b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceLon_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_88

    const/16 v0, 0xb

    .line 2601
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceLon()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2603
    :cond_88
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->accuracy_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_95

    const/16 v0, 0xc

    .line 2604
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getAccuracy()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2606
    :cond_95
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastfix_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_a2

    const/16 v0, 0xd

    .line 2607
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastfix()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2609
    :cond_a2
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceZip_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_af

    const/16 v0, 0xe

    .line 2610
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceZip()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2612
    :cond_af
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->metro_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_bc

    const/16 v0, 0xf

    .line 2613
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getMetro()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2615
    :cond_bc
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->deviceCity_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_c9

    const/16 v0, 0x10

    .line 2616
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceCity()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2618
    :cond_c9
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userLat_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_d6

    const/16 v0, 0x11

    .line 2619
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserLat()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2621
    :cond_d6
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userLon_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_e3

    const/16 v0, 0x12

    .line 2622
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserLon()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2624
    :cond_e3
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userZip_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_f0

    const/16 v0, 0x13

    .line 2625
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserZip()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2627
    :cond_f0
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->userCity_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_fd

    const/16 v0, 0x14

    .line 2628
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserCity()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2630
    :cond_fd
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->model_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_10a

    const/16 v0, 0x15

    .line 2631
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getModel()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2633
    :cond_10a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hwv_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_117

    const/16 v0, 0x16

    .line 2634
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getHwv()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2636
    :cond_117
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ppi_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_124

    const/16 v0, 0x17

    .line 2637
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getPpi()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2639
    :cond_124
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->pxratio_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_131

    const/16 v0, 0x18

    .line 2640
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getPxratio()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2642
    :cond_131
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->ua_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_13e

    const/16 v0, 0x19

    .line 2643
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2645
    :cond_13e
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->diskspace_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_14b

    const/16 v0, 0x1a

    .line 2646
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDiskspace()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2648
    :cond_14b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->totaldisk_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_158

    const/16 v0, 0x1b

    .line 2649
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getTotaldisk()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2651
    :cond_158
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->totalmem_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_165

    const/16 v0, 0x1c

    .line 2652
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getTotalmem()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2654
    :cond_165
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->freemem_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_172

    const/16 v0, 0x1d

    .line 2655
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getFreemem()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2657
    :cond_172
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->batterylevel_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17f

    const/16 v0, 0x1e

    .line 2658
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getBatterylevel()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2660
    :cond_17f
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->screenbright_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_18c

    const/16 v0, 0x1f

    .line 2661
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getScreenbright()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2663
    :cond_18c
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->headsetname_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_199

    const/16 v0, 0x20

    .line 2664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getHeadsetname()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2666
    :cond_199
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->volumeLevel_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_1a6

    const/16 v0, 0x21

    .line 2667
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getVolumeLevel()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2669
    :cond_1a6
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->devicename_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_1b3

    const/16 v0, 0x22

    .line 2670
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDevicename()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2672
    :cond_1b3
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastbootup_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_1c0

    const/16 v0, 0x23

    .line 2673
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastbootup()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2675
    :cond_1c0
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastbootupV2_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_1cd

    const/16 v0, 0x24

    .line 2676
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastbootupV2()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2678
    :cond_1cd
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->time_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_1da

    const/16 v0, 0x25

    .line 2679
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getTime()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2681
    :cond_1da
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->inputlanguage_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_1e7

    const/16 v0, 0x26

    .line 2682
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getInputlanguage()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2684
    :cond_1e7
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_1f4

    const/16 v0, 0x27

    .line 2685
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getAccess()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2687
    :cond_1f4
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->cpuname_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_201

    const/16 v0, 0x28

    .line 2688
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getCpuname()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2690
    :cond_201
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->cpuvendor_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_20e

    const/16 v0, 0x29

    .line 2691
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getCpuvendor()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2693
    :cond_20e
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->gpuname_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_21b

    const/16 v0, 0x2a

    .line 2694
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getGpuname()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2696
    :cond_21b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->gpuvendor_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_228

    const/16 v0, 0x2b

    .line 2697
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getGpuvendor()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2699
    :cond_228
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->atts_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_235

    const/16 v0, 0x2c

    .line 2700
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getAtts()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2702
    :cond_235
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->yob_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_242

    const/16 v0, 0x2d

    .line 2703
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getYob()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2705
    :cond_242
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->gender_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_24f

    const/16 v0, 0x2e

    .line 2706
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getGender()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2708
    :cond_24f
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->keywords_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_25c

    const/16 v0, 0x2f

    .line 2709
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getKeywords()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2711
    :cond_25c
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals;->lastbootupHistory_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_269

    const/16 v0, 0x30

    .line 2712
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastbootupHistory()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2714
    :cond_269
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.MaskedSignals.AnonymousClass1 (io.bidmachine.protobuf.sdk.MaskedSignals$1)
.class Lio/bidmachine/protobuf/sdk/MaskedSignals$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "MaskedSignals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/MaskedSignals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/MaskedSignals;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11814
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MaskedSignals;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11820
    new-instance v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/MaskedSignals$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11814
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/MaskedSignals$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.MaskedSignals.Builder (io.bidmachine.protobuf.sdk.MaskedSignals$Builder)
.class public final Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "MaskedSignals.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/MaskedSignalsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/MaskedSignals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/MaskedSignalsOrBuilder;"
    }
.end annotation


# instance fields
.field private accessBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private access_:Lcom/explorestack/protobuf/StringValue;

.field private accuracyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private accuracy_:Lcom/explorestack/protobuf/StringValue;

.field private attsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private atts_:Lcom/explorestack/protobuf/StringValue;

.field private batterylevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private batterylevel_:Lcom/explorestack/protobuf/StringValue;

.field private buyeruidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private buyeruid_:Lcom/explorestack/protobuf/StringValue;

.field private carrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private carrier_:Lcom/explorestack/protobuf/StringValue;

.field private cpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private cpuname_:Lcom/explorestack/protobuf/StringValue;

.field private cpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private cpuvendor_:Lcom/explorestack/protobuf/StringValue;

.field private deviceCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private deviceCity_:Lcom/explorestack/protobuf/StringValue;

.field private deviceLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private deviceLat_:Lcom/explorestack/protobuf/StringValue;

.field private deviceLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private deviceLon_:Lcom/explorestack/protobuf/StringValue;

.field private deviceZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private deviceZip_:Lcom/explorestack/protobuf/StringValue;

.field private devicenameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private devicename_:Lcom/explorestack/protobuf/StringValue;

.field private diskspaceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private diskspace_:Lcom/explorestack/protobuf/StringValue;

.field private externalUserIdsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private externalUserIds_:Lcom/explorestack/protobuf/StringValue;

.field private freememBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private freemem_:Lcom/explorestack/protobuf/StringValue;

.field private genderBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private gender_:Lcom/explorestack/protobuf/StringValue;

.field private gpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private gpuname_:Lcom/explorestack/protobuf/StringValue;

.field private gpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private gpuvendor_:Lcom/explorestack/protobuf/StringValue;

.field private headsetnameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private headsetname_:Lcom/explorestack/protobuf/StringValue;

.field private hwvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private hwv_:Lcom/explorestack/protobuf/StringValue;

.field private ifaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private ifa_:Lcom/explorestack/protobuf/StringValue;

.field private ifvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private ifv_:Lcom/explorestack/protobuf/StringValue;

.field private inputlanguageBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private inputlanguage_:Lcom/explorestack/protobuf/StringValue;

.field private keywordsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private keywords_:Lcom/explorestack/protobuf/StringValue;

.field private lastbootupBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private lastbootupHistoryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private lastbootupHistory_:Lcom/explorestack/protobuf/StringValue;

.field private lastbootupV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private lastbootupV2_:Lcom/explorestack/protobuf/StringValue;

.field private lastbootup_:Lcom/explorestack/protobuf/StringValue;

.field private lastfixBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private lastfix_:Lcom/explorestack/protobuf/StringValue;

.field private lmtBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private lmt_:Lcom/explorestack/protobuf/StringValue;

.field private mccmncBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mccmnc_:Lcom/explorestack/protobuf/StringValue;

.field private metroBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private metro_:Lcom/explorestack/protobuf/StringValue;

.field private modelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private model_:Lcom/explorestack/protobuf/StringValue;

.field private ppiBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private ppi_:Lcom/explorestack/protobuf/StringValue;

.field private pxratioBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private pxratio_:Lcom/explorestack/protobuf/StringValue;

.field private screenbrightBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private screenbright_:Lcom/explorestack/protobuf/StringValue;

.field private simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private simCarrier_:Lcom/explorestack/protobuf/StringValue;

.field private timeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private time_:Lcom/explorestack/protobuf/StringValue;

.field private totaldiskBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private totaldisk_:Lcom/explorestack/protobuf/StringValue;

.field private totalmemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private totalmem_:Lcom/explorestack/protobuf/StringValue;

.field private uaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private ua_:Lcom/explorestack/protobuf/StringValue;

.field private userCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private userCity_:Lcom/explorestack/protobuf/StringValue;

.field private userIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private userId_:Lcom/explorestack/protobuf/StringValue;

.field private userLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private userLat_:Lcom/explorestack/protobuf/StringValue;

.field private userLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private userLon_:Lcom/explorestack/protobuf/StringValue;

.field private userZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private userZip_:Lcom/explorestack/protobuf/StringValue;

.field private volumeLevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private volumeLevel_:Lcom/explorestack/protobuf/StringValue;

.field private yobBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private yob_:Lcom/explorestack/protobuf/StringValue;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 3493
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 3494
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 3499
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 3500
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/MaskedSignals$1;)V
    .registers 3

    .line 3475
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/MaskedSignals$1;)V
    .registers 2

    .line 3475
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;-><init>()V

    return-void
.end method

.method private getAccessFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 10528
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accessBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 10529
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 10531
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getAccess()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 10532
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 10533
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accessBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 10534
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->access_:Lcom/explorestack/protobuf/StringValue;

    .line 10536
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accessBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getAccuracyFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6161
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 6162
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6164
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getAccuracy()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 6165
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 6166
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 6167
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracy_:Lcom/explorestack/protobuf/StringValue;

    .line 6169
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getAttsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 11303
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->attsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 11304
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 11306
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getAtts()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 11307
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 11308
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->attsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 11309
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->atts_:Lcom/explorestack/protobuf/StringValue;

    .line 11311
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->attsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getBatterylevelFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8978
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 8979
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8981
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getBatterylevel()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 8982
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 8983
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 8984
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevel_:Lcom/explorestack/protobuf/StringValue;

    .line 8986
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getBuyeruidFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5058
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 5059
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5061
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getBuyeruid()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 5062
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5063
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 5064
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruid_:Lcom/explorestack/protobuf/StringValue;

    .line 5066
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getCarrierFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5377
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 5378
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5380
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getCarrier()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 5381
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5382
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 5383
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrier_:Lcom/explorestack/protobuf/StringValue;

    .line 5385
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getCpunameFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 10683
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 10684
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 10686
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getCpuname()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 10687
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 10688
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 10689
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuname_:Lcom/explorestack/protobuf/StringValue;

    .line 10691
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getCpuvendorFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 10838
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 10839
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 10841
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getCpuvendor()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 10842
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 10843
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 10844
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendor_:Lcom/explorestack/protobuf/StringValue;

    .line 10846
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 3481
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_MaskedSignals_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getDeviceCityFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6781
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 6782
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6784
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getDeviceCity()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 6785
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 6786
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 6787
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCity_:Lcom/explorestack/protobuf/StringValue;

    .line 6789
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getDeviceLatFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5851
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 5852
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5854
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getDeviceLat()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 5855
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5856
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 5857
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLat_:Lcom/explorestack/protobuf/StringValue;

    .line 5859
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getDeviceLonFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6006
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 6007
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6009
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getDeviceLon()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 6010
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 6011
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 6012
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLon_:Lcom/explorestack/protobuf/StringValue;

    .line 6014
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getDeviceZipFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6471
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 6472
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6474
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getDeviceZip()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 6475
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 6476
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 6477
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZip_:Lcom/explorestack/protobuf/StringValue;

    .line 6479
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getDevicenameFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9598
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicenameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 9599
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 9601
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getDevicename()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 9602
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9603
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicenameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 9604
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicename_:Lcom/explorestack/protobuf/StringValue;

    .line 9606
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicenameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getDiskspaceFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8358
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspaceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 8359
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8361
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getDiskspace()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 8362
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 8363
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspaceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 8364
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspace_:Lcom/explorestack/protobuf/StringValue;

    .line 8366
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspaceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getExternalUserIdsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5213
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIdsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 5214
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5216
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getExternalUserIds()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 5217
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5218
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIdsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 5219
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIds_:Lcom/explorestack/protobuf/StringValue;

    .line 5221
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIdsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getFreememFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8823
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freememBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 8824
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8826
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getFreemem()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 8827
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 8828
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freememBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 8829
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freemem_:Lcom/explorestack/protobuf/StringValue;

    .line 8831
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freememBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getGenderFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 11622
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->genderBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 11623
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 11625
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getGender()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 11626
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 11627
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->genderBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 11628
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gender_:Lcom/explorestack/protobuf/StringValue;

    .line 11630
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->genderBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getGpunameFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 10993
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 10994
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 10996
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getGpuname()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 10997
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 10998
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 10999
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuname_:Lcom/explorestack/protobuf/StringValue;

    .line 11001
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getGpuvendorFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 11148
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 11149
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 11151
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getGpuvendor()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 11152
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 11153
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 11154
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendor_:Lcom/explorestack/protobuf/StringValue;

    .line 11156
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getHeadsetnameFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9288
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetnameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 9289
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 9291
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getHeadsetname()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 9292
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9293
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetnameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 9294
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetname_:Lcom/explorestack/protobuf/StringValue;

    .line 9296
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetnameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getHwvFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7729
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 7730
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 7732
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getHwv()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 7733
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 7734
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 7735
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwv_:Lcom/explorestack/protobuf/StringValue;

    .line 7737
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getIfaFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4438
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 4439
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4441
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getIfa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 4442
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4443
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4444
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifa_:Lcom/explorestack/protobuf/StringValue;

    .line 4446
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getIfvFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4748
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 4749
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4751
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getIfv()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 4752
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4753
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4754
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifv_:Lcom/explorestack/protobuf/StringValue;

    .line 4756
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getInputlanguageFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 10373
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguageBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 10374
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 10376
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getInputlanguage()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 10377
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 10378
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguageBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 10379
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguage_:Lcom/explorestack/protobuf/StringValue;

    .line 10381
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguageBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getKeywordsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 11777
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywordsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 11778
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 11780
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getKeywords()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 11781
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 11782
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywordsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 11783
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywords_:Lcom/explorestack/protobuf/StringValue;

    .line 11785
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywordsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getLastbootupFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9753
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 9754
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 9756
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getLastbootup()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 9757
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9758
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 9759
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootup_:Lcom/explorestack/protobuf/StringValue;

    .line 9761
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getLastbootupHistoryFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 10063
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistoryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 10064
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 10066
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getLastbootupHistory()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 10067
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 10068
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistoryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 10069
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/StringValue;

    .line 10071
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistoryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getLastbootupV2FieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9908
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 9909
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 9911
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getLastbootupV2()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 9912
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9913
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 9914
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2_:Lcom/explorestack/protobuf/StringValue;

    .line 9916
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getLastfixFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6316
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfixBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 6317
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6319
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getLastfix()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 6320
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 6321
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfixBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 6322
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfix_:Lcom/explorestack/protobuf/StringValue;

    .line 6324
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfixBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getLmtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4593
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmtBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 4594
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getLmt()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 4597
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4598
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmtBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4599
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmt_:Lcom/explorestack/protobuf/StringValue;

    .line 4601
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmtBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getMccmncFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5532
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmncBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 5533
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5535
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getMccmnc()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 5536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmncBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 5538
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmnc_:Lcom/explorestack/protobuf/StringValue;

    .line 5540
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmncBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getMetroFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6626
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metroBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 6627
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6629
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getMetro()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 6630
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 6631
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metroBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 6632
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metro_:Lcom/explorestack/protobuf/StringValue;

    .line 6634
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metroBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getModelFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7574
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->modelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 7575
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 7577
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getModel()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 7578
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 7579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->modelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 7580
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->model_:Lcom/explorestack/protobuf/StringValue;

    .line 7582
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->modelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getPpiFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7884
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppiBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 7885
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 7887
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getPpi()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 7888
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 7889
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppiBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 7890
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppi_:Lcom/explorestack/protobuf/StringValue;

    .line 7892
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppiBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getPxratioFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8039
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratioBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 8040
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8042
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getPxratio()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 8043
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 8044
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratioBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 8045
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratio_:Lcom/explorestack/protobuf/StringValue;

    .line 8047
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratioBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getScreenbrightFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9133
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbrightBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 9134
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 9136
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getScreenbright()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 9137
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9138
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbrightBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 9139
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbright_:Lcom/explorestack/protobuf/StringValue;

    .line 9141
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbrightBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getSimCarrierFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5687
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 5688
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5690
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getSimCarrier()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 5691
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5692
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 5693
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    .line 5695
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getTimeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 10218
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->timeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 10219
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 10221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getTime()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 10222
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 10223
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->timeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 10224
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->time_:Lcom/explorestack/protobuf/StringValue;

    .line 10226
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->timeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getTotaldiskFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8513
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldiskBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 8514
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8516
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getTotaldisk()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 8517
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 8518
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldiskBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 8519
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldisk_:Lcom/explorestack/protobuf/StringValue;

    .line 8521
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldiskBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getTotalmemFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8668
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 8669
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8671
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getTotalmem()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 8672
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 8673
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 8674
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmem_:Lcom/explorestack/protobuf/StringValue;

    .line 8676
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getUaFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8194
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->uaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 8195
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8197
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getUa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 8198
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 8199
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->uaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 8200
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ua_:Lcom/explorestack/protobuf/StringValue;

    .line 8202
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->uaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getUserCityFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7410
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 7411
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 7413
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getUserCity()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 7414
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 7415
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 7416
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCity_:Lcom/explorestack/protobuf/StringValue;

    .line 7418
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getUserIdFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4903
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 4904
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4906
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getUserId()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 4907
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4908
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4909
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userId_:Lcom/explorestack/protobuf/StringValue;

    .line 4911
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getUserLatFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6945
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 6946
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6948
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getUserLat()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 6949
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 6950
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 6951
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLat_:Lcom/explorestack/protobuf/StringValue;

    .line 6953
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getUserLonFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7100
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 7101
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 7103
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getUserLon()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 7104
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 7105
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 7106
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLon_:Lcom/explorestack/protobuf/StringValue;

    .line 7108
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getUserZipFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7255
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 7256
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 7258
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getUserZip()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 7259
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 7260
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 7261
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZip_:Lcom/explorestack/protobuf/StringValue;

    .line 7263
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getVolumeLevelFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9443
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 9444
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 9446
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getVolumeLevel()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 9447
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9448
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 9449
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevel_:Lcom/explorestack/protobuf/StringValue;

    .line 9451
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getYobFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/StringValue;",
            "Lcom/explorestack/protobuf/StringValue$Builder;",
            "Lcom/explorestack/protobuf/StringValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 11467
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yobBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 11468
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 11470
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getYob()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 11471
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 11472
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yobBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 11473
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yob_:Lcom/explorestack/protobuf/StringValue;

    .line 11475
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yobBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 3504
    invoke-static {}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 3475
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 3475
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 4098
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 3475
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->build()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 3475
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->build()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/MaskedSignals;
    .registers 3

    .line 3814
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object v0

    .line 3815
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 3816
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 3475
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 3475
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/MaskedSignals;
    .registers 3

    .line 3823
    new-instance v0, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$1;)V

    .line 3824
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_10

    .line 3825
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifa_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$402(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 3827
    :cond_10
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$402(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3829
    :goto_19
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmtBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_23

    .line 3830
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmt_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$502(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_2c

    .line 3832
    :cond_23
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$502(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3834
    :goto_2c
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_36

    .line 3835
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifv_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$602(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_3f

    .line 3837
    :cond_36
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$602(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3839
    :goto_3f
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_49

    .line 3840
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userId_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$702(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_52

    .line 3842
    :cond_49
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$702(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3844
    :goto_52
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_5c

    .line 3845
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruid_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$802(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_65

    .line 3847
    :cond_5c
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$802(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3849
    :goto_65
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIdsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_6f

    .line 3850
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIds_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$902(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_78

    .line 3852
    :cond_6f
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$902(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3854
    :goto_78
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_82

    .line 3855
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrier_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$1002(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_8b

    .line 3857
    :cond_82
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$1002(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3859
    :goto_8b
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmncBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_95

    .line 3860
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmnc_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$1102(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_9e

    .line 3862
    :cond_95
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$1102(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3864
    :goto_9e
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_a8

    .line 3865
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$1202(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_b1

    .line 3867
    :cond_a8
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$1202(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3869
    :goto_b1
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_bb

    .line 3870
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLat_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$1302(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_c4

    .line 3872
    :cond_bb
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$1302(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3874
    :goto_c4
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_ce

    .line 3875
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLon_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$1402(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_d7

    .line 3877
    :cond_ce
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$1402(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3879
    :goto_d7
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_e1

    .line 3880
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracy_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$1502(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_ea

    .line 3882
    :cond_e1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$1502(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3884
    :goto_ea
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfixBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_f4

    .line 3885
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfix_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$1602(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_fd

    .line 3887
    :cond_f4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$1602(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3889
    :goto_fd
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_107

    .line 3890
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZip_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$1702(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_110

    .line 3892
    :cond_107
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$1702(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3894
    :goto_110
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metroBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_11a

    .line 3895
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metro_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$1802(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_123

    .line 3897
    :cond_11a
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$1802(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3899
    :goto_123
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_12d

    .line 3900
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCity_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$1902(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_136

    .line 3902
    :cond_12d
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$1902(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3904
    :goto_136
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_140

    .line 3905
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLat_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$2002(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_149

    .line 3907
    :cond_140
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$2002(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3909
    :goto_149
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_153

    .line 3910
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLon_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$2102(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_15c

    .line 3912
    :cond_153
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$2102(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3914
    :goto_15c
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_166

    .line 3915
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZip_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$2202(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_16f

    .line 3917
    :cond_166
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$2202(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3919
    :goto_16f
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_179

    .line 3920
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCity_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$2302(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_182

    .line 3922
    :cond_179
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$2302(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3924
    :goto_182
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->modelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_18c

    .line 3925
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->model_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$2402(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_195

    .line 3927
    :cond_18c
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$2402(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3929
    :goto_195
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_19f

    .line 3930
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwv_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$2502(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_1a8

    .line 3932
    :cond_19f
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$2502(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3934
    :goto_1a8
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppiBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1b2

    .line 3935
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppi_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$2602(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_1bb

    .line 3937
    :cond_1b2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$2602(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3939
    :goto_1bb
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratioBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1c5

    .line 3940
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratio_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$2702(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_1ce

    .line 3942
    :cond_1c5
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$2702(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3944
    :goto_1ce
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->uaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1d8

    .line 3945
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ua_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$2802(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_1e1

    .line 3947
    :cond_1d8
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$2802(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3949
    :goto_1e1
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspaceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1eb

    .line 3950
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspace_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$2902(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_1f4

    .line 3952
    :cond_1eb
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$2902(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3954
    :goto_1f4
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldiskBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1fe

    .line 3955
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldisk_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$3002(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_207

    .line 3957
    :cond_1fe
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$3002(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3959
    :goto_207
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_211

    .line 3960
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmem_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$3102(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_21a

    .line 3962
    :cond_211
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$3102(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3964
    :goto_21a
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freememBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_224

    .line 3965
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freemem_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$3202(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_22d

    .line 3967
    :cond_224
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$3202(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3969
    :goto_22d
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_237

    .line 3970
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevel_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$3302(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_240

    .line 3972
    :cond_237
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$3302(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3974
    :goto_240
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbrightBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_24a

    .line 3975
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbright_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$3402(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_253

    .line 3977
    :cond_24a
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$3402(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3979
    :goto_253
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetnameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_25d

    .line 3980
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetname_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$3502(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_266

    .line 3982
    :cond_25d
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$3502(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3984
    :goto_266
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_270

    .line 3985
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevel_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$3602(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_279

    .line 3987
    :cond_270
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$3602(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3989
    :goto_279
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicenameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_283

    .line 3990
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicename_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$3702(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_28c

    .line 3992
    :cond_283
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$3702(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3994
    :goto_28c
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_296

    .line 3995
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootup_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$3802(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_29f

    .line 3997
    :cond_296
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$3802(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 3999
    :goto_29f
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2a9

    .line 4000
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$3902(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_2b2

    .line 4002
    :cond_2a9
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$3902(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 4004
    :goto_2b2
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistoryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2bc

    .line 4005
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$4002(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_2c5

    .line 4007
    :cond_2bc
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$4002(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 4009
    :goto_2c5
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->timeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2cf

    .line 4010
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->time_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$4102(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_2d8

    .line 4012
    :cond_2cf
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$4102(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 4014
    :goto_2d8
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguageBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2e2

    .line 4015
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguage_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$4202(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_2eb

    .line 4017
    :cond_2e2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$4202(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 4019
    :goto_2eb
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accessBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2f5

    .line 4020
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->access_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$4302(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_2fe

    .line 4022
    :cond_2f5
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$4302(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 4024
    :goto_2fe
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_308

    .line 4025
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuname_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$4402(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_311

    .line 4027
    :cond_308
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$4402(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 4029
    :goto_311
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_31b

    .line 4030
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendor_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$4502(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_324

    .line 4032
    :cond_31b
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$4502(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 4034
    :goto_324
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_32e

    .line 4035
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuname_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$4602(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_337

    .line 4037
    :cond_32e
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$4602(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 4039
    :goto_337
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_341

    .line 4040
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendor_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$4702(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_34a

    .line 4042
    :cond_341
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$4702(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 4044
    :goto_34a
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->attsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_354

    .line 4045
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->atts_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$4802(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_35d

    .line 4047
    :cond_354
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$4802(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 4049
    :goto_35d
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yobBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_367

    .line 4050
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yob_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$4902(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_370

    .line 4052
    :cond_367
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$4902(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 4054
    :goto_370
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->genderBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_37a

    .line 4055
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gender_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$5002(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_383

    .line 4057
    :cond_37a
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$5002(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 4059
    :goto_383
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywordsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_38d

    .line 4060
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywords_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$5102(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_396

    .line 4062
    :cond_38d
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$5102(Lio/bidmachine/protobuf/sdk/MaskedSignals;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 4064
    :goto_396
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3475
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->clear()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3475
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->clear()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3475
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->clear()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 3475
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->clear()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 3509
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 3510
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 3511
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifa_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_f

    .line 3513
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifa_:Lcom/explorestack/protobuf/StringValue;

    .line 3514
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3516
    :goto_f
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmtBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_16

    .line 3517
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmt_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_1a

    .line 3519
    :cond_16
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmt_:Lcom/explorestack/protobuf/StringValue;

    .line 3520
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmtBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3522
    :goto_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_21

    .line 3523
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifv_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_25

    .line 3525
    :cond_21
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifv_:Lcom/explorestack/protobuf/StringValue;

    .line 3526
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3528
    :goto_25
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2c

    .line 3529
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userId_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_30

    .line 3531
    :cond_2c
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userId_:Lcom/explorestack/protobuf/StringValue;

    .line 3532
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3534
    :goto_30
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_37

    .line 3535
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruid_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_3b

    .line 3537
    :cond_37
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruid_:Lcom/explorestack/protobuf/StringValue;

    .line 3538
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3540
    :goto_3b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIdsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_42

    .line 3541
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIds_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_46

    .line 3543
    :cond_42
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIds_:Lcom/explorestack/protobuf/StringValue;

    .line 3544
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIdsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3546
    :goto_46
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_4d

    .line 3547
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrier_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_51

    .line 3549
    :cond_4d
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrier_:Lcom/explorestack/protobuf/StringValue;

    .line 3550
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3552
    :goto_51
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmncBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_58

    .line 3553
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmnc_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_5c

    .line 3555
    :cond_58
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmnc_:Lcom/explorestack/protobuf/StringValue;

    .line 3556
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmncBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3558
    :goto_5c
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_63

    .line 3559
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_67

    .line 3561
    :cond_63
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    .line 3562
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3564
    :goto_67
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_6e

    .line 3565
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLat_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_72

    .line 3567
    :cond_6e
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLat_:Lcom/explorestack/protobuf/StringValue;

    .line 3568
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3570
    :goto_72
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_79

    .line 3571
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLon_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_7d

    .line 3573
    :cond_79
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLon_:Lcom/explorestack/protobuf/StringValue;

    .line 3574
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3576
    :goto_7d
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_84

    .line 3577
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracy_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_88

    .line 3579
    :cond_84
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracy_:Lcom/explorestack/protobuf/StringValue;

    .line 3580
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3582
    :goto_88
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfixBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_8f

    .line 3583
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfix_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_93

    .line 3585
    :cond_8f
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfix_:Lcom/explorestack/protobuf/StringValue;

    .line 3586
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfixBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3588
    :goto_93
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_9a

    .line 3589
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZip_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_9e

    .line 3591
    :cond_9a
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZip_:Lcom/explorestack/protobuf/StringValue;

    .line 3592
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3594
    :goto_9e
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metroBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_a5

    .line 3595
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metro_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_a9

    .line 3597
    :cond_a5
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metro_:Lcom/explorestack/protobuf/StringValue;

    .line 3598
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metroBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3600
    :goto_a9
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b0

    .line 3601
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCity_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_b4

    .line 3603
    :cond_b0
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCity_:Lcom/explorestack/protobuf/StringValue;

    .line 3604
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3606
    :goto_b4
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_bb

    .line 3607
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLat_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_bf

    .line 3609
    :cond_bb
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLat_:Lcom/explorestack/protobuf/StringValue;

    .line 3610
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3612
    :goto_bf
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_c6

    .line 3613
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLon_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_ca

    .line 3615
    :cond_c6
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLon_:Lcom/explorestack/protobuf/StringValue;

    .line 3616
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3618
    :goto_ca
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d1

    .line 3619
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZip_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_d5

    .line 3621
    :cond_d1
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZip_:Lcom/explorestack/protobuf/StringValue;

    .line 3622
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3624
    :goto_d5
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_dc

    .line 3625
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCity_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_e0

    .line 3627
    :cond_dc
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCity_:Lcom/explorestack/protobuf/StringValue;

    .line 3628
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3630
    :goto_e0
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->modelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e7

    .line 3631
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->model_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_eb

    .line 3633
    :cond_e7
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->model_:Lcom/explorestack/protobuf/StringValue;

    .line 3634
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->modelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3636
    :goto_eb
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_f2

    .line 3637
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwv_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_f6

    .line 3639
    :cond_f2
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwv_:Lcom/explorestack/protobuf/StringValue;

    .line 3640
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3642
    :goto_f6
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppiBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_fd

    .line 3643
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppi_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_101

    .line 3645
    :cond_fd
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppi_:Lcom/explorestack/protobuf/StringValue;

    .line 3646
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppiBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3648
    :goto_101
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratioBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_108

    .line 3649
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratio_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_10c

    .line 3651
    :cond_108
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratio_:Lcom/explorestack/protobuf/StringValue;

    .line 3652
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratioBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3654
    :goto_10c
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->uaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_113

    .line 3655
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ua_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_117

    .line 3657
    :cond_113
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ua_:Lcom/explorestack/protobuf/StringValue;

    .line 3658
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->uaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3660
    :goto_117
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspaceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_11e

    .line 3661
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspace_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_122

    .line 3663
    :cond_11e
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspace_:Lcom/explorestack/protobuf/StringValue;

    .line 3664
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspaceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3666
    :goto_122
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldiskBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_129

    .line 3667
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldisk_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_12d

    .line 3669
    :cond_129
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldisk_:Lcom/explorestack/protobuf/StringValue;

    .line 3670
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldiskBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3672
    :goto_12d
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_134

    .line 3673
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmem_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_138

    .line 3675
    :cond_134
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmem_:Lcom/explorestack/protobuf/StringValue;

    .line 3676
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3678
    :goto_138
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freememBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_13f

    .line 3679
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freemem_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_143

    .line 3681
    :cond_13f
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freemem_:Lcom/explorestack/protobuf/StringValue;

    .line 3682
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freememBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3684
    :goto_143
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_14a

    .line 3685
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevel_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_14e

    .line 3687
    :cond_14a
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevel_:Lcom/explorestack/protobuf/StringValue;

    .line 3688
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3690
    :goto_14e
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbrightBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_155

    .line 3691
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbright_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_159

    .line 3693
    :cond_155
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbright_:Lcom/explorestack/protobuf/StringValue;

    .line 3694
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbrightBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3696
    :goto_159
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetnameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_160

    .line 3697
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetname_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_164

    .line 3699
    :cond_160
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetname_:Lcom/explorestack/protobuf/StringValue;

    .line 3700
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetnameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3702
    :goto_164
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_16b

    .line 3703
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevel_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_16f

    .line 3705
    :cond_16b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevel_:Lcom/explorestack/protobuf/StringValue;

    .line 3706
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3708
    :goto_16f
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicenameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_176

    .line 3709
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicename_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_17a

    .line 3711
    :cond_176
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicename_:Lcom/explorestack/protobuf/StringValue;

    .line 3712
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicenameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3714
    :goto_17a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_181

    .line 3715
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootup_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_185

    .line 3717
    :cond_181
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootup_:Lcom/explorestack/protobuf/StringValue;

    .line 3718
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3720
    :goto_185
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_18c

    .line 3721
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_190

    .line 3723
    :cond_18c
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2_:Lcom/explorestack/protobuf/StringValue;

    .line 3724
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3726
    :goto_190
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistoryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_197

    .line 3727
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19b

    .line 3729
    :cond_197
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/StringValue;

    .line 3730
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistoryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3732
    :goto_19b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->timeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a2

    .line 3733
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->time_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_1a6

    .line 3735
    :cond_1a2
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->time_:Lcom/explorestack/protobuf/StringValue;

    .line 3736
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->timeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3738
    :goto_1a6
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguageBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1ad

    .line 3739
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguage_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_1b1

    .line 3741
    :cond_1ad
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguage_:Lcom/explorestack/protobuf/StringValue;

    .line 3742
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguageBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3744
    :goto_1b1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accessBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1b8

    .line 3745
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->access_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_1bc

    .line 3747
    :cond_1b8
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->access_:Lcom/explorestack/protobuf/StringValue;

    .line 3748
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accessBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3750
    :goto_1bc
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1c3

    .line 3751
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuname_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_1c7

    .line 3753
    :cond_1c3
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuname_:Lcom/explorestack/protobuf/StringValue;

    .line 3754
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3756
    :goto_1c7
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1ce

    .line 3757
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendor_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_1d2

    .line 3759
    :cond_1ce
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendor_:Lcom/explorestack/protobuf/StringValue;

    .line 3760
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3762
    :goto_1d2
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d9

    .line 3763
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuname_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_1dd

    .line 3765
    :cond_1d9
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuname_:Lcom/explorestack/protobuf/StringValue;

    .line 3766
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3768
    :goto_1dd
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1e4

    .line 3769
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendor_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_1e8

    .line 3771
    :cond_1e4
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendor_:Lcom/explorestack/protobuf/StringValue;

    .line 3772
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3774
    :goto_1e8
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->attsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1ef

    .line 3775
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->atts_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_1f3

    .line 3777
    :cond_1ef
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->atts_:Lcom/explorestack/protobuf/StringValue;

    .line 3778
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->attsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3780
    :goto_1f3
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yobBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1fa

    .line 3781
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yob_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_1fe

    .line 3783
    :cond_1fa
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yob_:Lcom/explorestack/protobuf/StringValue;

    .line 3784
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yobBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3786
    :goto_1fe
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->genderBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_205

    .line 3787
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gender_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_209

    .line 3789
    :cond_205
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gender_:Lcom/explorestack/protobuf/StringValue;

    .line 3790
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->genderBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3792
    :goto_209
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywordsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_210

    .line 3793
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywords_:Lcom/explorestack/protobuf/StringValue;

    return-object p0

    .line 3795
    :cond_210
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywords_:Lcom/explorestack/protobuf/StringValue;

    .line 3796
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywordsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearAccess()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10481
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accessBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 10482
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->access_:Lcom/explorestack/protobuf/StringValue;

    .line 10483
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10485
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->access_:Lcom/explorestack/protobuf/StringValue;

    .line 10486
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accessBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearAccuracy()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6114
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 6115
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracy_:Lcom/explorestack/protobuf/StringValue;

    .line 6116
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6118
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracy_:Lcom/explorestack/protobuf/StringValue;

    .line 6119
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearAtts()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 11256
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->attsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 11257
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->atts_:Lcom/explorestack/protobuf/StringValue;

    .line 11258
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 11260
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->atts_:Lcom/explorestack/protobuf/StringValue;

    .line 11261
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->attsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearBatterylevel()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 8931
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 8932
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevel_:Lcom/explorestack/protobuf/StringValue;

    .line 8933
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8935
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevel_:Lcom/explorestack/protobuf/StringValue;

    .line 8936
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearBuyeruid()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5011
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 5012
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruid_:Lcom/explorestack/protobuf/StringValue;

    .line 5013
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5015
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruid_:Lcom/explorestack/protobuf/StringValue;

    .line 5016
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearCarrier()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5327
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 5328
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrier_:Lcom/explorestack/protobuf/StringValue;

    .line 5329
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5331
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrier_:Lcom/explorestack/protobuf/StringValue;

    .line 5332
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearCpuname()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10636
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 10637
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuname_:Lcom/explorestack/protobuf/StringValue;

    .line 10638
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10640
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuname_:Lcom/explorestack/protobuf/StringValue;

    .line 10641
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearCpuvendor()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10791
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 10792
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendor_:Lcom/explorestack/protobuf/StringValue;

    .line 10793
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10795
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendor_:Lcom/explorestack/protobuf/StringValue;

    .line 10796
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearDeviceCity()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6734
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 6735
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCity_:Lcom/explorestack/protobuf/StringValue;

    .line 6736
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6738
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCity_:Lcom/explorestack/protobuf/StringValue;

    .line 6739
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearDeviceLat()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5801
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 5802
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLat_:Lcom/explorestack/protobuf/StringValue;

    .line 5803
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5805
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLat_:Lcom/explorestack/protobuf/StringValue;

    .line 5806
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearDeviceLon()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5959
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 5960
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLon_:Lcom/explorestack/protobuf/StringValue;

    .line 5961
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5963
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLon_:Lcom/explorestack/protobuf/StringValue;

    .line 5964
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearDeviceZip()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6424
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 6425
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZip_:Lcom/explorestack/protobuf/StringValue;

    .line 6426
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6428
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZip_:Lcom/explorestack/protobuf/StringValue;

    .line 6429
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearDevicename()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9551
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicenameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 9552
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicename_:Lcom/explorestack/protobuf/StringValue;

    .line 9553
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9555
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicename_:Lcom/explorestack/protobuf/StringValue;

    .line 9556
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicenameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearDiskspace()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 8308
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspaceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 8309
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspace_:Lcom/explorestack/protobuf/StringValue;

    .line 8310
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8312
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspace_:Lcom/explorestack/protobuf/StringValue;

    .line 8313
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspaceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearExternalUserIds()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5166
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIdsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 5167
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIds_:Lcom/explorestack/protobuf/StringValue;

    .line 5168
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5170
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIds_:Lcom/explorestack/protobuf/StringValue;

    .line 5171
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIdsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3475
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3475
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 2

    .line 4081
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    return-object p1
.end method

.method public clearFreemem()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 8776
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freememBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 8777
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freemem_:Lcom/explorestack/protobuf/StringValue;

    .line 8778
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8780
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freemem_:Lcom/explorestack/protobuf/StringValue;

    .line 8781
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freememBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearGender()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 11575
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->genderBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 11576
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gender_:Lcom/explorestack/protobuf/StringValue;

    .line 11577
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 11579
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gender_:Lcom/explorestack/protobuf/StringValue;

    .line 11580
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->genderBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearGpuname()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10946
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 10947
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuname_:Lcom/explorestack/protobuf/StringValue;

    .line 10948
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10950
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuname_:Lcom/explorestack/protobuf/StringValue;

    .line 10951
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearGpuvendor()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 11101
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 11102
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendor_:Lcom/explorestack/protobuf/StringValue;

    .line 11103
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 11105
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendor_:Lcom/explorestack/protobuf/StringValue;

    .line 11106
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearHeadsetname()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9241
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetnameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 9242
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetname_:Lcom/explorestack/protobuf/StringValue;

    .line 9243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9245
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetname_:Lcom/explorestack/protobuf/StringValue;

    .line 9246
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetnameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearHwv()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7682
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 7683
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwv_:Lcom/explorestack/protobuf/StringValue;

    .line 7684
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7686
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwv_:Lcom/explorestack/protobuf/StringValue;

    .line 7687
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearIfa()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 4388
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 4389
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifa_:Lcom/explorestack/protobuf/StringValue;

    .line 4390
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4392
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifa_:Lcom/explorestack/protobuf/StringValue;

    .line 4393
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearIfv()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 4701
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 4702
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifv_:Lcom/explorestack/protobuf/StringValue;

    .line 4703
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4705
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifv_:Lcom/explorestack/protobuf/StringValue;

    .line 4706
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearInputlanguage()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10326
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguageBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 10327
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguage_:Lcom/explorestack/protobuf/StringValue;

    .line 10328
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10330
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguage_:Lcom/explorestack/protobuf/StringValue;

    .line 10331
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguageBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearKeywords()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 11730
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywordsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 11731
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywords_:Lcom/explorestack/protobuf/StringValue;

    .line 11732
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 11734
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywords_:Lcom/explorestack/protobuf/StringValue;

    .line 11735
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywordsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearLastbootup()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9706
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 9707
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootup_:Lcom/explorestack/protobuf/StringValue;

    .line 9708
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9710
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootup_:Lcom/explorestack/protobuf/StringValue;

    .line 9711
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearLastbootupHistory()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10016
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistoryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 10017
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/StringValue;

    .line 10018
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10020
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/StringValue;

    .line 10021
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistoryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearLastbootupV2()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9861
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 9862
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2_:Lcom/explorestack/protobuf/StringValue;

    .line 9863
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9865
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2_:Lcom/explorestack/protobuf/StringValue;

    .line 9866
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearLastfix()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6269
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfixBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 6270
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfix_:Lcom/explorestack/protobuf/StringValue;

    .line 6271
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6273
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfix_:Lcom/explorestack/protobuf/StringValue;

    .line 6274
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfixBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearLmt()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 4546
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmtBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 4547
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmt_:Lcom/explorestack/protobuf/StringValue;

    .line 4548
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4550
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmt_:Lcom/explorestack/protobuf/StringValue;

    .line 4551
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmtBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearMccmnc()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5485
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmncBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 5486
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmnc_:Lcom/explorestack/protobuf/StringValue;

    .line 5487
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5489
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmnc_:Lcom/explorestack/protobuf/StringValue;

    .line 5490
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmncBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearMetro()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6579
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metroBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 6580
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metro_:Lcom/explorestack/protobuf/StringValue;

    .line 6581
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6583
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metro_:Lcom/explorestack/protobuf/StringValue;

    .line 6584
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metroBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearModel()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7524
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->modelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 7525
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->model_:Lcom/explorestack/protobuf/StringValue;

    .line 7526
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7528
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->model_:Lcom/explorestack/protobuf/StringValue;

    .line 7529
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->modelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3475
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3475
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3475
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 2

    .line 4086
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    return-object p1
.end method

.method public clearPpi()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7837
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppiBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 7838
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppi_:Lcom/explorestack/protobuf/StringValue;

    .line 7839
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7841
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppi_:Lcom/explorestack/protobuf/StringValue;

    .line 7842
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppiBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearPxratio()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7992
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratioBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 7993
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratio_:Lcom/explorestack/protobuf/StringValue;

    .line 7994
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7996
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratio_:Lcom/explorestack/protobuf/StringValue;

    .line 7997
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratioBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearScreenbright()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9086
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbrightBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 9087
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbright_:Lcom/explorestack/protobuf/StringValue;

    .line 9088
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9090
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbright_:Lcom/explorestack/protobuf/StringValue;

    .line 9091
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbrightBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearSimCarrier()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5640
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 5641
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    .line 5642
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5644
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    .line 5645
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearTime()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10171
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->timeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 10172
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->time_:Lcom/explorestack/protobuf/StringValue;

    .line 10173
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10175
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->time_:Lcom/explorestack/protobuf/StringValue;

    .line 10176
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->timeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearTotaldisk()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 8466
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldiskBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 8467
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldisk_:Lcom/explorestack/protobuf/StringValue;

    .line 8468
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8470
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldisk_:Lcom/explorestack/protobuf/StringValue;

    .line 8471
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldiskBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearTotalmem()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 8621
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 8622
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmem_:Lcom/explorestack/protobuf/StringValue;

    .line 8623
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8625
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmem_:Lcom/explorestack/protobuf/StringValue;

    .line 8626
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearUa()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 8147
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->uaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 8148
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ua_:Lcom/explorestack/protobuf/StringValue;

    .line 8149
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8151
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ua_:Lcom/explorestack/protobuf/StringValue;

    .line 8152
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->uaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearUserCity()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7363
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 7364
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCity_:Lcom/explorestack/protobuf/StringValue;

    .line 7365
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7367
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCity_:Lcom/explorestack/protobuf/StringValue;

    .line 7368
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearUserId()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 4856
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 4857
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userId_:Lcom/explorestack/protobuf/StringValue;

    .line 4858
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4860
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userId_:Lcom/explorestack/protobuf/StringValue;

    .line 4861
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearUserLat()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6895
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 6896
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLat_:Lcom/explorestack/protobuf/StringValue;

    .line 6897
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6899
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLat_:Lcom/explorestack/protobuf/StringValue;

    .line 6900
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearUserLon()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7053
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 7054
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLon_:Lcom/explorestack/protobuf/StringValue;

    .line 7055
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7057
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLon_:Lcom/explorestack/protobuf/StringValue;

    .line 7058
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearUserZip()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7208
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 7209
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZip_:Lcom/explorestack/protobuf/StringValue;

    .line 7210
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7212
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZip_:Lcom/explorestack/protobuf/StringValue;

    .line 7213
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearVolumeLevel()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9396
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 9397
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevel_:Lcom/explorestack/protobuf/StringValue;

    .line 9398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9400
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevel_:Lcom/explorestack/protobuf/StringValue;

    .line 9401
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearYob()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 11417
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yobBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 11418
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yob_:Lcom/explorestack/protobuf/StringValue;

    .line 11419
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 11421
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yob_:Lcom/explorestack/protobuf/StringValue;

    .line 11422
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yobBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3475
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->clone()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 3475
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->clone()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3475
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->clone()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3475
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->clone()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 3475
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->clone()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 2

    .line 4070
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3475
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->clone()Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccess()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 10407
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accessBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 10408
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->access_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 10410
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getAccessBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 10500
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10501
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getAccessFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getAccessOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 10511
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accessBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 10512
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 10514
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->access_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 10515
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getAccuracy()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 6040
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6041
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracy_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 6043
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getAccuracyBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 6133
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6134
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getAccuracyFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getAccuracyOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 6144
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 6145
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 6147
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracy_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 6148
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getAtts()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 11182
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->attsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 11183
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->atts_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 11185
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getAttsBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 11275
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11276
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getAttsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getAttsOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 11286
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->attsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 11287
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 11289
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->atts_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 11290
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getBatterylevel()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 8857
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8858
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevel_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 8860
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getBatterylevelBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 8950
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8951
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getBatterylevelFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getBatterylevelOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 8961
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 8962
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 8964
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevel_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 8965
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getBuyeruid()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 4937
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4938
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruid_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 4940
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getBuyeruidBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 5030
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5031
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getBuyeruidFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getBuyeruidOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 5041
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 5042
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 5044
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruid_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 5045
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getCarrier()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 5249
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5250
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrier_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 5252
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getCarrierBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 5347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5348
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getCarrierFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getCarrierOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 5359
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 5360
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 5362
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrier_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 5363
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getCpuname()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 10562
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 10563
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuname_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 10565
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getCpunameBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 10655
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10656
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getCpunameFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getCpunameOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 10666
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 10667
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 10669
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuname_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 10670
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getCpuvendor()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 10717
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 10718
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendor_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 10720
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getCpuvendorBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 10810
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10811
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getCpuvendorFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getCpuvendorOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 10821
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 10822
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 10824
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendor_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 10825
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 3475
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 3475
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/MaskedSignals;
    .registers 2

    .line 3809
    invoke-static {}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 3804
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_MaskedSignals_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDeviceCity()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 6660
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6661
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCity_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 6663
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getDeviceCityBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 6753
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6754
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getDeviceCityFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getDeviceCityOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 6764
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 6765
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 6767
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCity_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 6768
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getDeviceLat()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 5723
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5724
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLat_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 5726
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getDeviceLatBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 5821
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5822
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getDeviceLatFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getDeviceLatOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 5833
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 5834
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 5836
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLat_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 5837
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getDeviceLon()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 5885
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5886
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLon_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 5888
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getDeviceLonBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 5978
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5979
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getDeviceLonFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getDeviceLonOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 5989
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 5990
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 5992
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLon_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 5993
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getDeviceZip()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 6350
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6351
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZip_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 6353
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getDeviceZipBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 6443
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6444
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getDeviceZipFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getDeviceZipOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 6454
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 6455
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 6457
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZip_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 6458
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getDevicename()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 9477
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicenameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 9478
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicename_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 9480
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getDevicenameBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 9570
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9571
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getDevicenameFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getDevicenameOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 9581
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicenameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 9582
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 9584
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicename_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 9585
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getDiskspace()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 8230
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspaceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8231
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspace_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 8233
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getDiskspaceBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 8328
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8329
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getDiskspaceFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getDiskspaceOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 8340
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspaceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 8341
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 8343
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspace_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 8344
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getExternalUserIds()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 5092
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIdsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5093
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIds_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 5095
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getExternalUserIdsBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 5185
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5186
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getExternalUserIdsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getExternalUserIdsOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 5196
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIdsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 5197
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 5199
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIds_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 5200
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getFreemem()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 8702
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freememBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8703
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freemem_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 8705
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getFreememBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 8795
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8796
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getFreememFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getFreememOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 8806
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freememBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 8807
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 8809
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freemem_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 8810
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getGender()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 11501
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->genderBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 11502
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gender_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 11504
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getGenderBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 11594
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11595
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getGenderFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getGenderOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 11605
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->genderBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 11606
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 11608
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gender_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 11609
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getGpuname()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 10872
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 10873
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuname_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 10875
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getGpunameBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 10965
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10966
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getGpunameFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getGpunameOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 10976
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 10977
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 10979
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuname_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 10980
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getGpuvendor()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 11027
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 11028
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendor_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 11030
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getGpuvendorBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 11120
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11121
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getGpuvendorFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getGpuvendorOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 11131
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 11132
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 11134
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendor_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 11135
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getHeadsetname()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 9167
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetnameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 9168
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetname_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 9170
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getHeadsetnameBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 9260
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9261
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getHeadsetnameFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getHeadsetnameOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 9271
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetnameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 9272
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 9274
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetname_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 9275
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getHwv()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 7608
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7609
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwv_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 7611
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getHwvBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 7701
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7702
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getHwvFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getHwvOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 7712
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 7713
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 7715
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwv_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 7716
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getIfa()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 4310
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4311
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifa_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 4313
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getIfaBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 4408
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4409
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getIfaFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getIfaOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 4420
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 4421
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 4423
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifa_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 4424
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getIfv()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 4627
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4628
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifv_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 4630
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getIfvBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 4720
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4721
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getIfvFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getIfvOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 4731
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 4732
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 4734
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifv_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 4735
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getInputlanguage()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 10252
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguageBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 10253
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguage_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 10255
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getInputlanguageBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 10345
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10346
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getInputlanguageFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getInputlanguageOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 10356
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguageBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 10357
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 10359
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguage_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 10360
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getKeywords()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 11656
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywordsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 11657
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywords_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 11659
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getKeywordsBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 11749
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11750
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getKeywordsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getKeywordsOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 11760
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywordsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 11761
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 11763
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywords_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 11764
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getLastbootup()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 9632
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 9633
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootup_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 9635
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getLastbootupBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 9725
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9726
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getLastbootupFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getLastbootupHistory()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 9942
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistoryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 9943
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 9945
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getLastbootupHistoryBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 10035
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10036
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getLastbootupHistoryFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getLastbootupHistoryOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 10046
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistoryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 10047
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 10049
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 10050
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getLastbootupOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 9736
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 9737
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 9739
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootup_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 9740
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getLastbootupV2()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 9787
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 9788
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 9790
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getLastbootupV2Builder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 9880
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9881
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getLastbootupV2FieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getLastbootupV2OrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 9891
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 9892
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 9894
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 9895
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getLastfix()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 6195
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfixBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6196
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfix_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 6198
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getLastfixBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 6288
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6289
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getLastfixFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getLastfixOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 6299
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfixBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 6300
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 6302
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfix_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 6303
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getLmt()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 4472
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmtBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4473
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmt_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 4475
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getLmtBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 4565
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4566
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getLmtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getLmtOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 4576
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmtBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 4577
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 4579
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmt_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 4580
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getMccmnc()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 5411
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmncBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5412
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmnc_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 5414
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getMccmncBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 5504
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5505
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getMccmncFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getMccmncOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 5515
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmncBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 5516
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 5518
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmnc_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 5519
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getMetro()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 6505
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metroBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6506
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metro_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 6508
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getMetroBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 6598
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6599
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getMetroFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getMetroOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 6609
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metroBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 6610
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 6612
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metro_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 6613
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getModel()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 7446
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->modelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7447
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->model_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 7449
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getModelBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 7544
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7545
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getModelFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getModelOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 7556
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->modelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 7557
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 7559
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->model_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 7560
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getPpi()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 7763
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppiBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7764
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppi_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 7766
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getPpiBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 7856
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7857
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getPpiFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getPpiOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 7867
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppiBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 7868
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 7870
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppi_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 7871
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getPxratio()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 7918
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratioBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7919
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratio_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 7921
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getPxratioBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 8011
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8012
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getPxratioFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getPxratioOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 8022
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratioBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 8023
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 8025
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratio_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 8026
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getScreenbright()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 9012
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbrightBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 9013
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbright_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 9015
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getScreenbrightBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 9105
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9106
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getScreenbrightFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getScreenbrightOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 9116
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbrightBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 9117
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 9119
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbright_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 9120
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getSimCarrier()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 5566
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5567
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 5569
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getSimCarrierBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 5659
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5660
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getSimCarrierFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getSimCarrierOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 5670
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 5671
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 5673
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 5674
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getTime()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 10097
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->timeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 10098
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->time_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 10100
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getTimeBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 10190
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10191
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getTimeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getTimeOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 10201
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->timeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 10202
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 10204
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->time_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 10205
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getTotaldisk()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 8392
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldiskBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8393
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldisk_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 8395
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getTotaldiskBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 8485
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8486
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getTotaldiskFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getTotaldiskOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 8496
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldiskBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 8497
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 8499
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldisk_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 8500
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getTotalmem()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 8547
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8548
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmem_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 8550
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getTotalmemBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 8640
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8641
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getTotalmemFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getTotalmemOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 8651
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 8652
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 8654
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmem_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 8655
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getUa()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 8073
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->uaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8074
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ua_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 8076
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getUaBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 8166
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 8167
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getUaFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getUaOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 8177
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->uaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 8178
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 8180
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ua_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 8181
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getUserCity()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 7289
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7290
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCity_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 7292
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getUserCityBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 7382
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7383
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getUserCityFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getUserCityOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 7393
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 7394
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 7396
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCity_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 7397
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getUserId()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 4782
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4783
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userId_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 4785
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getUserIdBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 4875
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4876
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getUserIdFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getUserIdOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 4886
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 4887
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 4889
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userId_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 4890
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getUserLat()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 6817
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6818
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLat_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 6820
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getUserLatBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 6915
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6916
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getUserLatFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getUserLatOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 6927
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 6928
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 6930
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLat_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 6931
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getUserLon()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 6979
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6980
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLon_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 6982
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getUserLonBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 7072
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7073
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getUserLonFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getUserLonOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 7083
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 7084
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 7086
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLon_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 7087
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getUserZip()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 7134
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7135
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZip_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 7137
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getUserZipBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 7227
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7228
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getUserZipFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getUserZipOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 7238
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 7239
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 7241
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZip_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 7242
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getVolumeLevel()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 9322
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 9323
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevel_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 9325
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getVolumeLevelBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 9415
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9416
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getVolumeLevelFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getVolumeLevelOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 9426
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 9427
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 9429
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevel_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 9430
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getYob()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 11339
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yobBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 11340
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yob_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 11342
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getYobBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 11437
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11438
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->getYobFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getYobOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 11449
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yobBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 11450
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 11452
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yob_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 11453
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public hasAccess()Z
    .registers 2

    .line 10396
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accessBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->access_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasAccuracy()Z
    .registers 2

    .line 6029
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracy_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasAtts()Z
    .registers 2

    .line 11171
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->attsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->atts_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasBatterylevel()Z
    .registers 2

    .line 8846
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevel_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasBuyeruid()Z
    .registers 2

    .line 4926
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruid_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasCarrier()Z
    .registers 2

    .line 5237
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrier_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasCpuname()Z
    .registers 2

    .line 10551
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuname_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasCpuvendor()Z
    .registers 2

    .line 10706
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendor_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasDeviceCity()Z
    .registers 2

    .line 6649
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCity_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasDeviceLat()Z
    .registers 2

    .line 5711
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLat_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasDeviceLon()Z
    .registers 2

    .line 5874
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLon_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasDeviceZip()Z
    .registers 2

    .line 6339
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZip_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasDevicename()Z
    .registers 2

    .line 9466
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicenameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicename_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasDiskspace()Z
    .registers 2

    .line 8218
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspaceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspace_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasExternalUserIds()Z
    .registers 2

    .line 5081
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIdsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIds_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasFreemem()Z
    .registers 2

    .line 8691
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freememBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freemem_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasGender()Z
    .registers 2

    .line 11490
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->genderBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gender_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasGpuname()Z
    .registers 2

    .line 10861
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuname_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasGpuvendor()Z
    .registers 2

    .line 11016
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendor_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasHeadsetname()Z
    .registers 2

    .line 9156
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetnameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetname_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasHwv()Z
    .registers 2

    .line 7597
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwv_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasIfa()Z
    .registers 2

    .line 4298
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifa_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasIfv()Z
    .registers 2

    .line 4616
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifv_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasInputlanguage()Z
    .registers 2

    .line 10241
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguageBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguage_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasKeywords()Z
    .registers 2

    .line 11645
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywordsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywords_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasLastbootup()Z
    .registers 2

    .line 9621
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootup_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasLastbootupHistory()Z
    .registers 2

    .line 9931
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistoryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasLastbootupV2()Z
    .registers 2

    .line 9776
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasLastfix()Z
    .registers 2

    .line 6184
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfixBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfix_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasLmt()Z
    .registers 2

    .line 4461
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmtBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmt_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasMccmnc()Z
    .registers 2

    .line 5400
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmncBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmnc_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasMetro()Z
    .registers 2

    .line 6494
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metroBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metro_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasModel()Z
    .registers 2

    .line 7434
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->modelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->model_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasPpi()Z
    .registers 2

    .line 7752
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppiBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppi_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasPxratio()Z
    .registers 2

    .line 7907
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratioBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratio_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasScreenbright()Z
    .registers 2

    .line 9001
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbrightBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbright_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasSimCarrier()Z
    .registers 2

    .line 5555
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasTime()Z
    .registers 2

    .line 10086
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->timeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->time_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasTotaldisk()Z
    .registers 2

    .line 8381
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldiskBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldisk_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasTotalmem()Z
    .registers 2

    .line 8536
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmem_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasUa()Z
    .registers 2

    .line 8062
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->uaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ua_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasUserCity()Z
    .registers 2

    .line 7278
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCity_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasUserId()Z
    .registers 2

    .line 4771
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userId_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasUserLat()Z
    .registers 2

    .line 6805
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLat_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasUserLon()Z
    .registers 2

    .line 6968
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLon_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasUserZip()Z
    .registers 2

    .line 7123
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZip_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasVolumeLevel()Z
    .registers 2

    .line 9311
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevel_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasYob()Z
    .registers 2

    .line 11327
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yobBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yob_:Lcom/explorestack/protobuf/StringValue;

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

    .line 3487
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_MaskedSignals_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    const-class v2, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 3488
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

.method public mergeAccess(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10459
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accessBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 10460
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->access_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 10462
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->access_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 10464
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->access_:Lcom/explorestack/protobuf/StringValue;

    .line 10466
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10468
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeAccuracy(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6092
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 6093
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracy_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 6095
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracy_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 6097
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracy_:Lcom/explorestack/protobuf/StringValue;

    .line 6099
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6101
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeAtts(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 11234
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->attsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 11235
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->atts_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 11237
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->atts_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 11239
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->atts_:Lcom/explorestack/protobuf/StringValue;

    .line 11241
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 11243
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeBatterylevel(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 8909
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 8910
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevel_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 8912
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevel_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 8914
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevel_:Lcom/explorestack/protobuf/StringValue;

    .line 8916
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8918
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeBuyeruid(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 4989
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 4990
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruid_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 4992
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruid_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 4994
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruid_:Lcom/explorestack/protobuf/StringValue;

    .line 4996
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4998
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeCarrier(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5304
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 5305
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrier_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 5307
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrier_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 5309
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrier_:Lcom/explorestack/protobuf/StringValue;

    .line 5311
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5313
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeCpuname(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10614
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 10615
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuname_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 10617
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuname_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 10619
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuname_:Lcom/explorestack/protobuf/StringValue;

    .line 10621
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10623
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeCpuvendor(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10769
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 10770
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendor_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 10772
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendor_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 10774
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendor_:Lcom/explorestack/protobuf/StringValue;

    .line 10776
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10778
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeDeviceCity(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6712
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 6713
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCity_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 6715
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCity_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 6717
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCity_:Lcom/explorestack/protobuf/StringValue;

    .line 6719
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6721
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeDeviceLat(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5778
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 5779
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLat_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 5781
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLat_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 5783
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLat_:Lcom/explorestack/protobuf/StringValue;

    .line 5785
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5787
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeDeviceLon(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5937
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 5938
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLon_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 5940
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLon_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 5942
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLon_:Lcom/explorestack/protobuf/StringValue;

    .line 5944
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5946
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeDeviceZip(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6402
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 6403
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZip_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 6405
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZip_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 6407
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZip_:Lcom/explorestack/protobuf/StringValue;

    .line 6409
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6411
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeDevicename(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9529
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicenameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 9530
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicename_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 9532
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicename_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 9534
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicename_:Lcom/explorestack/protobuf/StringValue;

    .line 9536
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9538
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeDiskspace(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 8285
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspaceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 8286
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspace_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 8288
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspace_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 8290
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspace_:Lcom/explorestack/protobuf/StringValue;

    .line 8292
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8294
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeExternalUserIds(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5144
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIdsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 5145
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIds_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 5147
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIds_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 5149
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIds_:Lcom/explorestack/protobuf/StringValue;

    .line 5151
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5153
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeFreemem(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 8754
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freememBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 8755
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freemem_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 8757
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freemem_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 8759
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freemem_:Lcom/explorestack/protobuf/StringValue;

    .line 8761
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8763
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

    .line 3475
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3475
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

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

    .line 3475
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

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

    .line 3475
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3475
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

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

    .line 3475
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4273
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$5300()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/MaskedSignals;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 4279
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/MaskedSignals;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 4275
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/MaskedSignals;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 4276
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

    .line 4279
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/MaskedSignals;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4281
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 4102
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    if-eqz v0, :cond_b

    .line 4103
    check-cast p1, Lio/bidmachine/protobuf/sdk/MaskedSignals;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/MaskedSignals;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object p1

    return-object p1

    .line 4105
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/MaskedSignals;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 4111
    invoke-static {}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/MaskedSignals;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 4112
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasIfa()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4113
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getIfa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeIfa(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4115
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLmt()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4116
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLmt()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeLmt(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4118
    :cond_21
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasIfv()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4119
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getIfv()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeIfv(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4121
    :cond_2e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4122
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserId()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeUserId(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4124
    :cond_3b
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasBuyeruid()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 4125
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getBuyeruid()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeBuyeruid(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4127
    :cond_48
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasExternalUserIds()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 4128
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getExternalUserIds()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeExternalUserIds(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4130
    :cond_55
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasCarrier()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 4131
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getCarrier()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeCarrier(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4133
    :cond_62
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasMccmnc()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 4134
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getMccmnc()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeMccmnc(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4136
    :cond_6f
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasSimCarrier()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 4137
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getSimCarrier()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeSimCarrier(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4139
    :cond_7c
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDeviceLat()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 4140
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceLat()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeDeviceLat(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4142
    :cond_89
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDeviceLon()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 4143
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceLon()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeDeviceLon(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4145
    :cond_96
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 4146
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getAccuracy()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeAccuracy(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4148
    :cond_a3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLastfix()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 4149
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastfix()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeLastfix(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4151
    :cond_b0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDeviceZip()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 4152
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceZip()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeDeviceZip(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4154
    :cond_bd
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasMetro()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 4155
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getMetro()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeMetro(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4157
    :cond_ca
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDeviceCity()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 4158
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDeviceCity()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeDeviceCity(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4160
    :cond_d7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserLat()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 4161
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserLat()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeUserLat(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4163
    :cond_e4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserLon()Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 4164
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserLon()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeUserLon(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4166
    :cond_f1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserZip()Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 4167
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserZip()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeUserZip(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4169
    :cond_fe
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUserCity()Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 4170
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUserCity()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeUserCity(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4172
    :cond_10b
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasModel()Z

    move-result v0

    if-eqz v0, :cond_118

    .line 4173
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getModel()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeModel(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4175
    :cond_118
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasHwv()Z

    move-result v0

    if-eqz v0, :cond_125

    .line 4176
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getHwv()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeHwv(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4178
    :cond_125
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasPpi()Z

    move-result v0

    if-eqz v0, :cond_132

    .line 4179
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getPpi()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergePpi(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4181
    :cond_132
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasPxratio()Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 4182
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getPxratio()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergePxratio(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4184
    :cond_13f
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasUa()Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 4185
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getUa()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeUa(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4187
    :cond_14c
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDiskspace()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 4188
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDiskspace()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeDiskspace(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4190
    :cond_159
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasTotaldisk()Z

    move-result v0

    if-eqz v0, :cond_166

    .line 4191
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getTotaldisk()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeTotaldisk(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4193
    :cond_166
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasTotalmem()Z

    move-result v0

    if-eqz v0, :cond_173

    .line 4194
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getTotalmem()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeTotalmem(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4196
    :cond_173
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasFreemem()Z

    move-result v0

    if-eqz v0, :cond_180

    .line 4197
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getFreemem()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeFreemem(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4199
    :cond_180
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasBatterylevel()Z

    move-result v0

    if-eqz v0, :cond_18d

    .line 4200
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getBatterylevel()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeBatterylevel(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4202
    :cond_18d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasScreenbright()Z

    move-result v0

    if-eqz v0, :cond_19a

    .line 4203
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getScreenbright()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeScreenbright(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4205
    :cond_19a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasHeadsetname()Z

    move-result v0

    if-eqz v0, :cond_1a7

    .line 4206
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getHeadsetname()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeHeadsetname(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4208
    :cond_1a7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasVolumeLevel()Z

    move-result v0

    if-eqz v0, :cond_1b4

    .line 4209
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getVolumeLevel()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeVolumeLevel(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4211
    :cond_1b4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasDevicename()Z

    move-result v0

    if-eqz v0, :cond_1c1

    .line 4212
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getDevicename()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeDevicename(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4214
    :cond_1c1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLastbootup()Z

    move-result v0

    if-eqz v0, :cond_1ce

    .line 4215
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastbootup()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeLastbootup(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4217
    :cond_1ce
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLastbootupV2()Z

    move-result v0

    if-eqz v0, :cond_1db

    .line 4218
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastbootupV2()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeLastbootupV2(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4220
    :cond_1db
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasLastbootupHistory()Z

    move-result v0

    if-eqz v0, :cond_1e8

    .line 4221
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getLastbootupHistory()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeLastbootupHistory(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4223
    :cond_1e8
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_1f5

    .line 4224
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getTime()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeTime(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4226
    :cond_1f5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasInputlanguage()Z

    move-result v0

    if-eqz v0, :cond_202

    .line 4227
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getInputlanguage()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeInputlanguage(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4229
    :cond_202
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasAccess()Z

    move-result v0

    if-eqz v0, :cond_20f

    .line 4230
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getAccess()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeAccess(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4232
    :cond_20f
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasCpuname()Z

    move-result v0

    if-eqz v0, :cond_21c

    .line 4233
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getCpuname()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeCpuname(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4235
    :cond_21c
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasCpuvendor()Z

    move-result v0

    if-eqz v0, :cond_229

    .line 4236
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getCpuvendor()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeCpuvendor(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4238
    :cond_229
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasGpuname()Z

    move-result v0

    if-eqz v0, :cond_236

    .line 4239
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getGpuname()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeGpuname(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4241
    :cond_236
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasGpuvendor()Z

    move-result v0

    if-eqz v0, :cond_243

    .line 4242
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getGpuvendor()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeGpuvendor(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4244
    :cond_243
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasAtts()Z

    move-result v0

    if-eqz v0, :cond_250

    .line 4245
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getAtts()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeAtts(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4247
    :cond_250
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasYob()Z

    move-result v0

    if-eqz v0, :cond_25d

    .line 4248
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getYob()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeYob(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4250
    :cond_25d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasGender()Z

    move-result v0

    if-eqz v0, :cond_26a

    .line 4251
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getGender()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeGender(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4253
    :cond_26a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->hasKeywords()Z

    move-result v0

    if-eqz v0, :cond_277

    .line 4254
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->getKeywords()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeKeywords(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4256
    :cond_277
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals;->access$5200(Lio/bidmachine/protobuf/sdk/MaskedSignals;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4257
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeGender(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 11553
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->genderBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 11554
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gender_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 11556
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gender_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 11558
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gender_:Lcom/explorestack/protobuf/StringValue;

    .line 11560
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 11562
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeGpuname(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10924
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 10925
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuname_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 10927
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuname_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 10929
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuname_:Lcom/explorestack/protobuf/StringValue;

    .line 10931
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10933
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeGpuvendor(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 11079
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 11080
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendor_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 11082
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendor_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 11084
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendor_:Lcom/explorestack/protobuf/StringValue;

    .line 11086
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 11088
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeHeadsetname(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9219
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetnameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 9220
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetname_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 9222
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetname_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 9224
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetname_:Lcom/explorestack/protobuf/StringValue;

    .line 9226
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9228
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeHwv(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7660
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 7661
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwv_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 7663
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwv_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 7665
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwv_:Lcom/explorestack/protobuf/StringValue;

    .line 7667
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7669
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeIfa(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 4365
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 4366
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifa_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 4368
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifa_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 4370
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifa_:Lcom/explorestack/protobuf/StringValue;

    .line 4372
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4374
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeIfv(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 4679
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 4680
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifv_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 4682
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifv_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 4684
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifv_:Lcom/explorestack/protobuf/StringValue;

    .line 4686
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4688
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeInputlanguage(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10304
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguageBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 10305
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguage_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 10307
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguage_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 10309
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguage_:Lcom/explorestack/protobuf/StringValue;

    .line 10311
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10313
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeKeywords(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 11708
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywordsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 11709
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywords_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 11711
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywords_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 11713
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywords_:Lcom/explorestack/protobuf/StringValue;

    .line 11715
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 11717
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeLastbootup(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9684
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 9685
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootup_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 9687
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootup_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 9689
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootup_:Lcom/explorestack/protobuf/StringValue;

    .line 9691
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9693
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeLastbootupHistory(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9994
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistoryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 9995
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 9997
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 9999
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/StringValue;

    .line 10001
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10003
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeLastbootupV2(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9839
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 9840
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 9842
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 9844
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2_:Lcom/explorestack/protobuf/StringValue;

    .line 9846
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9848
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeLastfix(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6247
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfixBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 6248
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfix_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 6250
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfix_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 6252
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfix_:Lcom/explorestack/protobuf/StringValue;

    .line 6254
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6256
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeLmt(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 4524
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmtBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 4525
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmt_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 4527
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmt_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 4529
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmt_:Lcom/explorestack/protobuf/StringValue;

    .line 4531
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4533
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeMccmnc(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5463
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmncBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 5464
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmnc_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 5466
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmnc_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 5468
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmnc_:Lcom/explorestack/protobuf/StringValue;

    .line 5470
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5472
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeMetro(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6557
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metroBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 6558
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metro_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 6560
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metro_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 6562
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metro_:Lcom/explorestack/protobuf/StringValue;

    .line 6564
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6566
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeModel(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7501
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->modelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 7502
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->model_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 7504
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->model_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 7506
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->model_:Lcom/explorestack/protobuf/StringValue;

    .line 7508
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7510
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergePpi(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7815
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppiBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 7816
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppi_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 7818
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppi_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 7820
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppi_:Lcom/explorestack/protobuf/StringValue;

    .line 7822
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7824
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergePxratio(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7970
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratioBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 7971
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratio_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 7973
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratio_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 7975
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratio_:Lcom/explorestack/protobuf/StringValue;

    .line 7977
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7979
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeScreenbright(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9064
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbrightBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 9065
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbright_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 9067
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbright_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 9069
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbright_:Lcom/explorestack/protobuf/StringValue;

    .line 9071
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9073
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeSimCarrier(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5618
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 5619
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 5621
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 5623
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    .line 5625
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5627
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeTime(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10149
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->timeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 10150
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->time_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 10152
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->time_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 10154
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->time_:Lcom/explorestack/protobuf/StringValue;

    .line 10156
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10158
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeTotaldisk(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 8444
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldiskBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 8445
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldisk_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 8447
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldisk_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 8449
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldisk_:Lcom/explorestack/protobuf/StringValue;

    .line 8451
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8453
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeTotalmem(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 8599
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 8600
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmem_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 8602
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmem_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 8604
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmem_:Lcom/explorestack/protobuf/StringValue;

    .line 8606
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8608
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeUa(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 8125
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->uaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 8126
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ua_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 8128
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ua_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 8130
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ua_:Lcom/explorestack/protobuf/StringValue;

    .line 8132
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8134
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 3475
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3475
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3475
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 2

    .line 11796
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    return-object p1
.end method

.method public mergeUserCity(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7341
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 7342
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCity_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 7344
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCity_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 7346
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCity_:Lcom/explorestack/protobuf/StringValue;

    .line 7348
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7350
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeUserId(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 4834
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 4835
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userId_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 4837
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userId_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 4839
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userId_:Lcom/explorestack/protobuf/StringValue;

    .line 4841
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4843
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeUserLat(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6872
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 6873
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLat_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 6875
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLat_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 6877
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLat_:Lcom/explorestack/protobuf/StringValue;

    .line 6879
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6881
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeUserLon(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7031
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 7032
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLon_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 7034
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLon_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 7036
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLon_:Lcom/explorestack/protobuf/StringValue;

    .line 7038
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7040
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeUserZip(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7186
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 7187
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZip_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 7189
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZip_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 7191
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZip_:Lcom/explorestack/protobuf/StringValue;

    .line 7193
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7195
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeVolumeLevel(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9374
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 9375
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevel_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 9377
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevel_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 9379
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevel_:Lcom/explorestack/protobuf/StringValue;

    .line 9381
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9383
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeYob(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 11394
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yobBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 11395
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yob_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 11397
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yob_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 11399
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yob_:Lcom/explorestack/protobuf/StringValue;

    .line 11401
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 11403
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setAccess(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10442
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accessBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 10443
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->access_:Lcom/explorestack/protobuf/StringValue;

    .line 10444
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10446
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setAccess(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10421
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accessBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 10423
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10425
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->access_:Lcom/explorestack/protobuf/StringValue;

    .line 10426
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10428
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setAccuracy(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6075
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 6076
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracy_:Lcom/explorestack/protobuf/StringValue;

    .line 6077
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6079
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setAccuracy(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6054
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracyBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6056
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6058
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->accuracy_:Lcom/explorestack/protobuf/StringValue;

    .line 6059
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6061
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setAtts(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 11217
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->attsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 11218
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->atts_:Lcom/explorestack/protobuf/StringValue;

    .line 11219
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 11221
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setAtts(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 11196
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->attsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 11198
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11200
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->atts_:Lcom/explorestack/protobuf/StringValue;

    .line 11201
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 11203
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setBatterylevel(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 8892
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 8893
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevel_:Lcom/explorestack/protobuf/StringValue;

    .line 8894
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8896
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setBatterylevel(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 8871
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8873
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8875
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->batterylevel_:Lcom/explorestack/protobuf/StringValue;

    .line 8876
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8878
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setBuyeruid(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 4972
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 4973
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruid_:Lcom/explorestack/protobuf/StringValue;

    .line 4974
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4976
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setBuyeruid(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 4951
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4953
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4955
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->buyeruid_:Lcom/explorestack/protobuf/StringValue;

    .line 4956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4958
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCarrier(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5286
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 5287
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrier_:Lcom/explorestack/protobuf/StringValue;

    .line 5288
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5290
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCarrier(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5264
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5266
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5268
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->carrier_:Lcom/explorestack/protobuf/StringValue;

    .line 5269
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5271
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCpuname(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10597
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 10598
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuname_:Lcom/explorestack/protobuf/StringValue;

    .line 10599
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10601
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCpuname(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10576
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 10578
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10580
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuname_:Lcom/explorestack/protobuf/StringValue;

    .line 10581
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10583
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCpuvendor(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10752
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 10753
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendor_:Lcom/explorestack/protobuf/StringValue;

    .line 10754
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10756
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCpuvendor(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10731
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 10733
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10735
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->cpuvendor_:Lcom/explorestack/protobuf/StringValue;

    .line 10736
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10738
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setDeviceCity(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6695
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 6696
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCity_:Lcom/explorestack/protobuf/StringValue;

    .line 6697
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6699
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setDeviceCity(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6674
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6676
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6678
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceCity_:Lcom/explorestack/protobuf/StringValue;

    .line 6679
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6681
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setDeviceLat(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5760
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 5761
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLat_:Lcom/explorestack/protobuf/StringValue;

    .line 5762
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5764
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setDeviceLat(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5738
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5740
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5742
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLat_:Lcom/explorestack/protobuf/StringValue;

    .line 5743
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5745
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setDeviceLon(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5920
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 5921
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLon_:Lcom/explorestack/protobuf/StringValue;

    .line 5922
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5924
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setDeviceLon(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5899
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5901
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5903
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceLon_:Lcom/explorestack/protobuf/StringValue;

    .line 5904
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5906
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setDeviceZip(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6385
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 6386
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZip_:Lcom/explorestack/protobuf/StringValue;

    .line 6387
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6389
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setDeviceZip(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6364
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6366
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6368
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->deviceZip_:Lcom/explorestack/protobuf/StringValue;

    .line 6369
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6371
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setDevicename(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9512
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicenameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 9513
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicename_:Lcom/explorestack/protobuf/StringValue;

    .line 9514
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9516
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setDevicename(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9491
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicenameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 9493
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9495
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->devicename_:Lcom/explorestack/protobuf/StringValue;

    .line 9496
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9498
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setDiskspace(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 8267
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspaceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 8268
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspace_:Lcom/explorestack/protobuf/StringValue;

    .line 8269
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8271
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setDiskspace(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 8245
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspaceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8247
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8249
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->diskspace_:Lcom/explorestack/protobuf/StringValue;

    .line 8250
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8252
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setExternalUserIds(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5127
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIdsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 5128
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIds_:Lcom/explorestack/protobuf/StringValue;

    .line 5129
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5131
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setExternalUserIds(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5106
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIdsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5110
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->externalUserIds_:Lcom/explorestack/protobuf/StringValue;

    .line 5111
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5113
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 3475
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 3475
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 4076
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    return-object p1
.end method

.method public setFreemem(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 8737
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freememBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 8738
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freemem_:Lcom/explorestack/protobuf/StringValue;

    .line 8739
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8741
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setFreemem(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 8716
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freememBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8718
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8720
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->freemem_:Lcom/explorestack/protobuf/StringValue;

    .line 8721
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8723
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setGender(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 11536
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->genderBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 11537
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gender_:Lcom/explorestack/protobuf/StringValue;

    .line 11538
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 11540
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setGender(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 11515
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->genderBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 11517
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11519
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gender_:Lcom/explorestack/protobuf/StringValue;

    .line 11520
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 11522
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setGpuname(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10907
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 10908
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuname_:Lcom/explorestack/protobuf/StringValue;

    .line 10909
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10911
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setGpuname(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10886
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpunameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 10888
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10890
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuname_:Lcom/explorestack/protobuf/StringValue;

    .line 10891
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10893
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setGpuvendor(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 11062
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 11063
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendor_:Lcom/explorestack/protobuf/StringValue;

    .line 11064
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 11066
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setGpuvendor(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 11041
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 11043
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11045
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->gpuvendor_:Lcom/explorestack/protobuf/StringValue;

    .line 11046
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 11048
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setHeadsetname(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9202
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetnameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 9203
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetname_:Lcom/explorestack/protobuf/StringValue;

    .line 9204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9206
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setHeadsetname(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9181
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetnameBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 9183
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9185
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->headsetname_:Lcom/explorestack/protobuf/StringValue;

    .line 9186
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9188
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setHwv(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7643
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 7644
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwv_:Lcom/explorestack/protobuf/StringValue;

    .line 7645
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7647
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setHwv(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7622
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7624
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7626
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->hwv_:Lcom/explorestack/protobuf/StringValue;

    .line 7627
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7629
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setIfa(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 4347
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 4348
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifa_:Lcom/explorestack/protobuf/StringValue;

    .line 4349
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4351
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setIfa(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 4325
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4327
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4329
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifa_:Lcom/explorestack/protobuf/StringValue;

    .line 4330
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4332
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setIfv(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 4662
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 4663
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifv_:Lcom/explorestack/protobuf/StringValue;

    .line 4664
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4666
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setIfv(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 4641
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifvBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4643
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4645
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ifv_:Lcom/explorestack/protobuf/StringValue;

    .line 4646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4648
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setInputlanguage(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10287
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguageBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 10288
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguage_:Lcom/explorestack/protobuf/StringValue;

    .line 10289
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10291
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setInputlanguage(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10266
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguageBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 10268
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10270
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->inputlanguage_:Lcom/explorestack/protobuf/StringValue;

    .line 10271
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10273
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setKeywords(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 11691
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywordsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 11692
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywords_:Lcom/explorestack/protobuf/StringValue;

    .line 11693
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 11695
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setKeywords(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 11670
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywordsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 11672
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11674
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->keywords_:Lcom/explorestack/protobuf/StringValue;

    .line 11675
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 11677
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setLastbootup(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9667
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 9668
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootup_:Lcom/explorestack/protobuf/StringValue;

    .line 9669
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9671
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setLastbootup(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9646
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 9648
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9650
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootup_:Lcom/explorestack/protobuf/StringValue;

    .line 9651
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9653
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setLastbootupHistory(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9977
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistoryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 9978
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/StringValue;

    .line 9979
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9981
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setLastbootupHistory(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9956
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistoryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 9958
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9960
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/StringValue;

    .line 9961
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9963
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setLastbootupV2(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9822
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 9823
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2_:Lcom/explorestack/protobuf/StringValue;

    .line 9824
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9826
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setLastbootupV2(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9801
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2Builder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 9803
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9805
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastbootupV2_:Lcom/explorestack/protobuf/StringValue;

    .line 9806
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9808
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setLastfix(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6230
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfixBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 6231
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfix_:Lcom/explorestack/protobuf/StringValue;

    .line 6232
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6234
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setLastfix(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6209
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfixBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6211
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6213
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lastfix_:Lcom/explorestack/protobuf/StringValue;

    .line 6214
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6216
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setLmt(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 4507
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmtBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 4508
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmt_:Lcom/explorestack/protobuf/StringValue;

    .line 4509
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4511
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setLmt(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 4486
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmtBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4488
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4490
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->lmt_:Lcom/explorestack/protobuf/StringValue;

    .line 4491
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4493
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setMccmnc(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5446
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmncBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 5447
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmnc_:Lcom/explorestack/protobuf/StringValue;

    .line 5448
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5450
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setMccmnc(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5425
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmncBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5427
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5429
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->mccmnc_:Lcom/explorestack/protobuf/StringValue;

    .line 5430
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5432
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setMetro(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6540
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metroBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 6541
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metro_:Lcom/explorestack/protobuf/StringValue;

    .line 6542
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6544
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setMetro(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6519
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metroBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6521
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6523
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->metro_:Lcom/explorestack/protobuf/StringValue;

    .line 6524
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6526
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setModel(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7483
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->modelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 7484
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->model_:Lcom/explorestack/protobuf/StringValue;

    .line 7485
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7487
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setModel(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7461
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->modelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7463
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7465
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->model_:Lcom/explorestack/protobuf/StringValue;

    .line 7466
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7468
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setPpi(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7798
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppiBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 7799
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppi_:Lcom/explorestack/protobuf/StringValue;

    .line 7800
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7802
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setPpi(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7777
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppiBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7779
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7781
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ppi_:Lcom/explorestack/protobuf/StringValue;

    .line 7782
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7784
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setPxratio(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7953
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratioBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 7954
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratio_:Lcom/explorestack/protobuf/StringValue;

    .line 7955
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7957
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setPxratio(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7932
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratioBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7934
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7936
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->pxratio_:Lcom/explorestack/protobuf/StringValue;

    .line 7937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7939
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 3475
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 3475
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 4

    .line 4092
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    return-object p1
.end method

.method public setScreenbright(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9047
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbrightBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 9048
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbright_:Lcom/explorestack/protobuf/StringValue;

    .line 9049
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9051
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setScreenbright(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9026
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbrightBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 9028
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9030
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->screenbright_:Lcom/explorestack/protobuf/StringValue;

    .line 9031
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9033
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setSimCarrier(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5601
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 5602
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    .line 5603
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5605
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setSimCarrier(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 5580
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5582
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5584
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    .line 5585
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5587
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setTime(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10132
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->timeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 10133
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->time_:Lcom/explorestack/protobuf/StringValue;

    .line 10134
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10136
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setTime(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 10111
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->timeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 10113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10115
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->time_:Lcom/explorestack/protobuf/StringValue;

    .line 10116
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 10118
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setTotaldisk(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 8427
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldiskBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 8428
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldisk_:Lcom/explorestack/protobuf/StringValue;

    .line 8429
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8431
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setTotaldisk(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 8406
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldiskBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8408
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8410
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totaldisk_:Lcom/explorestack/protobuf/StringValue;

    .line 8411
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8413
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setTotalmem(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 8582
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 8583
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmem_:Lcom/explorestack/protobuf/StringValue;

    .line 8584
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8586
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setTotalmem(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 8561
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8563
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8565
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->totalmem_:Lcom/explorestack/protobuf/StringValue;

    .line 8566
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8568
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setUa(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 8108
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->uaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 8109
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ua_:Lcom/explorestack/protobuf/StringValue;

    .line 8110
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8112
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setUa(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 8087
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->uaBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8089
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8091
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->ua_:Lcom/explorestack/protobuf/StringValue;

    .line 8092
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 8094
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 3475
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 3475
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 2

    .line 11790
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    return-object p1
.end method

.method public setUserCity(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7324
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 7325
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCity_:Lcom/explorestack/protobuf/StringValue;

    .line 7326
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7328
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setUserCity(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7303
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCityBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7305
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7307
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userCity_:Lcom/explorestack/protobuf/StringValue;

    .line 7308
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7310
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setUserId(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 4817
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 4818
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userId_:Lcom/explorestack/protobuf/StringValue;

    .line 4819
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4821
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setUserId(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 4796
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userIdBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4798
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4800
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userId_:Lcom/explorestack/protobuf/StringValue;

    .line 4801
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4803
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setUserLat(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6854
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 6855
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLat_:Lcom/explorestack/protobuf/StringValue;

    .line 6856
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6858
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setUserLat(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6832
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLatBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6834
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6836
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLat_:Lcom/explorestack/protobuf/StringValue;

    .line 6837
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6839
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setUserLon(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7014
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 7015
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLon_:Lcom/explorestack/protobuf/StringValue;

    .line 7016
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7018
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setUserLon(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 6993
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLonBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6995
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6997
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userLon_:Lcom/explorestack/protobuf/StringValue;

    .line 6998
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7000
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setUserZip(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7169
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 7170
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZip_:Lcom/explorestack/protobuf/StringValue;

    .line 7171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7173
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setUserZip(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 7148
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZipBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 7150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7152
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->userZip_:Lcom/explorestack/protobuf/StringValue;

    .line 7153
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 7155
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setVolumeLevel(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9357
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 9358
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevel_:Lcom/explorestack/protobuf/StringValue;

    .line 9359
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9361
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setVolumeLevel(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 9336
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevelBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 9338
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9340
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->volumeLevel_:Lcom/explorestack/protobuf/StringValue;

    .line 9341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 9343
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setYob(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 11376
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yobBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 11377
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yob_:Lcom/explorestack/protobuf/StringValue;

    .line 11378
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 11380
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setYob(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;
    .registers 3

    .line 11354
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yobBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 11356
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11358
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->yob_:Lcom/explorestack/protobuf/StringValue;

    .line 11359
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 11361
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

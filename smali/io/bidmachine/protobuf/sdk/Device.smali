###### Class io.bidmachine.protobuf.sdk.Device (io.bidmachine.protobuf.sdk.Device)
.class public final Lio/bidmachine/protobuf/sdk/Device;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Device.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/DeviceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/Device$Builder;
    }
.end annotation


# static fields
.field public static final ACCESS_FIELD_NUMBER:I = 0x13

.field public static final AIRPLANE_FIELD_NUMBER:I = 0xc

.field public static final APILEVEL_FIELD_NUMBER:I = 0x1f

.field public static final ATTS_FIELD_NUMBER:I = 0x16

.field public static final AUDIOCONTEXT_FIELD_NUMBER:I = 0x18

.field public static final BATTERYLEVEL_FIELD_NUMBER:I = 0x9

.field public static final BATTERYSAVER_FIELD_NUMBER:I = 0xa

.field public static final BM_IFV_FIELD_NUMBER:I = 0x2

.field public static final CHARGING_FIELD_NUMBER:I = 0x7

.field public static final CONNECTION_FIELD_NUMBER:I = 0x17

.field public static final CPUNAME_FIELD_NUMBER:I = 0x19

.field public static final CPUVENDOR_FIELD_NUMBER:I = 0x1a

.field public static final DARKMODE_FIELD_NUMBER:I = 0xb

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Device;

.field public static final DEVICENAME_FIELD_NUMBER:I = 0xe

.field public static final DISKSPACE_FIELD_NUMBER:I = 0x4

.field public static final DND_FIELD_NUMBER:I = 0xd

.field public static final FREEMEM_FIELD_NUMBER:I = 0x1e

.field public static final GPUNAME_FIELD_NUMBER:I = 0x1b

.field public static final GPUVENDOR_FIELD_NUMBER:I = 0x1c

.field public static final HEADSETNAME_FIELD_NUMBER:I = 0x14

.field public static final HEADSET_FIELD_NUMBER:I = 0x8

.field public static final IFV_FIELD_NUMBER:I = 0x1

.field public static final INPUTLANGUAGE_FIELD_NUMBER:I = 0x3

.field public static final JAILBREAK_FIELD_NUMBER:I = 0x11

.field public static final LASTBOOTUP_FIELD_NUMBER:I = 0x12

.field public static final LASTBOOTUP_HISTORY_FIELD_NUMBER:I = 0x24

.field public static final LASTBOOTUP_V2_FIELD_NUMBER:I = 0x23

.field public static final NETWORKROAMING_FIELD_NUMBER:I = 0x22

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Device;",
            ">;"
        }
    .end annotation
.end field

.field public static final RINGMUTE_FIELD_NUMBER:I = 0x6

.field public static final SCREENBRIGHT_FIELD_NUMBER:I = 0x10

.field public static final SIMCARRIER_FIELD_NUMBER:I = 0x20

.field public static final SIMCOUNTRY_FIELD_NUMBER:I = 0x21

.field public static final TIMEZONE_FIELD_NUMBER:I = 0x1d

.field public static final TIME_FIELD_NUMBER:I = 0xf

.field public static final TOTALDISK_FIELD_NUMBER:I = 0x5

.field public static final TOTALMEM_FIELD_NUMBER:I = 0x15

.field private static final serialVersionUID:J


# instance fields
.field private volatile access_:Ljava/lang/Object;

.field private airplane_:Z

.field private apilevel_:I

.field private atts_:I

.field private audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

.field private batterylevel_:F

.field private batterysaver_:Z

.field private volatile bmIfv_:Ljava/lang/Object;

.field private charging_:Z

.field private connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

.field private volatile cpuname_:Ljava/lang/Object;

.field private volatile cpuvendor_:Ljava/lang/Object;

.field private darkmode_:Z

.field private volatile devicename_:Ljava/lang/Object;

.field private diskspace_:J

.field private dnd_:Z

.field private freemem_:J

.field private volatile gpuname_:Ljava/lang/Object;

.field private volatile gpuvendor_:Ljava/lang/Object;

.field private headset_:Z

.field private volatile headsetname_:Ljava/lang/Object;

.field private volatile ifv_:Ljava/lang/Object;

.field private inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

.field private jailbreak_:Z

.field private lastbootupHistoryMemoizedSerializedSize:I

.field private lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

.field private lastbootupV2_:J

.field private lastbootup_:J

.field private memoizedIsInitialized:B

.field private networkRoaming_:Lcom/explorestack/protobuf/BoolValue;

.field private ringmute_:Z

.field private screenbright_:F

.field private simCarrier_:Lcom/explorestack/protobuf/StringValue;

.field private simCountry_:Lcom/explorestack/protobuf/StringValue;

.field private time_:J

.field private volatile timezone_:Ljava/lang/Object;

.field private totaldisk_:J

.field private totalmem_:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 5340
    new-instance v0, Lio/bidmachine/protobuf/sdk/Device;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Device;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Device;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Device;

    .line 5348
    new-instance v0, Lio/bidmachine/protobuf/sdk/Device$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Device$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 826
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupHistoryMemoizedSerializedSize:I

    .line 1408
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/Device;->memoizedIsInitialized:B

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->ifv_:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->bmIfv_:Ljava/lang/Object;

    .line 21
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    .line 22
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->devicename_:Ljava/lang/Object;

    .line 23
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyLongList()Lcom/explorestack/protobuf/Internal$LongList;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    .line 24
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->access_:Ljava/lang/Object;

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->headsetname_:Ljava/lang/Object;

    .line 26
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuname_:Ljava/lang/Object;

    .line 27
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuvendor_:Ljava/lang/Object;

    .line 28
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuname_:Ljava/lang/Object;

    .line 29
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuvendor_:Ljava/lang/Object;

    .line 30
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->timezone_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device;-><init>()V

    .line 51
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_23e

    .line 59
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_25e

    .line 315
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :sswitch_1d
    move v1, v5

    goto :goto_c

    :catchall_1f
    move-exception p1

    goto/16 :goto_21f

    :catch_22
    move-exception p1

    goto/16 :goto_210

    :catch_25
    move-exception p1

    goto/16 :goto_21a

    .line 302
    :sswitch_28
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v3

    .line 303
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_42

    .line 304
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_42

    .line 305
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->newLongList()Lcom/explorestack/protobuf/Internal$LongList;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    or-int/lit8 v2, v2, 0x2

    .line 308
    :cond_42
    :goto_42
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_52

    .line 309
    iget-object v4, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/explorestack/protobuf/Internal$LongList;->addLong(J)V

    goto :goto_42

    .line 311
    :cond_52
    invoke-virtual {p1, v3}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_c

    :sswitch_56
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_62

    .line 295
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->newLongList()Lcom/explorestack/protobuf/Internal$LongList;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    or-int/lit8 v2, v2, 0x2

    .line 298
    :cond_62
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/explorestack/protobuf/Internal$LongList;->addLong(J)V

    goto :goto_c

    .line 290
    :sswitch_6c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupV2_:J

    goto :goto_c

    .line 277
    :sswitch_73
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->networkRoaming_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v3, :cond_7b

    .line 278
    invoke-virtual {v3}, Lcom/explorestack/protobuf/BoolValue;->toBuilder()Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object v4

    .line 280
    :cond_7b
    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/BoolValue;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->networkRoaming_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v4, :cond_c

    .line 282
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/BoolValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    .line 283
    invoke-virtual {v4}, Lcom/explorestack/protobuf/BoolValue$Builder;->buildPartial()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->networkRoaming_:Lcom/explorestack/protobuf/BoolValue;

    goto/16 :goto_c

    .line 264
    :sswitch_94
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->simCountry_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v3, :cond_9c

    .line 265
    invoke-virtual {v3}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 267
    :cond_9c
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/StringValue;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->simCountry_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_c

    .line 269
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 270
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->simCountry_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_c

    .line 251
    :sswitch_b5
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v3, :cond_bd

    .line 252
    invoke-virtual {v3}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 254
    :cond_bd
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/StringValue;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_c

    .line 256
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 257
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_c

    .line 246
    :sswitch_d6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/sdk/Device;->apilevel_:I

    goto/16 :goto_c

    .line 241
    :sswitch_de
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lio/bidmachine/protobuf/sdk/Device;->freemem_:J

    goto/16 :goto_c

    .line 234
    :sswitch_e6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 236
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->timezone_:Ljava/lang/Object;

    goto/16 :goto_c

    .line 228
    :sswitch_ee
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 230
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuvendor_:Ljava/lang/Object;

    goto/16 :goto_c

    .line 222
    :sswitch_f6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 224
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuname_:Ljava/lang/Object;

    goto/16 :goto_c

    .line 216
    :sswitch_fe
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 218
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuvendor_:Ljava/lang/Object;

    goto/16 :goto_c

    .line 210
    :sswitch_106
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 212
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuname_:Ljava/lang/Object;

    goto/16 :goto_c

    .line 198
    :sswitch_10e
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    if-eqz v3, :cond_116

    .line 199
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;

    move-result-object v4

    .line 201
    :cond_116
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    if-eqz v4, :cond_c

    .line 203
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;)Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;

    .line 204
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    goto/16 :goto_c

    .line 185
    :sswitch_12f
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    if-eqz v3, :cond_137

    .line 186
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;

    move-result-object v4

    .line 188
    :cond_137
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    if-eqz v4, :cond_c

    .line 190
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Device$Connection;)Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;

    .line 191
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    goto/16 :goto_c

    .line 180
    :sswitch_150
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/sdk/Device;->atts_:I

    goto/16 :goto_c

    .line 175
    :sswitch_158
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lio/bidmachine/protobuf/sdk/Device;->totalmem_:J

    goto/16 :goto_c

    .line 168
    :sswitch_160
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 170
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->headsetname_:Ljava/lang/Object;

    goto/16 :goto_c

    .line 162
    :sswitch_168
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 164
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->access_:Ljava/lang/Object;

    goto/16 :goto_c

    .line 158
    :sswitch_170
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootup_:J

    goto/16 :goto_c

    .line 153
    :sswitch_178
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device;->jailbreak_:Z

    goto/16 :goto_c

    .line 148
    :sswitch_180
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/sdk/Device;->screenbright_:F

    goto/16 :goto_c

    .line 143
    :sswitch_188
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lio/bidmachine/protobuf/sdk/Device;->time_:J

    goto/16 :goto_c

    .line 136
    :sswitch_190
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 138
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->devicename_:Ljava/lang/Object;

    goto/16 :goto_c

    .line 132
    :sswitch_198
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device;->dnd_:Z

    goto/16 :goto_c

    .line 127
    :sswitch_1a0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device;->airplane_:Z

    goto/16 :goto_c

    .line 122
    :sswitch_1a8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device;->darkmode_:Z

    goto/16 :goto_c

    .line 117
    :sswitch_1b0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device;->batterysaver_:Z

    goto/16 :goto_c

    .line 112
    :sswitch_1b8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/sdk/Device;->batterylevel_:F

    goto/16 :goto_c

    .line 107
    :sswitch_1c0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device;->headset_:Z

    goto/16 :goto_c

    .line 102
    :sswitch_1c8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device;->charging_:Z

    goto/16 :goto_c

    .line 97
    :sswitch_1d0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device;->ringmute_:Z

    goto/16 :goto_c

    .line 92
    :sswitch_1d8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lio/bidmachine/protobuf/sdk/Device;->totaldisk_:J

    goto/16 :goto_c

    .line 87
    :sswitch_1e0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lio/bidmachine/protobuf/sdk/Device;->diskspace_:J

    goto/16 :goto_c

    .line 77
    :sswitch_1e8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_1f9

    .line 79
    new-instance v4, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x1

    .line 82
    :cond_1f9
    iget-object v4, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 71
    :sswitch_200
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 73
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->bmIfv_:Ljava/lang/Object;

    goto/16 :goto_c

    .line 65
    :sswitch_208
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 67
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->ifv_:Ljava/lang/Object;
    :try_end_20e
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_20e} :catch_25
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_20e} :catch_22
    .catchall {:try_start_e .. :try_end_20e} :catchall_1f

    goto/16 :goto_c

    .line 326
    :goto_210
    :try_start_210
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 327
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 324
    :goto_21a
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_21f
    .catchall {:try_start_210 .. :try_end_21f} :catchall_1f

    :goto_21f
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_22b

    .line 330
    iget-object p2, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_22b
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_234

    .line 333
    iget-object p2, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 335
    :cond_234
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 336
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 337
    throw p1

    :cond_23e
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_24a

    .line 330
    iget-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_24a
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_253

    .line 333
    iget-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 335
    :cond_253
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 336
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_25e
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_208
        0x12 -> :sswitch_200
        0x1a -> :sswitch_1e8
        0x20 -> :sswitch_1e0
        0x28 -> :sswitch_1d8
        0x30 -> :sswitch_1d0
        0x38 -> :sswitch_1c8
        0x40 -> :sswitch_1c0
        0x4d -> :sswitch_1b8
        0x50 -> :sswitch_1b0
        0x58 -> :sswitch_1a8
        0x60 -> :sswitch_1a0
        0x68 -> :sswitch_198
        0x72 -> :sswitch_190
        0x78 -> :sswitch_188
        0x85 -> :sswitch_180
        0x88 -> :sswitch_178
        0x90 -> :sswitch_170
        0x9a -> :sswitch_168
        0xa2 -> :sswitch_160
        0xa8 -> :sswitch_158
        0xb0 -> :sswitch_150
        0xba -> :sswitch_12f
        0xc2 -> :sswitch_10e
        0xca -> :sswitch_106
        0xd2 -> :sswitch_fe
        0xda -> :sswitch_f6
        0xe2 -> :sswitch_ee
        0xea -> :sswitch_e6
        0xf0 -> :sswitch_de
        0xf8 -> :sswitch_d6
        0x102 -> :sswitch_b5
        0x10a -> :sswitch_94
        0x112 -> :sswitch_73
        0x118 -> :sswitch_6c
        0x120 -> :sswitch_56
        0x122 -> :sswitch_28
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Device$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Device;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 826
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupHistoryMemoizedSerializedSize:I

    .line 1408
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/Device;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Device$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Device;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1002(Lio/bidmachine/protobuf/sdk/Device;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device;->ringmute_:Z

    return p1
.end method

.method public static synthetic access$1102(Lio/bidmachine/protobuf/sdk/Device;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device;->charging_:Z

    return p1
.end method

.method public static synthetic access$1202(Lio/bidmachine/protobuf/sdk/Device;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device;->headset_:Z

    return p1
.end method

.method public static synthetic access$1302(Lio/bidmachine/protobuf/sdk/Device;F)F
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Device;->batterylevel_:F

    return p1
.end method

.method public static synthetic access$1402(Lio/bidmachine/protobuf/sdk/Device;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device;->batterysaver_:Z

    return p1
.end method

.method public static synthetic access$1502(Lio/bidmachine/protobuf/sdk/Device;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device;->darkmode_:Z

    return p1
.end method

.method public static synthetic access$1602(Lio/bidmachine/protobuf/sdk/Device;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device;->airplane_:Z

    return p1
.end method

.method public static synthetic access$1702(Lio/bidmachine/protobuf/sdk/Device;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device;->dnd_:Z

    return p1
.end method

.method public static synthetic access$1800(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Device;->devicename_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1802(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->devicename_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1902(Lio/bidmachine/protobuf/sdk/Device;J)J
    .registers 3

    .line 9
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device;->time_:J

    return-wide p1
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2002(Lio/bidmachine/protobuf/sdk/Device;F)F
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Device;->screenbright_:F

    return p1
.end method

.method public static synthetic access$2102(Lio/bidmachine/protobuf/sdk/Device;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device;->jailbreak_:Z

    return p1
.end method

.method public static synthetic access$2202(Lio/bidmachine/protobuf/sdk/Device;J)J
    .registers 3

    .line 9
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootup_:J

    return-wide p1
.end method

.method public static synthetic access$2302(Lio/bidmachine/protobuf/sdk/Device;J)J
    .registers 3

    .line 9
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupV2_:J

    return-wide p1
.end method

.method public static synthetic access$2400(Lio/bidmachine/protobuf/sdk/Device;)Lcom/explorestack/protobuf/Internal$LongList;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    return-object p0
.end method

.method public static synthetic access$2402(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/Internal$LongList;)Lcom/explorestack/protobuf/Internal$LongList;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    return-object p1
.end method

.method public static synthetic access$2500(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Device;->access_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2502(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->access_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2600(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Device;->headsetname_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2602(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->headsetname_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2702(Lio/bidmachine/protobuf/sdk/Device;J)J
    .registers 3

    .line 9
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device;->totalmem_:J

    return-wide p1
.end method

.method public static synthetic access$2802(Lio/bidmachine/protobuf/sdk/Device;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Device;->atts_:I

    return p1
.end method

.method public static synthetic access$2900(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuname_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2902(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuname_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$300()Lcom/explorestack/protobuf/Internal$LongList;
    .registers 1

    .line 9
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyLongList()Lcom/explorestack/protobuf/Internal$LongList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$3000(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuvendor_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3002(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuvendor_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3100(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuname_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3102(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuname_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3200(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuvendor_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3202(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuvendor_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3300(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Device;->timezone_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3302(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->timezone_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3402(Lio/bidmachine/protobuf/sdk/Device;J)J
    .registers 3

    .line 9
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device;->freemem_:J

    return-wide p1
.end method

.method public static synthetic access$3502(Lio/bidmachine/protobuf/sdk/Device;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Device;->apilevel_:I

    return p1
.end method

.method public static synthetic access$3602(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$3702(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->simCountry_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$3802(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->networkRoaming_:Lcom/explorestack/protobuf/BoolValue;

    return-object p1
.end method

.method public static synthetic access$3902(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/adcom/Context$Device$Connection;)Lcom/explorestack/protobuf/adcom/Context$Device$Connection;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    return-object p1
.end method

.method public static synthetic access$4002(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;)Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    return-object p1
.end method

.method public static synthetic access$4100(Lio/bidmachine/protobuf/sdk/Device;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$4200()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$4300(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$4400(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$4500(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$4600(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$4700()Lcom/explorestack/protobuf/Internal$LongList;
    .registers 1

    .line 9
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyLongList()Lcom/explorestack/protobuf/Internal$LongList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$4800(Lcom/explorestack/protobuf/Internal$LongList;)Lcom/explorestack/protobuf/Internal$LongList;
    .registers 1

    .line 9
    invoke-static {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/explorestack/protobuf/Internal$LongList;)Lcom/explorestack/protobuf/Internal$LongList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$4900()Lcom/explorestack/protobuf/Internal$LongList;
    .registers 1

    .line 9
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyLongList()Lcom/explorestack/protobuf/Internal$LongList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$500(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Device;->ifv_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$5000(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$502(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->ifv_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$5100(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$5200(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$5300(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$5400(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$5500(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$5600(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$600(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Device;->bmIfv_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->bmIfv_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$700(Lio/bidmachine/protobuf/sdk/Device;)Lcom/explorestack/protobuf/LazyStringList;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method public static synthetic access$802(Lio/bidmachine/protobuf/sdk/Device;J)J
    .registers 3

    .line 9
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device;->diskspace_:J

    return-wide p1
.end method

.method public static synthetic access$902(Lio/bidmachine/protobuf/sdk/Device;J)J
    .registers 3

    .line 9
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device;->totaldisk_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;
    .registers 1

    .line 5344
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Device;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 341
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Device_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 1

    .line 1988
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Device;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->toBuilder()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 1991
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Device;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->toBuilder()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Device;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1961
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1962
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Device;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Device;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1968
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1969
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Device;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Device;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1929
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Device;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Device;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1935
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Device;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/Device;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1974
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1975
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Device;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Device;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1981
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1982
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Device;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1949
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1950
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Device;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1956
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1957
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/Device;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1918
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Device;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1924
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Device;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/Device;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1939
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Device;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Device;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1945
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Device;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Device;",
            ">;"
        }
    .end annotation

    .line 5359
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1702
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/Device;

    if-nez v1, :cond_d

    .line 1703
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1705
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/Device;

    .line 1707
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getIfv()Ljava/lang/String;

    move-result-object v1

    .line 1708
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getIfv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 1709
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getBmIfv()Ljava/lang/String;

    move-result-object v1

    .line 1710
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getBmIfv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    .line 1711
    :cond_2e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getInputlanguageList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 1712
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getInputlanguageList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    return v2

    .line 1713
    :cond_3d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getDiskspace()J

    move-result-wide v3

    .line 1714
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getDiskspace()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4a

    return v2

    .line 1715
    :cond_4a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getTotaldisk()J

    move-result-wide v3

    .line 1716
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getTotaldisk()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_57

    return v2

    .line 1717
    :cond_57
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getRingmute()Z

    move-result v1

    .line 1718
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getRingmute()Z

    move-result v3

    if-eq v1, v3, :cond_62

    return v2

    .line 1719
    :cond_62
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getCharging()Z

    move-result v1

    .line 1720
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getCharging()Z

    move-result v3

    if-eq v1, v3, :cond_6d

    return v2

    .line 1721
    :cond_6d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getHeadset()Z

    move-result v1

    .line 1722
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getHeadset()Z

    move-result v3

    if-eq v1, v3, :cond_78

    return v2

    .line 1723
    :cond_78
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getBatterylevel()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1725
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getBatterylevel()F

    move-result v3

    .line 1724
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_8b

    return v2

    .line 1726
    :cond_8b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getBatterysaver()Z

    move-result v1

    .line 1727
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getBatterysaver()Z

    move-result v3

    if-eq v1, v3, :cond_96

    return v2

    .line 1728
    :cond_96
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getDarkmode()Z

    move-result v1

    .line 1729
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getDarkmode()Z

    move-result v3

    if-eq v1, v3, :cond_a1

    return v2

    .line 1730
    :cond_a1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAirplane()Z

    move-result v1

    .line 1731
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getAirplane()Z

    move-result v3

    if-eq v1, v3, :cond_ac

    return v2

    .line 1732
    :cond_ac
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getDnd()Z

    move-result v1

    .line 1733
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getDnd()Z

    move-result v3

    if-eq v1, v3, :cond_b7

    return v2

    .line 1734
    :cond_b7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getDevicename()Ljava/lang/String;

    move-result-object v1

    .line 1735
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getDevicename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c6

    return v2

    .line 1736
    :cond_c6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getTime()J

    move-result-wide v3

    .line 1737
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_d3

    return v2

    .line 1738
    :cond_d3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getScreenbright()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1740
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getScreenbright()F

    move-result v3

    .line 1739
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_e6

    return v2

    .line 1741
    :cond_e6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getJailbreak()Z

    move-result v1

    .line 1742
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getJailbreak()Z

    move-result v3

    if-eq v1, v3, :cond_f1

    return v2

    .line 1743
    :cond_f1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getLastbootup()J

    move-result-wide v3

    .line 1744
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getLastbootup()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_fe

    return v2

    .line 1745
    :cond_fe
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getLastbootupV2()J

    move-result-wide v3

    .line 1746
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getLastbootupV2()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_10b

    return v2

    .line 1747
    :cond_10b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getLastbootupHistoryList()Ljava/util/List;

    move-result-object v1

    .line 1748
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getLastbootupHistoryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a

    return v2

    .line 1749
    :cond_11a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAccess()Ljava/lang/String;

    move-result-object v1

    .line 1750
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getAccess()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_129

    return v2

    .line 1751
    :cond_129
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getHeadsetname()Ljava/lang/String;

    move-result-object v1

    .line 1752
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getHeadsetname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_138

    return v2

    .line 1753
    :cond_138
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getTotalmem()J

    move-result-wide v3

    .line 1754
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getTotalmem()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_145

    return v2

    .line 1755
    :cond_145
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAtts()I

    move-result v1

    .line 1756
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getAtts()I

    move-result v3

    if-eq v1, v3, :cond_150

    return v2

    .line 1757
    :cond_150
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getCpuname()Ljava/lang/String;

    move-result-object v1

    .line 1758
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getCpuname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15f

    return v2

    .line 1759
    :cond_15f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getCpuvendor()Ljava/lang/String;

    move-result-object v1

    .line 1760
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getCpuvendor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16e

    return v2

    .line 1761
    :cond_16e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getGpuname()Ljava/lang/String;

    move-result-object v1

    .line 1762
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getGpuname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17d

    return v2

    .line 1763
    :cond_17d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getGpuvendor()Ljava/lang/String;

    move-result-object v1

    .line 1764
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getGpuvendor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18c

    return v2

    .line 1765
    :cond_18c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getTimezone()Ljava/lang/String;

    move-result-object v1

    .line 1766
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19b

    return v2

    .line 1767
    :cond_19b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getFreemem()J

    move-result-wide v3

    .line 1768
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getFreemem()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1a8

    return v2

    .line 1769
    :cond_1a8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getApilevel()I

    move-result v1

    .line 1770
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getApilevel()I

    move-result v3

    if-eq v1, v3, :cond_1b3

    return v2

    .line 1771
    :cond_1b3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->hasSimCarrier()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->hasSimCarrier()Z

    move-result v3

    if-eq v1, v3, :cond_1be

    return v2

    .line 1772
    :cond_1be
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->hasSimCarrier()Z

    move-result v1

    if-eqz v1, :cond_1d3

    .line 1773
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getSimCarrier()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 1774
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getSimCarrier()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d3

    return v2

    .line 1776
    :cond_1d3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->hasSimCountry()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->hasSimCountry()Z

    move-result v3

    if-eq v1, v3, :cond_1de

    return v2

    .line 1777
    :cond_1de
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->hasSimCountry()Z

    move-result v1

    if-eqz v1, :cond_1f3

    .line 1778
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getSimCountry()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 1779
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getSimCountry()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f3

    return v2

    .line 1781
    :cond_1f3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->hasNetworkRoaming()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->hasNetworkRoaming()Z

    move-result v3

    if-eq v1, v3, :cond_1fe

    return v2

    .line 1782
    :cond_1fe
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->hasNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_213

    .line 1783
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getNetworkRoaming()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    .line 1784
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getNetworkRoaming()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_213

    return v2

    .line 1786
    :cond_213
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->hasConnection()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->hasConnection()Z

    move-result v3

    if-eq v1, v3, :cond_21e

    return v2

    .line 1787
    :cond_21e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->hasConnection()Z

    move-result v1

    if-eqz v1, :cond_233

    .line 1788
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getConnection()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    move-result-object v1

    .line 1789
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getConnection()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_233

    return v2

    .line 1791
    :cond_233
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->hasAudioContext()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->hasAudioContext()Z

    move-result v3

    if-eq v1, v3, :cond_23e

    return v2

    .line 1792
    :cond_23e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->hasAudioContext()Z

    move-result v1

    if-eqz v1, :cond_253

    .line 1793
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAudioContext()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    move-result-object v1

    .line 1794
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getAudioContext()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_253

    return v2

    .line 1796
    :cond_253
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25e

    return v2

    :cond_25e
    return v0
.end method

.method public getAccess()Ljava/lang/String;
    .registers 3

    .line 841
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->access_:Ljava/lang/Object;

    .line 842
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 843
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 845
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 847
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 848
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->access_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAccessBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 864
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->access_:Ljava/lang/Object;

    .line 865
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 866
    check-cast v0, Ljava/lang/String;

    .line 867
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 869
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->access_:Ljava/lang/Object;

    return-object v0

    .line 872
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getAirplane()Z
    .registers 2

    .line 642
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device;->airplane_:Z

    return v0
.end method

.method public getApilevel()I
    .registers 2

    .line 1215
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device;->apilevel_:I

    return v0
.end method

.method public getAtts()I
    .registers 2

    .line 955
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device;->atts_:I

    return v0
.end method

.method public getAudioContext()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;
    .registers 2

    .line 1394
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getAudioContextOrBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContextOrBuilder;
    .registers 2

    .line 1405
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAudioContext()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    move-result-object v0

    return-object v0
.end method

.method public getBatterylevel()F
    .registers 2

    .line 596
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device;->batterylevel_:F

    return v0
.end method

.method public getBatterysaver()Z
    .registers 2

    .line 611
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device;->batterysaver_:Z

    return v0
.end method

.method public getBmIfv()Ljava/lang/String;
    .registers 3

    .line 410
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->bmIfv_:Ljava/lang/Object;

    .line 411
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 412
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 414
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 416
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 417
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->bmIfv_:Ljava/lang/Object;

    return-object v0
.end method

.method public getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 432
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->bmIfv_:Ljava/lang/Object;

    .line 433
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 434
    check-cast v0, Ljava/lang/String;

    .line 435
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 437
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 440
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCharging()Z
    .registers 2

    .line 566
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device;->charging_:Z

    return v0
.end method

.method public getConnection()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;
    .registers 2

    .line 1356
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getConnectionOrBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$ConnectionOrBuilder;
    .registers 2

    .line 1367
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getConnection()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    move-result-object v0

    return-object v0
.end method

.method public getCpuname()Ljava/lang/String;
    .registers 3

    .line 970
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuname_:Ljava/lang/Object;

    .line 971
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 972
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 974
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 976
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 977
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuname_:Ljava/lang/Object;

    return-object v0
.end method

.method public getCpunameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 992
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuname_:Ljava/lang/Object;

    .line 993
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 994
    check-cast v0, Ljava/lang/String;

    .line 995
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 997
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuname_:Ljava/lang/Object;

    return-object v0

    .line 1000
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCpuvendor()Ljava/lang/String;
    .registers 3

    .line 1016
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuvendor_:Ljava/lang/Object;

    .line 1017
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1018
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1020
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1022
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1023
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuvendor_:Ljava/lang/Object;

    return-object v0
.end method

.method public getCpuvendorBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1038
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuvendor_:Ljava/lang/Object;

    .line 1039
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1040
    check-cast v0, Ljava/lang/String;

    .line 1041
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1043
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuvendor_:Ljava/lang/Object;

    return-object v0

    .line 1046
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDarkmode()Z
    .registers 2

    .line 626
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device;->darkmode_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Device;
    .registers 2

    .line 5369
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Device;

    return-object v0
.end method

.method public getDevicename()Ljava/lang/String;
    .registers 3

    .line 673
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->devicename_:Ljava/lang/Object;

    .line 674
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 675
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 677
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 679
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 680
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->devicename_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDevicenameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 695
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->devicename_:Ljava/lang/Object;

    .line 696
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 697
    check-cast v0, Ljava/lang/String;

    .line 698
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 700
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->devicename_:Ljava/lang/Object;

    return-object v0

    .line 703
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDiskspace()J
    .registers 3

    .line 517
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device;->diskspace_:J

    return-wide v0
.end method

.method public getDnd()Z
    .registers 2

    .line 658
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device;->dnd_:Z

    return v0
.end method

.method public getFreemem()J
    .registers 3

    .line 1200
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device;->freemem_:J

    return-wide v0
.end method

.method public getGpuname()Ljava/lang/String;
    .registers 3

    .line 1062
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuname_:Ljava/lang/Object;

    .line 1063
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1064
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1066
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1068
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1069
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuname_:Ljava/lang/Object;

    return-object v0
.end method

.method public getGpunameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1084
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuname_:Ljava/lang/Object;

    .line 1085
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1086
    check-cast v0, Ljava/lang/String;

    .line 1087
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1089
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuname_:Ljava/lang/Object;

    return-object v0

    .line 1092
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getGpuvendor()Ljava/lang/String;
    .registers 3

    .line 1108
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuvendor_:Ljava/lang/Object;

    .line 1109
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1110
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1112
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1114
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1115
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuvendor_:Ljava/lang/Object;

    return-object v0
.end method

.method public getGpuvendorBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1130
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuvendor_:Ljava/lang/Object;

    .line 1131
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1132
    check-cast v0, Ljava/lang/String;

    .line 1133
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1135
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuvendor_:Ljava/lang/Object;

    return-object v0

    .line 1138
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getHeadset()Z
    .registers 2

    .line 581
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device;->headset_:Z

    return v0
.end method

.method public getHeadsetname()Ljava/lang/String;
    .registers 3

    .line 888
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->headsetname_:Ljava/lang/Object;

    .line 889
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 890
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 892
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 894
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 895
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->headsetname_:Ljava/lang/Object;

    return-object v0
.end method

.method public getHeadsetnameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 910
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->headsetname_:Ljava/lang/Object;

    .line 911
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 912
    check-cast v0, Ljava/lang/String;

    .line 913
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 915
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->headsetname_:Ljava/lang/Object;

    return-object v0

    .line 918
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getIfv()Ljava/lang/String;
    .registers 3

    .line 364
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->ifv_:Ljava/lang/Object;

    .line 365
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 366
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 368
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 370
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 371
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->ifv_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 386
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->ifv_:Ljava/lang/Object;

    .line 387
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 388
    check-cast v0, Ljava/lang/String;

    .line 389
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 391
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 394
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getInputlanguage(I)Ljava/lang/String;
    .registers 3

    .line 485
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getInputlanguageBytes(I)Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 500
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getInputlanguageCount()I
    .registers 2

    .line 471
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInputlanguageList()Lcom/explorestack/protobuf/ProtocolStringList;
    .registers 2

    .line 458
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getInputlanguageList()Ljava/util/List;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getInputlanguageList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getJailbreak()Z
    .registers 2

    .line 750
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device;->jailbreak_:Z

    return v0
.end method

.method public getLastbootup()J
    .registers 3

    .line 766
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootup_:J

    return-wide v0
.end method

.method public getLastbootupHistory(I)J
    .registers 4

    .line 824
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$LongList;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastbootupHistoryCount()I
    .registers 2

    .line 811
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLastbootupHistoryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    return-object v0
.end method

.method public getLastbootupV2()J
    .registers 3

    .line 782
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupV2_:J

    return-wide v0
.end method

.method public getNetworkRoaming()Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 1318
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->networkRoaming_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getNetworkRoamingOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
    .registers 2

    .line 1329
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getNetworkRoaming()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Device;",
            ">;"
        }
    .end annotation

    .line 5364
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getRingmute()Z
    .registers 2

    .line 551
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device;->ringmute_:Z

    return v0
.end method

.method public getScreenbright()F
    .registers 2

    .line 735
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device;->screenbright_:F

    return v0
.end method

.method public getSerializedSize()I
    .registers 9

    .line 1540
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 1544
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 1545
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->ifv_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 1547
    :goto_1a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 1548
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Device;->bmIfv_:Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2c
    move v2, v1

    move v3, v2

    .line 1552
    :goto_2e
    iget-object v4, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_44

    .line 1553
    iget-object v4, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_44
    add-int/2addr v0, v3

    .line 1556
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getInputlanguageList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 1558
    iget-wide v2, p0, Lio/bidmachine/protobuf/sdk/Device;->diskspace_:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5c

    const/4 v6, 0x4

    .line 1560
    invoke-static {v6, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1562
    :cond_5c
    iget-wide v2, p0, Lio/bidmachine/protobuf/sdk/Device;->totaldisk_:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_68

    const/4 v6, 0x5

    .line 1564
    invoke-static {v6, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1566
    :cond_68
    iget-boolean v2, p0, Lio/bidmachine/protobuf/sdk/Device;->ringmute_:Z

    if-eqz v2, :cond_72

    const/4 v3, 0x6

    .line 1568
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1570
    :cond_72
    iget-boolean v2, p0, Lio/bidmachine/protobuf/sdk/Device;->charging_:Z

    if-eqz v2, :cond_7c

    const/4 v3, 0x7

    .line 1572
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1574
    :cond_7c
    iget-boolean v2, p0, Lio/bidmachine/protobuf/sdk/Device;->headset_:Z

    if-eqz v2, :cond_87

    const/16 v3, 0x8

    .line 1576
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1578
    :cond_87
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Device;->batterylevel_:F

    const/4 v3, 0x0

    cmpl-float v6, v2, v3

    if-eqz v6, :cond_95

    const/16 v6, 0x9

    .line 1580
    invoke-static {v6, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 1582
    :cond_95
    iget-boolean v2, p0, Lio/bidmachine/protobuf/sdk/Device;->batterysaver_:Z

    if-eqz v2, :cond_a0

    const/16 v6, 0xa

    .line 1584
    invoke-static {v6, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1586
    :cond_a0
    iget-boolean v2, p0, Lio/bidmachine/protobuf/sdk/Device;->darkmode_:Z

    if-eqz v2, :cond_ab

    const/16 v6, 0xb

    .line 1588
    invoke-static {v6, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1590
    :cond_ab
    iget-boolean v2, p0, Lio/bidmachine/protobuf/sdk/Device;->airplane_:Z

    if-eqz v2, :cond_b6

    const/16 v6, 0xc

    .line 1592
    invoke-static {v6, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1594
    :cond_b6
    iget-boolean v2, p0, Lio/bidmachine/protobuf/sdk/Device;->dnd_:Z

    if-eqz v2, :cond_c1

    const/16 v6, 0xd

    .line 1596
    invoke-static {v6, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1598
    :cond_c1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getDevicenameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d4

    const/16 v2, 0xe

    .line 1599
    iget-object v6, p0, Lio/bidmachine/protobuf/sdk/Device;->devicename_:Ljava/lang/Object;

    invoke-static {v2, v6}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1601
    :cond_d4
    iget-wide v6, p0, Lio/bidmachine/protobuf/sdk/Device;->time_:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_e1

    const/16 v2, 0xf

    .line 1603
    invoke-static {v2, v6, v7}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1605
    :cond_e1
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Device;->screenbright_:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_ee

    const/16 v3, 0x10

    .line 1607
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 1609
    :cond_ee
    iget-boolean v2, p0, Lio/bidmachine/protobuf/sdk/Device;->jailbreak_:Z

    if-eqz v2, :cond_f9

    const/16 v3, 0x11

    .line 1611
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1613
    :cond_f9
    iget-wide v2, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootup_:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_106

    const/16 v6, 0x12

    .line 1615
    invoke-static {v6, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1617
    :cond_106
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAccessBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_119

    const/16 v2, 0x13

    .line 1618
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->access_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1620
    :cond_119
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getHeadsetnameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12c

    const/16 v2, 0x14

    .line 1621
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->headsetname_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1623
    :cond_12c
    iget-wide v2, p0, Lio/bidmachine/protobuf/sdk/Device;->totalmem_:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_139

    const/16 v6, 0x15

    .line 1625
    invoke-static {v6, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1627
    :cond_139
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Device;->atts_:I

    if-eqz v2, :cond_144

    const/16 v3, 0x16

    .line 1629
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1631
    :cond_144
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Device;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    if-eqz v2, :cond_153

    const/16 v2, 0x17

    .line 1633
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getConnection()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1635
    :cond_153
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Device;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    if-eqz v2, :cond_162

    const/16 v2, 0x18

    .line 1637
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAudioContext()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1639
    :cond_162
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getCpunameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_175

    const/16 v2, 0x19

    .line 1640
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuname_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1642
    :cond_175
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getCpuvendorBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_188

    const/16 v2, 0x1a

    .line 1643
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuvendor_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1645
    :cond_188
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getGpunameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19b

    const/16 v2, 0x1b

    .line 1646
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuname_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1648
    :cond_19b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getGpuvendorBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1ae

    const/16 v2, 0x1c

    .line 1649
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuvendor_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1651
    :cond_1ae
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getTimezoneBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c1

    const/16 v2, 0x1d

    .line 1652
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->timezone_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1654
    :cond_1c1
    iget-wide v2, p0, Lio/bidmachine/protobuf/sdk/Device;->freemem_:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1ce

    const/16 v6, 0x1e

    .line 1656
    invoke-static {v6, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1658
    :cond_1ce
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Device;->apilevel_:I

    if-eqz v2, :cond_1d9

    const/16 v3, 0x1f

    .line 1660
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1662
    :cond_1d9
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Device;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_1e8

    const/16 v2, 0x20

    .line 1664
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getSimCarrier()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1666
    :cond_1e8
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Device;->simCountry_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_1f7

    const/16 v2, 0x21

    .line 1668
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getSimCountry()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1670
    :cond_1f7
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Device;->networkRoaming_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v2, :cond_206

    const/16 v2, 0x22

    .line 1672
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getNetworkRoaming()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1674
    :cond_206
    iget-wide v2, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupV2_:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_213

    const/16 v4, 0x23

    .line 1676
    invoke-static {v4, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_213
    move v2, v1

    .line 1680
    :goto_214
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_22a

    .line 1681
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    .line 1682
    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/Internal$LongList;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_214

    :cond_22a
    add-int/2addr v0, v2

    .line 1685
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getLastbootupHistoryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23c

    add-int/lit8 v0, v0, 0x2

    .line 1688
    invoke-static {v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1690
    :cond_23c
    iput v2, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupHistoryMemoizedSerializedSize:I

    .line 1692
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1693
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getSimCarrier()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1242
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getSimCarrierOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1253
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getSimCarrier()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountry()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1280
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->simCountry_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getSimCountryOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1291
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getSimCountry()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getTime()J
    .registers 3

    .line 719
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device;->time_:J

    return-wide v0
.end method

.method public getTimezone()Ljava/lang/String;
    .registers 3

    .line 1154
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->timezone_:Ljava/lang/Object;

    .line 1155
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1156
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1158
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1160
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1161
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->timezone_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTimezoneBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1176
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->timezone_:Ljava/lang/Object;

    .line 1177
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1178
    check-cast v0, Ljava/lang/String;

    .line 1179
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1181
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->timezone_:Ljava/lang/Object;

    return-object v0

    .line 1184
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getTotaldisk()J
    .registers 3

    .line 534
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device;->totaldisk_:J

    return-wide v0
.end method

.method public getTotalmem()J
    .registers 3

    .line 934
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device;->totalmem_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAudioContext()Z
    .registers 2

    .line 1382
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasConnection()Z
    .registers 2

    .line 1344
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasNetworkRoaming()Z
    .registers 2

    .line 1306
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->networkRoaming_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasSimCarrier()Z
    .registers 2

    .line 1230
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasSimCountry()Z
    .registers 2

    .line 1268
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->simCountry_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 1802
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 1806
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 1808
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 1810
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1811
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getInputlanguageCount()I

    move-result v0

    if-lez v0, :cond_43

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 1813
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getInputlanguageList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_43
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 1817
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getDiskspace()J

    move-result-wide v2

    .line 1816
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 1820
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getTotaldisk()J

    move-result-wide v2

    .line 1819
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 1823
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getRingmute()Z

    move-result v0

    .line 1822
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 1826
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getCharging()Z

    move-result v0

    .line 1825
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 1829
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getHeadset()Z

    move-result v0

    .line 1828
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 1832
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getBatterylevel()F

    move-result v0

    .line 1831
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 1835
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getBatterysaver()Z

    move-result v0

    .line 1834
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    .line 1838
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getDarkmode()Z

    move-result v0

    .line 1837
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    .line 1841
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAirplane()Z

    move-result v0

    .line 1840
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    .line 1844
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getDnd()Z

    move-result v0

    .line 1843
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xe

    mul-int/lit8 v1, v1, 0x35

    .line 1846
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getDevicename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x35

    .line 1849
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getTime()J

    move-result-wide v2

    .line 1848
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x35

    .line 1852
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getScreenbright()F

    move-result v0

    .line 1851
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x11

    mul-int/lit8 v1, v1, 0x35

    .line 1855
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getJailbreak()Z

    move-result v0

    .line 1854
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x12

    mul-int/lit8 v1, v1, 0x35

    .line 1858
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getLastbootup()J

    move-result-wide v2

    .line 1857
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x23

    mul-int/lit8 v1, v1, 0x35

    .line 1861
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getLastbootupV2()J

    move-result-wide v2

    .line 1860
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    .line 1862
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getLastbootupHistoryCount()I

    move-result v0

    if-lez v0, :cond_148

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x24

    mul-int/lit8 v1, v1, 0x35

    .line 1864
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getLastbootupHistoryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_148
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x13

    mul-int/lit8 v1, v1, 0x35

    .line 1867
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAccess()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x14

    mul-int/lit8 v1, v1, 0x35

    .line 1869
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getHeadsetname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x15

    mul-int/lit8 v1, v1, 0x35

    .line 1872
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getTotalmem()J

    move-result-wide v2

    .line 1871
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x16

    mul-int/lit8 v1, v1, 0x35

    .line 1874
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAtts()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x19

    mul-int/lit8 v1, v1, 0x35

    .line 1876
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getCpuname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1a

    mul-int/lit8 v1, v1, 0x35

    .line 1878
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getCpuvendor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1b

    mul-int/lit8 v1, v1, 0x35

    .line 1880
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getGpuname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1c

    mul-int/lit8 v1, v1, 0x35

    .line 1882
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getGpuvendor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1d

    mul-int/lit8 v1, v1, 0x35

    .line 1884
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getTimezone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1e

    mul-int/lit8 v1, v1, 0x35

    .line 1887
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getFreemem()J

    move-result-wide v2

    .line 1886
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1f

    mul-int/lit8 v1, v1, 0x35

    .line 1889
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getApilevel()I

    move-result v0

    add-int/2addr v1, v0

    .line 1890
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->hasSimCarrier()Z

    move-result v0

    if-eqz v0, :cond_1fa

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x20

    mul-int/lit8 v1, v1, 0x35

    .line 1892
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getSimCarrier()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1894
    :cond_1fa
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->hasSimCountry()Z

    move-result v0

    if-eqz v0, :cond_20f

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x21

    mul-int/lit8 v1, v1, 0x35

    .line 1896
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getSimCountry()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1898
    :cond_20f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->hasNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_224

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x22

    mul-int/lit8 v1, v1, 0x35

    .line 1900
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getNetworkRoaming()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/BoolValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1902
    :cond_224
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_239

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x17

    mul-int/lit8 v1, v1, 0x35

    .line 1904
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getConnection()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1906
    :cond_239
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->hasAudioContext()Z

    move-result v0

    if-eqz v0, :cond_24e

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x35

    .line 1908
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAudioContext()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_24e
    mul-int/lit8 v1, v1, 0x1d

    .line 1910
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1911
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 347
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Device_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Device;

    const-class v2, Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 348
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 1411
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/Device;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 1415
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/Device;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 1986
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->newBuilder()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 4

    .line 2002
    new-instance v0, Lio/bidmachine/protobuf/sdk/Device$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/Device$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Device$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 37
    new-instance p1, Lio/bidmachine/protobuf/sdk/Device;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/Device;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->toBuilder()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->toBuilder()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 1995
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Device;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 1996
    new-instance v0, Lio/bidmachine/protobuf/sdk/Device$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Device$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Device$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/Device$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Device$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Device$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1422
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getSerializedSize()I

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1424
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->ifv_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1426
    :cond_13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x2

    .line 1427
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device;->bmIfv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_23
    const/4 v0, 0x0

    move v1, v0

    .line 1429
    :goto_25
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 1430
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p1, v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 1432
    :cond_3a
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device;->diskspace_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_46

    const/4 v5, 0x4

    .line 1433
    invoke-virtual {p1, v5, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1435
    :cond_46
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device;->totaldisk_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_50

    const/4 v5, 0x5

    .line 1436
    invoke-virtual {p1, v5, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1438
    :cond_50
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device;->ringmute_:Z

    if-eqz v1, :cond_58

    const/4 v2, 0x6

    .line 1439
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1441
    :cond_58
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device;->charging_:Z

    if-eqz v1, :cond_60

    const/4 v2, 0x7

    .line 1442
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1444
    :cond_60
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device;->headset_:Z

    if-eqz v1, :cond_69

    const/16 v2, 0x8

    .line 1445
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1447
    :cond_69
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device;->batterylevel_:F

    const/4 v2, 0x0

    cmpl-float v5, v1, v2

    if-eqz v5, :cond_75

    const/16 v5, 0x9

    .line 1448
    invoke-virtual {p1, v5, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1450
    :cond_75
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device;->batterysaver_:Z

    if-eqz v1, :cond_7e

    const/16 v5, 0xa

    .line 1451
    invoke-virtual {p1, v5, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1453
    :cond_7e
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device;->darkmode_:Z

    if-eqz v1, :cond_87

    const/16 v5, 0xb

    .line 1454
    invoke-virtual {p1, v5, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1456
    :cond_87
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device;->airplane_:Z

    if-eqz v1, :cond_90

    const/16 v5, 0xc

    .line 1457
    invoke-virtual {p1, v5, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1459
    :cond_90
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device;->dnd_:Z

    if-eqz v1, :cond_99

    const/16 v5, 0xd

    .line 1460
    invoke-virtual {p1, v5, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1462
    :cond_99
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getDevicenameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_aa

    const/16 v1, 0xe

    .line 1463
    iget-object v5, p0, Lio/bidmachine/protobuf/sdk/Device;->devicename_:Ljava/lang/Object;

    invoke-static {p1, v1, v5}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1465
    :cond_aa
    iget-wide v5, p0, Lio/bidmachine/protobuf/sdk/Device;->time_:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_b5

    const/16 v1, 0xf

    .line 1466
    invoke-virtual {p1, v1, v5, v6}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1468
    :cond_b5
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device;->screenbright_:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_c0

    const/16 v2, 0x10

    .line 1469
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1471
    :cond_c0
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device;->jailbreak_:Z

    if-eqz v1, :cond_c9

    const/16 v2, 0x11

    .line 1472
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1474
    :cond_c9
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootup_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_d4

    const/16 v5, 0x12

    .line 1475
    invoke-virtual {p1, v5, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1477
    :cond_d4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAccessBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e5

    const/16 v1, 0x13

    .line 1478
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Device;->access_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1480
    :cond_e5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getHeadsetnameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f6

    const/16 v1, 0x14

    .line 1481
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Device;->headsetname_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1483
    :cond_f6
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device;->totalmem_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_101

    const/16 v5, 0x15

    .line 1484
    invoke-virtual {p1, v5, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1486
    :cond_101
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device;->atts_:I

    if-eqz v1, :cond_10a

    const/16 v2, 0x16

    .line 1487
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1489
    :cond_10a
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    if-eqz v1, :cond_117

    const/16 v1, 0x17

    .line 1490
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getConnection()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 1492
    :cond_117
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    if-eqz v1, :cond_124

    const/16 v1, 0x18

    .line 1493
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAudioContext()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 1495
    :cond_124
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getCpunameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_135

    const/16 v1, 0x19

    .line 1496
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuname_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1498
    :cond_135
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getCpuvendorBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_146

    const/16 v1, 0x1a

    .line 1499
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuvendor_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1501
    :cond_146
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getGpunameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_157

    const/16 v1, 0x1b

    .line 1502
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuname_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1504
    :cond_157
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getGpuvendorBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_168

    const/16 v1, 0x1c

    .line 1505
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuvendor_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1507
    :cond_168
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getTimezoneBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_179

    const/16 v1, 0x1d

    .line 1508
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Device;->timezone_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1510
    :cond_179
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device;->freemem_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_184

    const/16 v5, 0x1e

    .line 1511
    invoke-virtual {p1, v5, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1513
    :cond_184
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device;->apilevel_:I

    if-eqz v1, :cond_18d

    const/16 v2, 0x1f

    .line 1514
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1516
    :cond_18d
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_19a

    const/16 v1, 0x20

    .line 1517
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getSimCarrier()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 1519
    :cond_19a
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device;->simCountry_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v1, :cond_1a7

    const/16 v1, 0x21

    .line 1520
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getSimCountry()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 1522
    :cond_1a7
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device;->networkRoaming_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v1, :cond_1b4

    const/16 v1, 0x22

    .line 1523
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getNetworkRoaming()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 1525
    :cond_1b4
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupV2_:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1bf

    const/16 v3, 0x23

    .line 1526
    invoke-virtual {p1, v3, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1528
    :cond_1bf
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getLastbootupHistoryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1d3

    const/16 v1, 0x122

    .line 1529
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 1530
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupHistoryMemoizedSerializedSize:I

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 1532
    :cond_1d3
    :goto_1d3
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e7

    .line 1533
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    invoke-interface {v1, v0}, Lcom/explorestack/protobuf/Internal$LongList;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d3

    .line 1535
    :cond_1e7
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.Device.AnonymousClass1 (io.bidmachine.protobuf.sdk.Device$1)
.class Lio/bidmachine/protobuf/sdk/Device$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/Device;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5348
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Device;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5354
    new-instance v0, Lio/bidmachine/protobuf/sdk/Device;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/Device;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Device$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5348
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Device$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Device;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Device.Builder (io.bidmachine.protobuf.sdk.Device$Builder)
.class public final Lio/bidmachine/protobuf/sdk/Device$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Device.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/DeviceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/Device$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/DeviceOrBuilder;"
    }
.end annotation


# instance fields
.field private access_:Ljava/lang/Object;

.field private airplane_:Z

.field private apilevel_:I

.field private atts_:I

.field private audioContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;",
            "Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$Device$AudioContextOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

.field private batterylevel_:F

.field private batterysaver_:Z

.field private bitField0_:I

.field private bmIfv_:Ljava/lang/Object;

.field private charging_:Z

.field private connectionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$Device$Connection;",
            "Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$Device$ConnectionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

.field private cpuname_:Ljava/lang/Object;

.field private cpuvendor_:Ljava/lang/Object;

.field private darkmode_:Z

.field private devicename_:Ljava/lang/Object;

.field private diskspace_:J

.field private dnd_:Z

.field private freemem_:J

.field private gpuname_:Ljava/lang/Object;

.field private gpuvendor_:Ljava/lang/Object;

.field private headset_:Z

.field private headsetname_:Ljava/lang/Object;

.field private ifv_:Ljava/lang/Object;

.field private inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

.field private jailbreak_:Z

.field private lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

.field private lastbootupV2_:J

.field private lastbootup_:J

.field private networkRoamingBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/BoolValue;",
            "Lcom/explorestack/protobuf/BoolValue$Builder;",
            "Lcom/explorestack/protobuf/BoolValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private networkRoaming_:Lcom/explorestack/protobuf/BoolValue;

.field private ringmute_:Z

.field private screenbright_:F

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

.field private simCountryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private simCountry_:Lcom/explorestack/protobuf/StringValue;

.field private time_:J

.field private timezone_:Ljava/lang/Object;

.field private totaldisk_:J

.field private totalmem_:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 2026
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 2436
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ifv_:Ljava/lang/Object;

    .line 2532
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2628
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    .line 3246
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->devicename_:Ljava/lang/Object;

    .line 3566
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->access$4700()Lcom/explorestack/protobuf/Internal$LongList;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    .line 3680
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->access_:Ljava/lang/Object;

    .line 3781
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headsetname_:Ljava/lang/Object;

    .line 3981
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuname_:Ljava/lang/Object;

    .line 4077
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuvendor_:Ljava/lang/Object;

    .line 4173
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuname_:Ljava/lang/Object;

    .line 4269
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuvendor_:Ljava/lang/Object;

    .line 4365
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->timezone_:Ljava/lang/Object;

    .line 2027
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 3

    .line 2032
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 2436
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ifv_:Ljava/lang/Object;

    .line 2532
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2628
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    .line 3246
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->devicename_:Ljava/lang/Object;

    .line 3566
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->access$4700()Lcom/explorestack/protobuf/Internal$LongList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    .line 3680
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->access_:Ljava/lang/Object;

    .line 3781
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headsetname_:Ljava/lang/Object;

    .line 3981
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuname_:Ljava/lang/Object;

    .line 4077
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuvendor_:Ljava/lang/Object;

    .line 4173
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuname_:Ljava/lang/Object;

    .line 4269
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuvendor_:Ljava/lang/Object;

    .line 4365
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->timezone_:Ljava/lang/Object;

    .line 2033
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Device$1;)V
    .registers 3

    .line 2008
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Device$1;)V
    .registers 2

    .line 2008
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;-><init>()V

    return-void
.end method

.method private ensureInputlanguageIsMutable()V
    .registers 3

    .line 2630
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 2631
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    .line 2632
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method private ensureLastbootupHistoryIsMutable()V
    .registers 2

    .line 3568
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_14

    .line 3569
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Device;->access$4800(Lcom/explorestack/protobuf/Internal$LongList;)Lcom/explorestack/protobuf/Internal$LongList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    .line 3570
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    :cond_14
    return-void
.end method

.method private getAudioContextFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;",
            "Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$Device$AudioContextOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5311
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 5312
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5314
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->getAudioContext()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    move-result-object v1

    .line 5315
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5316
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 5317
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 5319
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getConnectionFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$Device$Connection;",
            "Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$Device$ConnectionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5156
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 5157
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5159
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->getConnection()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    move-result-object v1

    .line 5160
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5161
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 5162
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 5164
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 2014
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Device_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getNetworkRoamingFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/BoolValue;",
            "Lcom/explorestack/protobuf/BoolValue$Builder;",
            "Lcom/explorestack/protobuf/BoolValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5001
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoamingBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 5002
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5004
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->getNetworkRoaming()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    .line 5005
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5006
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoamingBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 5007
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoaming_:Lcom/explorestack/protobuf/BoolValue;

    .line 5009
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoamingBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 4691
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 4692
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4694
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->getSimCarrier()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 4695
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4696
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4697
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    .line 4699
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getSimCountryFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 4846
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 4847
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4849
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->getSimCountry()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 4850
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4851
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4852
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountry_:Lcom/explorestack/protobuf/StringValue;

    .line 4854
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 2037
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->access$200()Z

    return-void
.end method


# virtual methods
.method public addAllInputlanguage(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/Device$Builder;"
        }
    .end annotation

    .line 2747
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->ensureInputlanguageIsMutable()V

    .line 2748
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2750
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllLastbootupHistory(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/Device$Builder;"
        }
    .end annotation

    .line 3658
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->ensureLastbootupHistoryIsMutable()V

    .line 3659
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 3661
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addInputlanguage(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 2727
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2729
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->ensureInputlanguageIsMutable()V

    .line 2730
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2731
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addInputlanguageBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 2783
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2785
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$4500(Lcom/explorestack/protobuf/ByteString;)V

    .line 2786
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->ensureInputlanguageIsMutable()V

    .line 2787
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 2788
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addLastbootupHistory(J)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 4

    .line 3641
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->ensureLastbootupHistoryIsMutable()V

    .line 3642
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/Internal$LongList;->addLong(J)V

    .line 3643
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 2008
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Device$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 2008
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Device$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 2260
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Device$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->build()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->build()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/Device;
    .registers 3

    .line 2151
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    .line 2152
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 2153
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/Device;
    .registers 4

    .line 2160
    new-instance v0, Lio/bidmachine/protobuf/sdk/Device;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/Device;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Device$1;)V

    .line 2162
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ifv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$502(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2163
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bmIfv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$602(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2164
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_24

    .line 2165
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    .line 2166
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    .line 2168
    :cond_24
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$702(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 2169
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->diskspace_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/Device;->access$802(Lio/bidmachine/protobuf/sdk/Device;J)J

    .line 2170
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->totaldisk_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/Device;->access$902(Lio/bidmachine/protobuf/sdk/Device;J)J

    .line 2171
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ringmute_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$1002(Lio/bidmachine/protobuf/sdk/Device;Z)Z

    .line 2172
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->charging_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$1102(Lio/bidmachine/protobuf/sdk/Device;Z)Z

    .line 2173
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headset_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$1202(Lio/bidmachine/protobuf/sdk/Device;Z)Z

    .line 2174
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->batterylevel_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$1302(Lio/bidmachine/protobuf/sdk/Device;F)F

    .line 2175
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->batterysaver_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$1402(Lio/bidmachine/protobuf/sdk/Device;Z)Z

    .line 2176
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->darkmode_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$1502(Lio/bidmachine/protobuf/sdk/Device;Z)Z

    .line 2177
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->airplane_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$1602(Lio/bidmachine/protobuf/sdk/Device;Z)Z

    .line 2178
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->dnd_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$1702(Lio/bidmachine/protobuf/sdk/Device;Z)Z

    .line 2179
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->devicename_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$1802(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2180
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->time_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/Device;->access$1902(Lio/bidmachine/protobuf/sdk/Device;J)J

    .line 2181
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->screenbright_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$2002(Lio/bidmachine/protobuf/sdk/Device;F)F

    .line 2182
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->jailbreak_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$2102(Lio/bidmachine/protobuf/sdk/Device;Z)Z

    .line 2183
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootup_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/Device;->access$2202(Lio/bidmachine/protobuf/sdk/Device;J)J

    .line 2184
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootupV2_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/Device;->access$2302(Lio/bidmachine/protobuf/sdk/Device;J)J

    .line 2185
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8a

    .line 2186
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 2187
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    .line 2189
    :cond_8a
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$2402(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/Internal$LongList;)Lcom/explorestack/protobuf/Internal$LongList;

    .line 2190
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->access_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$2502(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2191
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headsetname_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$2602(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2192
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->totalmem_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/Device;->access$2702(Lio/bidmachine/protobuf/sdk/Device;J)J

    .line 2193
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->atts_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$2802(Lio/bidmachine/protobuf/sdk/Device;I)I

    .line 2194
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuname_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$2902(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2195
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuvendor_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$3002(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2196
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuname_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$3102(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2197
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuvendor_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$3202(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2198
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->timezone_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$3302(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2199
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->freemem_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/Device;->access$3402(Lio/bidmachine/protobuf/sdk/Device;J)J

    .line 2200
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->apilevel_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$3502(Lio/bidmachine/protobuf/sdk/Device;I)I

    .line 2201
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_d0

    .line 2202
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$3602(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_d9

    .line 2204
    :cond_d0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$3602(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 2206
    :goto_d9
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_e3

    .line 2207
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountry_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$3702(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_ec

    .line 2209
    :cond_e3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$3702(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 2211
    :goto_ec
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoamingBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_f6

    .line 2212
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoaming_:Lcom/explorestack/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$3802(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;

    goto :goto_ff

    .line 2214
    :cond_f6
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/BoolValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$3802(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue;

    .line 2216
    :goto_ff
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_109

    .line 2217
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$3902(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/adcom/Context$Device$Connection;)Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    goto :goto_112

    .line 2219
    :cond_109
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$3902(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/adcom/Context$Device$Connection;)Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 2221
    :goto_112
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_11c

    .line 2222
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$4002(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;)Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    goto :goto_125

    .line 2224
    :cond_11c
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$4002(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;)Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 2226
    :goto_125
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clear()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clear()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clear()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clear()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 6

    .line 2042
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 2043
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ifv_:Ljava/lang/Object;

    .line 2045
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2047
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    .line 2048
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 2049
    iput-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->diskspace_:J

    .line 2051
    iput-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->totaldisk_:J

    const/4 v3, 0x0

    .line 2053
    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ringmute_:Z

    .line 2055
    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->charging_:Z

    .line 2057
    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headset_:Z

    const/4 v4, 0x0

    .line 2059
    iput v4, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->batterylevel_:F

    .line 2061
    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->batterysaver_:Z

    .line 2063
    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->darkmode_:Z

    .line 2065
    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->airplane_:Z

    .line 2067
    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->dnd_:Z

    .line 2069
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->devicename_:Ljava/lang/Object;

    .line 2071
    iput-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->time_:J

    .line 2073
    iput v4, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->screenbright_:F

    .line 2075
    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->jailbreak_:Z

    .line 2077
    iput-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootup_:J

    .line 2079
    iput-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootupV2_:J

    .line 2081
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->access$300()Lcom/explorestack/protobuf/Internal$LongList;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    .line 2082
    iget v4, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    and-int/lit8 v4, v4, -0x3

    iput v4, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    .line 2083
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->access_:Ljava/lang/Object;

    .line 2085
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headsetname_:Ljava/lang/Object;

    .line 2087
    iput-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->totalmem_:J

    .line 2089
    iput v3, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->atts_:I

    .line 2091
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuname_:Ljava/lang/Object;

    .line 2093
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuvendor_:Ljava/lang/Object;

    .line 2095
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuname_:Ljava/lang/Object;

    .line 2097
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuvendor_:Ljava/lang/Object;

    .line 2099
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->timezone_:Ljava/lang/Object;

    .line 2101
    iput-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->freemem_:J

    .line 2103
    iput v3, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->apilevel_:I

    .line 2105
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_61

    .line 2106
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_65

    .line 2108
    :cond_61
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    .line 2109
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2111
    :goto_65
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_6c

    .line 2112
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountry_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_70

    .line 2114
    :cond_6c
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountry_:Lcom/explorestack/protobuf/StringValue;

    .line 2115
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2117
    :goto_70
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoamingBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_77

    .line 2118
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoaming_:Lcom/explorestack/protobuf/BoolValue;

    goto :goto_7b

    .line 2120
    :cond_77
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoaming_:Lcom/explorestack/protobuf/BoolValue;

    .line 2121
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoamingBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2123
    :goto_7b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_82

    .line 2124
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    goto :goto_86

    .line 2126
    :cond_82
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 2127
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2129
    :goto_86
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_8d

    .line 2130
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    return-object p0

    .line 2132
    :cond_8d
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 2133
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearAccess()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 3755
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->getAccess()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->access_:Ljava/lang/Object;

    .line 3756
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAirplane()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 3195
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->airplane_:Z

    .line 3196
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearApilevel()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 4542
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->apilevel_:I

    .line 4543
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAtts()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 3976
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->atts_:I

    .line 3977
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAudioContext()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 5264
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 5265
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 5266
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5268
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 5269
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearBatterylevel()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 3063
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->batterylevel_:F

    .line 3064
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBatterysaver()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 3106
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->batterysaver_:Z

    .line 3107
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBmIfv()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 2603
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2604
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCharging()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2977
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->charging_:Z

    .line 2978
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearConnection()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 5109
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 5110
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 5111
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5113
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 5114
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearCpuname()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 4052
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->getCpuname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuname_:Ljava/lang/Object;

    .line 4053
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCpuvendor()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 4148
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->getCpuvendor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuvendor_:Ljava/lang/Object;

    .line 4149
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDarkmode()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 3149
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->darkmode_:Z

    .line 3150
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDevicename()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 3317
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->getDevicename()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->devicename_:Ljava/lang/Object;

    .line 3318
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDiskspace()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    const-wide/16 v0, 0x0

    .line 2836
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->diskspace_:J

    .line 2837
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDnd()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 3241
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->dnd_:Z

    .line 3242
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2008
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2008
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 2243
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Device$Builder;

    return-object p1
.end method

.method public clearFreemem()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    const-wide/16 v0, 0x0

    .line 4499
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->freemem_:J

    .line 4500
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearGpuname()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 4244
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->getGpuname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuname_:Ljava/lang/Object;

    .line 4245
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearGpuvendor()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 4340
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->getGpuvendor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuvendor_:Ljava/lang/Object;

    .line 4341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearHeadset()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 3020
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headset_:Z

    .line 3021
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearHeadsetname()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 3852
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->getHeadsetname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headsetname_:Ljava/lang/Object;

    .line 3853
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIfv()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 2507
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->getIfv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ifv_:Ljava/lang/Object;

    .line 2508
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearInputlanguage()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 2764
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    .line 2765
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    .line 2766
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearJailbreak()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 3469
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->jailbreak_:Z

    .line 3470
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLastbootup()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    const-wide/16 v0, 0x0

    .line 3515
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootup_:J

    .line 3516
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLastbootupHistory()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 3674
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->access$4900()Lcom/explorestack/protobuf/Internal$LongList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    .line 3675
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    .line 3676
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLastbootupV2()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    const-wide/16 v0, 0x0

    .line 3561
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootupV2_:J

    .line 3562
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearNetworkRoaming()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 4954
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoamingBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 4955
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoaming_:Lcom/explorestack/protobuf/BoolValue;

    .line 4956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4958
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoaming_:Lcom/explorestack/protobuf/BoolValue;

    .line 4959
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoamingBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2008
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2008
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2008
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 2248
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Device$Builder;

    return-object p1
.end method

.method public clearRingmute()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2934
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ringmute_:Z

    .line 2935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearScreenbright()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 3426
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->screenbright_:F

    .line 3427
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSimCarrier()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 4644
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 4645
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    .line 4646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4648
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    .line 4649
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearSimCountry()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 4799
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 4800
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountry_:Lcom/explorestack/protobuf/StringValue;

    .line 4801
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4803
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountry_:Lcom/explorestack/protobuf/StringValue;

    .line 4804
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearTime()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    const-wide/16 v0, 0x0

    .line 3380
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->time_:J

    .line 3381
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTimezone()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 4436
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->getTimezone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->timezone_:Ljava/lang/Object;

    .line 4437
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTotaldisk()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    const-wide/16 v0, 0x0

    .line 2885
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->totaldisk_:J

    .line 2886
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTotalmem()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    const-wide/16 v0, 0x0

    .line 3915
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->totalmem_:J

    .line 3916
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clone()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 2008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clone()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clone()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clone()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clone()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 2232
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Device$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clone()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccess()Ljava/lang/String;
    .registers 3

    .line 3691
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->access_:Ljava/lang/Object;

    .line 3692
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 3693
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3695
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3696
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->access_:Ljava/lang/Object;

    return-object v0

    .line 3699
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAccessBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3713
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->access_:Ljava/lang/Object;

    .line 3714
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3715
    check-cast v0, Ljava/lang/String;

    .line 3716
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3718
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->access_:Ljava/lang/Object;

    return-object v0

    .line 3721
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getAirplane()Z
    .registers 2

    .line 3166
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->airplane_:Z

    return v0
.end method

.method public getApilevel()I
    .registers 2

    .line 4515
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->apilevel_:I

    return v0
.end method

.method public getAtts()I
    .registers 2

    .line 3937
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->atts_:I

    return v0
.end method

.method public getAudioContext()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;
    .registers 2

    .line 5190
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5191
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    move-result-object v0

    :cond_c
    return-object v0

    .line 5193
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    return-object v0
.end method

.method public getAudioContextBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;
    .registers 2

    .line 5283
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5284
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->getAudioContextFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;

    return-object v0
.end method

.method public getAudioContextOrBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContextOrBuilder;
    .registers 2

    .line 5294
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 5295
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContextOrBuilder;

    return-object v0

    .line 5297
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    if-nez v0, :cond_13

    .line 5298
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getBatterylevel()F
    .registers 2

    .line 3036
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->batterylevel_:F

    return v0
.end method

.method public getBatterysaver()Z
    .registers 2

    .line 3079
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->batterysaver_:Z

    return v0
.end method

.method public getBmIfv()Ljava/lang/String;
    .registers 3

    .line 2542
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2543
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2544
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2546
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2547
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 2550
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2563
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2564
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2565
    check-cast v0, Ljava/lang/String;

    .line 2566
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2568
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 2571
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCharging()Z
    .registers 2

    .line 2950
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->charging_:Z

    return v0
.end method

.method public getConnection()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;
    .registers 2

    .line 5035
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5036
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    move-result-object v0

    :cond_c
    return-object v0

    .line 5038
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    return-object v0
.end method

.method public getConnectionBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;
    .registers 2

    .line 5128
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5129
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->getConnectionFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;

    return-object v0
.end method

.method public getConnectionOrBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$ConnectionOrBuilder;
    .registers 2

    .line 5139
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 5140
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Device$ConnectionOrBuilder;

    return-object v0

    .line 5142
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    if-nez v0, :cond_13

    .line 5143
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getCpuname()Ljava/lang/String;
    .registers 3

    .line 3991
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuname_:Ljava/lang/Object;

    .line 3992
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 3993
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3995
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3996
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuname_:Ljava/lang/Object;

    return-object v0

    .line 3999
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCpunameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 4012
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuname_:Ljava/lang/Object;

    .line 4013
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 4014
    check-cast v0, Ljava/lang/String;

    .line 4015
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4017
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuname_:Ljava/lang/Object;

    return-object v0

    .line 4020
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCpuvendor()Ljava/lang/String;
    .registers 3

    .line 4087
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuvendor_:Ljava/lang/Object;

    .line 4088
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 4089
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4091
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4092
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuvendor_:Ljava/lang/Object;

    return-object v0

    .line 4095
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCpuvendorBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 4108
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuvendor_:Ljava/lang/Object;

    .line 4109
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 4110
    check-cast v0, Ljava/lang/String;

    .line 4111
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4113
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuvendor_:Ljava/lang/Object;

    return-object v0

    .line 4116
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDarkmode()Z
    .registers 2

    .line 3122
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->darkmode_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Device;
    .registers 2

    .line 2146
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 2141
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Device_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDevicename()Ljava/lang/String;
    .registers 3

    .line 3256
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->devicename_:Ljava/lang/Object;

    .line 3257
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 3258
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3260
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3261
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->devicename_:Ljava/lang/Object;

    return-object v0

    .line 3264
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDevicenameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3277
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->devicename_:Ljava/lang/Object;

    .line 3278
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3279
    check-cast v0, Ljava/lang/String;

    .line 3280
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3282
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->devicename_:Ljava/lang/Object;

    return-object v0

    .line 3285
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDiskspace()J
    .registers 3

    .line 2805
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->diskspace_:J

    return-wide v0
.end method

.method public getDnd()Z
    .registers 2

    .line 3212
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->dnd_:Z

    return v0
.end method

.method public getFreemem()J
    .registers 3

    .line 4472
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->freemem_:J

    return-wide v0
.end method

.method public getGpuname()Ljava/lang/String;
    .registers 3

    .line 4183
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuname_:Ljava/lang/Object;

    .line 4184
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 4185
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4187
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4188
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuname_:Ljava/lang/Object;

    return-object v0

    .line 4191
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGpunameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 4204
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuname_:Ljava/lang/Object;

    .line 4205
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 4206
    check-cast v0, Ljava/lang/String;

    .line 4207
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4209
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuname_:Ljava/lang/Object;

    return-object v0

    .line 4212
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getGpuvendor()Ljava/lang/String;
    .registers 3

    .line 4279
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuvendor_:Ljava/lang/Object;

    .line 4280
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 4281
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4283
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4284
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuvendor_:Ljava/lang/Object;

    return-object v0

    .line 4287
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGpuvendorBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 4300
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuvendor_:Ljava/lang/Object;

    .line 4301
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 4302
    check-cast v0, Ljava/lang/String;

    .line 4303
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4305
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuvendor_:Ljava/lang/Object;

    return-object v0

    .line 4308
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getHeadset()Z
    .registers 2

    .line 2993
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headset_:Z

    return v0
.end method

.method public getHeadsetname()Ljava/lang/String;
    .registers 3

    .line 3791
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headsetname_:Ljava/lang/Object;

    .line 3792
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 3793
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3795
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3796
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headsetname_:Ljava/lang/Object;

    return-object v0

    .line 3799
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHeadsetnameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3812
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headsetname_:Ljava/lang/Object;

    .line 3813
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3814
    check-cast v0, Ljava/lang/String;

    .line 3815
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3817
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headsetname_:Ljava/lang/Object;

    return-object v0

    .line 3820
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getIfv()Ljava/lang/String;
    .registers 3

    .line 2446
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ifv_:Ljava/lang/Object;

    .line 2447
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2448
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2450
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2451
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 2454
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2467
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ifv_:Ljava/lang/Object;

    .line 2468
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2469
    check-cast v0, Ljava/lang/String;

    .line 2470
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2472
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 2475
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getInputlanguage(I)Ljava/lang/String;
    .registers 3

    .line 2674
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getInputlanguageBytes(I)Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2689
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getInputlanguageCount()I
    .registers 2

    .line 2660
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInputlanguageList()Lcom/explorestack/protobuf/ProtocolStringList;
    .registers 2

    .line 2647
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInputlanguageList()Ljava/util/List;
    .registers 2

    .line 2008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->getInputlanguageList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getJailbreak()Z
    .registers 2

    .line 3442
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->jailbreak_:Z

    return v0
.end method

.method public getLastbootup()J
    .registers 3

    .line 3486
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootup_:J

    return-wide v0
.end method

.method public getLastbootupHistory(I)J
    .registers 4

    .line 3610
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$LongList;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastbootupHistoryCount()I
    .registers 2

    .line 3597
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLastbootupHistoryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 3584
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d

    .line 3585
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    return-object v0
.end method

.method public getLastbootupV2()J
    .registers 3

    .line 3532
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootupV2_:J

    return-wide v0
.end method

.method public getNetworkRoaming()Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 4880
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoamingBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4881
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoaming_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 4883
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValue;

    return-object v0
.end method

.method public getNetworkRoamingBuilder()Lcom/explorestack/protobuf/BoolValue$Builder;
    .registers 2

    .line 4973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4974
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->getNetworkRoamingFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValue$Builder;

    return-object v0
.end method

.method public getNetworkRoamingOrBuilder()Lcom/explorestack/protobuf/BoolValueOrBuilder;
    .registers 2

    .line 4984
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoamingBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 4985
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/BoolValueOrBuilder;

    return-object v0

    .line 4987
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoaming_:Lcom/explorestack/protobuf/BoolValue;

    if-nez v0, :cond_13

    .line 4988
    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->getDefaultInstance()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getRingmute()Z
    .registers 2

    .line 2903
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ringmute_:Z

    return v0
.end method

.method public getScreenbright()F
    .registers 2

    .line 3397
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->screenbright_:F

    return v0
.end method

.method public getSimCarrier()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 4570
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4571
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 4573
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getSimCarrierBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 4663
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4664
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->getSimCarrierFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getSimCarrierOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 4674
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 4675
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 4677
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 4678
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getSimCountry()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 4725
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4726
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountry_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 4728
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getSimCountryBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 4818
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4819
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->getSimCountryFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getSimCountryOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 4829
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 4830
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 4832
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountry_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 4833
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getTime()J
    .registers 3

    .line 3353
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->time_:J

    return-wide v0
.end method

.method public getTimezone()Ljava/lang/String;
    .registers 3

    .line 4375
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->timezone_:Ljava/lang/Object;

    .line 4376
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 4377
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4379
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4380
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->timezone_:Ljava/lang/Object;

    return-object v0

    .line 4383
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTimezoneBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 4396
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->timezone_:Ljava/lang/Object;

    .line 4397
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 4398
    check-cast v0, Ljava/lang/String;

    .line 4399
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4401
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->timezone_:Ljava/lang/Object;

    return-object v0

    .line 4404
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getTotaldisk()J
    .registers 3

    .line 2854
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->totaldisk_:J

    return-wide v0
.end method

.method public getTotalmem()J
    .registers 3

    .line 3888
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->totalmem_:J

    return-wide v0
.end method

.method public hasAudioContext()Z
    .registers 2

    .line 5179
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

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

.method public hasConnection()Z
    .registers 2

    .line 5024
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

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

.method public hasNetworkRoaming()Z
    .registers 2

    .line 4869
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoamingBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoaming_:Lcom/explorestack/protobuf/BoolValue;

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

    .line 4559
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasSimCountry()Z
    .registers 2

    .line 4714
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountry_:Lcom/explorestack/protobuf/StringValue;

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

    .line 2020
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Device_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Device;

    const-class v2, Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2021
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

.method public mergeAudioContext(Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 5242
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 5243
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    if-eqz v0, :cond_17

    .line 5245
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;->newBuilder(Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;)Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;)Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    goto :goto_19

    .line 5247
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 5249
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5251
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeConnection(Lcom/explorestack/protobuf/adcom/Context$Device$Connection;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 5087
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 5088
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    if-eqz v0, :cond_17

    .line 5090
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection;->newBuilder(Lcom/explorestack/protobuf/adcom/Context$Device$Connection;)Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Device$Connection;)Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    goto :goto_19

    .line 5092
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 5094
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5096
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

    .line 2008
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2008
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Device$Builder;

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

    .line 2008
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Device$Builder;

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

    .line 2008
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2008
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Device$Builder;

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

    .line 2008
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2423
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->access$4200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Device;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 2429
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 2425
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/Device;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 2426
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

    .line 2429
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2431
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 2264
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/Device;

    if-eqz v0, :cond_b

    .line 2265
    check-cast p1, Lio/bidmachine/protobuf/sdk/Device;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1

    .line 2267
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 8

    .line 2273
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 2274
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2275
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$500(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ifv_:Ljava/lang/Object;

    .line 2276
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2278
    :cond_1a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2279
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$600(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2280
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2282
    :cond_2d
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$700(Lio/bidmachine/protobuf/sdk/Device;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 2283
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2284
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$700(Lio/bidmachine/protobuf/sdk/Device;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    .line 2285
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    goto :goto_58

    .line 2287
    :cond_4c
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->ensureInputlanguageIsMutable()V

    .line 2288
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$700(Lio/bidmachine/protobuf/sdk/Device;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2290
    :goto_58
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2292
    :cond_5b
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getDiskspace()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6c

    .line 2293
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getDiskspace()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setDiskspace(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2295
    :cond_6c
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getTotaldisk()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7b

    .line 2296
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getTotaldisk()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setTotaldisk(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2298
    :cond_7b
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getRingmute()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 2299
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getRingmute()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setRingmute(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2301
    :cond_88
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getCharging()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 2302
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getCharging()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setCharging(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2304
    :cond_95
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getHeadset()Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 2305
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getHeadset()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setHeadset(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2307
    :cond_a2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getBatterylevel()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_b2

    .line 2308
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getBatterylevel()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setBatterylevel(F)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2310
    :cond_b2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getBatterysaver()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 2311
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getBatterysaver()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setBatterysaver(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2313
    :cond_bf
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getDarkmode()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 2314
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getDarkmode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setDarkmode(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2316
    :cond_cc
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getAirplane()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 2317
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getAirplane()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setAirplane(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2319
    :cond_d9
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getDnd()Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 2320
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getDnd()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setDnd(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2322
    :cond_e6
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getDevicename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f9

    .line 2323
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$1800(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->devicename_:Ljava/lang/Object;

    .line 2324
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2326
    :cond_f9
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getTime()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_108

    .line 2327
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setTime(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2329
    :cond_108
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getScreenbright()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_117

    .line 2330
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getScreenbright()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setScreenbright(F)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2332
    :cond_117
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getJailbreak()Z

    move-result v0

    if-eqz v0, :cond_124

    .line 2333
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getJailbreak()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setJailbreak(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2335
    :cond_124
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getLastbootup()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_133

    .line 2336
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getLastbootup()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setLastbootup(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2338
    :cond_133
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getLastbootupV2()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_142

    .line 2339
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getLastbootupV2()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setLastbootupV2(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2341
    :cond_142
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$2400(Lio/bidmachine/protobuf/sdk/Device;)Lcom/explorestack/protobuf/Internal$LongList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_170

    .line 2342
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_161

    .line 2343
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$2400(Lio/bidmachine/protobuf/sdk/Device;)Lcom/explorestack/protobuf/Internal$LongList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    .line 2344
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    goto :goto_16d

    .line 2346
    :cond_161
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->ensureLastbootupHistoryIsMutable()V

    .line 2347
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$2400(Lio/bidmachine/protobuf/sdk/Device;)Lcom/explorestack/protobuf/Internal$LongList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2349
    :goto_16d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2351
    :cond_170
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getAccess()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_183

    .line 2352
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$2500(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->access_:Ljava/lang/Object;

    .line 2353
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2355
    :cond_183
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getHeadsetname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_196

    .line 2356
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$2600(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headsetname_:Ljava/lang/Object;

    .line 2357
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2359
    :cond_196
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getTotalmem()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a5

    .line 2360
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getTotalmem()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setTotalmem(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2362
    :cond_1a5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getAtts()I

    move-result v0

    if-eqz v0, :cond_1b2

    .line 2363
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getAtts()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setAtts(I)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2365
    :cond_1b2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getCpuname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c5

    .line 2366
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$2900(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuname_:Ljava/lang/Object;

    .line 2367
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2369
    :cond_1c5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getCpuvendor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d8

    .line 2370
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$3000(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuvendor_:Ljava/lang/Object;

    .line 2371
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2373
    :cond_1d8
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getGpuname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1eb

    .line 2374
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$3100(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuname_:Ljava/lang/Object;

    .line 2375
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2377
    :cond_1eb
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getGpuvendor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1fe

    .line 2378
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$3200(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuvendor_:Ljava/lang/Object;

    .line 2379
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2381
    :cond_1fe
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getTimezone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_211

    .line 2382
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$3300(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->timezone_:Ljava/lang/Object;

    .line 2383
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2385
    :cond_211
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getFreemem()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_220

    .line 2386
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getFreemem()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setFreemem(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2388
    :cond_220
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getApilevel()I

    move-result v0

    if-eqz v0, :cond_22d

    .line 2389
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getApilevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setApilevel(I)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2391
    :cond_22d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->hasSimCarrier()Z

    move-result v0

    if-eqz v0, :cond_23a

    .line 2392
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getSimCarrier()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeSimCarrier(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2394
    :cond_23a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->hasSimCountry()Z

    move-result v0

    if-eqz v0, :cond_247

    .line 2395
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getSimCountry()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeSimCountry(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2397
    :cond_247
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->hasNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_254

    .line 2398
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getNetworkRoaming()Lcom/explorestack/protobuf/BoolValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeNetworkRoaming(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2400
    :cond_254
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_261

    .line 2401
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getConnection()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeConnection(Lcom/explorestack/protobuf/adcom/Context$Device$Connection;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2403
    :cond_261
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->hasAudioContext()Z

    move-result v0

    if-eqz v0, :cond_26e

    .line 2404
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getAudioContext()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeAudioContext(Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2406
    :cond_26e
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$4100(Lio/bidmachine/protobuf/sdk/Device;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 2407
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeNetworkRoaming(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 4932
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoamingBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 4933
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoaming_:Lcom/explorestack/protobuf/BoolValue;

    if-eqz v0, :cond_17

    .line 4935
    invoke-static {v0}, Lcom/explorestack/protobuf/BoolValue;->newBuilder(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/BoolValue;)Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->buildPartial()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoaming_:Lcom/explorestack/protobuf/BoolValue;

    goto :goto_19

    .line 4937
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoaming_:Lcom/explorestack/protobuf/BoolValue;

    .line 4939
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4941
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeSimCarrier(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 4622
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 4623
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 4625
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 4627
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    .line 4629
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4631
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeSimCountry(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 4777
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 4778
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountry_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 4780
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountry_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 4782
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountry_:Lcom/explorestack/protobuf/StringValue;

    .line 4784
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4786
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2008
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2008
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2008
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 5330
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Device$Builder;

    return-object p1
.end method

.method public setAccess(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 3737
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3740
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->access_:Ljava/lang/Object;

    .line 3741
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAccessBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 3772
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3774
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$5000(Lcom/explorestack/protobuf/ByteString;)V

    .line 3776
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->access_:Ljava/lang/Object;

    .line 3777
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAirplane(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 3180
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->airplane_:Z

    .line 3181
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setApilevel(I)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 4528
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->apilevel_:I

    .line 4529
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAtts(I)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 3956
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->atts_:I

    .line 3957
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAudioContext(Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 5225
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 5226
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 5227
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5229
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setAudioContext(Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 5204
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5206
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5208
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 5209
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5211
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setBatterylevel(F)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 3049
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->batterylevel_:F

    .line 3050
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setBatterysaver(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 3092
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->batterysaver_:Z

    .line 3093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setBmIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 2586
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2589
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2590
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setBmIfvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 2619
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2621
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$4400(Lcom/explorestack/protobuf/ByteString;)V

    .line 2623
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2624
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCharging(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 2963
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->charging_:Z

    .line 2964
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setConnection(Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 5070
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 5071
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 5072
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5074
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setConnection(Lcom/explorestack/protobuf/adcom/Context$Device$Connection;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 5049
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5051
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5053
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 5054
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5056
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCpuname(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 4035
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4038
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuname_:Ljava/lang/Object;

    .line 4039
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCpunameBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 4068
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4070
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$5200(Lcom/explorestack/protobuf/ByteString;)V

    .line 4072
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuname_:Ljava/lang/Object;

    .line 4073
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCpuvendor(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 4131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4134
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuvendor_:Ljava/lang/Object;

    .line 4135
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCpuvendorBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 4164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4166
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$5300(Lcom/explorestack/protobuf/ByteString;)V

    .line 4168
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuvendor_:Ljava/lang/Object;

    .line 4169
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setDarkmode(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 3135
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->darkmode_:Z

    .line 3136
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setDevicename(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 3300
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3303
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->devicename_:Ljava/lang/Object;

    .line 3304
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setDevicenameBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 3333
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3335
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$4600(Lcom/explorestack/protobuf/ByteString;)V

    .line 3337
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->devicename_:Ljava/lang/Object;

    .line 3338
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setDiskspace(J)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 2820
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->diskspace_:J

    .line 2821
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setDnd(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 3226
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->dnd_:Z

    .line 3227
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 2008
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 2008
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 2238
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Device$Builder;

    return-object p1
.end method

.method public setFreemem(J)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 4485
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->freemem_:J

    .line 4486
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setGpuname(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 4227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4230
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuname_:Ljava/lang/Object;

    .line 4231
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setGpunameBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 4260
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4262
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$5400(Lcom/explorestack/protobuf/ByteString;)V

    .line 4264
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuname_:Ljava/lang/Object;

    .line 4265
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setGpuvendor(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 4323
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4326
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuvendor_:Ljava/lang/Object;

    .line 4327
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setGpuvendorBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 4356
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4358
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$5500(Lcom/explorestack/protobuf/ByteString;)V

    .line 4360
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuvendor_:Ljava/lang/Object;

    .line 4361
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setHeadset(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 3006
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headset_:Z

    .line 3007
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setHeadsetname(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 3835
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3838
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headsetname_:Ljava/lang/Object;

    .line 3839
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setHeadsetnameBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 3868
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3870
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$5100(Lcom/explorestack/protobuf/ByteString;)V

    .line 3872
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headsetname_:Ljava/lang/Object;

    .line 3873
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 2490
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2493
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ifv_:Ljava/lang/Object;

    .line 2494
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setIfvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 2523
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2525
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$4300(Lcom/explorestack/protobuf/ByteString;)V

    .line 2527
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ifv_:Ljava/lang/Object;

    .line 2528
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setInputlanguage(ILjava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 4

    .line 2706
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2708
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->ensureInputlanguageIsMutable()V

    .line 2709
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2710
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setJailbreak(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 3455
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->jailbreak_:Z

    .line 3456
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setLastbootup(J)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 3500
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootup_:J

    .line 3501
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setLastbootupHistory(IJ)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 5

    .line 3625
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->ensureLastbootupHistoryIsMutable()V

    .line 3626
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootupHistory_:Lcom/explorestack/protobuf/Internal$LongList;

    invoke-interface {v0, p1, p2, p3}, Lcom/explorestack/protobuf/Internal$LongList;->setLong(IJ)J

    .line 3627
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setLastbootupV2(J)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 3546
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootupV2_:J

    .line 3547
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setNetworkRoaming(Lcom/explorestack/protobuf/BoolValue$Builder;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 4915
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoamingBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 4916
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->build()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoaming_:Lcom/explorestack/protobuf/BoolValue;

    .line 4917
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4919
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BoolValue$Builder;->build()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setNetworkRoaming(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 4894
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoamingBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4896
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4898
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->networkRoaming_:Lcom/explorestack/protobuf/BoolValue;

    .line 4899
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4901
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 2008
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 2008
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 4

    .line 2254
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Device$Builder;

    return-object p1
.end method

.method public setRingmute(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 2918
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ringmute_:Z

    .line 2919
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setScreenbright(F)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 3411
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->screenbright_:F

    .line 3412
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSimCarrier(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 4605
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 4606
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    .line 4607
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4609
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setSimCarrier(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 4584
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrierBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4586
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4588
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCarrier_:Lcom/explorestack/protobuf/StringValue;

    .line 4589
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4591
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setSimCountry(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 4760
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 4761
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountry_:Lcom/explorestack/protobuf/StringValue;

    .line 4762
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4764
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setSimCountry(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 4739
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountryBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 4741
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4743
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->simCountry_:Lcom/explorestack/protobuf/StringValue;

    .line 4744
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 4746
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setTime(J)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 3366
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->time_:J

    .line 3367
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTimezone(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 4419
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4422
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->timezone_:Ljava/lang/Object;

    .line 4423
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTimezoneBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 4452
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4454
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$5600(Lcom/explorestack/protobuf/ByteString;)V

    .line 4456
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->timezone_:Ljava/lang/Object;

    .line 4457
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTotaldisk(J)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 2869
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->totaldisk_:J

    .line 2870
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setTotalmem(J)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 3

    .line 3901
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->totalmem_:J

    .line 3902
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2008
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2008
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 5324
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Device$Builder;

    return-object p1
.end method

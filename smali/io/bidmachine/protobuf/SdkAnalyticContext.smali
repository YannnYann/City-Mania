###### Class io.bidmachine.protobuf.SdkAnalyticContext (io.bidmachine.protobuf.SdkAnalyticContext)
.class public final Lio/bidmachine/protobuf/SdkAnalyticContext;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SdkAnalyticContext.java"

# interfaces
.implements Lio/bidmachine/protobuf/SdkAnalyticContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    }
.end annotation


# static fields
.field public static final APP_VER_FIELD_NUMBER:I = 0xd

.field public static final BM_IFV_FIELD_NUMBER:I = 0xc

.field public static final BUNDLE_FIELD_NUMBER:I = 0x2

.field public static final CONTYPE_FIELD_NUMBER:I = 0xa

.field public static final DCID_FIELD_NUMBER:I = 0xf

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticContext;

.field public static final DEVICE_TYPE_FIELD_NUMBER:I = 0x9

.field public static final EXPERIMENTS_FIELD_NUMBER:I = 0x11

.field public static final EXT_FIELD_NUMBER:I = 0x10

.field public static final GEO_FIELD_NUMBER:I = 0x5

.field public static final HWV_FIELD_NUMBER:I = 0x14

.field public static final IFA_FIELD_NUMBER:I = 0x8

.field public static final IFV_FIELD_NUMBER:I = 0xb

.field public static final MAKE_FIELD_NUMBER:I = 0x12

.field public static final MODEL_FIELD_NUMBER:I = 0x13

.field public static final OSV_FIELD_NUMBER:I = 0x4

.field public static final OS_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/SdkAnalyticContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final SDKVER_FIELD_NUMBER:I = 0x7

.field public static final SDK_FIELD_NUMBER:I = 0x6

.field public static final SESSION_ID_FIELD_NUMBER:I = 0xe

.field public static final SOURCE_ID_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private volatile appVer_:Ljava/lang/Object;

.field private volatile bmIfv_:Ljava/lang/Object;

.field private volatile bundle_:Ljava/lang/Object;

.field private contype_:I

.field private volatile dcid_:Ljava/lang/Object;

.field private deviceType_:I

.field private experiments_:Lcom/explorestack/protobuf/LazyStringList;

.field private ext_:Lcom/explorestack/protobuf/Struct;

.field private geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

.field private volatile hwv_:Ljava/lang/Object;

.field private volatile ifa_:Ljava/lang/Object;

.field private volatile ifv_:Ljava/lang/Object;

.field private volatile make_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile model_:Ljava/lang/Object;

.field private os_:I

.field private volatile osv_:Ljava/lang/Object;

.field private volatile sdk_:Ljava/lang/Object;

.field private volatile sdkver_:Ljava/lang/Object;

.field private volatile sessionId_:Ljava/lang/Object;

.field private volatile sourceId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3809
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    invoke-direct {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 3817
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticContext$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1098
    iput-byte v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->memoizedIsInitialized:B

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sourceId_:Ljava/lang/Object;

    .line 24
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    .line 26
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    .line 27
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    .line 28
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    .line 29
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    .line 30
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    .line 31
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    .line 32
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    .line 33
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    .line 34
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    .line 35
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    .line 36
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    .line 37
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    .line 38
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->make_:Ljava/lang/Object;

    .line 39
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->model_:Ljava/lang/Object;

    .line 40
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->hwv_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;-><init>()V

    .line 61
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_122

    .line 69
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_136

    .line 212
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :sswitch_1d
    move v1, v5

    goto :goto_c

    :catchall_1f
    move-exception p1

    goto/16 :goto_10e

    :catch_22
    move-exception p1

    goto/16 :goto_ff

    :catch_25
    move-exception p1

    goto/16 :goto_109

    .line 206
    :sswitch_28
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 208
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->hwv_:Ljava/lang/Object;

    goto :goto_c

    .line 200
    :sswitch_2f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 202
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->model_:Ljava/lang/Object;

    goto :goto_c

    .line 194
    :sswitch_36
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 196
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->make_:Ljava/lang/Object;

    goto :goto_c

    .line 185
    :sswitch_3d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_4b

    .line 187
    new-instance v4, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    move v2, v5

    .line 190
    :cond_4b
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 173
    :sswitch_51
    iget-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v3, :cond_59

    .line 174
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    .line 176
    :cond_59
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/Struct;

    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_c

    .line 178
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 179
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_c

    .line 166
    :sswitch_71
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 168
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    goto :goto_c

    .line 160
    :sswitch_78
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 162
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    goto :goto_c

    .line 154
    :sswitch_7f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 156
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    goto :goto_c

    .line 148
    :sswitch_86
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 150
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    goto/16 :goto_c

    .line 142
    :sswitch_8e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 144
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    goto/16 :goto_c

    .line 136
    :sswitch_96
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 138
    iput v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    goto/16 :goto_c

    .line 130
    :sswitch_9e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 132
    iput v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    goto/16 :goto_c

    .line 124
    :sswitch_a6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 126
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    goto/16 :goto_c

    .line 118
    :sswitch_ae
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 120
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    goto/16 :goto_c

    .line 112
    :sswitch_b6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 114
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    goto/16 :goto_c

    .line 100
    :sswitch_be
    iget-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v3, :cond_c6

    .line 101
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/Context$Geo;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v4

    .line 103
    :cond_c6
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/adcom/Context$Geo;

    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v4, :cond_c

    .line 105
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 106
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto/16 :goto_c

    .line 93
    :sswitch_df
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 95
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    goto/16 :goto_c

    .line 87
    :sswitch_e7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 89
    iput v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    goto/16 :goto_c

    .line 81
    :sswitch_ef
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 83
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    goto/16 :goto_c

    .line 75
    :sswitch_f7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 77
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sourceId_:Ljava/lang/Object;
    :try_end_fd
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_fd} :catch_25
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_fd} :catch_22
    .catchall {:try_start_e .. :try_end_fd} :catchall_1f

    goto/16 :goto_c

    .line 223
    :goto_ff
    :try_start_ff
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 224
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 221
    :goto_109
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_10e
    .catchall {:try_start_ff .. :try_end_10e} :catchall_1f

    :goto_10e
    if-eqz v2, :cond_118

    .line 227
    iget-object p2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    .line 229
    :cond_118
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 230
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 231
    throw p1

    :cond_122
    if-eqz v2, :cond_12c

    .line 227
    iget-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    .line 229
    :cond_12c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 230
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_136
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_f7
        0x12 -> :sswitch_ef
        0x18 -> :sswitch_e7
        0x22 -> :sswitch_df
        0x2a -> :sswitch_be
        0x32 -> :sswitch_b6
        0x3a -> :sswitch_ae
        0x42 -> :sswitch_a6
        0x48 -> :sswitch_9e
        0x50 -> :sswitch_96
        0x5a -> :sswitch_8e
        0x62 -> :sswitch_86
        0x6a -> :sswitch_7f
        0x72 -> :sswitch_78
        0x7a -> :sswitch_71
        0x82 -> :sswitch_51
        0x8a -> :sswitch_3d
        0x92 -> :sswitch_36
        0x9a -> :sswitch_2f
        0xa2 -> :sswitch_28
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 1098
    iput-byte p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1000(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .registers 1

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1002(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1100(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .registers 1

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1102(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1200(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .registers 1

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1202(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1300(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .registers 1

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1302(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1400(Lio/bidmachine/protobuf/SdkAnalyticContext;)I
    .registers 1

    .line 13
    iget p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    return p0
.end method

.method public static synthetic access$1402(Lio/bidmachine/protobuf/SdkAnalyticContext;I)I
    .registers 2

    .line 13
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    return p1
.end method

.method public static synthetic access$1500(Lio/bidmachine/protobuf/SdkAnalyticContext;)I
    .registers 1

    .line 13
    iget p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    return p0
.end method

.method public static synthetic access$1502(Lio/bidmachine/protobuf/SdkAnalyticContext;I)I
    .registers 2

    .line 13
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    return p1
.end method

.method public static synthetic access$1600(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .registers 1

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1602(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1700(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .registers 1

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1702(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1800(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .registers 1

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1802(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1902(Lio/bidmachine/protobuf/SdkAnalyticContext;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 13
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2000(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lcom/explorestack/protobuf/LazyStringList;
    .registers 1

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method public static synthetic access$2002(Lio/bidmachine/protobuf/SdkAnalyticContext;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method public static synthetic access$2100(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .registers 1

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->make_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2102(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->make_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2200(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .registers 1

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->model_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2202(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->model_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2300(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .registers 1

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->hwv_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2302(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->hwv_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2400(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$2500()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$2600(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
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

    .line 13
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

    .line 13
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

    .line 13
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

    .line 13
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

    .line 13
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3200(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3300(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3400(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3500(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3600(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3700(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3800(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3900(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$400(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .registers 1

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sourceId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4000(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sourceId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$500(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .registers 1

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$600(Lio/bidmachine/protobuf/SdkAnalyticContext;)I
    .registers 1

    .line 13
    iget p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    return p0
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/SdkAnalyticContext;I)I
    .registers 2

    .line 13
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    return p1
.end method

.method public static synthetic access$700(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .registers 1

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$802(Lio/bidmachine/protobuf/SdkAnalyticContext;Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object p1
.end method

.method public static synthetic access$900(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;
    .registers 1

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$902(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;
    .registers 1

    .line 3813
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 235
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticContext_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 1

    .line 1444
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticContext;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 1447
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticContext;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1417
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1418
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1424
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1425
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1385
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1391
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1430
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1431
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1437
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1438
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1405
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1406
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1412
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1413
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1374
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1380
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1395
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1401
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/SdkAnalyticContext;",
            ">;"
        }
    .end annotation

    .line 3828
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1261
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/SdkAnalyticContext;

    if-nez v1, :cond_d

    .line 1262
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1264
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext;

    .line 1266
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSourceId()Ljava/lang/String;

    move-result-object v1

    .line 1267
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 1268
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBundle()Ljava/lang/String;

    move-result-object v1

    .line 1269
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBundle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    .line 1270
    :cond_2e
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    iget v3, p1, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    if-eq v1, v3, :cond_35

    return v2

    .line 1271
    :cond_35
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getOsv()Ljava/lang/String;

    move-result-object v1

    .line 1272
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getOsv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    return v2

    .line 1273
    :cond_44
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasGeo()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasGeo()Z

    move-result v3

    if-eq v1, v3, :cond_4f

    return v2

    .line 1274
    :cond_4f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasGeo()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 1275
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v1

    .line 1276
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Context$Geo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    .line 1278
    :cond_64
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdk()Ljava/lang/String;

    move-result-object v1

    .line 1279
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    return v2

    .line 1280
    :cond_73
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkver()Ljava/lang/String;

    move-result-object v1

    .line 1281
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    return v2

    .line 1282
    :cond_82
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfa()Ljava/lang/String;

    move-result-object v1

    .line 1283
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    return v2

    .line 1284
    :cond_91
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfv()Ljava/lang/String;

    move-result-object v1

    .line 1285
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a0

    return v2

    .line 1286
    :cond_a0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBmIfv()Ljava/lang/String;

    move-result-object v1

    .line 1287
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBmIfv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_af

    return v2

    .line 1288
    :cond_af
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    iget v3, p1, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    if-eq v1, v3, :cond_b6

    return v2

    .line 1289
    :cond_b6
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    iget v3, p1, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    if-eq v1, v3, :cond_bd

    return v2

    .line 1290
    :cond_bd
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getAppVer()Ljava/lang/String;

    move-result-object v1

    .line 1291
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getAppVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cc

    return v2

    .line 1292
    :cond_cc
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSessionId()Ljava/lang/String;

    move-result-object v1

    .line 1293
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_db

    return v2

    .line 1294
    :cond_db
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDcid()Ljava/lang/String;

    move-result-object v1

    .line 1295
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDcid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ea

    return v2

    .line 1296
    :cond_ea
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_f5

    return v2

    .line 1297
    :cond_f5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 1298
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 1299
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10a

    return v2

    .line 1301
    :cond_10a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExperimentsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 1302
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExperimentsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_119

    return v2

    .line 1303
    :cond_119
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getMake()Ljava/lang/String;

    move-result-object v1

    .line 1304
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getMake()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_128

    return v2

    .line 1305
    :cond_128
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getModel()Ljava/lang/String;

    move-result-object v1

    .line 1306
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_137

    return v2

    .line 1307
    :cond_137
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getHwv()Ljava/lang/String;

    move-result-object v1

    .line 1308
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getHwv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_146

    return v2

    .line 1309
    :cond_146
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_151

    return v2

    :cond_151
    return v0
.end method

.method public getAppVer()Ljava/lang/String;
    .registers 3

    .line 745
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    .line 746
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 747
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 749
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 751
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 752
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAppVerBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 767
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    .line 768
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 769
    check-cast v0, Ljava/lang/String;

    .line 770
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 772
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    return-object v0

    .line 775
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getBmIfv()Ljava/lang/String;
    .registers 3

    .line 645
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    .line 646
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 647
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 649
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 651
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 652
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    return-object v0
.end method

.method public getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 667
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    .line 668
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 669
    check-cast v0, Ljava/lang/String;

    .line 670
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 672
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 675
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getBundle()Ljava/lang/String;
    .registers 3

    .line 304
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    .line 305
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 306
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 308
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 310
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 311
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    return-object v0
.end method

.method public getBundleBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 326
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    .line 327
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 328
    check-cast v0, Ljava/lang/String;

    .line 329
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 331
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    return-object v0

    .line 334
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getContype()Lcom/explorestack/protobuf/adcom/ConnectionType;
    .registers 2

    .line 729
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/ConnectionType;->valueOf(I)Lcom/explorestack/protobuf/adcom/ConnectionType;

    move-result-object v0

    if-nez v0, :cond_a

    .line 730
    sget-object v0, Lcom/explorestack/protobuf/adcom/ConnectionType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ConnectionType;

    :cond_a
    return-object v0
.end method

.method public getContypeValue()I
    .registers 2

    .line 717
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    return v0
.end method

.method public getDcid()Ljava/lang/String;
    .registers 3

    .line 837
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    .line 838
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 839
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 841
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 843
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 844
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDcidBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 859
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    .line 860
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 861
    check-cast v0, Ljava/lang/String;

    .line 862
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 864
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    return-object v0

    .line 867
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticContext;
    .registers 2

    .line 3838
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticContext;

    return-object v0
.end method

.method public getDeviceType()Lcom/explorestack/protobuf/adcom/DeviceType;
    .registers 2

    .line 702
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/DeviceType;->valueOf(I)Lcom/explorestack/protobuf/adcom/DeviceType;

    move-result-object v0

    if-nez v0, :cond_a

    .line 703
    sget-object v0, Lcom/explorestack/protobuf/adcom/DeviceType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/DeviceType;

    :cond_a
    return-object v0
.end method

.method public getDeviceTypeValue()I
    .registers 2

    .line 690
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    return v0
.end method

.method public getExperiments(I)Ljava/lang/String;
    .registers 3

    .line 944
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getExperimentsBytes(I)Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 957
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getExperimentsCount()I
    .registers 2

    .line 932
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExperimentsList()Lcom/explorestack/protobuf/ProtocolStringList;
    .registers 2

    .line 921
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getExperimentsList()Ljava/util/List;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExperimentsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 895
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .registers 2

    .line 906
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;
    .registers 2

    .line 435
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getGeoOrBuilder()Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;
    .registers 2

    .line 446
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    return-object v0
.end method

.method public getHwv()Ljava/lang/String;
    .registers 3

    .line 1064
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->hwv_:Ljava/lang/Object;

    .line 1065
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1066
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1068
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1070
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1071
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->hwv_:Ljava/lang/Object;

    return-object v0
.end method

.method public getHwvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1086
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->hwv_:Ljava/lang/Object;

    .line 1087
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1088
    check-cast v0, Ljava/lang/String;

    .line 1089
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1091
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->hwv_:Ljava/lang/Object;

    return-object v0

    .line 1094
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getIfa()Ljava/lang/String;
    .registers 3

    .line 553
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    .line 554
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 555
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 557
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 559
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 560
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIfaBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 575
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    .line 576
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 577
    check-cast v0, Ljava/lang/String;

    .line 578
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 580
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    return-object v0

    .line 583
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getIfv()Ljava/lang/String;
    .registers 3

    .line 599
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    .line 600
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 601
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 603
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 605
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 606
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 621
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    .line 622
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 623
    check-cast v0, Ljava/lang/String;

    .line 624
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 626
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 629
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getMake()Ljava/lang/String;
    .registers 3

    .line 972
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->make_:Ljava/lang/Object;

    .line 973
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 974
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 976
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 978
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 979
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->make_:Ljava/lang/Object;

    return-object v0
.end method

.method public getMakeBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 994
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->make_:Ljava/lang/Object;

    .line 995
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 996
    check-cast v0, Ljava/lang/String;

    .line 997
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 999
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->make_:Ljava/lang/Object;

    return-object v0

    .line 1002
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 3

    .line 1018
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->model_:Ljava/lang/Object;

    .line 1019
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1020
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1022
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1024
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1025
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->model_:Ljava/lang/Object;

    return-object v0
.end method

.method public getModelBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1040
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->model_:Ljava/lang/Object;

    .line 1041
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1042
    check-cast v0, Ljava/lang/String;

    .line 1043
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1045
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->model_:Ljava/lang/Object;

    return-object v0

    .line 1048
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getOs()Lcom/explorestack/protobuf/adcom/OS;
    .registers 2

    .line 361
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/OS;->valueOf(I)Lcom/explorestack/protobuf/adcom/OS;

    move-result-object v0

    if-nez v0, :cond_a

    .line 362
    sget-object v0, Lcom/explorestack/protobuf/adcom/OS;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/OS;

    :cond_a
    return-object v0
.end method

.method public getOsValue()I
    .registers 2

    .line 349
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    return v0
.end method

.method public getOsv()Ljava/lang/String;
    .registers 3

    .line 377
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    .line 378
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 379
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 381
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 383
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 384
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    return-object v0
.end method

.method public getOsvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 399
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    .line 400
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 401
    check-cast v0, Ljava/lang/String;

    .line 402
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 404
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    return-object v0

    .line 407
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
            "Lio/bidmachine/protobuf/SdkAnalyticContext;",
            ">;"
        }
    .end annotation

    .line 3833
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSdk()Ljava/lang/String;
    .registers 3

    .line 461
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    .line 462
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 463
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 465
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 467
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 468
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSdkBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 483
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    .line 484
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 485
    check-cast v0, Ljava/lang/String;

    .line 486
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 488
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 491
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSdkver()Ljava/lang/String;
    .registers 3

    .line 507
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    .line 508
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 509
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 511
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 513
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 514
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSdkverBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 529
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    .line 530
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 531
    check-cast v0, Ljava/lang/String;

    .line 532
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 534
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    return-object v0

    .line 537
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .line 1177
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 1181
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSourceIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 1182
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sourceId_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 1184
    :goto_1a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBundleBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_2c

    .line 1185
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1187
    :cond_2c
    iget v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    sget-object v4, Lcom/explorestack/protobuf/adcom/OS;->OS_INVALID:Lcom/explorestack/protobuf/adcom/OS;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/OS;->getNumber()I

    move-result v4

    if-eq v2, v4, :cond_3e

    const/4 v2, 0x3

    .line 1188
    iget v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    .line 1189
    invoke-static {v2, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1191
    :cond_3e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getOsvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_50

    const/4 v2, 0x4

    .line 1192
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1194
    :cond_50
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v2, :cond_5e

    const/4 v2, 0x5

    .line 1196
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1198
    :cond_5e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_70

    const/4 v2, 0x6

    .line 1199
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1201
    :cond_70
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkverBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_82

    const/4 v2, 0x7

    .line 1202
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1204
    :cond_82
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfaBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_95

    const/16 v2, 0x8

    .line 1205
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1207
    :cond_95
    iget v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    sget-object v4, Lcom/explorestack/protobuf/adcom/DeviceType;->DEVICE_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/DeviceType;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/DeviceType;->getNumber()I

    move-result v4

    if-eq v2, v4, :cond_a8

    const/16 v2, 0x9

    .line 1208
    iget v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    .line 1209
    invoke-static {v2, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1211
    :cond_a8
    iget v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    sget-object v4, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/ConnectionType;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/ConnectionType;->getNumber()I

    move-result v4

    if-eq v2, v4, :cond_bb

    const/16 v2, 0xa

    .line 1212
    iget v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    .line 1213
    invoke-static {v2, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1215
    :cond_bb
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ce

    const/16 v2, 0xb

    .line 1216
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1218
    :cond_ce
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e1

    const/16 v2, 0xc

    .line 1219
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1221
    :cond_e1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getAppVerBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f4

    const/16 v2, 0xd

    .line 1222
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1224
    :cond_f4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_107

    const/16 v2, 0xe

    .line 1225
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1227
    :cond_107
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDcidBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11a

    const/16 v2, 0xf

    .line 1228
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1230
    :cond_11a
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v2, :cond_129

    const/16 v2, 0x10

    .line 1232
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_129
    move v2, v1

    .line 1236
    :goto_12a
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_140

    .line 1237
    iget-object v4, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_12a

    :cond_140
    add-int/2addr v0, v2

    .line 1240
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExperimentsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 1242
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getMakeBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15e

    const/16 v1, 0x12

    .line 1243
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->make_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1245
    :cond_15e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getModelBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_171

    const/16 v1, 0x13

    .line 1246
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->model_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1248
    :cond_171
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getHwvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_184

    const/16 v1, 0x14

    .line 1249
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->hwv_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1251
    :cond_184
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1252
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 3

    .line 791
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    .line 792
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 793
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 795
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 797
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 798
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 813
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    .line 814
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 815
    check-cast v0, Ljava/lang/String;

    .line 816
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 818
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 821
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .registers 3

    .line 258
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sourceId_:Ljava/lang/Object;

    .line 259
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 260
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 262
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 264
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 265
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sourceId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSourceIdBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 280
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sourceId_:Ljava/lang/Object;

    .line 281
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 282
    check-cast v0, Ljava/lang/String;

    .line 283
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 285
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sourceId_:Ljava/lang/Object;

    return-object v0

    .line 288
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasExt()Z
    .registers 2

    .line 883
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasGeo()Z
    .registers 2

    .line 423
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1315
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 1319
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 1321
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 1323
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBundle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 1325
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 1327
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getOsv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1328
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasGeo()Z

    move-result v0

    if-eqz v0, :cond_5b

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 1330
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_5b
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 1333
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 1335
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 1337
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    .line 1339
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    .line 1341
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 1343
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 1345
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    .line 1347
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getAppVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xe

    mul-int/lit8 v1, v1, 0x35

    .line 1349
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x35

    .line 1351
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDcid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1352
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_fa

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x35

    .line 1354
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1356
    :cond_fa
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExperimentsCount()I

    move-result v0

    if-lez v0, :cond_10f

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x11

    mul-int/lit8 v1, v1, 0x35

    .line 1358
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExperimentsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_10f
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x12

    mul-int/lit8 v1, v1, 0x35

    .line 1361
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getMake()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x13

    mul-int/lit8 v1, v1, 0x35

    .line 1363
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x14

    mul-int/lit8 v1, v1, 0x35

    .line 1365
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getHwv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 1366
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1367
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 241
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticContext_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/SdkAnalyticContext;

    const-class v2, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 242
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 1101
    iget-byte v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 1105
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->newBuilderForType()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->newBuilderForType()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 1442
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->newBuilder()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 4

    .line 1458
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 47
    new-instance p1, Lio/bidmachine/protobuf/SdkAnalyticContext;

    invoke-direct {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->toBuilder()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 3

    .line 1451
    sget-object v0, Lio/bidmachine/protobuf/SdkAnalyticContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/SdkAnalyticContext;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 1452
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;-><init>(Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;-><init>(Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

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

    .line 1112
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSourceIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1113
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sourceId_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1115
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBundleBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x2

    .line 1116
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bundle_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1118
    :cond_20
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/OS;->OS_INVALID:Lcom/explorestack/protobuf/adcom/OS;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/OS;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_30

    const/4 v0, 0x3

    .line 1119
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->os_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1121
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getOsvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    const/4 v0, 0x4

    .line 1122
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->osv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1124
    :cond_40
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v0, :cond_4c

    const/4 v0, 0x5

    .line 1125
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 1127
    :cond_4c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5c

    const/4 v0, 0x6

    .line 1128
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdk_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1130
    :cond_5c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkverBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6c

    const/4 v0, 0x7

    .line 1131
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sdkver_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1133
    :cond_6c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfaBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7d

    const/16 v0, 0x8

    .line 1134
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifa_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1136
    :cond_7d
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/DeviceType;->DEVICE_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/DeviceType;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/DeviceType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_8e

    const/16 v0, 0x9

    .line 1137
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->deviceType_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1139
    :cond_8e
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/ConnectionType;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/ConnectionType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_9f

    const/16 v0, 0xa

    .line 1140
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->contype_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1142
    :cond_9f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b0

    const/16 v0, 0xb

    .line 1143
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ifv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1145
    :cond_b0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c1

    const/16 v0, 0xc

    .line 1146
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->bmIfv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1148
    :cond_c1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getAppVerBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d2

    const/16 v0, 0xd

    .line 1149
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->appVer_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1151
    :cond_d2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e3

    const/16 v0, 0xe

    .line 1152
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->sessionId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1154
    :cond_e3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDcidBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f4

    const/16 v0, 0xf

    .line 1155
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->dcid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1157
    :cond_f4
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_101

    const/16 v0, 0x10

    .line 1158
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    :cond_101
    const/4 v0, 0x0

    .line 1160
    :goto_102
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_118

    .line 1161
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {p1, v2, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_102

    .line 1163
    :cond_118
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getMakeBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_129

    const/16 v0, 0x12

    .line 1164
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->make_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1166
    :cond_129
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getModelBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13a

    const/16 v0, 0x13

    .line 1167
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->model_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1169
    :cond_13a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getHwvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14b

    const/16 v0, 0x14

    .line 1170
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext;->hwv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1172
    :cond_14b
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.SdkAnalyticContext.AnonymousClass1 (io.bidmachine.protobuf.SdkAnalyticContext$1)
.class Lio/bidmachine/protobuf/SdkAnalyticContext$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "SdkAnalyticContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/SdkAnalyticContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/SdkAnalyticContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3817
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticContext;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3823
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3817
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.SdkAnalyticContext.Builder (io.bidmachine.protobuf.SdkAnalyticContext$Builder)
.class public final Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SdkAnalyticContext.java"

# interfaces
.implements Lio/bidmachine/protobuf/SdkAnalyticContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/SdkAnalyticContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/SdkAnalyticContextOrBuilder;"
    }
.end annotation


# instance fields
.field private appVer_:Ljava/lang/Object;

.field private bitField0_:I

.field private bmIfv_:Ljava/lang/Object;

.field private bundle_:Ljava/lang/Object;

.field private contype_:I

.field private dcid_:Ljava/lang/Object;

.field private deviceType_:I

.field private experiments_:Lcom/explorestack/protobuf/LazyStringList;

.field private extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Struct;",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Lcom/explorestack/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private ext_:Lcom/explorestack/protobuf/Struct;

.field private geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$Geo;",
            "Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

.field private hwv_:Ljava/lang/Object;

.field private ifa_:Ljava/lang/Object;

.field private ifv_:Ljava/lang/Object;

.field private make_:Ljava/lang/Object;

.field private model_:Ljava/lang/Object;

.field private os_:I

.field private osv_:Ljava/lang/Object;

.field private sdk_:Ljava/lang/Object;

.field private sdkver_:Ljava/lang/Object;

.field private sessionId_:Ljava/lang/Object;

.field private sourceId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1486
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1769
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sourceId_:Ljava/lang/Object;

    .line 1865
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1961
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    .line 2035
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 2286
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 2382
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 2478
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 2574
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 2670
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2766
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    .line 2840
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    .line 2914
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 3010
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 3106
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 3357
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    .line 3503
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->make_:Ljava/lang/Object;

    .line 3599
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->model_:Ljava/lang/Object;

    .line 3695
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->hwv_:Ljava/lang/Object;

    .line 1487
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 3

    .line 1492
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1769
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sourceId_:Ljava/lang/Object;

    .line 1865
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1961
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    .line 2035
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 2286
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 2382
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 2478
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 2574
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 2670
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2766
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    .line 2840
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    .line 2914
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 3010
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 3106
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 3357
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    .line 3503
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->make_:Ljava/lang/Object;

    .line 3599
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->model_:Ljava/lang/Object;

    .line 3695
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->hwv_:Ljava/lang/Object;

    .line 1493
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V
    .registers 3

    .line 1468
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V
    .registers 2

    .line 1468
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;-><init>()V

    return-void
.end method

.method private ensureExperimentsIsMutable()V
    .registers 3

    .line 3359
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 3360
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    .line 3361
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1474
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticContext_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Struct;",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Lcom/explorestack/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3346
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 3347
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3349
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 3350
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 3351
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 3352
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 3354
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getGeoFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$Geo;",
            "Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2275
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 2276
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2278
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v1

    .line 2279
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2280
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 2281
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 2283
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 1497
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$200()Z

    return-void
.end method


# virtual methods
.method public addAllExperiments(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;"
        }
    .end annotation

    .line 3462
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ensureExperimentsIsMutable()V

    .line 3463
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 3465
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addExperiments(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 3

    .line 3444
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3446
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ensureExperimentsIsMutable()V

    .line 3447
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3448
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addExperimentsBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 3

    .line 3494
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3496
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$3700(Lcom/explorestack/protobuf/ByteString;)V

    .line 3497
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ensureExperimentsIsMutable()V

    .line 3498
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 3499
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1468
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1468
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 3

    .line 1644
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1468
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1468
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/SdkAnalyticContext;
    .registers 3

    .line 1567
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    .line 1568
    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 1569
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1468
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1468
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/SdkAnalyticContext;
    .registers 3

    .line 1576
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V

    .line 1578
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sourceId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$402(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$502(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$602(Lio/bidmachine/protobuf/SdkAnalyticContext;I)I

    .line 1581
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$702(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_24

    .line 1583
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$802(Lio/bidmachine/protobuf/SdkAnalyticContext;Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto :goto_2d

    .line 1585
    :cond_24
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Context$Geo;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$802(Lio/bidmachine/protobuf/SdkAnalyticContext;Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 1587
    :goto_2d
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$902(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1002(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1102(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1202(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1302(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1402(Lio/bidmachine/protobuf/SdkAnalyticContext;I)I

    .line 1593
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1502(Lio/bidmachine/protobuf/SdkAnalyticContext;I)I

    .line 1594
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1602(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1595
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1702(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1802(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1597
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_69

    .line 1598
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1902(Lio/bidmachine/protobuf/SdkAnalyticContext;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_72

    .line 1600
    :cond_69
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1902(Lio/bidmachine/protobuf/SdkAnalyticContext;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 1602
    :goto_72
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_86

    .line 1603
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1604
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bitField0_:I

    .line 1606
    :cond_86
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2002(Lio/bidmachine/protobuf/SdkAnalyticContext;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 1607
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->make_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2102(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->model_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2202(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->hwv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2302(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1468
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1468
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1468
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1468
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 5

    .line 1502
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 1503
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sourceId_:Ljava/lang/Object;

    .line 1505
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1507
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    .line 1509
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 1511
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v3, 0x0

    if-nez v2, :cond_16

    .line 1512
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto :goto_1a

    .line 1514
    :cond_16
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 1515
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1517
    :goto_1a
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 1519
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 1521
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 1523
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 1525
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1527
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    .line 1529
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    .line 1531
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 1533
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 1535
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 1537
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_35

    .line 1538
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_39

    .line 1540
    :cond_35
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 1541
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1543
    :goto_39
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1544
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bitField0_:I

    .line 1545
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->make_:Ljava/lang/Object;

    .line 1547
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->model_:Ljava/lang/Object;

    .line 1549
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->hwv_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearAppVer()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2985
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getAppVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 2986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBmIfv()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2741
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBundle()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 1936
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBundle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    .line 1937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearContype()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2909
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    .line 2910
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDcid()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 3177
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDcid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 3178
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDeviceType()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2835
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    .line 2836
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExperiments()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 3477
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    .line 3478
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bitField0_:I

    .line 3479
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExt()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 3

    .line 3299
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 3300
    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 3301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3303
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 3304
    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1468
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1468
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 1627
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    return-object p1
.end method

.method public clearGeo()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 3

    .line 2228
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2229
    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 2230
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2232
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 2233
    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearHwv()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 3766
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getHwv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->hwv_:Ljava/lang/Object;

    .line 3767
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIfa()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2549
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfa()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 2550
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIfv()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2645
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 2646
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMake()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 3574
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getMake()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->make_:Ljava/lang/Object;

    .line 3575
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearModel()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 3670
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->model_:Ljava/lang/Object;

    .line 3671
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1468
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1468
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1468
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 1632
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    return-object p1
.end method

.method public clearOs()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 2030
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    .line 2031
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOsv()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2106
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getOsv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 2107
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSdk()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2357
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdk()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 2358
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSdkver()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2453
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 2454
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSessionId()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 3081
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 3082
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSourceId()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 1840
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSourceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sourceId_:Ljava/lang/Object;

    .line 1841
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1468
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 1468
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1468
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1468
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1468
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 1616
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1468
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppVer()Ljava/lang/String;
    .registers 3

    .line 2924
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 2925
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2926
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2928
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2929
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    return-object v0

    .line 2932
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAppVerBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2945
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 2946
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2947
    check-cast v0, Ljava/lang/String;

    .line 2948
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2950
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    return-object v0

    .line 2953
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getBmIfv()Ljava/lang/String;
    .registers 3

    .line 2680
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2681
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2682
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2684
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2685
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 2688
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2701
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2702
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2703
    check-cast v0, Ljava/lang/String;

    .line 2704
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2706
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 2709
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getBundle()Ljava/lang/String;
    .registers 3

    .line 1875
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    .line 1876
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1877
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1879
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1880
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    return-object v0

    .line 1883
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBundleBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1896
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    .line 1897
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1898
    check-cast v0, Ljava/lang/String;

    .line 1899
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1901
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    return-object v0

    .line 1904
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getContype()Lcom/explorestack/protobuf/adcom/ConnectionType;
    .registers 2

    .line 2878
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/ConnectionType;->valueOf(I)Lcom/explorestack/protobuf/adcom/ConnectionType;

    move-result-object v0

    if-nez v0, :cond_a

    .line 2879
    sget-object v0, Lcom/explorestack/protobuf/adcom/ConnectionType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ConnectionType;

    :cond_a
    return-object v0
.end method

.method public getContypeValue()I
    .registers 2

    .line 2850
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    return v0
.end method

.method public getDcid()Ljava/lang/String;
    .registers 3

    .line 3116
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 3117
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 3118
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3120
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3121
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    return-object v0

    .line 3124
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDcidBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3137
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 3138
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3139
    check-cast v0, Ljava/lang/String;

    .line 3140
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3142
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    return-object v0

    .line 3145
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1468
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1468
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticContext;
    .registers 2

    .line 1562
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 1557
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticContext_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDeviceType()Lcom/explorestack/protobuf/adcom/DeviceType;
    .registers 2

    .line 2804
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/DeviceType;->valueOf(I)Lcom/explorestack/protobuf/adcom/DeviceType;

    move-result-object v0

    if-nez v0, :cond_a

    .line 2805
    sget-object v0, Lcom/explorestack/protobuf/adcom/DeviceType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/DeviceType;

    :cond_a
    return-object v0
.end method

.method public getDeviceTypeValue()I
    .registers 2

    .line 2776
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    return v0
.end method

.method public getExperiments(I)Ljava/lang/String;
    .registers 3

    .line 3397
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getExperimentsBytes(I)Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3410
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getExperimentsCount()I
    .registers 2

    .line 3385
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExperimentsList()Lcom/explorestack/protobuf/ProtocolStringList;
    .registers 2

    .line 3374
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getExperimentsList()Ljava/util/List;
    .registers 2

    .line 1468
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->getExperimentsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 3225
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3226
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_c
    return-object v0

    .line 3228
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .registers 2

    .line 3318
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 3319
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .registers 2

    .line 3329
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 3330
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 3332
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_13

    .line 3333
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;
    .registers 2

    .line 2154
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2155
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    :cond_c
    return-object v0

    .line 2157
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object v0
.end method

.method public getGeoBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .registers 2

    .line 2247
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2248
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->getGeoFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    return-object v0
.end method

.method public getGeoOrBuilder()Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;
    .registers 2

    .line 2258
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 2259
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;

    return-object v0

    .line 2261
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-nez v0, :cond_13

    .line 2262
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getHwv()Ljava/lang/String;
    .registers 3

    .line 3705
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->hwv_:Ljava/lang/Object;

    .line 3706
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 3707
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3709
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3710
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->hwv_:Ljava/lang/Object;

    return-object v0

    .line 3713
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHwvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3726
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->hwv_:Ljava/lang/Object;

    .line 3727
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3728
    check-cast v0, Ljava/lang/String;

    .line 3729
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3731
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->hwv_:Ljava/lang/Object;

    return-object v0

    .line 3734
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getIfa()Ljava/lang/String;
    .registers 3

    .line 2488
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 2489
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2490
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2492
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2493
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    return-object v0

    .line 2496
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIfaBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2509
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 2510
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2511
    check-cast v0, Ljava/lang/String;

    .line 2512
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2514
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    return-object v0

    .line 2517
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getIfv()Ljava/lang/String;
    .registers 3

    .line 2584
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 2585
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2586
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2588
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2589
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 2592
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2605
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 2606
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2607
    check-cast v0, Ljava/lang/String;

    .line 2608
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2610
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 2613
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getMake()Ljava/lang/String;
    .registers 3

    .line 3513
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->make_:Ljava/lang/Object;

    .line 3514
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 3515
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3517
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3518
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->make_:Ljava/lang/Object;

    return-object v0

    .line 3521
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMakeBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3534
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->make_:Ljava/lang/Object;

    .line 3535
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3536
    check-cast v0, Ljava/lang/String;

    .line 3537
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3539
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->make_:Ljava/lang/Object;

    return-object v0

    .line 3542
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 3

    .line 3609
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->model_:Ljava/lang/Object;

    .line 3610
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 3611
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3613
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3614
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->model_:Ljava/lang/Object;

    return-object v0

    .line 3617
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getModelBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3630
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->model_:Ljava/lang/Object;

    .line 3631
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3632
    check-cast v0, Ljava/lang/String;

    .line 3633
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3635
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->model_:Ljava/lang/Object;

    return-object v0

    .line 3638
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getOs()Lcom/explorestack/protobuf/adcom/OS;
    .registers 2

    .line 1999
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/OS;->valueOf(I)Lcom/explorestack/protobuf/adcom/OS;

    move-result-object v0

    if-nez v0, :cond_a

    .line 2000
    sget-object v0, Lcom/explorestack/protobuf/adcom/OS;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/OS;

    :cond_a
    return-object v0
.end method

.method public getOsValue()I
    .registers 2

    .line 1971
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    return v0
.end method

.method public getOsv()Ljava/lang/String;
    .registers 3

    .line 2045
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 2046
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2047
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2049
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2050
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    return-object v0

    .line 2053
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOsvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2066
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 2067
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2068
    check-cast v0, Ljava/lang/String;

    .line 2069
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2071
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    return-object v0

    .line 2074
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSdk()Ljava/lang/String;
    .registers 3

    .line 2296
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 2297
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2298
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2300
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2301
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 2304
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSdkBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2317
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 2318
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2319
    check-cast v0, Ljava/lang/String;

    .line 2320
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2322
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 2325
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSdkver()Ljava/lang/String;
    .registers 3

    .line 2392
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 2393
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2394
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2396
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2397
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    return-object v0

    .line 2400
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSdkverBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2413
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 2414
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2415
    check-cast v0, Ljava/lang/String;

    .line 2416
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2418
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    return-object v0

    .line 2421
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 3

    .line 3020
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 3021
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 3022
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3024
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3025
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 3028
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3041
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 3042
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3043
    check-cast v0, Ljava/lang/String;

    .line 3044
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3046
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 3049
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .registers 3

    .line 1779
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sourceId_:Ljava/lang/Object;

    .line 1780
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1781
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1783
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1784
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sourceId_:Ljava/lang/Object;

    return-object v0

    .line 1787
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSourceIdBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1800
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sourceId_:Ljava/lang/Object;

    .line 1801
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1802
    check-cast v0, Ljava/lang/String;

    .line 1803
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1805
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sourceId_:Ljava/lang/Object;

    return-object v0

    .line 1808
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hasExt()Z
    .registers 2

    .line 3214
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

.method public hasGeo()Z
    .registers 2

    .line 2143
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

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

    .line 1480
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticContext_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/SdkAnalyticContext;

    const-class v2, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 1481
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

.method public mergeExt(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 3

    .line 3277
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 3278
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_17

    .line 3280
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_19

    .line 3282
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 3284
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3286
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

    .line 1468
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1468
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

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

    .line 1468
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

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

    .line 1468
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1468
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

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

    .line 1468
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1756
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2500()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 1762
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 1758
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/SdkAnalyticContext;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 1759
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

    .line 1762
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 1764
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 3

    .line 1648
    instance-of v0, p1, Lio/bidmachine/protobuf/SdkAnalyticContext;

    if-eqz v0, :cond_b

    .line 1649
    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1

    .line 1651
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 4

    .line 1657
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 1658
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1659
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$400(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sourceId_:Ljava/lang/Object;

    .line 1660
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1662
    :cond_1a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBundle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1663
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$500(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    .line 1664
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1666
    :cond_2d
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$600(Lio/bidmachine/protobuf/SdkAnalyticContext;)I

    move-result v0

    if-eqz v0, :cond_3a

    .line 1667
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getOsValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setOsValue(I)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 1669
    :cond_3a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getOsv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 1670
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$700(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 1671
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1673
    :cond_4d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasGeo()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1674
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeGeo(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 1676
    :cond_5a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 1677
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$900(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 1678
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1680
    :cond_6d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_80

    .line 1681
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1000(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 1682
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1684
    :cond_80
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_93

    .line 1685
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1100(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 1686
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1688
    :cond_93
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a6

    .line 1689
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1200(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 1690
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1692
    :cond_a6
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 1693
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1300(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1694
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1696
    :cond_b9
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1400(Lio/bidmachine/protobuf/SdkAnalyticContext;)I

    move-result v0

    if-eqz v0, :cond_c6

    .line 1697
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDeviceTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setDeviceTypeValue(I)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 1699
    :cond_c6
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1500(Lio/bidmachine/protobuf/SdkAnalyticContext;)I

    move-result v0

    if-eqz v0, :cond_d3

    .line 1700
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getContypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setContypeValue(I)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 1702
    :cond_d3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getAppVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e6

    .line 1703
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1600(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 1704
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1706
    :cond_e6
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f9

    .line 1707
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1700(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 1708
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1710
    :cond_f9
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDcid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10c

    .line 1711
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1800(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 1712
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1714
    :cond_10c
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_119

    .line 1715
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 1717
    :cond_119
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2000(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_147

    .line 1718
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_138

    .line 1719
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2000(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1720
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bitField0_:I

    goto :goto_144

    .line 1722
    :cond_138
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ensureExperimentsIsMutable()V

    .line 1723
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2000(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1725
    :goto_144
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1727
    :cond_147
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getMake()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15a

    .line 1728
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2100(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->make_:Ljava/lang/Object;

    .line 1729
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1731
    :cond_15a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16d

    .line 1732
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2200(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->model_:Ljava/lang/Object;

    .line 1733
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1735
    :cond_16d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getHwv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_180

    .line 1736
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2300(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->hwv_:Ljava/lang/Object;

    .line 1737
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1739
    :cond_180
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2400(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 1740
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeGeo(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 3

    .line 2206
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 2207
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v0, :cond_17

    .line 2209
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->newBuilder(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto :goto_19

    .line 2211
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 2213
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2215
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1468
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1468
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1468
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 3799
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    return-object p1
.end method

.method public setAppVer(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2968
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2971
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 2972
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAppVerBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 3001
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3003
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$3400(Lcom/explorestack/protobuf/ByteString;)V

    .line 3005
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 3006
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setBmIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2724
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2727
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2728
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setBmIfvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2757
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2759
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$3300(Lcom/explorestack/protobuf/ByteString;)V

    .line 2761
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2762
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setBundle(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 1919
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1922
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    .line 1923
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setBundleBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 1952
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1954
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2700(Lcom/explorestack/protobuf/ByteString;)V

    .line 1956
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    .line 1957
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setContype(Lcom/explorestack/protobuf/adcom/ConnectionType;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2892
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2895
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/ConnectionType;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    .line 2896
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setContypeValue(I)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2863
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    .line 2864
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setDcid(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 3160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3163
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 3164
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setDcidBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 3193
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3195
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$3600(Lcom/explorestack/protobuf/ByteString;)V

    .line 3197
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 3198
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setDeviceType(Lcom/explorestack/protobuf/adcom/DeviceType;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2818
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2821
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/DeviceType;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    .line 2822
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setDeviceTypeValue(I)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2789
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    .line 2790
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setExperiments(ILjava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 4

    .line 3425
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3427
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ensureExperimentsIsMutable()V

    .line 3428
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->experiments_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3429
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 3

    .line 3260
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 3261
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 3262
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3264
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 3

    .line 3239
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3241
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3243
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 3244
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3246
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1468
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1468
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 3

    .line 1622
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    return-object p1
.end method

.method public setGeo(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 3

    .line 2189
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 2190
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 2191
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2193
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setGeo(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 3

    .line 2168
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2172
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 2173
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2175
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setHwv(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 3749
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3752
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->hwv_:Ljava/lang/Object;

    .line 3753
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setHwvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 3782
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3784
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$4000(Lcom/explorestack/protobuf/ByteString;)V

    .line 3786
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->hwv_:Ljava/lang/Object;

    .line 3787
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setIfa(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2532
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2535
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 2536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setIfaBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2565
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2567
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$3100(Lcom/explorestack/protobuf/ByteString;)V

    .line 2569
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 2570
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2628
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2631
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 2632
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setIfvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2661
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2663
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$3200(Lcom/explorestack/protobuf/ByteString;)V

    .line 2665
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 2666
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setMake(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 3557
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3560
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->make_:Ljava/lang/Object;

    .line 3561
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setMakeBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 3590
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3592
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$3800(Lcom/explorestack/protobuf/ByteString;)V

    .line 3594
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->make_:Ljava/lang/Object;

    .line 3595
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setModel(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 3653
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3656
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->model_:Ljava/lang/Object;

    .line 3657
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setModelBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 3686
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3688
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$3900(Lcom/explorestack/protobuf/ByteString;)V

    .line 3690
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->model_:Ljava/lang/Object;

    .line 3691
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setOs(Lcom/explorestack/protobuf/adcom/OS;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2013
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2016
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/OS;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    .line 2017
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setOsValue(I)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 1984
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    .line 1985
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setOsv(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2089
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2092
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 2093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setOsvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2124
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2800(Lcom/explorestack/protobuf/ByteString;)V

    .line 2126
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 2127
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 1468
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 1468
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 4

    .line 1638
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    return-object p1
.end method

.method public setSdk(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2340
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2343
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 2344
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSdkBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2373
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2375
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2900(Lcom/explorestack/protobuf/ByteString;)V

    .line 2377
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 2378
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSdkver(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2436
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2439
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 2440
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSdkverBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 2469
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2471
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$3000(Lcom/explorestack/protobuf/ByteString;)V

    .line 2473
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 2474
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 3064
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3067
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 3068
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSessionIdBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 3097
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3099
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$3500(Lcom/explorestack/protobuf/ByteString;)V

    .line 3101
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 3102
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSourceId(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 1823
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1826
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sourceId_:Ljava/lang/Object;

    .line 1827
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSourceIdBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 1856
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1858
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2600(Lcom/explorestack/protobuf/ByteString;)V

    .line 1860
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sourceId_:Ljava/lang/Object;

    .line 1861
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1468
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1468
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .registers 2

    .line 3793
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    return-object p1
.end method

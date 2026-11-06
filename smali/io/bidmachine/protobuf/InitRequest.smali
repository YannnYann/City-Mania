###### Class io.bidmachine.protobuf.InitRequest (io.bidmachine.protobuf.InitRequest)
.class public final Lio/bidmachine/protobuf/InitRequest;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "InitRequest.java"

# interfaces
.implements Lio/bidmachine/protobuf/InitRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/InitRequest$Builder;,
        Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;,
        Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;,
        Lio/bidmachine/protobuf/InitRequest$iOSPlatformDataOrBuilder;,
        Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;,
        Lio/bidmachine/protobuf/InitRequest$AndroidPlatformDataOrBuilder;
    }
.end annotation


# static fields
.field public static final ANDROID_FIELD_NUMBER:I = 0x14

.field public static final APP_VER_FIELD_NUMBER:I = 0xd

.field public static final BM_IFV_FIELD_NUMBER:I = 0xc

.field public static final BUNDLE_FIELD_NUMBER:I = 0x2

.field public static final CONTEXT_FIELD_NUMBER:I = 0x13

.field public static final CONTYPE_FIELD_NUMBER:I = 0xa

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest;

.field public static final DEVICE_TYPE_FIELD_NUMBER:I = 0x9

.field public static final EXT_FIELD_NUMBER:I = 0xf

.field public static final GEO_FIELD_NUMBER:I = 0x5

.field public static final HWV_FIELD_NUMBER:I = 0x12

.field public static final IFA_FIELD_NUMBER:I = 0x8

.field public static final IFV_FIELD_NUMBER:I = 0xb

.field public static final IOS_FIELD_NUMBER:I = 0x15

.field public static final MAKE_FIELD_NUMBER:I = 0x10

.field public static final MODEL_FIELD_NUMBER:I = 0x11

.field public static final OSV_FIELD_NUMBER:I = 0x4

.field public static final OS_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/InitRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final SDKVER_FIELD_NUMBER:I = 0x7

.field public static final SDK_FIELD_NUMBER:I = 0x6

.field public static final SELLER_ID_FIELD_NUMBER:I = 0x1

.field public static final SESSION_ID_FIELD_NUMBER:I = 0xe

.field private static final serialVersionUID:J


# instance fields
.field private volatile appVer_:Ljava/lang/Object;

.field private volatile bmIfv_:Ljava/lang/Object;

.field private volatile bundle_:Ljava/lang/Object;

.field private context_:Lcom/explorestack/protobuf/adcom/Context;

.field private contype_:I

.field private deviceType_:I

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

.field private platformDataCase_:I

.field private platformData_:Ljava/lang/Object;

.field private volatile sdk_:Ljava/lang/Object;

.field private volatile sdkver_:Ljava/lang/Object;

.field private volatile sellerId_:Ljava/lang/Object;

.field private volatile sessionId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6954
    new-instance v0, Lio/bidmachine/protobuf/InitRequest;

    invoke-direct {v0}, Lio/bidmachine/protobuf/InitRequest;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/InitRequest;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest;

    .line 6962
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/InitRequest$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 3143
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest;->platformDataCase_:I

    const/4 v1, -0x1

    .line 4027
    iput-byte v1, p0, Lio/bidmachine/protobuf/InitRequest;->memoizedIsInitialized:B

    .line 19
    const-string v1, ""

    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->sellerId_:Ljava/lang/Object;

    .line 20
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->bundle_:Ljava/lang/Object;

    .line 21
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest;->os_:I

    .line 22
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->osv_:Ljava/lang/Object;

    .line 23
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->sdk_:Ljava/lang/Object;

    .line 24
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->sdkver_:Ljava/lang/Object;

    .line 25
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->ifa_:Ljava/lang/Object;

    .line 26
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->ifv_:Ljava/lang/Object;

    .line 27
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->bmIfv_:Ljava/lang/Object;

    .line 28
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    .line 29
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    .line 30
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->appVer_:Ljava/lang/Object;

    .line 31
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->sessionId_:Ljava/lang/Object;

    .line 32
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->make_:Ljava/lang/Object;

    .line 33
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->model_:Ljava/lang/Object;

    .line 34
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->hwv_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest;-><init>()V

    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_173

    .line 62
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_17e

    .line 231
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :sswitch_1c
    move v1, v3

    goto :goto_b

    :catchall_1e
    move-exception p1

    goto/16 :goto_169

    :catch_21
    move-exception p1

    goto/16 :goto_15a

    :catch_24
    move-exception p1

    goto/16 :goto_164

    .line 218
    :sswitch_27
    iget v2, p0, Lio/bidmachine/protobuf/InitRequest;->platformDataCase_:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_35

    .line 219
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->platformData_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->toBuilder()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object v4

    .line 222
    :cond_35
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->platformData_:Ljava/lang/Object;

    if-eqz v4, :cond_4c

    .line 224
    check-cast v2, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    invoke-virtual {v4, v2}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    .line 225
    invoke-virtual {v4}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->buildPartial()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->platformData_:Ljava/lang/Object;

    .line 227
    :cond_4c
    iput v3, p0, Lio/bidmachine/protobuf/InitRequest;->platformDataCase_:I

    goto :goto_b

    .line 204
    :sswitch_4f
    iget v2, p0, Lio/bidmachine/protobuf/InitRequest;->platformDataCase_:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_5d

    .line 205
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->platformData_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->toBuilder()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object v4

    .line 208
    :cond_5d
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->platformData_:Ljava/lang/Object;

    if-eqz v4, :cond_74

    .line 210
    check-cast v2, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    invoke-virtual {v4, v2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    .line 211
    invoke-virtual {v4}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->buildPartial()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->platformData_:Ljava/lang/Object;

    .line 213
    :cond_74
    iput v3, p0, Lio/bidmachine/protobuf/InitRequest;->platformDataCase_:I

    goto :goto_b

    .line 191
    :sswitch_77
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v2, :cond_7f

    .line 192
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Context;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object v4

    .line 194
    :cond_7f
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/adcom/Context;

    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v4, :cond_b

    .line 196
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 197
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Context$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->context_:Lcom/explorestack/protobuf/adcom/Context;

    goto/16 :goto_b

    .line 184
    :sswitch_98
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 186
    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->hwv_:Ljava/lang/Object;

    goto/16 :goto_b

    .line 178
    :sswitch_a0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 180
    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->model_:Ljava/lang/Object;

    goto/16 :goto_b

    .line 172
    :sswitch_a8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 174
    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->make_:Ljava/lang/Object;

    goto/16 :goto_b

    .line 160
    :sswitch_b0
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v2, :cond_b8

    .line 161
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    .line 163
    :cond_b8
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Struct;

    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_b

    .line 165
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 166
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->ext_:Lcom/explorestack/protobuf/Struct;

    goto/16 :goto_b

    .line 153
    :sswitch_d1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 155
    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->sessionId_:Ljava/lang/Object;

    goto/16 :goto_b

    .line 147
    :sswitch_d9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 149
    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->appVer_:Ljava/lang/Object;

    goto/16 :goto_b

    .line 141
    :sswitch_e1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 143
    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->bmIfv_:Ljava/lang/Object;

    goto/16 :goto_b

    .line 135
    :sswitch_e9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 137
    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->ifv_:Ljava/lang/Object;

    goto/16 :goto_b

    .line 129
    :sswitch_f1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 131
    iput v2, p0, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    goto/16 :goto_b

    .line 123
    :sswitch_f9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 125
    iput v2, p0, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    goto/16 :goto_b

    .line 117
    :sswitch_101
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 119
    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->ifa_:Ljava/lang/Object;

    goto/16 :goto_b

    .line 111
    :sswitch_109
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 113
    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->sdkver_:Ljava/lang/Object;

    goto/16 :goto_b

    .line 105
    :sswitch_111
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 107
    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->sdk_:Ljava/lang/Object;

    goto/16 :goto_b

    .line 93
    :sswitch_119
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v2, :cond_121

    .line 94
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Context$Geo;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v4

    .line 96
    :cond_121
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/adcom/Context$Geo;

    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v4, :cond_b

    .line 98
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 99
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto/16 :goto_b

    .line 86
    :sswitch_13a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 88
    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->osv_:Ljava/lang/Object;

    goto/16 :goto_b

    .line 80
    :sswitch_142
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 82
    iput v2, p0, Lio/bidmachine/protobuf/InitRequest;->os_:I

    goto/16 :goto_b

    .line 74
    :sswitch_14a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 76
    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->bundle_:Ljava/lang/Object;

    goto/16 :goto_b

    .line 68
    :sswitch_152
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 70
    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->sellerId_:Ljava/lang/Object;
    :try_end_158
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_158} :catch_24
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_158} :catch_21
    .catchall {:try_start_d .. :try_end_158} :catchall_1e

    goto/16 :goto_b

    .line 242
    :goto_15a
    :try_start_15a
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 243
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 240
    :goto_164
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_169
    .catchall {:try_start_15a .. :try_end_169} :catchall_1e

    .line 245
    :goto_169
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 246
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 247
    throw p1

    .line 245
    :cond_173
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 246
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_17e
    .sparse-switch
        0x0 -> :sswitch_1c
        0xa -> :sswitch_152
        0x12 -> :sswitch_14a
        0x18 -> :sswitch_142
        0x22 -> :sswitch_13a
        0x2a -> :sswitch_119
        0x32 -> :sswitch_111
        0x3a -> :sswitch_109
        0x42 -> :sswitch_101
        0x48 -> :sswitch_f9
        0x50 -> :sswitch_f1
        0x5a -> :sswitch_e9
        0x62 -> :sswitch_e1
        0x6a -> :sswitch_d9
        0x72 -> :sswitch_d1
        0x7a -> :sswitch_b0
        0x82 -> :sswitch_a8
        0x8a -> :sswitch_a0
        0x92 -> :sswitch_98
        0x9a -> :sswitch_77
        0xa2 -> :sswitch_4f
        0xaa -> :sswitch_27
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/InitRequest$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    const/4 p1, 0x0

    .line 3143
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest;->platformDataCase_:I

    const/4 p1, -0x1

    .line 4027
    iput-byte p1, p0, Lio/bidmachine/protobuf/InitRequest;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/InitRequest$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/InitRequest;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$3300()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$3500(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest;->sellerId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3502(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->sellerId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3600(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest;->bundle_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3602(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->bundle_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3700(Lio/bidmachine/protobuf/InitRequest;)I
    .registers 1

    .line 9
    iget p0, p0, Lio/bidmachine/protobuf/InitRequest;->os_:I

    return p0
.end method

.method public static synthetic access$3702(Lio/bidmachine/protobuf/InitRequest;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest;->os_:I

    return p1
.end method

.method public static synthetic access$3800(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest;->osv_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$3802(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->osv_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$3902(Lio/bidmachine/protobuf/InitRequest;Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object p1
.end method

.method public static synthetic access$4000(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest;->sdk_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4002(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->sdk_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4100(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest;->sdkver_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4102(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->sdkver_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4200(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest;->ifa_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4202(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->ifa_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4300(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest;->ifv_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4302(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->ifv_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4400(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest;->bmIfv_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4402(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->bmIfv_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4500(Lio/bidmachine/protobuf/InitRequest;)I
    .registers 1

    .line 9
    iget p0, p0, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    return p0
.end method

.method public static synthetic access$4502(Lio/bidmachine/protobuf/InitRequest;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    return p1
.end method

.method public static synthetic access$4600(Lio/bidmachine/protobuf/InitRequest;)I
    .registers 1

    .line 9
    iget p0, p0, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    return p0
.end method

.method public static synthetic access$4602(Lio/bidmachine/protobuf/InitRequest;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    return p1
.end method

.method public static synthetic access$4700(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest;->appVer_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4702(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->appVer_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4800(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest;->sessionId_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$4802(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->sessionId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$4902(Lio/bidmachine/protobuf/InitRequest;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method public static synthetic access$5000(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest;->make_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$5002(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->make_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$5100(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest;->model_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$5102(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->model_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$5200(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest;->hwv_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$5202(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->hwv_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$5302(Lio/bidmachine/protobuf/InitRequest;Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->context_:Lcom/explorestack/protobuf/adcom/Context;

    return-object p1
.end method

.method public static synthetic access$5402(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest;->platformData_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$5502(Lio/bidmachine/protobuf/InitRequest;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest;->platformDataCase_:I

    return p1
.end method

.method public static synthetic access$5600(Lio/bidmachine/protobuf/InitRequest;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$5700()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$5800(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$5900(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$6000(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$6100(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$6200(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$6300(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$6400(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$6500(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$6600(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$6700(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$6800(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$6900(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$7000(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;
    .registers 1

    .line 6958
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 251
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 1

    .line 4401
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->toBuilder()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/InitRequest;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 4404
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->toBuilder()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/InitRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4374
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4375
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4381
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4382
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4342
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4348
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/InitRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4387
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4388
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4394
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4395
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/InitRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4362
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4363
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4369
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4370
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/InitRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4331
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4337
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/InitRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4352
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4358
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/InitRequest;",
            ">;"
        }
    .end annotation

    .line 6973
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 4194
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/InitRequest;

    if-nez v1, :cond_d

    .line 4195
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4197
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/InitRequest;

    .line 4199
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSellerId()Ljava/lang/String;

    move-result-object v1

    .line 4200
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getSellerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 4201
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getBundle()Ljava/lang/String;

    move-result-object v1

    .line 4202
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getBundle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    .line 4203
    :cond_2e
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest;->os_:I

    iget v3, p1, Lio/bidmachine/protobuf/InitRequest;->os_:I

    if-eq v1, v3, :cond_35

    return v2

    .line 4204
    :cond_35
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getOsv()Ljava/lang/String;

    move-result-object v1

    .line 4205
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getOsv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    return v2

    .line 4206
    :cond_44
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->hasGeo()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->hasGeo()Z

    move-result v3

    if-eq v1, v3, :cond_4f

    return v2

    .line 4207
    :cond_4f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->hasGeo()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 4208
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v1

    .line 4209
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Context$Geo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    .line 4211
    :cond_64
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSdk()Ljava/lang/String;

    move-result-object v1

    .line 4212
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getSdk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    return v2

    .line 4213
    :cond_73
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSdkver()Ljava/lang/String;

    move-result-object v1

    .line 4214
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getSdkver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    return v2

    .line 4215
    :cond_82
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getIfa()Ljava/lang/String;

    move-result-object v1

    .line 4216
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getIfa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    return v2

    .line 4217
    :cond_91
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getIfv()Ljava/lang/String;

    move-result-object v1

    .line 4218
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getIfv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a0

    return v2

    .line 4219
    :cond_a0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getBmIfv()Ljava/lang/String;

    move-result-object v1

    .line 4220
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getBmIfv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_af

    return v2

    .line 4221
    :cond_af
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    iget v3, p1, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    if-eq v1, v3, :cond_b6

    return v2

    .line 4222
    :cond_b6
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    iget v3, p1, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    if-eq v1, v3, :cond_bd

    return v2

    .line 4223
    :cond_bd
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getAppVer()Ljava/lang/String;

    move-result-object v1

    .line 4224
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getAppVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cc

    return v2

    .line 4225
    :cond_cc
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSessionId()Ljava/lang/String;

    move-result-object v1

    .line 4226
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_db

    return v2

    .line 4227
    :cond_db
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_e6

    return v2

    .line 4228
    :cond_e6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 4229
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 4230
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    return v2

    .line 4232
    :cond_fb
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getMake()Ljava/lang/String;

    move-result-object v1

    .line 4233
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getMake()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10a

    return v2

    .line 4234
    :cond_10a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getModel()Ljava/lang/String;

    move-result-object v1

    .line 4235
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_119

    return v2

    .line 4236
    :cond_119
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getHwv()Ljava/lang/String;

    move-result-object v1

    .line 4237
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getHwv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_128

    return v2

    .line 4238
    :cond_128
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->hasContext()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->hasContext()Z

    move-result v3

    if-eq v1, v3, :cond_133

    return v2

    .line 4239
    :cond_133
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->hasContext()Z

    move-result v1

    if-eqz v1, :cond_148

    .line 4240
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v1

    .line 4241
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Context;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_148

    return v2

    .line 4243
    :cond_148
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getPlatformDataCase()Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getPlatformDataCase()Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_157

    return v2

    .line 4244
    :cond_157
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest;->platformDataCase_:I

    const/16 v3, 0x14

    if-eq v1, v3, :cond_171

    const/16 v3, 0x15

    if-eq v1, v3, :cond_162

    goto :goto_180

    .line 4250
    :cond_162
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getIos()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object v1

    .line 4251
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getIos()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_180

    return v2

    .line 4246
    :cond_171
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getAndroid()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v1

    .line 4247
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getAndroid()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_180

    return v2

    .line 4256
    :cond_180
    :goto_180
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18b

    return v2

    :cond_18b
    return v0
.end method

.method public getAndroid()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
    .registers 3

    .line 3980
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->platformDataCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_b

    .line 3981
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->platformData_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    return-object v0

    .line 3983
    :cond_b
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public getAndroidOrBuilder()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformDataOrBuilder;
    .registers 3

    .line 3990
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->platformDataCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_b

    .line 3991
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->platformData_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    return-object v0

    .line 3993
    :cond_b
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public getAppVer()Ljava/lang/String;
    .registers 3

    .line 3683
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->appVer_:Ljava/lang/Object;

    .line 3684
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3685
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3687
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3689
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3690
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->appVer_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAppVerBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3705
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->appVer_:Ljava/lang/Object;

    .line 3706
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3707
    check-cast v0, Ljava/lang/String;

    .line 3708
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3710
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->appVer_:Ljava/lang/Object;

    return-object v0

    .line 3713
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getBmIfv()Ljava/lang/String;
    .registers 3

    .line 3583
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->bmIfv_:Ljava/lang/Object;

    .line 3584
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3585
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3587
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3589
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3590
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->bmIfv_:Ljava/lang/Object;

    return-object v0
.end method

.method public getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3605
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->bmIfv_:Ljava/lang/Object;

    .line 3606
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3607
    check-cast v0, Ljava/lang/String;

    .line 3608
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3610
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 3613
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getBundle()Ljava/lang/String;
    .registers 3

    .line 3242
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->bundle_:Ljava/lang/Object;

    .line 3243
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3244
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3246
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3248
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3249
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->bundle_:Ljava/lang/Object;

    return-object v0
.end method

.method public getBundleBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3264
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->bundle_:Ljava/lang/Object;

    .line 3265
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3266
    check-cast v0, Ljava/lang/String;

    .line 3267
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3269
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->bundle_:Ljava/lang/Object;

    return-object v0

    .line 3272
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getContext()Lcom/explorestack/protobuf/adcom/Context;
    .registers 2

    .line 3955
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getContextOrBuilder()Lcom/explorestack/protobuf/adcom/ContextOrBuilder;
    .registers 2

    .line 3962
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    return-object v0
.end method

.method public getContype()Lcom/explorestack/protobuf/adcom/ConnectionType;
    .registers 2

    .line 3667
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/ConnectionType;->valueOf(I)Lcom/explorestack/protobuf/adcom/ConnectionType;

    move-result-object v0

    if-nez v0, :cond_a

    .line 3668
    sget-object v0, Lcom/explorestack/protobuf/adcom/ConnectionType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ConnectionType;

    :cond_a
    return-object v0
.end method

.method public getContypeValue()I
    .registers 2

    .line 3655
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest;
    .registers 2

    .line 6983
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest;

    return-object v0
.end method

.method public getDeviceType()Lcom/explorestack/protobuf/adcom/DeviceType;
    .registers 2

    .line 3640
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/DeviceType;->valueOf(I)Lcom/explorestack/protobuf/adcom/DeviceType;

    move-result-object v0

    if-nez v0, :cond_a

    .line 3641
    sget-object v0, Lcom/explorestack/protobuf/adcom/DeviceType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/DeviceType;

    :cond_a
    return-object v0
.end method

.method public getDeviceTypeValue()I
    .registers 2

    .line 3628
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    return v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 3787
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .registers 2

    .line 3798
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;
    .registers 2

    .line 3373
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getGeoOrBuilder()Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;
    .registers 2

    .line 3384
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    return-object v0
.end method

.method public getHwv()Ljava/lang/String;
    .registers 3

    .line 3905
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->hwv_:Ljava/lang/Object;

    .line 3906
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3907
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3909
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3911
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3912
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->hwv_:Ljava/lang/Object;

    return-object v0
.end method

.method public getHwvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3927
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->hwv_:Ljava/lang/Object;

    .line 3928
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3929
    check-cast v0, Ljava/lang/String;

    .line 3930
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3932
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->hwv_:Ljava/lang/Object;

    return-object v0

    .line 3935
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getIfa()Ljava/lang/String;
    .registers 3

    .line 3491
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->ifa_:Ljava/lang/Object;

    .line 3492
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3493
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3495
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3497
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3498
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->ifa_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIfaBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3513
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->ifa_:Ljava/lang/Object;

    .line 3514
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3515
    check-cast v0, Ljava/lang/String;

    .line 3516
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3518
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->ifa_:Ljava/lang/Object;

    return-object v0

    .line 3521
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getIfv()Ljava/lang/String;
    .registers 3

    .line 3537
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->ifv_:Ljava/lang/Object;

    .line 3538
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3539
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3541
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3543
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3544
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->ifv_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3559
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->ifv_:Ljava/lang/Object;

    .line 3560
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3561
    check-cast v0, Ljava/lang/String;

    .line 3562
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3564
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 3567
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getIos()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
    .registers 3

    .line 4011
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->platformDataCase_:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_b

    .line 4012
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->platformData_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    return-object v0

    .line 4014
    :cond_b
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public getIosOrBuilder()Lio/bidmachine/protobuf/InitRequest$iOSPlatformDataOrBuilder;
    .registers 3

    .line 4021
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->platformDataCase_:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_b

    .line 4022
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->platformData_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    return-object v0

    .line 4024
    :cond_b
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public getMake()Ljava/lang/String;
    .registers 3

    .line 3813
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->make_:Ljava/lang/Object;

    .line 3814
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3815
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3817
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3819
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3820
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->make_:Ljava/lang/Object;

    return-object v0
.end method

.method public getMakeBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3835
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->make_:Ljava/lang/Object;

    .line 3836
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3837
    check-cast v0, Ljava/lang/String;

    .line 3838
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3840
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->make_:Ljava/lang/Object;

    return-object v0

    .line 3843
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 3

    .line 3859
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->model_:Ljava/lang/Object;

    .line 3860
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3861
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3863
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3865
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3866
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->model_:Ljava/lang/Object;

    return-object v0
.end method

.method public getModelBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3881
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->model_:Ljava/lang/Object;

    .line 3882
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3883
    check-cast v0, Ljava/lang/String;

    .line 3884
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3886
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->model_:Ljava/lang/Object;

    return-object v0

    .line 3889
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getOs()Lcom/explorestack/protobuf/adcom/OS;
    .registers 2

    .line 3299
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->os_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/OS;->valueOf(I)Lcom/explorestack/protobuf/adcom/OS;

    move-result-object v0

    if-nez v0, :cond_a

    .line 3300
    sget-object v0, Lcom/explorestack/protobuf/adcom/OS;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/OS;

    :cond_a
    return-object v0
.end method

.method public getOsValue()I
    .registers 2

    .line 3287
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->os_:I

    return v0
.end method

.method public getOsv()Ljava/lang/String;
    .registers 3

    .line 3315
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->osv_:Ljava/lang/Object;

    .line 3316
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3317
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3319
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3321
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3322
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->osv_:Ljava/lang/Object;

    return-object v0
.end method

.method public getOsvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3337
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->osv_:Ljava/lang/Object;

    .line 3338
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3339
    check-cast v0, Ljava/lang/String;

    .line 3340
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3342
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->osv_:Ljava/lang/Object;

    return-object v0

    .line 3345
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
            "Lio/bidmachine/protobuf/InitRequest;",
            ">;"
        }
    .end annotation

    .line 6978
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPlatformDataCase()Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;
    .registers 2

    .line 3180
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->platformDataCase_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->forNumber(I)Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    move-result-object v0

    return-object v0
.end method

.method public getSdk()Ljava/lang/String;
    .registers 3

    .line 3399
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sdk_:Ljava/lang/Object;

    .line 3400
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3401
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3403
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3405
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3406
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sdk_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSdkBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3421
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sdk_:Ljava/lang/Object;

    .line 3422
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3423
    check-cast v0, Ljava/lang/String;

    .line 3424
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3426
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 3429
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSdkver()Ljava/lang/String;
    .registers 3

    .line 3445
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sdkver_:Ljava/lang/Object;

    .line 3446
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3447
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3449
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3451
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3452
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sdkver_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSdkverBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3467
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sdkver_:Ljava/lang/Object;

    .line 3468
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3469
    check-cast v0, Ljava/lang/String;

    .line 3470
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3472
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sdkver_:Ljava/lang/Object;

    return-object v0

    .line 3475
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSellerId()Ljava/lang/String;
    .registers 3

    .line 3196
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sellerId_:Ljava/lang/Object;

    .line 3197
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3198
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3200
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3202
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3203
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sellerId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSellerIdBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3218
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sellerId_:Ljava/lang/Object;

    .line 3219
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3220
    check-cast v0, Ljava/lang/String;

    .line 3221
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3223
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sellerId_:Ljava/lang/Object;

    return-object v0

    .line 3226
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 4109
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 4113
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSellerIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 4114
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->sellerId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 4116
    :goto_19
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getBundleBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    const/4 v1, 0x2

    .line 4117
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->bundle_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4119
    :cond_2b
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest;->os_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/OS;->OS_INVALID:Lcom/explorestack/protobuf/adcom/OS;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/OS;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_3d

    const/4 v1, 0x3

    .line 4120
    iget v2, p0, Lio/bidmachine/protobuf/InitRequest;->os_:I

    .line 4121
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4123
    :cond_3d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getOsvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

    const/4 v1, 0x4

    .line 4124
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->osv_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4126
    :cond_4f
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v1, :cond_5d

    const/4 v1, 0x5

    .line 4128
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4130
    :cond_5d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSdkBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6f

    const/4 v1, 0x6

    .line 4131
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->sdk_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4133
    :cond_6f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSdkverBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_81

    const/4 v1, 0x7

    .line 4134
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->sdkver_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4136
    :cond_81
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getIfaBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_94

    const/16 v1, 0x8

    .line 4137
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->ifa_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4139
    :cond_94
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/DeviceType;->DEVICE_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/DeviceType;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/DeviceType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_a7

    const/16 v1, 0x9

    .line 4140
    iget v2, p0, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    .line 4141
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4143
    :cond_a7
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/ConnectionType;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/ConnectionType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_ba

    const/16 v1, 0xa

    .line 4144
    iget v2, p0, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    .line 4145
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4147
    :cond_ba
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_cd

    const/16 v1, 0xb

    .line 4148
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->ifv_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4150
    :cond_cd
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e0

    const/16 v1, 0xc

    .line 4151
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->bmIfv_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4153
    :cond_e0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getAppVerBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f3

    const/16 v1, 0xd

    .line 4154
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->appVer_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4156
    :cond_f3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_106

    const/16 v1, 0xe

    .line 4157
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->sessionId_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4159
    :cond_106
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_115

    const/16 v1, 0xf

    .line 4161
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4163
    :cond_115
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getMakeBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_128

    const/16 v1, 0x10

    .line 4164
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->make_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4166
    :cond_128
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getModelBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13b

    const/16 v1, 0x11

    .line 4167
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->model_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4169
    :cond_13b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getHwvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14e

    const/16 v1, 0x12

    .line 4170
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest;->hwv_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4172
    :cond_14e
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v1, :cond_15d

    const/16 v1, 0x13

    .line 4174
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4176
    :cond_15d
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest;->platformDataCase_:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_16c

    .line 4177
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->platformData_:Ljava/lang/Object;

    check-cast v1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    .line 4178
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4180
    :cond_16c
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest;->platformDataCase_:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_17b

    .line 4181
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->platformData_:Ljava/lang/Object;

    check-cast v1, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    .line 4182
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4184
    :cond_17b
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 4185
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 3

    .line 3729
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sessionId_:Ljava/lang/Object;

    .line 3730
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3731
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3733
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3735
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3736
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sessionId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3751
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sessionId_:Ljava/lang/Object;

    .line 3752
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3753
    check-cast v0, Ljava/lang/String;

    .line 3754
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3756
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 3759
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAndroid()Z
    .registers 3

    .line 3972
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->platformDataCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasContext()Z
    .registers 2

    .line 3947
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasExt()Z
    .registers 2

    .line 3775
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasGeo()Z
    .registers 2

    .line 3361
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasIos()Z
    .registers 3

    .line 4003
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->platformDataCase_:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 4262
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 4266
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 4268
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSellerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 4270
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getBundle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 4272
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->os_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 4274
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getOsv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 4275
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->hasGeo()Z

    move-result v0

    if-eqz v0, :cond_5b

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 4277
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_5b
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 4280
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSdk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 4282
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSdkver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 4284
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getIfa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    .line 4286
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    .line 4288
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 4290
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 4292
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    .line 4294
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getAppVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xe

    mul-int/lit8 v1, v1, 0x35

    .line 4296
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 4297
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_eb

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x35

    .line 4299
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_eb
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x35

    .line 4302
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getMake()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x11

    mul-int/lit8 v1, v1, 0x35

    .line 4304
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x12

    mul-int/lit8 v1, v1, 0x35

    .line 4306
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getHwv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 4307
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->hasContext()Z

    move-result v0

    if-eqz v0, :cond_12d

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x13

    mul-int/lit8 v1, v1, 0x35

    .line 4309
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 4311
    :cond_12d
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->platformDataCase_:I

    const/16 v2, 0x14

    if-eq v0, v2, :cond_147

    const/16 v2, 0x15

    if-eq v0, v2, :cond_138

    goto :goto_155

    :cond_138
    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x35

    .line 4318
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getIos()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->hashCode()I

    move-result v0

    :goto_145
    add-int/2addr v1, v0

    goto :goto_155

    :cond_147
    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x35

    .line 4314
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getAndroid()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->hashCode()I

    move-result v0

    goto :goto_145

    :goto_155
    mul-int/lit8 v1, v1, 0x1d

    .line 4323
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 4324
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 257
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/InitRequest;

    const-class v2, Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 258
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 4030
    iget-byte v0, p0, Lio/bidmachine/protobuf/InitRequest;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 4034
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/InitRequest;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->newBuilderForType()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->newBuilderForType()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 4399
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->newBuilder()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 4

    .line 4415
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/InitRequest$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/InitRequest$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 41
    new-instance p1, Lio/bidmachine/protobuf/InitRequest;

    invoke-direct {p1}, Lio/bidmachine/protobuf/InitRequest;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->toBuilder()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->toBuilder()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 3

    .line 4408
    sget-object v0, Lio/bidmachine/protobuf/InitRequest;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 4409
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/InitRequest$Builder;-><init>(Lio/bidmachine/protobuf/InitRequest$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/InitRequest$Builder;-><init>(Lio/bidmachine/protobuf/InitRequest$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest;)Lio/bidmachine/protobuf/InitRequest$Builder;

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

    .line 4041
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSellerIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 4042
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->sellerId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4044
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getBundleBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x2

    .line 4045
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->bundle_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4047
    :cond_20
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->os_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/OS;->OS_INVALID:Lcom/explorestack/protobuf/adcom/OS;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/OS;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_30

    const/4 v0, 0x3

    .line 4048
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest;->os_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4050
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getOsvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    const/4 v0, 0x4

    .line 4051
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->osv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4053
    :cond_40
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v0, :cond_4c

    const/4 v0, 0x5

    .line 4054
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 4056
    :cond_4c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSdkBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5c

    const/4 v0, 0x6

    .line 4057
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->sdk_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4059
    :cond_5c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSdkverBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6c

    const/4 v0, 0x7

    .line 4060
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->sdkver_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4062
    :cond_6c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getIfaBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7d

    const/16 v0, 0x8

    .line 4063
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->ifa_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4065
    :cond_7d
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/DeviceType;->DEVICE_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/DeviceType;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/DeviceType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_8e

    const/16 v0, 0x9

    .line 4066
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest;->deviceType_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4068
    :cond_8e
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/ConnectionType;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/ConnectionType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_9f

    const/16 v0, 0xa

    .line 4069
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest;->contype_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4071
    :cond_9f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b0

    const/16 v0, 0xb

    .line 4072
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->ifv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4074
    :cond_b0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c1

    const/16 v0, 0xc

    .line 4075
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->bmIfv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4077
    :cond_c1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getAppVerBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d2

    const/16 v0, 0xd

    .line 4078
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->appVer_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4080
    :cond_d2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e3

    const/16 v0, 0xe

    .line 4081
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->sessionId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4083
    :cond_e3
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_f0

    const/16 v0, 0xf

    .line 4084
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 4086
    :cond_f0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getMakeBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_101

    const/16 v0, 0x10

    .line 4087
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->make_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4089
    :cond_101
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getModelBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_112

    const/16 v0, 0x11

    .line 4090
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->model_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4092
    :cond_112
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getHwvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_123

    const/16 v0, 0x12

    .line 4093
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest;->hwv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4095
    :cond_123
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v0, :cond_130

    const/16 v0, 0x13

    .line 4096
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 4098
    :cond_130
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->platformDataCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_13d

    .line 4099
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->platformData_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 4101
    :cond_13d
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest;->platformDataCase_:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_14a

    .line 4102
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest;->platformData_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 4104
    :cond_14a
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.InitRequest.AnonymousClass1 (io.bidmachine.protobuf.InitRequest$1)
.class Lio/bidmachine/protobuf/InitRequest$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "InitRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/InitRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6962
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6968
    new-instance v0, Lio/bidmachine/protobuf/InitRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/InitRequest;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/InitRequest$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6962
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.InitRequest.AnonymousClass2 (io.bidmachine.protobuf.InitRequest$2)
.class synthetic Lio/bidmachine/protobuf/InitRequest$2;
.super Ljava/lang/Object;
.source "InitRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$bidmachine$protobuf$InitRequest$PlatformDataCase:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 4698
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->values()[Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/bidmachine/protobuf/InitRequest$2;->$SwitchMap$io$bidmachine$protobuf$InitRequest$PlatformDataCase:[I

    :try_start_9
    sget-object v1, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->ANDROID:Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$2;->$SwitchMap$io$bidmachine$protobuf$InitRequest$PlatformDataCase:[I

    sget-object v1, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->IOS:Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$2;->$SwitchMap$io$bidmachine$protobuf$InitRequest$PlatformDataCase:[I

    sget-object v1, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->PLATFORMDATA_NOT_SET:Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

###### Class io.bidmachine.protobuf.InitRequest.AndroidPlatformData (io.bidmachine.protobuf.InitRequest$AndroidPlatformData)
.class public final Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "InitRequest.java"

# interfaces
.implements Lio/bidmachine/protobuf/InitRequest$AndroidPlatformDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidPlatformData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;,
        Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;,
        Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetricsOrBuilder;
    }
.end annotation


# static fields
.field public static final CONTENT_PROVIDER_STARTUP_METRICS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

.field public static final KOTLIN_VERSION_FIELD_NUMBER:I = 0x2

.field public static final MIN_API_LEVEL_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private contentProviderStartupMetrics_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private volatile kotlinVersion_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private minApiLevel_:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2277
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    invoke-direct {v0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    .line 2285
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 352
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1432
    iput-byte v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->memoizedIsInitialized:B

    .line 353
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->kotlinVersion_:Ljava/lang/Object;

    .line 354
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->contentProviderStartupMetrics_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 373
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;-><init>()V

    .line 375
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_78

    .line 383
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_27

    const/16 v5, 0x8

    if-eq v3, v5, :cond_4e

    const/16 v5, 0x12

    if-eq v3, v5, :cond_47

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_2f

    .line 409
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_27
    move v1, v4

    goto :goto_c

    :catchall_29
    move-exception p1

    goto :goto_64

    :catch_2b
    move-exception p1

    goto :goto_55

    :catch_2d
    move-exception p1

    goto :goto_5f

    :cond_2f
    if-nez v2, :cond_39

    .line 401
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->contentProviderStartupMetrics_:Ljava/util/List;

    move v2, v4

    .line 404
    :cond_39
    iget-object v3, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->contentProviderStartupMetrics_:Ljava/util/List;

    .line 405
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 404
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 394
    :cond_47
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 396
    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->kotlinVersion_:Ljava/lang/Object;

    goto :goto_c

    .line 390
    :cond_4e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->minApiLevel_:I
    :try_end_54
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_54} :catch_2d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_54} :catch_2b
    .catchall {:try_start_e .. :try_end_54} :catchall_29

    goto :goto_c

    .line 420
    :goto_55
    :try_start_55
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 421
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 418
    :goto_5f
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_64
    .catchall {:try_start_55 .. :try_end_64} :catchall_29

    :goto_64
    if-eqz v2, :cond_6e

    .line 424
    iget-object p2, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->contentProviderStartupMetrics_:Ljava/util/List;

    .line 426
    :cond_6e
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 427
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 428
    throw p1

    :cond_78
    if-eqz v2, :cond_82

    .line 424
    iget-object p1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->contentProviderStartupMetrics_:Ljava/util/List;

    .line 426
    :cond_82
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 427
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/InitRequest$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 343
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 350
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1432
    iput-byte p1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/InitRequest$1;)V
    .registers 3

    .line 343
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1200()Z
    .registers 1

    .line 343
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1402(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;I)I
    .registers 2

    .line 343
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->minApiLevel_:I

    return p1
.end method

.method public static synthetic access$1500(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Ljava/lang/Object;
    .registers 1

    .line 343
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->kotlinVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1502(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 343
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->kotlinVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1600(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Ljava/util/List;
    .registers 1

    .line 343
    iget-object p0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->contentProviderStartupMetrics_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1602(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 343
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->contentProviderStartupMetrics_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$1700()Z
    .registers 1

    .line 343
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1800(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 343
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$1900()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 343
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$2000(Lcom/explorestack/protobuf/ByteString;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 343
    invoke-static {p0}, Lcom/explorestack/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
    .registers 1

    .line 2281
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 432
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_AndroidPlatformData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 1

    .line 1593
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->toBuilder()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 2

    .line 1596
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->toBuilder()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1566
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1567
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1573
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1574
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1534
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1540
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1579
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1580
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1586
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1587
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1554
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1555
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1561
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1562
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1523
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1529
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1544
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1550
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;",
            ">;"
        }
    .end annotation

    .line 2296
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1485
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    if-nez v1, :cond_d

    .line 1486
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1488
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    .line 1490
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getMinApiLevel()I

    move-result v1

    .line 1491
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getMinApiLevel()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 1492
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getKotlinVersion()Ljava/lang/String;

    move-result-object v1

    .line 1493
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getKotlinVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v3

    .line 1494
    :cond_2a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getContentProviderStartupMetricsList()Ljava/util/List;

    move-result-object v1

    .line 1495
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getContentProviderStartupMetricsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    return v3

    .line 1496
    :cond_39
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    return v3

    :cond_44
    return v0
.end method

.method public getContentProviderStartupMetrics(I)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
    .registers 3

    .line 1417
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    return-object p1
.end method

.method public getContentProviderStartupMetricsCount()I
    .registers 2

    .line 1406
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getContentProviderStartupMetricsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;",
            ">;"
        }
    .end annotation

    .line 1383
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->contentProviderStartupMetrics_:Ljava/util/List;

    return-object v0
.end method

.method public getContentProviderStartupMetricsOrBuilder(I)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetricsOrBuilder;
    .registers 3

    .line 1429
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetricsOrBuilder;

    return-object p1
.end method

.method public getContentProviderStartupMetricsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetricsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1395
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->contentProviderStartupMetrics_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 343
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 343
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
    .registers 2

    .line 2306
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    return-object v0
.end method

.method public getKotlinVersion()Ljava/lang/String;
    .registers 3

    .line 1338
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->kotlinVersion_:Ljava/lang/Object;

    .line 1339
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1340
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1342
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1344
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1345
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->kotlinVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method public getKotlinVersionBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1360
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->kotlinVersion_:Ljava/lang/Object;

    .line 1361
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1362
    check-cast v0, Ljava/lang/String;

    .line 1363
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1365
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->kotlinVersion_:Ljava/lang/Object;

    return-object v0

    .line 1368
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getMinApiLevel()I
    .registers 2

    .line 1323
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->minApiLevel_:I

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;",
            ">;"
        }
    .end annotation

    .line 2301
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 1460
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 1464
    :cond_6
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->minApiLevel_:I

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/4 v2, 0x1

    .line 1466
    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    goto :goto_12

    :cond_11
    move v0, v1

    .line 1468
    :goto_12
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getKotlinVersionBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    const/4 v2, 0x2

    .line 1469
    iget-object v3, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->kotlinVersion_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1471
    :cond_24
    :goto_24
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 1472
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->contentProviderStartupMetrics_:Ljava/util/List;

    .line 1473
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 1475
    :cond_3d
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1476
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 367
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1502
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 1506
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 1508
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getMinApiLevel()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 1510
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getKotlinVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1511
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getContentProviderStartupMetricsCount()I

    move-result v0

    if-lez v0, :cond_3f

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 1513
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getContentProviderStartupMetricsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3f
    mul-int/lit8 v1, v1, 0x1d

    .line 1515
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1516
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 438
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_AndroidPlatformData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    const-class v2, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    .line 439
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 1435
    iget-byte v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 1439
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 343
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->newBuilderForType()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 343
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 343
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->newBuilderForType()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 2

    .line 1591
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->newBuilder()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 4

    .line 1607
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/InitRequest$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 361
    new-instance p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    invoke-direct {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 343
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->toBuilder()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 343
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->toBuilder()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 3

    .line 1600
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 1601
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;-><init>(Lio/bidmachine/protobuf/InitRequest$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;-><init>(Lio/bidmachine/protobuf/InitRequest$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

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

    .line 1446
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->minApiLevel_:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 1447
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1449
    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getKotlinVersionBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x2

    .line 1450
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->kotlinVersion_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_18
    const/4 v0, 0x0

    .line 1452
    :goto_19
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 1453
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1455
    :cond_30
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.InitRequest.AndroidPlatformData.AnonymousClass1 (io.bidmachine.protobuf.InitRequest$AndroidPlatformData$1)
.class Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "InitRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2285
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2291
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/InitRequest$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2285
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.InitRequest.AndroidPlatformData.Builder (io.bidmachine.protobuf.InitRequest$AndroidPlatformData$Builder)
.class public final Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "InitRequest.java"

# interfaces
.implements Lio/bidmachine/protobuf/InitRequest$AndroidPlatformDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetricsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private contentProviderStartupMetrics_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private kotlinVersion_:Ljava/lang/Object;

.field private minApiLevel_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1631
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1851
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->kotlinVersion_:Ljava/lang/Object;

    .line 1948
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    .line 1632
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 1637
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1851
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->kotlinVersion_:Ljava/lang/Object;

    .line 1948
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    .line 1638
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/InitRequest$1;)V
    .registers 3

    .line 1613
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/InitRequest$1;)V
    .registers 2

    .line 1613
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;-><init>()V

    return-void
.end method

.method private ensureContentProviderStartupMetricsIsMutable()V
    .registers 3

    .line 1950
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 1951
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    .line 1952
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method private getContentProviderStartupMetricsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetricsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2247
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_20

    .line 2248
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    .line 2252
    :goto_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2253
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 2254
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    .line 2256
    :cond_20
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1619
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_AndroidPlatformData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 1642
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1643
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->getContentProviderStartupMetricsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_9
    return-void
.end method


# virtual methods
.method public addAllContentProviderStartupMetrics(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;",
            ">;)",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;"
        }
    .end annotation

    .line 2126
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 2127
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->ensureContentProviderStartupMetricsIsMutable()V

    .line 2128
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2130
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2132
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addContentProviderStartupMetrics(ILio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 4

    .line 2108
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 2109
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->ensureContentProviderStartupMetricsIsMutable()V

    .line 2110
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->build()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2111
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2113
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->build()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addContentProviderStartupMetrics(ILio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 4

    .line 2069
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 2071
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2073
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->ensureContentProviderStartupMetricsIsMutable()V

    .line 2074
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2075
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2077
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addContentProviderStartupMetrics(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 3

    .line 2090
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 2091
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->ensureContentProviderStartupMetricsIsMutable()V

    .line 2092
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->build()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2095
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->build()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addContentProviderStartupMetrics(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 3

    .line 2048
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 2050
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2052
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->ensureContentProviderStartupMetricsIsMutable()V

    .line 2053
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2054
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2056
    :cond_13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public addContentProviderStartupMetricsBuilder()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 3

    .line 2218
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->getContentProviderStartupMetricsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2219
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    move-result-object v1

    .line 2218
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    return-object v0
.end method

.method public addContentProviderStartupMetricsBuilder(I)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 4

    .line 2230
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->getContentProviderStartupMetricsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2231
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    move-result-object v1

    .line 2230
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1613
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1613
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 3

    .line 1731
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1613
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->build()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1613
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->build()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
    .registers 3

    .line 1675
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->buildPartial()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v0

    .line 1676
    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 1677
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1613
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->buildPartial()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1613
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->buildPartial()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
    .registers 3

    .line 1684
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/InitRequest$1;)V

    .line 1686
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->minApiLevel_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->access$1402(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;I)I

    .line 1687
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->kotlinVersion_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->access$1502(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_2e

    .line 1689
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_28

    .line 1690
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    .line 1691
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->bitField0_:I

    .line 1693
    :cond_28
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->access$1602(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;Ljava/util/List;)Ljava/util/List;

    goto :goto_35

    .line 1695
    :cond_2e
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->access$1602(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;Ljava/util/List;)Ljava/util/List;

    .line 1697
    :goto_35
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1613
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->clear()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1613
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->clear()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1613
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->clear()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1613
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->clear()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 2

    .line 1648
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 1649
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->minApiLevel_:I

    .line 1651
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->kotlinVersion_:Ljava/lang/Object;

    .line 1653
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_19

    .line 1654
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    .line 1655
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->bitField0_:I

    return-object p0

    .line 1657
    :cond_19
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public clearContentProviderStartupMetrics()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 2

    .line 2144
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    .line 2145
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    .line 2146
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->bitField0_:I

    .line 2147
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2149
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1613
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1613
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 2

    .line 1714
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    return-object p1
.end method

.method public clearKotlinVersion()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 2

    .line 1922
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getKotlinVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->kotlinVersion_:Ljava/lang/Object;

    .line 1923
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMinApiLevel()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1846
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->minApiLevel_:I

    .line 1847
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1613
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1613
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1613
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 2

    .line 1719
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1613
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 1613
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1613
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1613
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1613
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 2

    .line 1703
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1613
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContentProviderStartupMetrics(I)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
    .registers 3

    .line 1995
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1996
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    return-object p1

    .line 1998
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    return-object p1
.end method

.method public getContentProviderStartupMetricsBuilder(I)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 3

    .line 2179
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->getContentProviderStartupMetricsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    return-object p1
.end method

.method public getContentProviderStartupMetricsBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;",
            ">;"
        }
    .end annotation

    .line 2242
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->getContentProviderStartupMetricsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContentProviderStartupMetricsCount()I
    .registers 2

    .line 1981
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 1982
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1984
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getContentProviderStartupMetricsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;",
            ">;"
        }
    .end annotation

    .line 1967
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 1968
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1970
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContentProviderStartupMetricsOrBuilder(I)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetricsOrBuilder;
    .registers 3

    .line 2190
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2191
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetricsOrBuilder;

    return-object p1

    .line 2192
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetricsOrBuilder;

    return-object p1
.end method

.method public getContentProviderStartupMetricsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetricsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2204
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_9

    .line 2205
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2207
    :cond_9
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1613
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1613
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
    .registers 2

    .line 1670
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 1665
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_AndroidPlatformData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getKotlinVersion()Ljava/lang/String;
    .registers 3

    .line 1861
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->kotlinVersion_:Ljava/lang/Object;

    .line 1862
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1863
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1865
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1866
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->kotlinVersion_:Ljava/lang/Object;

    return-object v0

    .line 1869
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getKotlinVersionBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1882
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->kotlinVersion_:Ljava/lang/Object;

    .line 1883
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1884
    check-cast v0, Ljava/lang/String;

    .line 1885
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1887
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->kotlinVersion_:Ljava/lang/Object;

    return-object v0

    .line 1890
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getMinApiLevel()I
    .registers 2

    .line 1819
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->minApiLevel_:I

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 1625
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_AndroidPlatformData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    const-class v2, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    .line 1626
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

    .line 1613
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1613
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

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

    .line 1613
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

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

    .line 1613
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1613
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

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

    .line 1613
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1795
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->access$1900()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 1801
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 1797
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 1798
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

    .line 1801
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    .line 1803
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 3

    .line 1735
    instance-of v0, p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    if-eqz v0, :cond_b

    .line 1736
    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object p1

    return-object p1

    .line 1738
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 4

    .line 1744
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 1745
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getMinApiLevel()I

    move-result v0

    if-eqz v0, :cond_14

    .line 1746
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getMinApiLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->setMinApiLevel(I)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    .line 1748
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getKotlinVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 1749
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->access$1500(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->kotlinVersion_:Ljava/lang/Object;

    .line 1750
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1752
    :cond_27
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_5a

    .line 1753
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->access$1600(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_96

    .line 1754
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1755
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->access$1600(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    .line 1756
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->bitField0_:I

    goto :goto_56

    .line 1758
    :cond_4a
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->ensureContentProviderStartupMetricsIsMutable()V

    .line 1759
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->access$1600(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1761
    :goto_56
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_96

    .line 1764
    :cond_5a
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->access$1600(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_96

    .line 1765
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1766
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 1767
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1768
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->access$1600(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    .line 1769
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->bitField0_:I

    .line 1771
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 1772
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->getContentProviderStartupMetricsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_8a
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_96

    .line 1774
    :cond_8d
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->access$1600(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1778
    :cond_96
    :goto_96
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->access$1800(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    .line 1779
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1613
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1613
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1613
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 2

    .line 2267
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    return-object p1
.end method

.method public removeContentProviderStartupMetrics(I)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 3

    .line 2161
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 2162
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->ensureContentProviderStartupMetricsIsMutable()V

    .line 2163
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2164
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2166
    :cond_10
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    return-object p0
.end method

.method public setContentProviderStartupMetrics(ILio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 4

    .line 2031
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    .line 2032
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->ensureContentProviderStartupMetricsIsMutable()V

    .line 2033
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->build()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2034
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2036
    :cond_14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->build()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public setContentProviderStartupMetrics(ILio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 4

    .line 2010
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetricsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    .line 2012
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2014
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->ensureContentProviderStartupMetricsIsMutable()V

    .line 2015
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->contentProviderStartupMetrics_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2016
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2018
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1613
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1613
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 3

    .line 1709
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    return-object p1
.end method

.method public setKotlinVersion(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 2

    .line 1905
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1908
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->kotlinVersion_:Ljava/lang/Object;

    .line 1909
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setKotlinVersionBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 2

    .line 1938
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1940
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->access$2000(Lcom/explorestack/protobuf/ByteString;)V

    .line 1942
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->kotlinVersion_:Ljava/lang/Object;

    .line 1943
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setMinApiLevel(I)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 2

    .line 1832
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->minApiLevel_:I

    .line 1833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 1613
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 1613
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 4

    .line 1725
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1613
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1613
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 2

    .line 2261
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.InitRequest.AndroidPlatformData.ContentProviderStartupMetrics (io.bidmachine.protobuf.InitRequest$AndroidPlatformData$ContentProviderStartupMetrics)
.class public final Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "InitRequest.java"

# interfaces
.implements Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetricsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContentProviderStartupMetrics"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

.field public static final INIT_COMPLETED_FIELD_NUMBER:I = 0x3

.field public static final INIT_DURATION_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_INIT_TIME_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private initCompleted_:Z

.field private initDuration_:J

.field private memoizedIsInitialized:B

.field private startInitTime_:Lcom/explorestack/protobuf/Timestamp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1277
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    invoke-direct {v0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    .line 1285
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 507
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 664
    iput-byte v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 526
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;-><init>()V

    .line 528
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 531
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_77

    .line 535
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_26

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3c

    const/16 v4, 0x10

    if-eq v2, v4, :cond_35

    const/16 v4, 0x18

    if-eq v2, v4, :cond_2e

    .line 564
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_26
    move v1, v3

    goto :goto_b

    :catchall_28
    move-exception p1

    goto :goto_6d

    :catch_2a
    move-exception p1

    goto :goto_5e

    :catch_2c
    move-exception p1

    goto :goto_68

    .line 560
    :cond_2e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->initCompleted_:Z

    goto :goto_b

    .line 555
    :cond_35
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->initDuration_:J

    goto :goto_b

    .line 542
    :cond_3c
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->startInitTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v2, :cond_45

    .line 543
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Timestamp;->toBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v2

    goto :goto_46

    :cond_45
    const/4 v2, 0x0

    .line 545
    :goto_46
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/Timestamp;

    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->startInitTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v2, :cond_b

    .line 547
    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    .line 548
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->startInitTime_:Lcom/explorestack/protobuf/Timestamp;
    :try_end_5d
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_5d} :catch_2c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_5d} :catch_2a
    .catchall {:try_start_d .. :try_end_5d} :catchall_28

    goto :goto_b

    .line 575
    :goto_5e
    :try_start_5e
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 576
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 573
    :goto_68
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_6d
    .catchall {:try_start_5e .. :try_end_6d} :catchall_28

    .line 578
    :goto_6d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 580
    throw p1

    .line 578
    :cond_77
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/InitRequest$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 498
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 505
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 664
    iput-byte p1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/InitRequest$1;)V
    .registers 3

    .line 498
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 498
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 498
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->startInitTime_:Lcom/explorestack/protobuf/Timestamp;

    return-object p1
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;J)J
    .registers 3

    .line 498
    iput-wide p1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->initDuration_:J

    return-wide p1
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;Z)Z
    .registers 2

    .line 498
    iput-boolean p1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->initCompleted_:Z

    return p1
.end method

.method public static synthetic access$700(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 498
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$800()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 498
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
    .registers 1

    .line 1281
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 584
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_AndroidPlatformData_ContentProviderStartupMetrics_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 1

    .line 831
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->toBuilder()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 2

    .line 834
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->toBuilder()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 804
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 805
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 811
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 812
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 772
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 778
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 817
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 818
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 824
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 825
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 792
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 793
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 799
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 800
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 761
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 767
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 782
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 788
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;",
            ">;"
        }
    .end annotation

    .line 1296
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 718
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    if-nez v1, :cond_d

    .line 719
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 721
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    .line 723
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->hasStartInitTime()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->hasStartInitTime()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 724
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->hasStartInitTime()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 725
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->getStartInitTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 726
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->getStartInitTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 728
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->getInitDuration()J

    move-result-wide v1

    .line 729
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->getInitDuration()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-eqz v1, :cond_3d

    return v3

    .line 730
    :cond_3d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->getInitCompleted()Z

    move-result v1

    .line 731
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->getInitCompleted()Z

    move-result v2

    if-eq v1, v2, :cond_48

    return v3

    .line 732
    :cond_48
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    return v3

    :cond_53
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 498
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 498
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
    .registers 2

    .line 1306
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    return-object v0
.end method

.method public getInitCompleted()Z
    .registers 2

    .line 661
    iget-boolean v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->initCompleted_:Z

    return v0
.end method

.method public getInitDuration()J
    .registers 3

    .line 645
    iget-wide v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->initDuration_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;",
            ">;"
        }
    .end annotation

    .line 1301
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .line 692
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 696
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->startInitTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 698
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->getStartInitTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 700
    :goto_15
    iget-wide v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->initDuration_:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_23

    const/4 v3, 0x2

    .line 702
    invoke-static {v3, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 704
    :cond_23
    iget-boolean v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->initCompleted_:Z

    if-eqz v1, :cond_2d

    const/4 v2, 0x3

    .line 706
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 708
    :cond_2d
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 709
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getStartInitTime()Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 619
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->startInitTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getStartInitTimeOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .registers 2

    .line 630
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->getStartInitTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 520
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasStartInitTime()Z
    .registers 2

    .line 607
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->startInitTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 738
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 742
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 743
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->hasStartInitTime()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 745
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->getStartInitTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Timestamp;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_25
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 749
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->getInitDuration()J

    move-result-wide v2

    .line 748
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 752
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->getInitCompleted()Z

    move-result v0

    .line 751
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 753
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 754
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 590
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_AndroidPlatformData_ContentProviderStartupMetrics_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    const-class v2, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    .line 591
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 667
    iget-byte v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 671
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 498
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->newBuilderForType()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 498
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 498
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->newBuilderForType()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 2

    .line 829
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->newBuilder()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 4

    .line 845
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/InitRequest$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 514
    new-instance p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    invoke-direct {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 498
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->toBuilder()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 498
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->toBuilder()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 3

    .line 838
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 839
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;-><init>(Lio/bidmachine/protobuf/InitRequest$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;-><init>(Lio/bidmachine/protobuf/InitRequest$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

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

    .line 678
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->startInitTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 679
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->getStartInitTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 681
    :cond_c
    iget-wide v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->initDuration_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_18

    const/4 v2, 0x2

    .line 682
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 684
    :cond_18
    iget-boolean v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->initCompleted_:Z

    if-eqz v0, :cond_20

    const/4 v1, 0x3

    .line 685
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 687
    :cond_20
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.InitRequest.AndroidPlatformData.ContentProviderStartupMetrics.AnonymousClass1 (io.bidmachine.protobuf.InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$1)
.class Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "InitRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1285
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1291
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/InitRequest$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1285
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.InitRequest.AndroidPlatformData.ContentProviderStartupMetrics.Builder (io.bidmachine.protobuf.InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder)
.class public final Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "InitRequest.java"

# interfaces
.implements Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetricsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetricsOrBuilder;"
    }
.end annotation


# instance fields
.field private initCompleted_:Z

.field private initDuration_:J

.field private startInitTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Timestamp;",
            "Lcom/explorestack/protobuf/Timestamp$Builder;",
            "Lcom/explorestack/protobuf/TimestampOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private startInitTime_:Lcom/explorestack/protobuf/Timestamp;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 869
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 870
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 875
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 876
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/InitRequest$1;)V
    .registers 3

    .line 851
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/InitRequest$1;)V
    .registers 2

    .line 851
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 857
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_AndroidPlatformData_ContentProviderStartupMetrics_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getStartInitTimeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Timestamp;",
            "Lcom/explorestack/protobuf/Timestamp$Builder;",
            "Lcom/explorestack/protobuf/TimestampOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1159
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1160
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1162
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->getStartInitTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 1163
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1164
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1165
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1167
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 880
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 851
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 851
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 3

    .line 963
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 851
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->build()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 851
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->build()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
    .registers 3

    .line 912
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->buildPartial()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    move-result-object v0

    .line 913
    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 914
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 851
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->buildPartial()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 851
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->buildPartial()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
    .registers 4

    .line 921
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/InitRequest$1;)V

    .line 922
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_10

    .line 923
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTime_:Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->access$402(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    goto :goto_19

    .line 925
    :cond_10
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->access$402(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    .line 927
    :goto_19
    iget-wide v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->initDuration_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->access$502(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;J)J

    .line 928
    iget-boolean v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->initCompleted_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->access$602(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;Z)Z

    .line 929
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 851
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->clear()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 851
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->clear()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 851
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->clear()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 851
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->clear()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 3

    .line 885
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 886
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 887
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTime_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_f

    .line 889
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 890
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_f
    const-wide/16 v0, 0x0

    .line 892
    iput-wide v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->initDuration_:J

    const/4 v0, 0x0

    .line 894
    iput-boolean v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->initCompleted_:Z

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 851
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 851
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 2

    .line 946
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    return-object p1
.end method

.method public clearInitCompleted()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1254
    iput-boolean v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->initCompleted_:Z

    .line 1255
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearInitDuration()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 3

    const-wide/16 v0, 0x0

    .line 1208
    iput-wide v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->initDuration_:J

    .line 1209
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 851
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 851
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 851
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 2

    .line 951
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    return-object p1
.end method

.method public clearStartInitTime()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 3

    .line 1112
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1113
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1114
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1116
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1117
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 851
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 851
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 851
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 851
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 851
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 2

    .line 935
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 851
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 851
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 851
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
    .registers 2

    .line 907
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 902
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_AndroidPlatformData_ContentProviderStartupMetrics_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getInitCompleted()Z
    .registers 2

    .line 1225
    iget-boolean v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->initCompleted_:Z

    return v0
.end method

.method public getInitDuration()J
    .registers 3

    .line 1181
    iget-wide v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->initDuration_:J

    return-wide v0
.end method

.method public getStartInitTime()Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 1038
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1039
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1041
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp;

    return-object v0
.end method

.method public getStartInitTimeBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;
    .registers 2

    .line 1131
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1132
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->getStartInitTimeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp$Builder;

    return-object v0
.end method

.method public getStartInitTimeOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .registers 2

    .line 1142
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1143
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/TimestampOrBuilder;

    return-object v0

    .line 1145
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_13

    .line 1146
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public hasStartInitTime()Z
    .registers 2

    .line 1027
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTime_:Lcom/explorestack/protobuf/Timestamp;

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

    .line 863
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_AndroidPlatformData_ContentProviderStartupMetrics_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    const-class v2, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    .line 864
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

    .line 851
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 851
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

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

    .line 851
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

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

    .line 851
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 851
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

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

    .line 851
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1003
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->access$800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 1009
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 1005
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 1006
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

    .line 1009
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    .line 1011
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 3

    .line 967
    instance-of v0, p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    if-eqz v0, :cond_b

    .line 968
    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object p1

    return-object p1

    .line 970
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 6

    .line 976
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 977
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->hasStartInitTime()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 978
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->getStartInitTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->mergeStartInitTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    .line 980
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->getInitDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 981
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->getInitDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->setInitDuration(J)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    .line 983
    :cond_25
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->getInitCompleted()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 984
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->getInitCompleted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->setInitCompleted(Z)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    .line 986
    :cond_32
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;->access$700(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    .line 987
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeStartInitTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 3

    .line 1090
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1091
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_17

    .line 1093
    invoke-static {v0}, Lcom/explorestack/protobuf/Timestamp;->newBuilder(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTime_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_19

    .line 1095
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1097
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1099
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 851
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 851
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 851
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 2

    .line 1267
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 851
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 851
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 3

    .line 941
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    return-object p1
.end method

.method public setInitCompleted(Z)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 2

    .line 1239
    iput-boolean p1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->initCompleted_:Z

    .line 1240
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setInitDuration(J)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 3

    .line 1194
    iput-wide p1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->initDuration_:J

    .line 1195
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 851
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 851
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 4

    .line 957
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    return-object p1
.end method

.method public setStartInitTime(Lcom/explorestack/protobuf/Timestamp$Builder;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 3

    .line 1073
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1074
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1075
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1077
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setStartInitTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 3

    .line 1052
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1054
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1056
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->startInitTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1057
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1059
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 851
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 851
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;
    .registers 2

    .line 1261
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.InitRequest.AndroidPlatformData.ContentProviderStartupMetricsOrBuilder (io.bidmachine.protobuf.InitRequest$AndroidPlatformData$ContentProviderStartupMetricsOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetricsOrBuilder;
.super Ljava/lang/Object;
.source "InitRequest.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContentProviderStartupMetricsOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getInitCompleted()Z
.end method

.method public abstract getInitDuration()J
.end method

.method public abstract getStartInitTime()Lcom/explorestack/protobuf/Timestamp;
.end method

.method public abstract getStartInitTimeOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
.end method

.method public abstract hasStartInitTime()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method

###### Class io.bidmachine.protobuf.InitRequest.AndroidPlatformDataOrBuilder (io.bidmachine.protobuf.InitRequest$AndroidPlatformDataOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/InitRequest$AndroidPlatformDataOrBuilder;
.super Ljava/lang/Object;
.source "InitRequest.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AndroidPlatformDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getContentProviderStartupMetrics(I)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;
.end method

.method public abstract getContentProviderStartupMetricsCount()I
.end method

.method public abstract getContentProviderStartupMetricsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetrics;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContentProviderStartupMetricsOrBuilder(I)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetricsOrBuilder;
.end method

.method public abstract getContentProviderStartupMetricsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$ContentProviderStartupMetricsOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getKotlinVersion()Ljava/lang/String;
.end method

.method public abstract getKotlinVersionBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getMinApiLevel()I
.end method

.method public abstract synthetic isInitialized()Z
.end method

###### Class io.bidmachine.protobuf.InitRequest.Builder (io.bidmachine.protobuf.InitRequest$Builder)
.class public final Lio/bidmachine/protobuf/InitRequest$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "InitRequest.java"

# interfaces
.implements Lio/bidmachine/protobuf/InitRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/InitRequest$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/InitRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private androidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private appVer_:Ljava/lang/Object;

.field private bmIfv_:Ljava/lang/Object;

.field private bundle_:Ljava/lang/Object;

.field private contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context;",
            "Lcom/explorestack/protobuf/adcom/Context$Builder;",
            "Lcom/explorestack/protobuf/adcom/ContextOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private context_:Lcom/explorestack/protobuf/adcom/Context;

.field private contype_:I

.field private deviceType_:I

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

.field private iosBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;",
            "Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;",
            "Lio/bidmachine/protobuf/InitRequest$iOSPlatformDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private make_:Ljava/lang/Object;

.field private model_:Ljava/lang/Object;

.field private os_:I

.field private osv_:Ljava/lang/Object;

.field private platformDataCase_:I

.field private platformData_:Ljava/lang/Object;

.field private sdk_:Ljava/lang/Object;

.field private sdkver_:Ljava/lang/Object;

.field private sellerId_:Ljava/lang/Object;

.field private sessionId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 4439
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 4739
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    .line 4755
    const-string v1, ""

    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sellerId_:Ljava/lang/Object;

    .line 4851
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bundle_:Ljava/lang/Object;

    .line 4947
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->os_:I

    .line 5021
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->osv_:Ljava/lang/Object;

    .line 5272
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdk_:Ljava/lang/Object;

    .line 5368
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdkver_:Ljava/lang/Object;

    .line 5464
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifa_:Ljava/lang/Object;

    .line 5560
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifv_:Ljava/lang/Object;

    .line 5656
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bmIfv_:Ljava/lang/Object;

    .line 5752
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->deviceType_:I

    .line 5826
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contype_:I

    .line 5900
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->appVer_:Ljava/lang/Object;

    .line 5996
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 6247
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->make_:Ljava/lang/Object;

    .line 6343
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->model_:Ljava/lang/Object;

    .line 6439
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->hwv_:Ljava/lang/Object;

    .line 4440
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 3

    .line 4445
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 4739
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    .line 4755
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sellerId_:Ljava/lang/Object;

    .line 4851
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bundle_:Ljava/lang/Object;

    .line 4947
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->os_:I

    .line 5021
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->osv_:Ljava/lang/Object;

    .line 5272
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdk_:Ljava/lang/Object;

    .line 5368
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdkver_:Ljava/lang/Object;

    .line 5464
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifa_:Ljava/lang/Object;

    .line 5560
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifv_:Ljava/lang/Object;

    .line 5656
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bmIfv_:Ljava/lang/Object;

    .line 5752
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->deviceType_:I

    .line 5826
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contype_:I

    .line 5900
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->appVer_:Ljava/lang/Object;

    .line 5996
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 6247
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->make_:Ljava/lang/Object;

    .line 6343
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->model_:Ljava/lang/Object;

    .line 6439
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->hwv_:Ljava/lang/Object;

    .line 4446
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/InitRequest$1;)V
    .registers 3

    .line 4421
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/InitRequest$1;)V
    .registers 2

    .line 4421
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;-><init>()V

    return-void
.end method

.method private getAndroidFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;",
            "Lio/bidmachine/protobuf/InitRequest$AndroidPlatformDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6779
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->androidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/16 v1, 0x14

    if-nez v0, :cond_26

    .line 6780
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    if-eq v0, v1, :cond_10

    .line 6781
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    .line 6783
    :cond_10
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    .line 6786
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 6787
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->androidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 6788
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    .line 6790
    :cond_26
    iput v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    .line 6791
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6792
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->androidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getContextFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context;",
            "Lcom/explorestack/protobuf/adcom/Context$Builder;",
            "Lcom/explorestack/protobuf/adcom/ContextOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6643
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 6644
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6646
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v1

    .line 6647
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 6648
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 6649
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 6651
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 4427
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 6236
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 6237
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6239
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 6240
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 6241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 6242
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6244
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 5261
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 5262
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5264
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v1

    .line 5265
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5266
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 5267
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 5269
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getIosFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;",
            "Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;",
            "Lio/bidmachine/protobuf/InitRequest$iOSPlatformDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6920
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->iosBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/16 v1, 0x15

    if-nez v0, :cond_26

    .line 6921
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    if-eq v0, v1, :cond_10

    .line 6922
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    .line 6924
    :cond_10
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    .line 6927
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 6928
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->iosBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 6929
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    .line 6931
    :cond_26
    iput v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    .line 6932
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6933
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->iosBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 4450
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->access$3300()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 4421
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 4421
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 3

    .line 4614
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 4421
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->build()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 4421
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->build()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/InitRequest;
    .registers 3

    .line 4524
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->buildPartial()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    .line 4525
    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 4526
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 4421
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->buildPartial()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 4421
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->buildPartial()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/InitRequest;
    .registers 4

    .line 4533
    new-instance v0, Lio/bidmachine/protobuf/InitRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/InitRequest;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/InitRequest$1;)V

    .line 4534
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sellerId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$3502(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4535
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bundle_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$3602(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4536
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->os_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$3702(Lio/bidmachine/protobuf/InitRequest;I)I

    .line 4537
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->osv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$3802(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4538
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_24

    .line 4539
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$3902(Lio/bidmachine/protobuf/InitRequest;Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto :goto_2d

    .line 4541
    :cond_24
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Context$Geo;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$3902(Lio/bidmachine/protobuf/InitRequest;Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 4543
    :goto_2d
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdk_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$4002(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4544
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdkver_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$4102(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4545
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifa_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$4202(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4546
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$4302(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4547
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bmIfv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$4402(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4548
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->deviceType_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$4502(Lio/bidmachine/protobuf/InitRequest;I)I

    .line 4549
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contype_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$4602(Lio/bidmachine/protobuf/InitRequest;I)I

    .line 4550
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->appVer_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$4702(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4551
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sessionId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$4802(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4552
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_64

    .line 4553
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$4902(Lio/bidmachine/protobuf/InitRequest;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_6d

    .line 4555
    :cond_64
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$4902(Lio/bidmachine/protobuf/InitRequest;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 4557
    :goto_6d
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->make_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$5002(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4558
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->model_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$5102(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4559
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->hwv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$5202(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4560
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_86

    .line 4561
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$5302(Lio/bidmachine/protobuf/InitRequest;Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context;

    goto :goto_8f

    .line 4563
    :cond_86
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Context;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$5302(Lio/bidmachine/protobuf/InitRequest;Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context;

    .line 4565
    :goto_8f
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_a6

    .line 4566
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->androidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_9f

    .line 4567
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$5402(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a6

    .line 4569
    :cond_9f
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$5402(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4572
    :cond_a6
    :goto_a6
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_bd

    .line 4573
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->iosBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_b6

    .line 4574
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$5402(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bd

    .line 4576
    :cond_b6
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$5402(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4579
    :cond_bd
    :goto_bd
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$5502(Lio/bidmachine/protobuf/InitRequest;I)I

    .line 4580
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 4421
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->clear()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 4421
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->clear()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 4421
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->clear()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 4421
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->clear()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 5

    .line 4455
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 4456
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sellerId_:Ljava/lang/Object;

    .line 4458
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bundle_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4460
    iput v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->os_:I

    .line 4462
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->osv_:Ljava/lang/Object;

    .line 4464
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v3, 0x0

    if-nez v2, :cond_16

    .line 4465
    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto :goto_1a

    .line 4467
    :cond_16
    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 4468
    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4470
    :goto_1a
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdk_:Ljava/lang/Object;

    .line 4472
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdkver_:Ljava/lang/Object;

    .line 4474
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifa_:Ljava/lang/Object;

    .line 4476
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifv_:Ljava/lang/Object;

    .line 4478
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bmIfv_:Ljava/lang/Object;

    .line 4480
    iput v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->deviceType_:I

    .line 4482
    iput v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contype_:I

    .line 4484
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->appVer_:Ljava/lang/Object;

    .line 4486
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 4488
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_33

    .line 4489
    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_37

    .line 4491
    :cond_33
    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 4492
    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4494
    :goto_37
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->make_:Ljava/lang/Object;

    .line 4496
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->model_:Ljava/lang/Object;

    .line 4498
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->hwv_:Ljava/lang/Object;

    .line 4500
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_44

    .line 4501
    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    goto :goto_48

    .line 4503
    :cond_44
    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 4504
    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4506
    :goto_48
    iput v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    .line 4507
    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearAndroid()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 6

    .line 6738
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->androidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x14

    if-nez v0, :cond_14

    .line 6739
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    if-ne v0, v3, :cond_13

    .line 6740
    iput v2, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    .line 6741
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    .line 6742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_13
    return-object p0

    .line 6745
    :cond_14
    iget v4, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    if-ne v4, v3, :cond_1c

    .line 6746
    iput v2, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    .line 6747
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    .line 6749
    :cond_1c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearAppVer()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5971
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->getAppVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->appVer_:Ljava/lang/Object;

    .line 5972
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBmIfv()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5727
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bmIfv_:Ljava/lang/Object;

    .line 5728
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBundle()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 4922
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->getBundle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bundle_:Ljava/lang/Object;

    .line 4923
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearContext()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 3

    .line 6608
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 6609
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 6610
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6612
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 6613
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearContype()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 5895
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contype_:I

    .line 5896
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDeviceType()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 5821
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->deviceType_:I

    .line 5822
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExt()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 3

    .line 6189
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 6190
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6191
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6193
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6194
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 4421
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 4421
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 4597
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$Builder;

    return-object p1
.end method

.method public clearGeo()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 3

    .line 5214
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 5215
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 5216
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5218
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 5219
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearHwv()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 6510
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->getHwv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->hwv_:Ljava/lang/Object;

    .line 6511
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIfa()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5535
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->getIfa()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifa_:Ljava/lang/Object;

    .line 5536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIfv()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5631
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->getIfv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifv_:Ljava/lang/Object;

    .line 5632
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIos()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 6

    .line 6879
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->iosBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-nez v0, :cond_14

    .line 6880
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    if-ne v0, v3, :cond_13

    .line 6881
    iput v2, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    .line 6882
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    .line 6883
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_13
    return-object p0

    .line 6886
    :cond_14
    iget v4, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    if-ne v4, v3, :cond_1c

    .line 6887
    iput v2, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    .line 6888
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    .line 6890
    :cond_1c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearMake()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 6318
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->getMake()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->make_:Ljava/lang/Object;

    .line 6319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearModel()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 6414
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->model_:Ljava/lang/Object;

    .line 6415
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 4421
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 4421
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 4421
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 4602
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$Builder;

    return-object p1
.end method

.method public clearOs()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 5016
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->os_:I

    .line 5017
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOsv()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5092
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->getOsv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->osv_:Ljava/lang/Object;

    .line 5093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPlatformData()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 4748
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    const/4 v0, 0x0

    .line 4749
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    .line 4750
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSdk()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5343
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->getSdk()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdk_:Ljava/lang/Object;

    .line 5344
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSdkver()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5439
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->getSdkver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdkver_:Ljava/lang/Object;

    .line 5440
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSellerId()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 4826
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->getSellerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sellerId_:Ljava/lang/Object;

    .line 4827
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSessionId()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 6067
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 6068
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 4421
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 4421
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 4421
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 4421
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 4421
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 4586
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/InitRequest$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4421
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAndroid()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
    .registers 4

    .line 6670
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->androidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/16 v1, 0x14

    if-nez v0, :cond_14

    .line 6671
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    if-ne v0, v1, :cond_f

    .line 6672
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    return-object v0

    .line 6674
    :cond_f
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v0

    return-object v0

    .line 6676
    :cond_14
    iget v2, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    if-ne v2, v1, :cond_1f

    .line 6677
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    return-object v0

    .line 6679
    :cond_1f
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public getAndroidBuilder()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;
    .registers 2

    .line 6757
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->getAndroidFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    return-object v0
.end method

.method public getAndroidOrBuilder()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformDataOrBuilder;
    .registers 4

    .line 6764
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_11

    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->androidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_11

    .line 6765
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformDataOrBuilder;

    return-object v0

    :cond_11
    if-ne v0, v1, :cond_18

    .line 6768
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    return-object v0

    .line 6770
    :cond_18
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public getAppVer()Ljava/lang/String;
    .registers 3

    .line 5910
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->appVer_:Ljava/lang/Object;

    .line 5911
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 5912
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 5914
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5915
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->appVer_:Ljava/lang/Object;

    return-object v0

    .line 5918
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAppVerBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 5931
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->appVer_:Ljava/lang/Object;

    .line 5932
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 5933
    check-cast v0, Ljava/lang/String;

    .line 5934
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 5936
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->appVer_:Ljava/lang/Object;

    return-object v0

    .line 5939
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getBmIfv()Ljava/lang/String;
    .registers 3

    .line 5666
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bmIfv_:Ljava/lang/Object;

    .line 5667
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 5668
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 5670
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5671
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 5674
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 5687
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bmIfv_:Ljava/lang/Object;

    .line 5688
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 5689
    check-cast v0, Ljava/lang/String;

    .line 5690
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 5692
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 5695
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getBundle()Ljava/lang/String;
    .registers 3

    .line 4861
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bundle_:Ljava/lang/Object;

    .line 4862
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 4863
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4865
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4866
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bundle_:Ljava/lang/Object;

    return-object v0

    .line 4869
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBundleBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 4882
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bundle_:Ljava/lang/Object;

    .line 4883
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 4884
    check-cast v0, Ljava/lang/String;

    .line 4885
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4887
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bundle_:Ljava/lang/Object;

    return-object v0

    .line 4890
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getContext()Lcom/explorestack/protobuf/adcom/Context;
    .registers 2

    .line 6550
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6551
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    :cond_c
    return-object v0

    .line 6553
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context;

    return-object v0
.end method

.method public getContextBuilder()Lcom/explorestack/protobuf/adcom/Context$Builder;
    .registers 2

    .line 6623
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6624
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->getContextFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Builder;

    return-object v0
.end method

.method public getContextOrBuilder()Lcom/explorestack/protobuf/adcom/ContextOrBuilder;
    .registers 2

    .line 6630
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 6631
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/ContextOrBuilder;

    return-object v0

    .line 6633
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-nez v0, :cond_13

    .line 6634
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getContype()Lcom/explorestack/protobuf/adcom/ConnectionType;
    .registers 2

    .line 5864
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contype_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/ConnectionType;->valueOf(I)Lcom/explorestack/protobuf/adcom/ConnectionType;

    move-result-object v0

    if-nez v0, :cond_a

    .line 5865
    sget-object v0, Lcom/explorestack/protobuf/adcom/ConnectionType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ConnectionType;

    :cond_a
    return-object v0
.end method

.method public getContypeValue()I
    .registers 2

    .line 5836
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contype_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 4421
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 4421
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest;
    .registers 2

    .line 4519
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 4514
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDeviceType()Lcom/explorestack/protobuf/adcom/DeviceType;
    .registers 2

    .line 5790
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->deviceType_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/DeviceType;->valueOf(I)Lcom/explorestack/protobuf/adcom/DeviceType;

    move-result-object v0

    if-nez v0, :cond_a

    .line 5791
    sget-object v0, Lcom/explorestack/protobuf/adcom/DeviceType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/DeviceType;

    :cond_a
    return-object v0
.end method

.method public getDeviceTypeValue()I
    .registers 2

    .line 5762
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->deviceType_:I

    return v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 6115
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6116
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_c
    return-object v0

    .line 6118
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .registers 2

    .line 6208
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6209
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .registers 2

    .line 6219
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 6220
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 6222
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_13

    .line 6223
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;
    .registers 2

    .line 5140
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5141
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    :cond_c
    return-object v0

    .line 5143
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object v0
.end method

.method public getGeoBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .registers 2

    .line 5233
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5234
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->getGeoFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    return-object v0
.end method

.method public getGeoOrBuilder()Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;
    .registers 2

    .line 5244
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 5245
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;

    return-object v0

    .line 5247
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-nez v0, :cond_13

    .line 5248
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getHwv()Ljava/lang/String;
    .registers 3

    .line 6449
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->hwv_:Ljava/lang/Object;

    .line 6450
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 6451
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 6453
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6454
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->hwv_:Ljava/lang/Object;

    return-object v0

    .line 6457
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHwvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 6470
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->hwv_:Ljava/lang/Object;

    .line 6471
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 6472
    check-cast v0, Ljava/lang/String;

    .line 6473
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 6475
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->hwv_:Ljava/lang/Object;

    return-object v0

    .line 6478
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getIfa()Ljava/lang/String;
    .registers 3

    .line 5474
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifa_:Ljava/lang/Object;

    .line 5475
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 5476
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 5478
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5479
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifa_:Ljava/lang/Object;

    return-object v0

    .line 5482
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIfaBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 5495
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifa_:Ljava/lang/Object;

    .line 5496
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 5497
    check-cast v0, Ljava/lang/String;

    .line 5498
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 5500
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifa_:Ljava/lang/Object;

    return-object v0

    .line 5503
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getIfv()Ljava/lang/String;
    .registers 3

    .line 5570
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifv_:Ljava/lang/Object;

    .line 5571
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 5572
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 5574
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5575
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 5578
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 5591
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifv_:Ljava/lang/Object;

    .line 5592
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 5593
    check-cast v0, Ljava/lang/String;

    .line 5594
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 5596
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 5599
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getIos()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
    .registers 4

    .line 6811
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->iosBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/16 v1, 0x15

    if-nez v0, :cond_14

    .line 6812
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    if-ne v0, v1, :cond_f

    .line 6813
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    return-object v0

    .line 6815
    :cond_f
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object v0

    return-object v0

    .line 6817
    :cond_14
    iget v2, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    if-ne v2, v1, :cond_1f

    .line 6818
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    return-object v0

    .line 6820
    :cond_1f
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public getIosBuilder()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 2

    .line 6898
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->getIosFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    return-object v0
.end method

.method public getIosOrBuilder()Lio/bidmachine/protobuf/InitRequest$iOSPlatformDataOrBuilder;
    .registers 4

    .line 6905
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_11

    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->iosBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_11

    .line 6906
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformDataOrBuilder;

    return-object v0

    :cond_11
    if-ne v0, v1, :cond_18

    .line 6909
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    return-object v0

    .line 6911
    :cond_18
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public getMake()Ljava/lang/String;
    .registers 3

    .line 6257
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->make_:Ljava/lang/Object;

    .line 6258
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 6259
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 6261
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6262
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->make_:Ljava/lang/Object;

    return-object v0

    .line 6265
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMakeBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 6278
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->make_:Ljava/lang/Object;

    .line 6279
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 6280
    check-cast v0, Ljava/lang/String;

    .line 6281
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 6283
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->make_:Ljava/lang/Object;

    return-object v0

    .line 6286
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 3

    .line 6353
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->model_:Ljava/lang/Object;

    .line 6354
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 6355
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 6357
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6358
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->model_:Ljava/lang/Object;

    return-object v0

    .line 6361
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getModelBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 6374
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->model_:Ljava/lang/Object;

    .line 6375
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 6376
    check-cast v0, Ljava/lang/String;

    .line 6377
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 6379
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->model_:Ljava/lang/Object;

    return-object v0

    .line 6382
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getOs()Lcom/explorestack/protobuf/adcom/OS;
    .registers 2

    .line 4985
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->os_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/OS;->valueOf(I)Lcom/explorestack/protobuf/adcom/OS;

    move-result-object v0

    if-nez v0, :cond_a

    .line 4986
    sget-object v0, Lcom/explorestack/protobuf/adcom/OS;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/OS;

    :cond_a
    return-object v0
.end method

.method public getOsValue()I
    .registers 2

    .line 4957
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->os_:I

    return v0
.end method

.method public getOsv()Ljava/lang/String;
    .registers 3

    .line 5031
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->osv_:Ljava/lang/Object;

    .line 5032
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 5033
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 5035
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5036
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->osv_:Ljava/lang/Object;

    return-object v0

    .line 5039
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOsvBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 5052
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->osv_:Ljava/lang/Object;

    .line 5053
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 5054
    check-cast v0, Ljava/lang/String;

    .line 5055
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 5057
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->osv_:Ljava/lang/Object;

    return-object v0

    .line 5060
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getPlatformDataCase()Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;
    .registers 2

    .line 4743
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->forNumber(I)Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    move-result-object v0

    return-object v0
.end method

.method public getSdk()Ljava/lang/String;
    .registers 3

    .line 5282
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdk_:Ljava/lang/Object;

    .line 5283
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 5284
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 5286
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5287
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 5290
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSdkBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 5303
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdk_:Ljava/lang/Object;

    .line 5304
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 5305
    check-cast v0, Ljava/lang/String;

    .line 5306
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 5308
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 5311
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSdkver()Ljava/lang/String;
    .registers 3

    .line 5378
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdkver_:Ljava/lang/Object;

    .line 5379
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 5380
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 5382
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5383
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdkver_:Ljava/lang/Object;

    return-object v0

    .line 5386
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSdkverBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 5399
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdkver_:Ljava/lang/Object;

    .line 5400
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 5401
    check-cast v0, Ljava/lang/String;

    .line 5402
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 5404
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdkver_:Ljava/lang/Object;

    return-object v0

    .line 5407
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSellerId()Ljava/lang/String;
    .registers 3

    .line 4765
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sellerId_:Ljava/lang/Object;

    .line 4766
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 4767
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4769
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4770
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sellerId_:Ljava/lang/Object;

    return-object v0

    .line 4773
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSellerIdBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 4786
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sellerId_:Ljava/lang/Object;

    .line 4787
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 4788
    check-cast v0, Ljava/lang/String;

    .line 4789
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4791
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sellerId_:Ljava/lang/Object;

    return-object v0

    .line 4794
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 3

    .line 6006
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 6007
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 6008
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 6010
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6011
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 6014
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 6027
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 6028
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 6029
    check-cast v0, Ljava/lang/String;

    .line 6030
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 6032
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 6035
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hasAndroid()Z
    .registers 3

    .line 6662
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasContext()Z
    .registers 2

    .line 6543
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

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

.method public hasExt()Z
    .registers 2

    .line 6104
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 5129
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

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

.method public hasIos()Z
    .registers 3

    .line 6803
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 4433
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/InitRequest;

    const-class v2, Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 4434
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

.method public mergeAndroid(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 5

    .line 6716
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->androidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/16 v1, 0x14

    if-nez v0, :cond_2b

    .line 6717
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    .line 6718
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v2

    if-eq v0, v2, :cond_25

    .line 6719
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    invoke-static {v0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->newBuilder(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object v0

    .line 6720
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->buildPartial()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    goto :goto_27

    .line 6722
    :cond_25
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    .line 6724
    :goto_27
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_37

    .line 6726
    :cond_2b
    iget v2, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    if-ne v2, v1, :cond_32

    .line 6727
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6729
    :cond_32
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->androidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6731
    :goto_37
    iput v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    return-object p0
.end method

.method public mergeContext(Lcom/explorestack/protobuf/adcom/Context;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 3

    .line 6590
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 6591
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v0, :cond_17

    .line 6593
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context;->newBuilder(Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    goto :goto_19

    .line 6595
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 6597
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6599
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeExt(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 3

    .line 6167
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 6168
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_17

    .line 6170
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_19

    .line 6172
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6174
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6176
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

    .line 4421
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 4421
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitRequest$Builder;

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

    .line 4421
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$Builder;

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

    .line 4421
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 4421
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitRequest$Builder;

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

    .line 4421
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4728
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->access$5700()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 4734
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest;)Lio/bidmachine/protobuf/InitRequest$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 4730
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/InitRequest;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 4731
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

    .line 4734
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 4736
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 3

    .line 4618
    instance-of v0, p1, Lio/bidmachine/protobuf/InitRequest;

    if-eqz v0, :cond_b

    .line 4619
    check-cast p1, Lio/bidmachine/protobuf/InitRequest;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1

    .line 4621
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/InitRequest;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 4

    .line 4627
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 4628
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getSellerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 4629
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$3500(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sellerId_:Ljava/lang/Object;

    .line 4630
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4632
    :cond_1a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getBundle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 4633
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$3600(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bundle_:Ljava/lang/Object;

    .line 4634
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4636
    :cond_2d
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$3700(Lio/bidmachine/protobuf/InitRequest;)I

    move-result v0

    if-eqz v0, :cond_3a

    .line 4637
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getOsValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->setOsValue(I)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 4639
    :cond_3a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getOsv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 4640
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$3800(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->osv_:Ljava/lang/Object;

    .line 4641
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4643
    :cond_4d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->hasGeo()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 4644
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeGeo(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 4646
    :cond_5a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getSdk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 4647
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$4000(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdk_:Ljava/lang/Object;

    .line 4648
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4650
    :cond_6d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getSdkver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_80

    .line 4651
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$4100(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdkver_:Ljava/lang/Object;

    .line 4652
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4654
    :cond_80
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getIfa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_93

    .line 4655
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$4200(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifa_:Ljava/lang/Object;

    .line 4656
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4658
    :cond_93
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a6

    .line 4659
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$4300(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifv_:Ljava/lang/Object;

    .line 4660
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4662
    :cond_a6
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 4663
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$4400(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bmIfv_:Ljava/lang/Object;

    .line 4664
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4666
    :cond_b9
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$4500(Lio/bidmachine/protobuf/InitRequest;)I

    move-result v0

    if-eqz v0, :cond_c6

    .line 4667
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getDeviceTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->setDeviceTypeValue(I)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 4669
    :cond_c6
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$4600(Lio/bidmachine/protobuf/InitRequest;)I

    move-result v0

    if-eqz v0, :cond_d3

    .line 4670
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getContypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->setContypeValue(I)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 4672
    :cond_d3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getAppVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e6

    .line 4673
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$4700(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->appVer_:Ljava/lang/Object;

    .line 4674
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4676
    :cond_e6
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f9

    .line 4677
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$4800(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 4678
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4680
    :cond_f9
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_106

    .line 4681
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 4683
    :cond_106
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getMake()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_119

    .line 4684
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$5000(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->make_:Ljava/lang/Object;

    .line 4685
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4687
    :cond_119
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12c

    .line 4688
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$5100(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->model_:Ljava/lang/Object;

    .line 4689
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4691
    :cond_12c
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getHwv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13f

    .line 4692
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$5200(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->hwv_:Ljava/lang/Object;

    .line 4693
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4695
    :cond_13f
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->hasContext()Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 4696
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeContext(Lcom/explorestack/protobuf/adcom/Context;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 4698
    :cond_14c
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$2;->$SwitchMap$io$bidmachine$protobuf$InitRequest$PlatformDataCase:[I

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getPlatformDataCase()Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_167

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15f

    goto :goto_16e

    .line 4704
    :cond_15f
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getIos()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeIos(Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;)Lio/bidmachine/protobuf/InitRequest$Builder;

    goto :goto_16e

    .line 4700
    :cond_167
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getAndroid()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeAndroid(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 4711
    :goto_16e
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$5600(Lio/bidmachine/protobuf/InitRequest;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 4712
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeGeo(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 3

    .line 5192
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 5193
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v0, :cond_17

    .line 5195
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->newBuilder(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto :goto_19

    .line 5197
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 5199
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5201
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeIos(Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 5

    .line 6857
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->iosBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/16 v1, 0x15

    if-nez v0, :cond_2b

    .line 6858
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    .line 6859
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object v2

    if-eq v0, v2, :cond_25

    .line 6860
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    invoke-static {v0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->newBuilder(Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object v0

    .line 6861
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->buildPartial()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    goto :goto_27

    .line 6863
    :cond_25
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    .line 6865
    :goto_27
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_37

    .line 6867
    :cond_2b
    iget v2, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    if-ne v2, v1, :cond_32

    .line 6868
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6870
    :cond_32
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->iosBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6872
    :goto_37
    iput v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 4421
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 4421
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 4421
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 6944
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$Builder;

    return-object p1
.end method

.method public setAndroid(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 3

    .line 6703
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->androidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 6704
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->build()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    .line 6705
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 6707
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->build()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_15
    const/16 p1, 0x14

    .line 6709
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    return-object p0
.end method

.method public setAndroid(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 3

    .line 6686
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->androidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6688
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6690
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    .line 6691
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 6693
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_10
    const/16 p1, 0x14

    .line 6695
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    return-object p0
.end method

.method public setAppVer(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5954
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5957
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->appVer_:Ljava/lang/Object;

    .line 5958
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAppVerBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5987
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5989
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$6600(Lcom/explorestack/protobuf/ByteString;)V

    .line 5991
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->appVer_:Ljava/lang/Object;

    .line 5992
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setBmIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5710
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5713
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bmIfv_:Ljava/lang/Object;

    .line 5714
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setBmIfvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5743
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5745
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$6500(Lcom/explorestack/protobuf/ByteString;)V

    .line 5747
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bmIfv_:Ljava/lang/Object;

    .line 5748
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setBundle(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 4905
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4908
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bundle_:Ljava/lang/Object;

    .line 4909
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setBundleBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 4938
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4940
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$5900(Lcom/explorestack/protobuf/ByteString;)V

    .line 4942
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bundle_:Ljava/lang/Object;

    .line 4943
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setContext(Lcom/explorestack/protobuf/adcom/Context$Builder;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 3

    .line 6577
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 6578
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->build()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 6579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6581
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->build()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setContext(Lcom/explorestack/protobuf/adcom/Context;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 3

    .line 6560
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6562
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6564
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 6565
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6567
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setContype(Lcom/explorestack/protobuf/adcom/ConnectionType;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5878
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5881
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/ConnectionType;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contype_:I

    .line 5882
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setContypeValue(I)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5849
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contype_:I

    .line 5850
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setDeviceType(Lcom/explorestack/protobuf/adcom/DeviceType;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5804
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5807
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/DeviceType;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->deviceType_:I

    .line 5808
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setDeviceTypeValue(I)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5775
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->deviceType_:I

    .line 5776
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 3

    .line 6150
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 6151
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6152
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6154
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 3

    .line 6129
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6133
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6134
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 6136
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 4421
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 4421
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 3

    .line 4592
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$Builder;

    return-object p1
.end method

.method public setGeo(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 3

    .line 5175
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 5176
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 5177
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5179
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setGeo(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 3

    .line 5154
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 5156
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5158
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 5159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 5161
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setHwv(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 6493
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6496
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->hwv_:Ljava/lang/Object;

    .line 6497
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setHwvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 6526
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6528
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$7000(Lcom/explorestack/protobuf/ByteString;)V

    .line 6530
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->hwv_:Ljava/lang/Object;

    .line 6531
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setIfa(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5518
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5521
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifa_:Ljava/lang/Object;

    .line 5522
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setIfaBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5551
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5553
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$6300(Lcom/explorestack/protobuf/ByteString;)V

    .line 5555
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifa_:Ljava/lang/Object;

    .line 5556
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5614
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5617
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifv_:Ljava/lang/Object;

    .line 5618
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setIfvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5647
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5649
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$6400(Lcom/explorestack/protobuf/ByteString;)V

    .line 5651
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifv_:Ljava/lang/Object;

    .line 5652
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setIos(Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 3

    .line 6844
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->iosBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 6845
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->build()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    .line 6846
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_15

    .line 6848
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->build()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_15
    const/16 p1, 0x15

    .line 6850
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    return-object p0
.end method

.method public setIos(Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 3

    .line 6827
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->iosBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 6829
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6831
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformData_:Ljava/lang/Object;

    .line 6832
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_10

    .line 6834
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_10
    const/16 p1, 0x15

    .line 6836
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->platformDataCase_:I

    return-object p0
.end method

.method public setMake(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 6301
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6304
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->make_:Ljava/lang/Object;

    .line 6305
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setMakeBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 6334
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6336
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$6800(Lcom/explorestack/protobuf/ByteString;)V

    .line 6338
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->make_:Ljava/lang/Object;

    .line 6339
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setModel(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 6397
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6400
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->model_:Ljava/lang/Object;

    .line 6401
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setModelBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 6430
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6432
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$6900(Lcom/explorestack/protobuf/ByteString;)V

    .line 6434
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->model_:Ljava/lang/Object;

    .line 6435
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setOs(Lcom/explorestack/protobuf/adcom/OS;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 4999
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5002
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/OS;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->os_:I

    .line 5003
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setOsValue(I)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 4970
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->os_:I

    .line 4971
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setOsv(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5075
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5078
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->osv_:Ljava/lang/Object;

    .line 5079
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setOsvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5110
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$6000(Lcom/explorestack/protobuf/ByteString;)V

    .line 5112
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->osv_:Ljava/lang/Object;

    .line 5113
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 4421
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/InitRequest$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 4421
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/InitRequest$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 4

    .line 4608
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$Builder;

    return-object p1
.end method

.method public setSdk(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5326
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5329
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdk_:Ljava/lang/Object;

    .line 5330
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSdkBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5359
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5361
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$6100(Lcom/explorestack/protobuf/ByteString;)V

    .line 5363
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdk_:Ljava/lang/Object;

    .line 5364
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSdkver(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5422
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5425
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdkver_:Ljava/lang/Object;

    .line 5426
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSdkverBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 5455
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5457
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$6200(Lcom/explorestack/protobuf/ByteString;)V

    .line 5459
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdkver_:Ljava/lang/Object;

    .line 5460
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSellerId(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 4809
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4812
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sellerId_:Ljava/lang/Object;

    .line 4813
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSellerIdBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 4842
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4844
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$5800(Lcom/explorestack/protobuf/ByteString;)V

    .line 4846
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sellerId_:Ljava/lang/Object;

    .line 4847
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 6050
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6053
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 6054
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setSessionIdBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 6083
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6085
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$6700(Lcom/explorestack/protobuf/ByteString;)V

    .line 6087
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 6088
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 4421
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 4421
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .registers 2

    .line 6938
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.InitRequest.PlatformDataCase (io.bidmachine.protobuf.InitRequest$PlatformDataCase)
.class public final enum Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;
.super Ljava/lang/Enum;
.source "InitRequest.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlatformDataCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

.field public static final enum ANDROID:Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

.field public static final enum IOS:Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

.field public static final enum PLATFORMDATA_NOT_SET:Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 3148
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    const/16 v1, 0x14

    const-string v2, "ANDROID"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->ANDROID:Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    .line 3149
    new-instance v1, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    const/4 v2, 0x1

    const/16 v4, 0x15

    const-string v5, "IOS"

    invoke-direct {v1, v5, v2, v4}, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->IOS:Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    .line 3150
    new-instance v2, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    const-string v4, "PLATFORMDATA_NOT_SET"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->PLATFORMDATA_NOT_SET:Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    .line 3145
    filled-new-array {v0, v1, v2}, [Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->$VALUES:[Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 3152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3153
    iput p3, p0, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;
    .registers 2

    if-eqz p0, :cond_12

    const/16 v0, 0x14

    if-eq p0, v0, :cond_f

    const/16 v0, 0x15

    if-eq p0, v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 3168
    :cond_c
    sget-object p0, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->IOS:Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    return-object p0

    .line 3167
    :cond_f
    sget-object p0, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->ANDROID:Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    return-object p0

    .line 3169
    :cond_12
    sget-object p0, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->PLATFORMDATA_NOT_SET:Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3162
    invoke-static {p0}, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->forNumber(I)Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;
    .registers 2

    .line 3145
    const-class v0, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;
    .registers 1

    .line 3145
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->$VALUES:[Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    invoke-virtual {v0}, [Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .registers 2

    .line 3174
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->value:I

    return v0
.end method

###### Class io.bidmachine.protobuf.InitRequest.iOSPlatformData (io.bidmachine.protobuf.InitRequest$iOSPlatformData)
.class public final Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "InitRequest.java"

# interfaces
.implements Lio/bidmachine/protobuf/InitRequest$iOSPlatformDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "iOSPlatformData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

.field public static final MIN_OS_VERSION_FIELD_NUMBER:I = 0x1

.field public static final OS_EXECUTION_ENV_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private minOsVersion_:Lcom/explorestack/protobuf/StringValue;

.field private osExecutionEnv_:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3109
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    invoke-direct {v0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    .line 3117
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 2377
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 2527
    iput-byte v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 2378
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->osExecutionEnv_:I

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2397
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;-><init>()V

    .line 2399
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2402
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_6c

    .line 2406
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_22

    const/16 v4, 0xa

    if-eq v2, v4, :cond_31

    const/16 v4, 0x10

    if-eq v2, v4, :cond_2a

    .line 2431
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_22
    move v1, v3

    goto :goto_b

    :catchall_24
    move-exception p1

    goto :goto_62

    :catch_26
    move-exception p1

    goto :goto_53

    :catch_28
    move-exception p1

    goto :goto_5d

    .line 2425
    :cond_2a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 2427
    iput v2, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->osExecutionEnv_:I

    goto :goto_b

    .line 2413
    :cond_31
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->minOsVersion_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_3a

    .line 2414
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v2

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    .line 2416
    :goto_3b
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/StringValue;

    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->minOsVersion_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_b

    .line 2418
    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 2419
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->minOsVersion_:Lcom/explorestack/protobuf/StringValue;
    :try_end_52
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_52} :catch_28
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_52} :catch_26
    .catchall {:try_start_d .. :try_end_52} :catchall_24

    goto :goto_b

    .line 2442
    :goto_53
    :try_start_53
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 2443
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2440
    :goto_5d
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_62
    .catchall {:try_start_53 .. :try_end_62} :catchall_24

    .line 2445
    :goto_62
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 2446
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 2447
    throw p1

    .line 2445
    :cond_6c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 2446
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/InitRequest$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2368
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 2375
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 2527
    iput-byte p1, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/InitRequest$1;)V
    .registers 3

    .line 2368
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$2400()Z
    .registers 1

    .line 2368
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2602(Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2368
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->minOsVersion_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$2700(Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;)I
    .registers 1

    .line 2368
    iget p0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->osExecutionEnv_:I

    return p0
.end method

.method public static synthetic access$2702(Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;I)I
    .registers 2

    .line 2368
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->osExecutionEnv_:I

    return p1
.end method

.method public static synthetic access$2800(Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 2368
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$2900()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 2368
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
    .registers 1

    .line 3113
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 2451
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_iOSPlatformData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 1

    .line 2680
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->toBuilder()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 2

    .line 2683
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->toBuilder()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2653
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2654
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2660
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2661
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2621
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2627
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2666
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2667
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2673
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2674
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2641
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2642
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2648
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 2649
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2610
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2616
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2631
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2637
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;",
            ">;"
        }
    .end annotation

    .line 3128
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 2574
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    if-nez v1, :cond_d

    .line 2575
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2577
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    .line 2579
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->hasMinOsVersion()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->hasMinOsVersion()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 2580
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->hasMinOsVersion()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2581
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->getMinOsVersion()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 2582
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->getMinOsVersion()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 2584
    :cond_30
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->osExecutionEnv_:I

    iget v2, p1, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->osExecutionEnv_:I

    if-eq v1, v2, :cond_37

    return v3

    .line 2585
    :cond_37
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    return v3

    :cond_42
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2368
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2368
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
    .registers 2

    .line 3138
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    return-object v0
.end method

.method public getMinOsVersion()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2486
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->minOsVersion_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getMinOsVersionOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 2497
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->getMinOsVersion()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getOsExecutionEnv()Lio/bidmachine/protobuf/OSExecutionEnvironment;
    .registers 2

    .line 2523
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->osExecutionEnv_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/OSExecutionEnvironment;->valueOf(I)Lio/bidmachine/protobuf/OSExecutionEnvironment;

    move-result-object v0

    if-nez v0, :cond_a

    .line 2524
    sget-object v0, Lio/bidmachine/protobuf/OSExecutionEnvironment;->UNRECOGNIZED:Lio/bidmachine/protobuf/OSExecutionEnvironment;

    :cond_a
    return-object v0
.end method

.method public getOsExecutionEnvValue()I
    .registers 2

    .line 2511
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->osExecutionEnv_:I

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;",
            ">;"
        }
    .end annotation

    .line 3133
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 2552
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 2556
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->minOsVersion_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 2558
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->getMinOsVersion()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 2560
    :goto_15
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->osExecutionEnv_:I

    sget-object v2, Lio/bidmachine/protobuf/OSExecutionEnvironment;->OS_EXECUTION_ENVIRONMENT_UNKNOWN:Lio/bidmachine/protobuf/OSExecutionEnvironment;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/OSExecutionEnvironment;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_27

    const/4 v1, 0x2

    .line 2561
    iget v2, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->osExecutionEnv_:I

    .line 2562
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2564
    :cond_27
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2565
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 2391
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasMinOsVersion()Z
    .registers 2

    .line 2474
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->minOsVersion_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 2591
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 2595
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 2596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->hasMinOsVersion()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 2598
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->getMinOsVersion()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_25
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 2601
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->osExecutionEnv_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 2602
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2603
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 2457
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_iOSPlatformData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    const-class v2, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    .line 2458
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 2530
    iget-byte v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 2534
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2368
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->newBuilderForType()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2368
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2368
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->newBuilderForType()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 2

    .line 2678
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->newBuilder()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 4

    .line 2694
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/InitRequest$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 2385
    new-instance p1, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    invoke-direct {p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2368
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->toBuilder()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2368
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->toBuilder()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 3

    .line 2687
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 2688
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;-><init>(Lio/bidmachine/protobuf/InitRequest$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;-><init>(Lio/bidmachine/protobuf/InitRequest$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

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

    .line 2541
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->minOsVersion_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 2542
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->getMinOsVersion()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 2544
    :cond_c
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->osExecutionEnv_:I

    sget-object v1, Lio/bidmachine/protobuf/OSExecutionEnvironment;->OS_EXECUTION_ENVIRONMENT_UNKNOWN:Lio/bidmachine/protobuf/OSExecutionEnvironment;

    invoke-virtual {v1}, Lio/bidmachine/protobuf/OSExecutionEnvironment;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1c

    const/4 v0, 0x2

    .line 2545
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->osExecutionEnv_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2547
    :cond_1c
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.InitRequest.iOSPlatformData.AnonymousClass1 (io.bidmachine.protobuf.InitRequest$iOSPlatformData$1)
.class Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "InitRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3117
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3123
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/InitRequest$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3117
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.InitRequest.iOSPlatformData.Builder (io.bidmachine.protobuf.InitRequest$iOSPlatformData$Builder)
.class public final Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "InitRequest.java"

# interfaces
.implements Lio/bidmachine/protobuf/InitRequest$iOSPlatformDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/InitRequest$iOSPlatformDataOrBuilder;"
    }
.end annotation


# instance fields
.field private minOsVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private minOsVersion_:Lcom/explorestack/protobuf/StringValue;

.field private osExecutionEnv_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2722
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 3017
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->osExecutionEnv_:I

    .line 2723
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 2728
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 3017
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->osExecutionEnv_:I

    .line 2729
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/InitRequest$1;)V
    .registers 3

    .line 2704
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/InitRequest$1;)V
    .registers 2

    .line 2704
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 2710
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_iOSPlatformData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getMinOsVersionFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 3006
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 3007
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3009
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->getMinOsVersion()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 3010
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 3011
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 3012
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersion_:Lcom/explorestack/protobuf/StringValue;

    .line 3014
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 2733
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->access$2400()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 2704
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 2704
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 3

    .line 2813
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2704
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->build()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2704
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->build()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
    .registers 3

    .line 2763
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->buildPartial()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object v0

    .line 2764
    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 2765
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2704
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->buildPartial()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2704
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->buildPartial()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
    .registers 3

    .line 2772
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/InitRequest$1;)V

    .line 2773
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_10

    .line 2774
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersion_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->access$2602(Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 2776
    :cond_10
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->access$2602(Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 2778
    :goto_19
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->osExecutionEnv_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->access$2702(Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;I)I

    .line 2779
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2704
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->clear()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2704
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->clear()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2704
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->clear()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2704
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->clear()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 3

    .line 2738
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 2739
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2740
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersion_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_f

    .line 2742
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersion_:Lcom/explorestack/protobuf/StringValue;

    .line 2743
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_f
    const/4 v0, 0x0

    .line 2745
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->osExecutionEnv_:I

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2704
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2704
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 2

    .line 2796
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    return-object p1
.end method

.method public clearMinOsVersion()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 3

    .line 2959
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2960
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersion_:Lcom/explorestack/protobuf/StringValue;

    .line 2961
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2963
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersion_:Lcom/explorestack/protobuf/StringValue;

    .line 2964
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2704
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2704
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2704
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 2

    .line 2801
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    return-object p1
.end method

.method public clearOsExecutionEnv()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 3086
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->osExecutionEnv_:I

    .line 3087
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2704
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 2704
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2704
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2704
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 2704
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 2

    .line 2785
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2704
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 2704
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 2704
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
    .registers 2

    .line 2758
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 2753
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_iOSPlatformData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getMinOsVersion()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 2885
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2886
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersion_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 2888
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getMinOsVersionBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 2978
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2979
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->getMinOsVersionFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getMinOsVersionOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 2989
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 2990
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 2992
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersion_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 2993
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getOsExecutionEnv()Lio/bidmachine/protobuf/OSExecutionEnvironment;
    .registers 2

    .line 3055
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->osExecutionEnv_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/OSExecutionEnvironment;->valueOf(I)Lio/bidmachine/protobuf/OSExecutionEnvironment;

    move-result-object v0

    if-nez v0, :cond_a

    .line 3056
    sget-object v0, Lio/bidmachine/protobuf/OSExecutionEnvironment;->UNRECOGNIZED:Lio/bidmachine/protobuf/OSExecutionEnvironment;

    :cond_a
    return-object v0
.end method

.method public getOsExecutionEnvValue()I
    .registers 2

    .line 3027
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->osExecutionEnv_:I

    return v0
.end method

.method public hasMinOsVersion()Z
    .registers 2

    .line 2874
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersion_:Lcom/explorestack/protobuf/StringValue;

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

    .line 2716
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_iOSPlatformData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    const-class v2, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    .line 2717
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

    .line 2704
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2704
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

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

    .line 2704
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

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

    .line 2704
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2704
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

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

    .line 2704
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2850
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->access$2900()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 2856
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 2852
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 2853
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

    .line 2856
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    .line 2858
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 3

    .line 2817
    instance-of v0, p1, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    if-eqz v0, :cond_b

    .line 2818
    check-cast p1, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object p1

    return-object p1

    .line 2820
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 3

    .line 2826
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 2827
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->hasMinOsVersion()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2828
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->getMinOsVersion()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->mergeMinOsVersion(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    .line 2830
    :cond_14
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->access$2700(Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;)I

    move-result v0

    if-eqz v0, :cond_21

    .line 2831
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->getOsExecutionEnvValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->setOsExecutionEnvValue(I)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    .line 2833
    :cond_21
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;->access$2800(Lio/bidmachine/protobuf/InitRequest$iOSPlatformData;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    .line 2834
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeMinOsVersion(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 3

    .line 2937
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 2938
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersion_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 2940
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersion_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 2942
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersion_:Lcom/explorestack/protobuf/StringValue;

    .line 2944
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2946
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2704
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2704
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2704
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 2

    .line 3099
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 2704
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 2704
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 3

    .line 2791
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    return-object p1
.end method

.method public setMinOsVersion(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 3

    .line 2920
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 2921
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersion_:Lcom/explorestack/protobuf/StringValue;

    .line 2922
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2924
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setMinOsVersion(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 3

    .line 2899
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2901
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2903
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->minOsVersion_:Lcom/explorestack/protobuf/StringValue;

    .line 2904
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2906
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setOsExecutionEnv(Lio/bidmachine/protobuf/OSExecutionEnvironment;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 2

    .line 3069
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3072
    invoke-virtual {p1}, Lio/bidmachine/protobuf/OSExecutionEnvironment;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->osExecutionEnv_:I

    .line 3073
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setOsExecutionEnvValue(I)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 2

    .line 3040
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->osExecutionEnv_:I

    .line 3041
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 2704
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 2704
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 4

    .line 2807
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 2704
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 2704
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;
    .registers 2

    .line 3093
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$iOSPlatformData$Builder;

    return-object p1
.end method

###### Class io.bidmachine.protobuf.InitRequest.iOSPlatformDataOrBuilder (io.bidmachine.protobuf.InitRequest$iOSPlatformDataOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/InitRequest$iOSPlatformDataOrBuilder;
.super Ljava/lang/Object;
.source "InitRequest.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "iOSPlatformDataOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getMinOsVersion()Lcom/explorestack/protobuf/StringValue;
.end method

.method public abstract getMinOsVersionOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
.end method

.method public abstract getOsExecutionEnv()Lio/bidmachine/protobuf/OSExecutionEnvironment;
.end method

.method public abstract getOsExecutionEnvValue()I
.end method

.method public abstract hasMinOsVersion()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method

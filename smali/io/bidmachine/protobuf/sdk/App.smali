###### Class io.bidmachine.protobuf.sdk.App (io.bidmachine.protobuf.sdk.App)
.class public final Lio/bidmachine/protobuf/sdk/App;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "App.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AppOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/App$Builder;
    }
.end annotation


# static fields
.field public static final APP_NAME_FIELD_NUMBER:I = 0x1

.field public static final APP_VER_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/App;

.field public static final FIRST_LAUNCH_TIME_FIELD_NUMBER:I = 0x5

.field public static final FMWNAME_FIELD_NUMBER:I = 0x8

.field public static final INSTALL_BEGIN_SERVER_TIMESTAMP_FIELD_NUMBER:I = 0xd

.field public static final INSTALL_REFERRER_CLICK_SERVER_TIMESTAMP_FIELD_NUMBER:I = 0xc

.field public static final INSTALL_REFERRER_CLICK_TIMESTAMP_FIELD_NUMBER:I = 0xa

.field public static final INSTALL_REFERRER_URL_FIELD_NUMBER:I = 0x9

.field public static final INSTALL_TIME_FIELD_NUMBER:I = 0x4

.field public static final INSTALL_VERSION_FIELD_NUMBER:I = 0xe

.field public static final IS_GOOGLE_PLAY_INSTANT_FIELD_NUMBER:I = 0xf

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/App;",
            ">;"
        }
    .end annotation
.end field

.field public static final RELEASE_FIELD_NUMBER:I = 0x3

.field public static final SDK_INSTALL_TIME_FIELD_NUMBER:I = 0x10

.field public static final STORECAT_FIELD_NUMBER:I = 0x6

.field public static final STORESUBCAT_FIELD_NUMBER:I = 0x7

.field private static final serialVersionUID:J


# instance fields
.field private volatile appName_:Ljava/lang/Object;

.field private volatile appVer_:Ljava/lang/Object;

.field private firstLaunchTime_:Lcom/explorestack/protobuf/Timestamp;

.field private volatile fmwname_:Ljava/lang/Object;

.field private installBeginServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

.field private installReferrerClickServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

.field private installReferrerClickTimestamp_:Lcom/explorestack/protobuf/Timestamp;

.field private volatile installReferrerUrl_:Ljava/lang/Object;

.field private installTime_:Lcom/explorestack/protobuf/Timestamp;

.field private volatile installVersion_:Ljava/lang/Object;

.field private isGooglePlayInstant_:Z

.field private memoizedIsInitialized:B

.field private release_:Lcom/explorestack/protobuf/adcom/Context$App$Release;

.field private sdkInstallTime_:Lcom/explorestack/protobuf/Timestamp;

.field private volatile storecat_:Ljava/lang/Object;

.field private storesubcat_:Lcom/explorestack/protobuf/LazyStringList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3327
    new-instance v0, Lio/bidmachine/protobuf/sdk/App;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/App;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/App;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/App;

    .line 3335
    new-instance v0, Lio/bidmachine/protobuf/sdk/App$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/App$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 833
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/App;->memoizedIsInitialized:B

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->appName_:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->appVer_:Ljava/lang/Object;

    .line 21
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->storecat_:Ljava/lang/Object;

    .line 22
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 23
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->fmwname_:Ljava/lang/Object;

    .line 24
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerUrl_:Ljava/lang/Object;

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->installVersion_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/App;-><init>()V

    .line 46
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_17b

    .line 54
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_190

    .line 201
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :sswitch_1d
    move v1, v4

    goto :goto_c

    :catchall_1f
    move-exception p1

    goto/16 :goto_167

    :catch_22
    move-exception p1

    goto/16 :goto_158

    :catch_25
    move-exception p1

    goto/16 :goto_162

    .line 189
    :sswitch_28
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->sdkInstallTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v3, :cond_30

    .line 190
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Timestamp;->toBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v5

    .line 192
    :cond_30
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/Timestamp;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->sdkInstallTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v5, :cond_c

    .line 194
    invoke-virtual {v5, v3}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    .line 195
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->sdkInstallTime_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_c

    .line 184
    :sswitch_48
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/App;->isGooglePlayInstant_:Z

    goto :goto_c

    .line 177
    :sswitch_4f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 179
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->installVersion_:Ljava/lang/Object;

    goto :goto_c

    .line 165
    :sswitch_56
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->installBeginServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v3, :cond_5e

    .line 166
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Timestamp;->toBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v5

    .line 168
    :cond_5e
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/Timestamp;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->installBeginServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v5, :cond_c

    .line 170
    invoke-virtual {v5, v3}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    .line 171
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->installBeginServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_c

    .line 152
    :sswitch_76
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerClickServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v3, :cond_7e

    .line 153
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Timestamp;->toBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v5

    .line 155
    :cond_7e
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/Timestamp;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerClickServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v5, :cond_c

    .line 157
    invoke-virtual {v5, v3}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    .line 158
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerClickServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    goto/16 :goto_c

    .line 139
    :sswitch_97
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerClickTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v3, :cond_9f

    .line 140
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Timestamp;->toBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v5

    .line 142
    :cond_9f
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/Timestamp;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerClickTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v5, :cond_c

    .line 144
    invoke-virtual {v5, v3}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    .line 145
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerClickTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    goto/16 :goto_c

    .line 132
    :sswitch_b8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 134
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerUrl_:Ljava/lang/Object;

    goto/16 :goto_c

    .line 126
    :sswitch_c0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 128
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->fmwname_:Ljava/lang/Object;

    goto/16 :goto_c

    .line 117
    :sswitch_c8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_d6

    .line 119
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lio/bidmachine/protobuf/sdk/App;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    move v2, v4

    .line 122
    :cond_d6
    iget-object v4, p0, Lio/bidmachine/protobuf/sdk/App;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 111
    :sswitch_dd
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 113
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->storecat_:Ljava/lang/Object;

    goto/16 :goto_c

    .line 99
    :sswitch_e5
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->firstLaunchTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v3, :cond_ed

    .line 100
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Timestamp;->toBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v5

    .line 102
    :cond_ed
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/Timestamp;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->firstLaunchTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v5, :cond_c

    .line 104
    invoke-virtual {v5, v3}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    .line 105
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->firstLaunchTime_:Lcom/explorestack/protobuf/Timestamp;

    goto/16 :goto_c

    .line 86
    :sswitch_106
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v3, :cond_10e

    .line 87
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Timestamp;->toBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v5

    .line 89
    :cond_10e
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/Timestamp;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v5, :cond_c

    .line 91
    invoke-virtual {v5, v3}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    .line 92
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    goto/16 :goto_c

    .line 73
    :sswitch_127
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->release_:Lcom/explorestack/protobuf/adcom/Context$App$Release;

    if-eqz v3, :cond_12f

    .line 74
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/Context$App$Release;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Release$Builder;

    move-result-object v5

    .line 76
    :cond_12f
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Release;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/adcom/Context$App$Release;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->release_:Lcom/explorestack/protobuf/adcom/Context$App$Release;

    if-eqz v5, :cond_c

    .line 78
    invoke-virtual {v5, v3}, Lcom/explorestack/protobuf/adcom/Context$App$Release$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App$Release;)Lcom/explorestack/protobuf/adcom/Context$App$Release$Builder;

    .line 79
    invoke-virtual {v5}, Lcom/explorestack/protobuf/adcom/Context$App$Release$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$App$Release;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->release_:Lcom/explorestack/protobuf/adcom/Context$App$Release;

    goto/16 :goto_c

    .line 66
    :sswitch_148
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 68
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->appVer_:Ljava/lang/Object;

    goto/16 :goto_c

    .line 60
    :sswitch_150
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 62
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->appName_:Ljava/lang/Object;
    :try_end_156
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_156} :catch_25
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_156} :catch_22
    .catchall {:try_start_e .. :try_end_156} :catchall_1f

    goto/16 :goto_c

    .line 212
    :goto_158
    :try_start_158
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 213
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 210
    :goto_162
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_167
    .catchall {:try_start_158 .. :try_end_167} :catchall_1f

    :goto_167
    if-eqz v2, :cond_171

    .line 216
    iget-object p2, p0, Lio/bidmachine/protobuf/sdk/App;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/sdk/App;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 218
    :cond_171
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 219
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 220
    throw p1

    :cond_17b
    if-eqz v2, :cond_185

    .line 216
    iget-object p1, p0, Lio/bidmachine/protobuf/sdk/App;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 218
    :cond_185
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 219
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_190
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_150
        0x12 -> :sswitch_148
        0x1a -> :sswitch_127
        0x22 -> :sswitch_106
        0x2a -> :sswitch_e5
        0x32 -> :sswitch_dd
        0x3a -> :sswitch_c8
        0x42 -> :sswitch_c0
        0x4a -> :sswitch_b8
        0x52 -> :sswitch_97
        0x62 -> :sswitch_76
        0x6a -> :sswitch_56
        0x72 -> :sswitch_4f
        0x78 -> :sswitch_48
        0x82 -> :sswitch_28
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/App$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/App;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 833
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/App;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/App$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/App;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1000(Lio/bidmachine/protobuf/sdk/App;)Lcom/explorestack/protobuf/LazyStringList;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/App;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method public static synthetic access$1002(Lio/bidmachine/protobuf/sdk/App;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method public static synthetic access$1100(Lio/bidmachine/protobuf/sdk/App;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/App;->fmwname_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1102(Lio/bidmachine/protobuf/sdk/App;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App;->fmwname_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1200(Lio/bidmachine/protobuf/sdk/App;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1202(Lio/bidmachine/protobuf/sdk/App;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1302(Lio/bidmachine/protobuf/sdk/App;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerClickTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    return-object p1
.end method

.method public static synthetic access$1402(Lio/bidmachine/protobuf/sdk/App;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerClickServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    return-object p1
.end method

.method public static synthetic access$1502(Lio/bidmachine/protobuf/sdk/App;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App;->installBeginServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    return-object p1
.end method

.method public static synthetic access$1600(Lio/bidmachine/protobuf/sdk/App;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/App;->installVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1602(Lio/bidmachine/protobuf/sdk/App;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App;->installVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1702(Lio/bidmachine/protobuf/sdk/App;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/App;->isGooglePlayInstant_:Z

    return p1
.end method

.method public static synthetic access$1802(Lio/bidmachine/protobuf/sdk/App;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App;->sdkInstallTime_:Lcom/explorestack/protobuf/Timestamp;

    return-object p1
.end method

.method public static synthetic access$1900(Lio/bidmachine/protobuf/sdk/App;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2000()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/sdk/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$2100(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$2200(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$2300(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$2400(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$2500(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$2600(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$2700(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$400(Lio/bidmachine/protobuf/sdk/App;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/App;->appName_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/sdk/App;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App;->appName_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$500(Lio/bidmachine/protobuf/sdk/App;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/App;->appVer_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/sdk/App;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App;->appVer_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/sdk/App;Lcom/explorestack/protobuf/adcom/Context$App$Release;)Lcom/explorestack/protobuf/adcom/Context$App$Release;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App;->release_:Lcom/explorestack/protobuf/adcom/Context$App$Release;

    return-object p1
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/sdk/App;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    return-object p1
.end method

.method public static synthetic access$802(Lio/bidmachine/protobuf/sdk/App;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App;->firstLaunchTime_:Lcom/explorestack/protobuf/Timestamp;

    return-object p1
.end method

.method public static synthetic access$900(Lio/bidmachine/protobuf/sdk/App;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/App;->storecat_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$902(Lio/bidmachine/protobuf/sdk/App;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App;->storecat_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/App;
    .registers 1

    .line 3331
    sget-object v0, Lio/bidmachine/protobuf/sdk/App;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/App;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 224
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_App_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 1

    .line 1161
    sget-object v0, Lio/bidmachine/protobuf/sdk/App;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/App;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/App;->toBuilder()Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/App;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 1164
    sget-object v0, Lio/bidmachine/protobuf/sdk/App;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/App;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/App;->toBuilder()Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/App;)Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/App;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1134
    sget-object v0, Lio/bidmachine/protobuf/sdk/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1135
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/App;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/App;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1141
    sget-object v0, Lio/bidmachine/protobuf/sdk/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1142
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/App;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/App;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1102
    sget-object v0, Lio/bidmachine/protobuf/sdk/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/App;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/App;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1108
    sget-object v0, Lio/bidmachine/protobuf/sdk/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/App;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/App;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1147
    sget-object v0, Lio/bidmachine/protobuf/sdk/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1148
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/App;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/App;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1154
    sget-object v0, Lio/bidmachine/protobuf/sdk/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1155
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/App;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/App;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1122
    sget-object v0, Lio/bidmachine/protobuf/sdk/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1123
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/App;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/App;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1129
    sget-object v0, Lio/bidmachine/protobuf/sdk/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1130
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/App;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/App;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1091
    sget-object v0, Lio/bidmachine/protobuf/sdk/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/App;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/App;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1097
    sget-object v0, Lio/bidmachine/protobuf/sdk/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/App;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/App;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1112
    sget-object v0, Lio/bidmachine/protobuf/sdk/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/App;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/App;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1118
    sget-object v0, Lio/bidmachine/protobuf/sdk/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/App;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/App;",
            ">;"
        }
    .end annotation

    .line 3346
    sget-object v0, Lio/bidmachine/protobuf/sdk/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 969
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/App;

    if-nez v1, :cond_d

    .line 970
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 972
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/App;

    .line 974
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getAppName()Ljava/lang/String;

    move-result-object v1

    .line 975
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 976
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getAppVer()Ljava/lang/String;

    move-result-object v1

    .line 977
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getAppVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    .line 978
    :cond_2e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->hasRelease()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->hasRelease()Z

    move-result v3

    if-eq v1, v3, :cond_39

    return v2

    .line 979
    :cond_39
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->hasRelease()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 980
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getRelease()Lcom/explorestack/protobuf/adcom/Context$App$Release;

    move-result-object v1

    .line 981
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getRelease()Lcom/explorestack/protobuf/adcom/Context$App$Release;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Context$App$Release;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    .line 983
    :cond_4e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->hasInstallTime()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->hasInstallTime()Z

    move-result v3

    if-eq v1, v3, :cond_59

    return v2

    .line 984
    :cond_59
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->hasInstallTime()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 985
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 986
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getInstallTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    return v2

    .line 988
    :cond_6e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->hasFirstLaunchTime()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->hasFirstLaunchTime()Z

    move-result v3

    if-eq v1, v3, :cond_79

    return v2

    .line 989
    :cond_79
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->hasFirstLaunchTime()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 990
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getFirstLaunchTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 991
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getFirstLaunchTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8e

    return v2

    .line 993
    :cond_8e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getStorecat()Ljava/lang/String;

    move-result-object v1

    .line 994
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getStorecat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9d

    return v2

    .line 995
    :cond_9d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getStoresubcatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 996
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getStoresubcatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ac

    return v2

    .line 997
    :cond_ac
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getFmwname()Ljava/lang/String;

    move-result-object v1

    .line 998
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getFmwname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bb

    return v2

    .line 999
    :cond_bb
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallReferrerUrl()Ljava/lang/String;

    move-result-object v1

    .line 1000
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getInstallReferrerUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ca

    return v2

    .line 1001
    :cond_ca
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->hasInstallReferrerClickTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->hasInstallReferrerClickTimestamp()Z

    move-result v3

    if-eq v1, v3, :cond_d5

    return v2

    .line 1002
    :cond_d5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->hasInstallReferrerClickTimestamp()Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 1003
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallReferrerClickTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 1004
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getInstallReferrerClickTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ea

    return v2

    .line 1006
    :cond_ea
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->hasInstallReferrerClickServerTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->hasInstallReferrerClickServerTimestamp()Z

    move-result v3

    if-eq v1, v3, :cond_f5

    return v2

    .line 1007
    :cond_f5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->hasInstallReferrerClickServerTimestamp()Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 1008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallReferrerClickServerTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 1009
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getInstallReferrerClickServerTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10a

    return v2

    .line 1011
    :cond_10a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->hasInstallBeginServerTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->hasInstallBeginServerTimestamp()Z

    move-result v3

    if-eq v1, v3, :cond_115

    return v2

    .line 1012
    :cond_115
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->hasInstallBeginServerTimestamp()Z

    move-result v1

    if-eqz v1, :cond_12a

    .line 1013
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallBeginServerTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 1014
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getInstallBeginServerTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12a

    return v2

    .line 1016
    :cond_12a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallVersion()Ljava/lang/String;

    move-result-object v1

    .line 1017
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getInstallVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_139

    return v2

    .line 1018
    :cond_139
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getIsGooglePlayInstant()Z

    move-result v1

    .line 1019
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getIsGooglePlayInstant()Z

    move-result v3

    if-eq v1, v3, :cond_144

    return v2

    .line 1020
    :cond_144
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->hasSdkInstallTime()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->hasSdkInstallTime()Z

    move-result v3

    if-eq v1, v3, :cond_14f

    return v2

    .line 1021
    :cond_14f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->hasSdkInstallTime()Z

    move-result v1

    if-eqz v1, :cond_164

    .line 1022
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getSdkInstallTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 1023
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getSdkInstallTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_164

    return v2

    .line 1025
    :cond_164
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16f

    return v2

    :cond_16f
    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 3

    .line 243
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->appName_:Ljava/lang/Object;

    .line 244
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 245
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 247
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 249
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 250
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->appName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAppNameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 261
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->appName_:Ljava/lang/Object;

    .line 262
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 263
    check-cast v0, Ljava/lang/String;

    .line 264
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 266
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->appName_:Ljava/lang/Object;

    return-object v0

    .line 269
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getAppVer()Ljava/lang/String;
    .registers 3

    .line 284
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->appVer_:Ljava/lang/Object;

    .line 285
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 286
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 288
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 290
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 291
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->appVer_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAppVerBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 305
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->appVer_:Ljava/lang/Object;

    .line 306
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 307
    check-cast v0, Ljava/lang/String;

    .line 308
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 310
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->appVer_:Ljava/lang/Object;

    return-object v0

    .line 313
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/App;
    .registers 2

    .line 3356
    sget-object v0, Lio/bidmachine/protobuf/sdk/App;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/App;

    return-object v0
.end method

.method public getFirstLaunchTime()Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 414
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->firstLaunchTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getFirstLaunchTimeOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .registers 2

    .line 425
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getFirstLaunchTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getFmwname()Ljava/lang/String;
    .registers 3

    .line 537
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->fmwname_:Ljava/lang/Object;

    .line 538
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 539
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 541
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 543
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 544
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->fmwname_:Ljava/lang/Object;

    return-object v0
.end method

.method public getFmwnameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 559
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->fmwname_:Ljava/lang/Object;

    .line 560
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 561
    check-cast v0, Ljava/lang/String;

    .line 562
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 564
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->fmwname_:Ljava/lang/Object;

    return-object v0

    .line 567
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getInstallBeginServerTimestamp()Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 717
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->installBeginServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getInstallBeginServerTimestampOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .registers 2

    .line 728
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallBeginServerTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getInstallReferrerClickServerTimestamp()Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 679
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerClickServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getInstallReferrerClickServerTimestampOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .registers 2

    .line 690
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallReferrerClickServerTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getInstallReferrerClickTimestamp()Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 641
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerClickTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getInstallReferrerClickTimestampOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .registers 2

    .line 652
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallReferrerClickTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getInstallReferrerUrl()Ljava/lang/String;
    .registers 3

    .line 583
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerUrl_:Ljava/lang/Object;

    .line 584
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 585
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 587
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 589
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 590
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method public getInstallReferrerUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 605
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerUrl_:Ljava/lang/Object;

    .line 606
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 607
    check-cast v0, Ljava/lang/String;

    .line 608
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 610
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerUrl_:Ljava/lang/Object;

    return-object v0

    .line 613
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getInstallTime()Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 376
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getInstallTimeOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .registers 2

    .line 387
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getInstallVersion()Ljava/lang/String;
    .registers 3

    .line 743
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->installVersion_:Ljava/lang/Object;

    .line 744
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 745
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 747
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 749
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 750
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->installVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method public getInstallVersionBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 765
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->installVersion_:Ljava/lang/Object;

    .line 766
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 767
    check-cast v0, Ljava/lang/String;

    .line 768
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 770
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->installVersion_:Ljava/lang/Object;

    return-object v0

    .line 773
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getIsGooglePlayInstant()Z
    .registers 2

    .line 789
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/App;->isGooglePlayInstant_:Z

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/App;",
            ">;"
        }
    .end annotation

    .line 3351
    sget-object v0, Lio/bidmachine/protobuf/sdk/App;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getRelease()Lcom/explorestack/protobuf/adcom/Context$App$Release;
    .registers 2

    .line 339
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->release_:Lcom/explorestack/protobuf/adcom/Context$App$Release;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Release;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Release;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getReleaseOrBuilder()Lcom/explorestack/protobuf/adcom/Context$App$ReleaseOrBuilder;
    .registers 2

    .line 349
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getRelease()Lcom/explorestack/protobuf/adcom/Context$App$Release;

    move-result-object v0

    return-object v0
.end method

.method public getSdkInstallTime()Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 818
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->sdkInstallTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getSdkInstallTimeOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .registers 2

    .line 830
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getSdkInstallTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 897
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 901
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getAppNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 902
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->appName_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 904
    :goto_1a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getAppVerBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    const/4 v2, 0x2

    .line 905
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->appVer_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 907
    :cond_2c
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/App;->release_:Lcom/explorestack/protobuf/adcom/Context$App$Release;

    if-eqz v2, :cond_3a

    const/4 v2, 0x3

    .line 909
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getRelease()Lcom/explorestack/protobuf/adcom/Context$App$Release;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 911
    :cond_3a
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/App;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v2, :cond_48

    const/4 v2, 0x4

    .line 913
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 915
    :cond_48
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/App;->firstLaunchTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v2, :cond_56

    const/4 v2, 0x5

    .line 917
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getFirstLaunchTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 919
    :cond_56
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getStorecatBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_68

    const/4 v2, 0x6

    .line 920
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->storecat_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_68
    move v2, v1

    .line 924
    :goto_69
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_7f

    .line 925
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/App;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    :cond_7f
    add-int/2addr v0, v2

    .line 928
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getStoresubcatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 930
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getFmwnameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9c

    const/16 v1, 0x8

    .line 931
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/App;->fmwname_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 933
    :cond_9c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallReferrerUrlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_af

    const/16 v1, 0x9

    .line 934
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerUrl_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 936
    :cond_af
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerClickTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v1, :cond_be

    const/16 v1, 0xa

    .line 938
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallReferrerClickTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 940
    :cond_be
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerClickServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v1, :cond_cd

    const/16 v1, 0xc

    .line 942
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallReferrerClickServerTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 944
    :cond_cd
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App;->installBeginServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v1, :cond_dc

    const/16 v1, 0xd

    .line 946
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallBeginServerTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 948
    :cond_dc
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallVersionBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ef

    const/16 v1, 0xe

    .line 949
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/App;->installVersion_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 951
    :cond_ef
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/App;->isGooglePlayInstant_:Z

    if-eqz v1, :cond_fa

    const/16 v2, 0xf

    .line 953
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 955
    :cond_fa
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App;->sdkInstallTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v1, :cond_109

    const/16 v1, 0x10

    .line 957
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getSdkInstallTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 959
    :cond_109
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 960
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getStorecat()Ljava/lang/String;
    .registers 3

    .line 440
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->storecat_:Ljava/lang/Object;

    .line 441
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 442
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 444
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 446
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 447
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->storecat_:Ljava/lang/Object;

    return-object v0
.end method

.method public getStorecatBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 462
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->storecat_:Ljava/lang/Object;

    .line 463
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 464
    check-cast v0, Ljava/lang/String;

    .line 465
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 467
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->storecat_:Ljava/lang/Object;

    return-object v0

    .line 470
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getStoresubcat(I)Ljava/lang/String;
    .registers 3

    .line 509
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getStoresubcatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 522
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getStoresubcatCount()I
    .registers 2

    .line 497
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStoresubcatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .registers 2

    .line 486
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getStoresubcatList()Ljava/util/List;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getStoresubcatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasFirstLaunchTime()Z
    .registers 2

    .line 402
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->firstLaunchTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasInstallBeginServerTimestamp()Z
    .registers 2

    .line 705
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->installBeginServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasInstallReferrerClickServerTimestamp()Z
    .registers 2

    .line 667
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerClickServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasInstallReferrerClickTimestamp()Z
    .registers 2

    .line 629
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerClickTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasInstallTime()Z
    .registers 2

    .line 364
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasRelease()Z
    .registers 2

    .line 328
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->release_:Lcom/explorestack/protobuf/adcom/Context$App$Release;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasSdkInstallTime()Z
    .registers 2

    .line 805
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->sdkInstallTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1031
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 1035
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/App;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 1037
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 1039
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getAppVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1040
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->hasRelease()Z

    move-result v0

    if-eqz v0, :cond_43

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 1042
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getRelease()Lcom/explorestack/protobuf/adcom/Context$App$Release;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Release;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1044
    :cond_43
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->hasInstallTime()Z

    move-result v0

    if-eqz v0, :cond_58

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 1046
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Timestamp;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1048
    :cond_58
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->hasFirstLaunchTime()Z

    move-result v0

    if-eqz v0, :cond_6d

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 1050
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getFirstLaunchTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Timestamp;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_6d
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 1053
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getStorecat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1054
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getStoresubcatCount()I

    move-result v0

    if-lez v0, :cond_91

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 1056
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getStoresubcatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_91
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 1059
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getFmwname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 1061
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallReferrerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1062
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->hasInstallReferrerClickTimestamp()Z

    move-result v0

    if-eqz v0, :cond_c4

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 1064
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallReferrerClickTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Timestamp;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1066
    :cond_c4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->hasInstallReferrerClickServerTimestamp()Z

    move-result v0

    if-eqz v0, :cond_d9

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    .line 1068
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallReferrerClickServerTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Timestamp;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1070
    :cond_d9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->hasInstallBeginServerTimestamp()Z

    move-result v0

    if-eqz v0, :cond_ee

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    .line 1072
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallBeginServerTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Timestamp;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_ee
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xe

    mul-int/lit8 v1, v1, 0x35

    .line 1075
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x35

    .line 1078
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getIsGooglePlayInstant()Z

    move-result v0

    .line 1077
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 1079
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->hasSdkInstallTime()Z

    move-result v0

    if-eqz v0, :cond_121

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x35

    .line 1081
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getSdkInstallTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Timestamp;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_121
    mul-int/lit8 v1, v1, 0x1d

    .line 1083
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1084
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 230
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_App_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/App;

    const-class v2, Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 231
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 836
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/App;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 840
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/App;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->newBuilderForType()Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/App;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->newBuilderForType()Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 1159
    invoke-static {}, Lio/bidmachine/protobuf/sdk/App;->newBuilder()Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 4

    .line 1175
    new-instance v0, Lio/bidmachine/protobuf/sdk/App$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/App$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/App$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 32
    new-instance p1, Lio/bidmachine/protobuf/sdk/App;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/App;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->toBuilder()Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->toBuilder()Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 1168
    sget-object v0, Lio/bidmachine/protobuf/sdk/App;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/App;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 1169
    new-instance v0, Lio/bidmachine/protobuf/sdk/App$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/App$Builder;-><init>(Lio/bidmachine/protobuf/sdk/App$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/App$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/App$Builder;-><init>(Lio/bidmachine/protobuf/sdk/App$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/App;)Lio/bidmachine/protobuf/sdk/App$Builder;

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

    .line 847
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getAppNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 848
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->appName_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 850
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getAppVerBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x2

    .line 851
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App;->appVer_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 853
    :cond_20
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->release_:Lcom/explorestack/protobuf/adcom/Context$App$Release;

    if-eqz v0, :cond_2c

    const/4 v0, 0x3

    .line 854
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getRelease()Lcom/explorestack/protobuf/adcom/Context$App$Release;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 856
    :cond_2c
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_38

    const/4 v0, 0x4

    .line 857
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 859
    :cond_38
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->firstLaunchTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_44

    const/4 v0, 0x5

    .line 860
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getFirstLaunchTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 862
    :cond_44
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getStorecatBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    const/4 v0, 0x6

    .line 863
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App;->storecat_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_54
    const/4 v0, 0x0

    .line 865
    :goto_55
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6a

    .line 866
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {p1, v2, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 868
    :cond_6a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getFmwnameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    const/16 v0, 0x8

    .line 869
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App;->fmwname_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 871
    :cond_7b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallReferrerUrlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8c

    const/16 v0, 0x9

    .line 872
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerUrl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 874
    :cond_8c
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerClickTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_99

    const/16 v0, 0xa

    .line 875
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallReferrerClickTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 877
    :cond_99
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->installReferrerClickServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_a6

    const/16 v0, 0xc

    .line 878
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallReferrerClickServerTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 880
    :cond_a6
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->installBeginServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_b3

    const/16 v0, 0xd

    .line 881
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallBeginServerTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 883
    :cond_b3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getInstallVersionBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c4

    const/16 v0, 0xe

    .line 884
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App;->installVersion_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 886
    :cond_c4
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/App;->isGooglePlayInstant_:Z

    if-eqz v0, :cond_cd

    const/16 v1, 0xf

    .line 887
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 889
    :cond_cd
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App;->sdkInstallTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_da

    const/16 v0, 0x10

    .line 890
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App;->getSdkInstallTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 892
    :cond_da
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.App.AnonymousClass1 (io.bidmachine.protobuf.sdk.App$1)
.class Lio/bidmachine/protobuf/sdk/App$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/App;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3335
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/App;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3341
    new-instance v0, Lio/bidmachine/protobuf/sdk/App;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/App;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/App$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3335
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/App$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/App;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.App.Builder (io.bidmachine.protobuf.sdk.App$Builder)
.class public final Lio/bidmachine/protobuf/sdk/App$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "App.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/AppOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/App$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/AppOrBuilder;"
    }
.end annotation


# instance fields
.field private appName_:Ljava/lang/Object;

.field private appVer_:Ljava/lang/Object;

.field private bitField0_:I

.field private firstLaunchTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private firstLaunchTime_:Lcom/explorestack/protobuf/Timestamp;

.field private fmwname_:Ljava/lang/Object;

.field private installBeginServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private installBeginServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

.field private installReferrerClickServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private installReferrerClickServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

.field private installReferrerClickTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private installReferrerClickTimestamp_:Lcom/explorestack/protobuf/Timestamp;

.field private installReferrerUrl_:Ljava/lang/Object;

.field private installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private installTime_:Lcom/explorestack/protobuf/Timestamp;

.field private installVersion_:Ljava/lang/Object;

.field private isGooglePlayInstant_:Z

.field private releaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$App$Release;",
            "Lcom/explorestack/protobuf/adcom/Context$App$Release$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$App$ReleaseOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private release_:Lcom/explorestack/protobuf/adcom/Context$App$Release;

.field private sdkInstallTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private sdkInstallTime_:Lcom/explorestack/protobuf/Timestamp;

.field private storecat_:Ljava/lang/Object;

.field private storesubcat_:Lcom/explorestack/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1199
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1484
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->appName_:Ljava/lang/Object;

    .line 1560
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->appVer_:Ljava/lang/Object;

    .line 2107
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storecat_:Ljava/lang/Object;

    .line 2203
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 2349
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->fmwname_:Ljava/lang/Object;

    .line 2445
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerUrl_:Ljava/lang/Object;

    .line 3006
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installVersion_:Ljava/lang/Object;

    .line 1200
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 3

    .line 1205
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1484
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->appName_:Ljava/lang/Object;

    .line 1560
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->appVer_:Ljava/lang/Object;

    .line 2107
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storecat_:Ljava/lang/Object;

    .line 2203
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 2349
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->fmwname_:Ljava/lang/Object;

    .line 2445
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerUrl_:Ljava/lang/Object;

    .line 3006
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installVersion_:Ljava/lang/Object;

    .line 1206
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/App$1;)V
    .registers 3

    .line 1181
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/App$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/App$1;)V
    .registers 2

    .line 1181
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;-><init>()V

    return-void
.end method

.method private ensureStoresubcatIsMutable()V
    .registers 3

    .line 2205
    iget v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 2206
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 2207
    iget v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1187
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_App_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getFirstLaunchTimeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 2096
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 2097
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2099
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->getFirstLaunchTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 2100
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2101
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 2102
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 2104
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getInstallBeginServerTimestampFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 2995
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 2996
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2998
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->getInstallBeginServerTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 2999
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 3000
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 3001
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 3003
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getInstallReferrerClickServerTimestampFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 2840
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 2841
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2843
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->getInstallReferrerClickServerTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 2844
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2845
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 2846
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 2848
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getInstallReferrerClickTimestampFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 2685
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 2686
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2688
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->getInstallReferrerClickTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 2689
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2690
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 2691
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 2693
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getInstallTimeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 1941
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1942
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1944
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->getInstallTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 1945
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1946
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1947
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1949
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getReleaseFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$App$Release;",
            "Lcom/explorestack/protobuf/adcom/Context$App$Release$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$App$ReleaseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1786
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->releaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1787
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1789
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->getRelease()Lcom/explorestack/protobuf/adcom/Context$App$Release;

    move-result-object v1

    .line 1790
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1791
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->releaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1792
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->release_:Lcom/explorestack/protobuf/adcom/Context$App$Release;

    .line 1794
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->releaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getSdkInstallTimeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 3298
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 3299
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3301
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->getSdkInstallTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 3302
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 3303
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 3304
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 3306
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 1210
    invoke-static {}, Lio/bidmachine/protobuf/sdk/App;->access$200()Z

    return-void
.end method


# virtual methods
.method public addAllStoresubcat(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/App$Builder;"
        }
    .end annotation

    .line 2308
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->ensureStoresubcatIsMutable()V

    .line 2309
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2311
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1181
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/App$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1181
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/App$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 1382
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/App$Builder;

    return-object p1
.end method

.method public addStoresubcat(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 2290
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2292
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->ensureStoresubcatIsMutable()V

    .line 2293
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2294
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public addStoresubcatBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 2340
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2342
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/App;->access$2400(Lcom/explorestack/protobuf/ByteString;)V

    .line 2343
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->ensureStoresubcatIsMutable()V

    .line 2344
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 2345
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1181
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->build()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1181
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->build()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/App;
    .registers 3

    .line 1290
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v0

    .line 1291
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/App;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 1292
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1181
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1181
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/App;
    .registers 3

    .line 1299
    new-instance v0, Lio/bidmachine/protobuf/sdk/App;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/App;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/App$1;)V

    .line 1301
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->appName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/App;->access$402(Lio/bidmachine/protobuf/sdk/App;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->appVer_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/App;->access$502(Lio/bidmachine/protobuf/sdk/App;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->releaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1a

    .line 1304
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->release_:Lcom/explorestack/protobuf/adcom/Context$App$Release;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/App;->access$602(Lio/bidmachine/protobuf/sdk/App;Lcom/explorestack/protobuf/adcom/Context$App$Release;)Lcom/explorestack/protobuf/adcom/Context$App$Release;

    goto :goto_23

    .line 1306
    :cond_1a
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Context$App$Release;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/App;->access$602(Lio/bidmachine/protobuf/sdk/App;Lcom/explorestack/protobuf/adcom/Context$App$Release;)Lcom/explorestack/protobuf/adcom/Context$App$Release;

    .line 1308
    :goto_23
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2d

    .line 1309
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/App;->access$702(Lio/bidmachine/protobuf/sdk/App;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    goto :goto_36

    .line 1311
    :cond_2d
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/App;->access$702(Lio/bidmachine/protobuf/sdk/App;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    .line 1313
    :goto_36
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_40

    .line 1314
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTime_:Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/App;->access$802(Lio/bidmachine/protobuf/sdk/App;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    goto :goto_49

    .line 1316
    :cond_40
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/App;->access$802(Lio/bidmachine/protobuf/sdk/App;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    .line 1318
    :goto_49
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storecat_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/App;->access$902(Lio/bidmachine/protobuf/sdk/App;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    iget v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_62

    .line 1320
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1321
    iget v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->bitField0_:I

    .line 1323
    :cond_62
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/App;->access$1002(Lio/bidmachine/protobuf/sdk/App;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 1324
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->fmwname_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/App;->access$1102(Lio/bidmachine/protobuf/sdk/App;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerUrl_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/App;->access$1202(Lio/bidmachine/protobuf/sdk/App;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_7b

    .line 1327
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/App;->access$1302(Lio/bidmachine/protobuf/sdk/App;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    goto :goto_84

    .line 1329
    :cond_7b
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/App;->access$1302(Lio/bidmachine/protobuf/sdk/App;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    .line 1331
    :goto_84
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_8e

    .line 1332
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/App;->access$1402(Lio/bidmachine/protobuf/sdk/App;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    goto :goto_97

    .line 1334
    :cond_8e
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/App;->access$1402(Lio/bidmachine/protobuf/sdk/App;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    .line 1336
    :goto_97
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_a1

    .line 1337
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/App;->access$1502(Lio/bidmachine/protobuf/sdk/App;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    goto :goto_aa

    .line 1339
    :cond_a1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/App;->access$1502(Lio/bidmachine/protobuf/sdk/App;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    .line 1341
    :goto_aa
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installVersion_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/App;->access$1602(Lio/bidmachine/protobuf/sdk/App;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->isGooglePlayInstant_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/App;->access$1702(Lio/bidmachine/protobuf/sdk/App;Z)Z

    .line 1343
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_be

    .line 1344
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTime_:Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/App;->access$1802(Lio/bidmachine/protobuf/sdk/App;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    goto :goto_c7

    .line 1346
    :cond_be
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/App;->access$1802(Lio/bidmachine/protobuf/sdk/App;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    .line 1348
    :goto_c7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1181
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->clear()Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1181
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->clear()Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1181
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->clear()Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1181
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->clear()Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 4

    .line 1215
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 1216
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->appName_:Ljava/lang/Object;

    .line 1218
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->appVer_:Ljava/lang/Object;

    .line 1220
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->releaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 1221
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->release_:Lcom/explorestack/protobuf/adcom/Context$App$Release;

    goto :goto_15

    .line 1223
    :cond_11
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->release_:Lcom/explorestack/protobuf/adcom/Context$App$Release;

    .line 1224
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->releaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1226
    :goto_15
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1c

    .line 1227
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_20

    .line 1229
    :cond_1c
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1230
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1232
    :goto_20
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_27

    .line 1233
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTime_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_2b

    .line 1235
    :cond_27
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1236
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1238
    :goto_2b
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storecat_:Ljava/lang/Object;

    .line 1240
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1241
    iget v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->bitField0_:I

    .line 1242
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->fmwname_:Ljava/lang/Object;

    .line 1244
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerUrl_:Ljava/lang/Object;

    .line 1246
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_42

    .line 1247
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_46

    .line 1249
    :cond_42
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 1250
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1252
    :goto_46
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4d

    .line 1253
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_51

    .line 1255
    :cond_4d
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 1256
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1258
    :goto_51
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_58

    .line 1259
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_5c

    .line 1261
    :cond_58
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 1262
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1264
    :goto_5c
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installVersion_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1266
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->isGooglePlayInstant_:Z

    .line 1268
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_68

    .line 1269
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTime_:Lcom/explorestack/protobuf/Timestamp;

    return-object p0

    .line 1271
    :cond_68
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1272
    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearAppName()Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 1539
    invoke-static {}, Lio/bidmachine/protobuf/sdk/App;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/App;->getAppName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->appName_:Ljava/lang/Object;

    .line 1540
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAppVer()Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 1627
    invoke-static {}, Lio/bidmachine/protobuf/sdk/App;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/App;->getAppVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->appVer_:Ljava/lang/Object;

    .line 1628
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1181
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1181
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 1365
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/App$Builder;

    return-object p1
.end method

.method public clearFirstLaunchTime()Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 2049
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2050
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 2051
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2053
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 2054
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearFmwname()Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 2420
    invoke-static {}, Lio/bidmachine/protobuf/sdk/App;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/App;->getFmwname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->fmwname_:Ljava/lang/Object;

    .line 2421
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearInstallBeginServerTimestamp()Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 2948
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2949
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 2950
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2952
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 2953
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearInstallReferrerClickServerTimestamp()Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 2793
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2794
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 2795
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2797
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 2798
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearInstallReferrerClickTimestamp()Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 2638
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2639
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 2640
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2642
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 2643
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearInstallReferrerUrl()Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 2516
    invoke-static {}, Lio/bidmachine/protobuf/sdk/App;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/App;->getInstallReferrerUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerUrl_:Ljava/lang/Object;

    .line 2517
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearInstallTime()Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 1894
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1895
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1896
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1898
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1899
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearInstallVersion()Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 3077
    invoke-static {}, Lio/bidmachine/protobuf/sdk/App;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/App;->getInstallVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installVersion_:Ljava/lang/Object;

    .line 3078
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIsGooglePlayInstant()Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 3140
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->isGooglePlayInstant_:Z

    .line 3141
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1181
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1181
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1181
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 1370
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/App$Builder;

    return-object p1
.end method

.method public clearRelease()Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 1742
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->releaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1743
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->release_:Lcom/explorestack/protobuf/adcom/Context$App$Release;

    .line 1744
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1746
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->release_:Lcom/explorestack/protobuf/adcom/Context$App$Release;

    .line 1747
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->releaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearSdkInstallTime()Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 3248
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 3249
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 3250
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3252
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 3253
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearStorecat()Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 2178
    invoke-static {}, Lio/bidmachine/protobuf/sdk/App;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/App;->getStorecat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storecat_:Ljava/lang/Object;

    .line 2179
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStoresubcat()Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 2323
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 2324
    iget v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->bitField0_:I

    .line 2325
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1181
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->clone()Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 1181
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->clone()Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1181
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->clone()Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1181
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->clone()Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1181
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->clone()Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 1354
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/App$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1181
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->clone()Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 3

    .line 1490
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->appName_:Ljava/lang/Object;

    .line 1491
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1492
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1494
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1495
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->appName_:Ljava/lang/Object;

    return-object v0

    .line 1498
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAppNameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1507
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->appName_:Ljava/lang/Object;

    .line 1508
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1509
    check-cast v0, Ljava/lang/String;

    .line 1510
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1512
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->appName_:Ljava/lang/Object;

    return-object v0

    .line 1515
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getAppVer()Ljava/lang/String;
    .registers 3

    .line 1569
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->appVer_:Ljava/lang/Object;

    .line 1570
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1571
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1573
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1574
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->appVer_:Ljava/lang/Object;

    return-object v0

    .line 1577
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAppVerBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1589
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->appVer_:Ljava/lang/Object;

    .line 1590
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1591
    check-cast v0, Ljava/lang/String;

    .line 1592
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1594
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->appVer_:Ljava/lang/Object;

    return-object v0

    .line 1597
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1181
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1181
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/App;
    .registers 2

    .line 1285
    invoke-static {}, Lio/bidmachine/protobuf/sdk/App;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 1280
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_App_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getFirstLaunchTime()Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 1975
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1976
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1978
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp;

    return-object v0
.end method

.method public getFirstLaunchTimeBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;
    .registers 2

    .line 2068
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2069
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->getFirstLaunchTimeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp$Builder;

    return-object v0
.end method

.method public getFirstLaunchTimeOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .registers 2

    .line 2079
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 2080
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/TimestampOrBuilder;

    return-object v0

    .line 2082
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_13

    .line 2083
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getFmwname()Ljava/lang/String;
    .registers 3

    .line 2359
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->fmwname_:Ljava/lang/Object;

    .line 2360
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2361
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2363
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2364
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->fmwname_:Ljava/lang/Object;

    return-object v0

    .line 2367
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFmwnameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2380
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->fmwname_:Ljava/lang/Object;

    .line 2381
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2382
    check-cast v0, Ljava/lang/String;

    .line 2383
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2385
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->fmwname_:Ljava/lang/Object;

    return-object v0

    .line 2388
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getInstallBeginServerTimestamp()Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 2874
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2875
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_c
    return-object v0

    .line 2877
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp;

    return-object v0
.end method

.method public getInstallBeginServerTimestampBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;
    .registers 2

    .line 2967
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2968
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->getInstallBeginServerTimestampFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp$Builder;

    return-object v0
.end method

.method public getInstallBeginServerTimestampOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .registers 2

    .line 2978
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 2979
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/TimestampOrBuilder;

    return-object v0

    .line 2981
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_13

    .line 2982
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getInstallReferrerClickServerTimestamp()Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 2719
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2720
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_c
    return-object v0

    .line 2722
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp;

    return-object v0
.end method

.method public getInstallReferrerClickServerTimestampBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;
    .registers 2

    .line 2812
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2813
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->getInstallReferrerClickServerTimestampFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp$Builder;

    return-object v0
.end method

.method public getInstallReferrerClickServerTimestampOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .registers 2

    .line 2823
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 2824
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/TimestampOrBuilder;

    return-object v0

    .line 2826
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_13

    .line 2827
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getInstallReferrerClickTimestamp()Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 2564
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2565
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_c
    return-object v0

    .line 2567
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp;

    return-object v0
.end method

.method public getInstallReferrerClickTimestampBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;
    .registers 2

    .line 2657
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2658
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->getInstallReferrerClickTimestampFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp$Builder;

    return-object v0
.end method

.method public getInstallReferrerClickTimestampOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .registers 2

    .line 2668
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 2669
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/TimestampOrBuilder;

    return-object v0

    .line 2671
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_13

    .line 2672
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getInstallReferrerUrl()Ljava/lang/String;
    .registers 3

    .line 2455
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerUrl_:Ljava/lang/Object;

    .line 2456
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2457
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2459
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2460
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerUrl_:Ljava/lang/Object;

    return-object v0

    .line 2463
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInstallReferrerUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2476
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerUrl_:Ljava/lang/Object;

    .line 2477
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2478
    check-cast v0, Ljava/lang/String;

    .line 2479
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2481
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerUrl_:Ljava/lang/Object;

    return-object v0

    .line 2484
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getInstallTime()Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 1820
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1821
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1823
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp;

    return-object v0
.end method

.method public getInstallTimeBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;
    .registers 2

    .line 1913
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1914
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->getInstallTimeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp$Builder;

    return-object v0
.end method

.method public getInstallTimeOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .registers 2

    .line 1924
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1925
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/TimestampOrBuilder;

    return-object v0

    .line 1927
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_13

    .line 1928
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getInstallVersion()Ljava/lang/String;
    .registers 3

    .line 3016
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installVersion_:Ljava/lang/Object;

    .line 3017
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 3018
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3020
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3021
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installVersion_:Ljava/lang/Object;

    return-object v0

    .line 3024
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInstallVersionBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 3037
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installVersion_:Ljava/lang/Object;

    .line 3038
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3039
    check-cast v0, Ljava/lang/String;

    .line 3040
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3042
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installVersion_:Ljava/lang/Object;

    return-object v0

    .line 3045
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getIsGooglePlayInstant()Z
    .registers 2

    .line 3113
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->isGooglePlayInstant_:Z

    return v0
.end method

.method public getRelease()Lcom/explorestack/protobuf/adcom/Context$App$Release;
    .registers 2

    .line 1672
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->releaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1673
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->release_:Lcom/explorestack/protobuf/adcom/Context$App$Release;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Release;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Release;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1675
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$App$Release;

    return-object v0
.end method

.method public getReleaseBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Release$Builder;
    .registers 2

    .line 1760
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1761
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->getReleaseFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$App$Release$Builder;

    return-object v0
.end method

.method public getReleaseOrBuilder()Lcom/explorestack/protobuf/adcom/Context$App$ReleaseOrBuilder;
    .registers 2

    .line 1770
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->releaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1771
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$App$ReleaseOrBuilder;

    return-object v0

    .line 1773
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->release_:Lcom/explorestack/protobuf/adcom/Context$App$Release;

    if-nez v0, :cond_13

    .line 1774
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Release;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Release;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getSdkInstallTime()Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 3170
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3171
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_c
    return-object v0

    .line 3173
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp;

    return-object v0
.end method

.method public getSdkInstallTimeBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;
    .registers 2

    .line 3268
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 3269
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->getSdkInstallTimeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp$Builder;

    return-object v0
.end method

.method public getSdkInstallTimeOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .registers 2

    .line 3280
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 3281
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/TimestampOrBuilder;

    return-object v0

    .line 3283
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_13

    .line 3284
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getStorecat()Ljava/lang/String;
    .registers 3

    .line 2117
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storecat_:Ljava/lang/Object;

    .line 2118
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 2119
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2121
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2122
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storecat_:Ljava/lang/Object;

    return-object v0

    .line 2125
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStorecatBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2138
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storecat_:Ljava/lang/Object;

    .line 2139
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 2140
    check-cast v0, Ljava/lang/String;

    .line 2141
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2143
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storecat_:Ljava/lang/Object;

    return-object v0

    .line 2146
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getStoresubcat(I)Ljava/lang/String;
    .registers 3

    .line 2243
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getStoresubcatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 2256
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getStoresubcatCount()I
    .registers 2

    .line 2231
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStoresubcatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .registers 2

    .line 2220
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStoresubcatList()Ljava/util/List;
    .registers 2

    .line 1181
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->getStoresubcatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public hasFirstLaunchTime()Z
    .registers 2

    .line 1964
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTime_:Lcom/explorestack/protobuf/Timestamp;

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

.method public hasInstallBeginServerTimestamp()Z
    .registers 2

    .line 2863
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

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

.method public hasInstallReferrerClickServerTimestamp()Z
    .registers 2

    .line 2708
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

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

.method public hasInstallReferrerClickTimestamp()Z
    .registers 2

    .line 2553
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestamp_:Lcom/explorestack/protobuf/Timestamp;

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

.method public hasInstallTime()Z
    .registers 2

    .line 1809
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

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

.method public hasRelease()Z
    .registers 2

    .line 1662
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->releaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->release_:Lcom/explorestack/protobuf/adcom/Context$App$Release;

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

.method public hasSdkInstallTime()Z
    .registers 2

    .line 3158
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTime_:Lcom/explorestack/protobuf/Timestamp;

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

    .line 1193
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_App_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/App;

    const-class v2, Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 1194
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

.method public mergeFirstLaunchTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 2027
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 2028
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_17

    .line 2030
    invoke-static {v0}, Lcom/explorestack/protobuf/Timestamp;->newBuilder(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTime_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_19

    .line 2032
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 2034
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2036
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

    .line 1181
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1181
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/App$Builder;

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

    .line 1181
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/App$Builder;

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

    .line 1181
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1181
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/App$Builder;

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

    .line 1181
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1471
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/App;->access$2000()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/App;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 1477
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/App;)Lio/bidmachine/protobuf/sdk/App$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 1473
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/App;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 1474
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

    .line 1477
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/App;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 1479
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 1386
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/App;

    if-eqz v0, :cond_b

    .line 1387
    check-cast p1, Lio/bidmachine/protobuf/sdk/App;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/App;)Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object p1

    return-object p1

    .line 1389
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/App;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 4

    .line 1395
    invoke-static {}, Lio/bidmachine/protobuf/sdk/App;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 1396
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1397
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/App;->access$400(Lio/bidmachine/protobuf/sdk/App;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->appName_:Ljava/lang/Object;

    .line 1398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1400
    :cond_1a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getAppVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1401
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/App;->access$500(Lio/bidmachine/protobuf/sdk/App;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->appVer_:Ljava/lang/Object;

    .line 1402
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1404
    :cond_2d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->hasRelease()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1405
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getRelease()Lcom/explorestack/protobuf/adcom/Context$App$Release;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeRelease(Lcom/explorestack/protobuf/adcom/Context$App$Release;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 1407
    :cond_3a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->hasInstallTime()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1408
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getInstallTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeInstallTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 1410
    :cond_47
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->hasFirstLaunchTime()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1411
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getFirstLaunchTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeFirstLaunchTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 1413
    :cond_54
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getStorecat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_67

    .line 1414
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/App;->access$900(Lio/bidmachine/protobuf/sdk/App;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storecat_:Ljava/lang/Object;

    .line 1415
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1417
    :cond_67
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/App;->access$1000(Lio/bidmachine/protobuf/sdk/App;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_95

    .line 1418
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 1419
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/App;->access$1000(Lio/bidmachine/protobuf/sdk/App;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1420
    iget v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->bitField0_:I

    goto :goto_92

    .line 1422
    :cond_86
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->ensureStoresubcatIsMutable()V

    .line 1423
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/App;->access$1000(Lio/bidmachine/protobuf/sdk/App;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1425
    :goto_92
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1427
    :cond_95
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getFmwname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a8

    .line 1428
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/App;->access$1100(Lio/bidmachine/protobuf/sdk/App;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->fmwname_:Ljava/lang/Object;

    .line 1429
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1431
    :cond_a8
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getInstallReferrerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bb

    .line 1432
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/App;->access$1200(Lio/bidmachine/protobuf/sdk/App;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerUrl_:Ljava/lang/Object;

    .line 1433
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1435
    :cond_bb
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->hasInstallReferrerClickTimestamp()Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 1436
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getInstallReferrerClickTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeInstallReferrerClickTimestamp(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 1438
    :cond_c8
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->hasInstallReferrerClickServerTimestamp()Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 1439
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getInstallReferrerClickServerTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeInstallReferrerClickServerTimestamp(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 1441
    :cond_d5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->hasInstallBeginServerTimestamp()Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 1442
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getInstallBeginServerTimestamp()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeInstallBeginServerTimestamp(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 1444
    :cond_e2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getInstallVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f5

    .line 1445
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/App;->access$1600(Lio/bidmachine/protobuf/sdk/App;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installVersion_:Ljava/lang/Object;

    .line 1446
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1448
    :cond_f5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getIsGooglePlayInstant()Z

    move-result v0

    if-eqz v0, :cond_102

    .line 1449
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getIsGooglePlayInstant()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/App$Builder;->setIsGooglePlayInstant(Z)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 1451
    :cond_102
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->hasSdkInstallTime()Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 1452
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App;->getSdkInstallTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeSdkInstallTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 1454
    :cond_10f
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/App;->access$1900(Lio/bidmachine/protobuf/sdk/App;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 1455
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeInstallBeginServerTimestamp(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 2926
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 2927
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_17

    .line 2929
    invoke-static {v0}, Lcom/explorestack/protobuf/Timestamp;->newBuilder(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_19

    .line 2931
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 2933
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2935
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeInstallReferrerClickServerTimestamp(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 2771
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 2772
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_17

    .line 2774
    invoke-static {v0}, Lcom/explorestack/protobuf/Timestamp;->newBuilder(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_19

    .line 2776
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 2778
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2780
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeInstallReferrerClickTimestamp(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 2616
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 2617
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_17

    .line 2619
    invoke-static {v0}, Lcom/explorestack/protobuf/Timestamp;->newBuilder(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_19

    .line 2621
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 2623
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2625
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeInstallTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 1872
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1873
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_17

    .line 1875
    invoke-static {v0}, Lcom/explorestack/protobuf/Timestamp;->newBuilder(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_19

    .line 1877
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1879
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1881
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeRelease(Lcom/explorestack/protobuf/adcom/Context$App$Release;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 1721
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->releaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1722
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->release_:Lcom/explorestack/protobuf/adcom/Context$App$Release;

    if-eqz v0, :cond_17

    .line 1724
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Release;->newBuilder(Lcom/explorestack/protobuf/adcom/Context$App$Release;)Lcom/explorestack/protobuf/adcom/Context$App$Release$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Release$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App$Release;)Lcom/explorestack/protobuf/adcom/Context$App$Release$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Release$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$App$Release;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->release_:Lcom/explorestack/protobuf/adcom/Context$App$Release;

    goto :goto_19

    .line 1726
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->release_:Lcom/explorestack/protobuf/adcom/Context$App$Release;

    .line 1728
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1730
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeSdkInstallTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 3225
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 3226
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_17

    .line 3228
    invoke-static {v0}, Lcom/explorestack/protobuf/Timestamp;->newBuilder(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTime_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_19

    .line 3230
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 3232
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3234
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1181
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1181
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1181
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 3317
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/App$Builder;

    return-object p1
.end method

.method public setAppName(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 1526
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1529
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->appName_:Ljava/lang/Object;

    .line 1530
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAppNameBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 1551
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1553
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/App;->access$2100(Lcom/explorestack/protobuf/ByteString;)V

    .line 1555
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->appName_:Ljava/lang/Object;

    .line 1556
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAppVer(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 1611
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1614
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->appVer_:Ljava/lang/Object;

    .line 1615
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAppVerBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 1642
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1644
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/App;->access$2200(Lcom/explorestack/protobuf/ByteString;)V

    .line 1646
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->appVer_:Ljava/lang/Object;

    .line 1647
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1181
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/App$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1181
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/App$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 1360
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/App$Builder;

    return-object p1
.end method

.method public setFirstLaunchTime(Lcom/explorestack/protobuf/Timestamp$Builder;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 2010
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 2011
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 2012
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2014
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setFirstLaunchTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 1989
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1991
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1993
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->firstLaunchTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1994
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1996
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setFmwname(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 2403
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2406
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->fmwname_:Ljava/lang/Object;

    .line 2407
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setFmwnameBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 2436
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2438
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/App;->access$2500(Lcom/explorestack/protobuf/ByteString;)V

    .line 2440
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->fmwname_:Ljava/lang/Object;

    .line 2441
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setInstallBeginServerTimestamp(Lcom/explorestack/protobuf/Timestamp$Builder;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 2909
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 2910
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 2911
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2913
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setInstallBeginServerTimestamp(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 2888
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2890
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2892
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installBeginServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 2893
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2895
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setInstallReferrerClickServerTimestamp(Lcom/explorestack/protobuf/Timestamp$Builder;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 2754
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 2755
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 2756
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2758
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setInstallReferrerClickServerTimestamp(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 2733
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2735
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2737
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickServerTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 2738
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2740
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setInstallReferrerClickTimestamp(Lcom/explorestack/protobuf/Timestamp$Builder;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 2599
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 2600
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 2601
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2603
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setInstallReferrerClickTimestamp(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 2578
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestampBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2580
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2582
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerClickTimestamp_:Lcom/explorestack/protobuf/Timestamp;

    .line 2583
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2585
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setInstallReferrerUrl(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 2499
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2502
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerUrl_:Ljava/lang/Object;

    .line 2503
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setInstallReferrerUrlBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 2532
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2534
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/App;->access$2600(Lcom/explorestack/protobuf/ByteString;)V

    .line 2536
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installReferrerUrl_:Ljava/lang/Object;

    .line 2537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setInstallTime(Lcom/explorestack/protobuf/Timestamp$Builder;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 1855
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1856
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1857
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1859
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setInstallTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 1834
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1836
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1838
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1839
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1841
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setInstallVersion(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 3060
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3063
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installVersion_:Ljava/lang/Object;

    .line 3064
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setInstallVersionBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 3093
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3095
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/App;->access$2700(Lcom/explorestack/protobuf/ByteString;)V

    .line 3097
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->installVersion_:Ljava/lang/Object;

    .line 3098
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setIsGooglePlayInstant(Z)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 3126
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->isGooglePlayInstant_:Z

    .line 3127
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setRelease(Lcom/explorestack/protobuf/adcom/Context$App$Release$Builder;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 1705
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->releaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1706
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Release$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$App$Release;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->release_:Lcom/explorestack/protobuf/adcom/Context$App$Release;

    .line 1707
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1709
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Release$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$App$Release;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setRelease(Lcom/explorestack/protobuf/adcom/Context$App$Release;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 1685
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->releaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1687
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1689
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->release_:Lcom/explorestack/protobuf/adcom/Context$App$Release;

    .line 1690
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1692
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 1181
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/App$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 1181
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/App$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 4

    .line 1376
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/App$Builder;

    return-object p1
.end method

.method public setSdkInstallTime(Lcom/explorestack/protobuf/Timestamp$Builder;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 3207
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 3208
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 3209
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3211
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setSdkInstallTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 3

    .line 3185
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 3187
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3189
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->sdkInstallTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 3190
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 3192
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setStorecat(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 2161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2164
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storecat_:Ljava/lang/Object;

    .line 2165
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStorecatBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 2194
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2196
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/App;->access$2300(Lcom/explorestack/protobuf/ByteString;)V

    .line 2198
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storecat_:Ljava/lang/Object;

    .line 2199
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStoresubcat(ILjava/lang/String;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 4

    .line 2271
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2273
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/App$Builder;->ensureStoresubcatIsMutable()V

    .line 2274
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/App$Builder;->storesubcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2275
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1181
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1181
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 3311
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/App$Builder;

    return-object p1
.end method

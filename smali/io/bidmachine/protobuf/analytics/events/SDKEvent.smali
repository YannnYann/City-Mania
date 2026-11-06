###### Class io.bidmachine.protobuf.analytics.events.SDKEvent (io.bidmachine.protobuf.analytics.events.SDKEvent)
.class public final Lio/bidmachine/protobuf/analytics/events/SDKEvent;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SDKEvent.java"

# interfaces
.implements Lio/bidmachine/protobuf/analytics/events/SDKEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x1

.field public static final AD_TYPE_FIELD_NUMBER:I = 0x6

.field public static final BILLABLE_FIELD_NUMBER:I = 0xa

.field public static final CONTEXT_FIELD_NUMBER:I = 0x2

.field public static final CUSTOM_PARAMS_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/events/SDKEvent;

.field public static final ERROR_FIELD_NUMBER:I = 0x8

.field public static final FINISH_TIME_FIELD_NUMBER:I = 0x5

.field public static final NETWORK_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/analytics/events/SDKEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRICE_FIELD_NUMBER:I = 0x7

.field public static final START_TIME_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private action_:I

.field private adType_:Lcom/explorestack/protobuf/StringValue;

.field private billable_:Z

.field private bitField0_:I

.field private volatile context_:Ljava/lang/Object;

.field private customParams_:Lcom/explorestack/protobuf/Struct;

.field private error_:Lio/bidmachine/protobuf/sdk/Error;

.field private finishTime_:Lcom/explorestack/protobuf/Timestamp;

.field private memoizedIsInitialized:B

.field private network_:Lcom/explorestack/protobuf/StringValue;

.field private price_:D

.field private startTime_:Lcom/explorestack/protobuf/Timestamp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2177
    new-instance v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    invoke-direct {v0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    .line 2185
    new-instance v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 496
    iput-byte v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->memoizedIsInitialized:B

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->context_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;-><init>()V

    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_127

    .line 48
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_132

    .line 153
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :sswitch_1c
    move v1, v3

    goto :goto_b

    :catchall_1e
    move-exception p1

    goto/16 :goto_11d

    :catch_21
    move-exception p1

    goto/16 :goto_10e

    :catch_24
    move-exception p1

    goto/16 :goto_118

    .line 148
    :sswitch_27
    iget v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->bitField0_:I

    .line 149
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->billable_:Z

    goto :goto_b

    .line 136
    :sswitch_33
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->customParams_:Lcom/explorestack/protobuf/Struct;

    if-eqz v2, :cond_3b

    .line 137
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    .line 139
    :cond_3b
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Struct;

    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->customParams_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_b

    .line 141
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 142
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->customParams_:Lcom/explorestack/protobuf/Struct;

    goto :goto_b

    .line 123
    :sswitch_53
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->error_:Lio/bidmachine/protobuf/sdk/Error;

    if-eqz v2, :cond_5b

    .line 124
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/Error;->toBuilder()Lio/bidmachine/protobuf/sdk/Error$Builder;

    move-result-object v4

    .line 126
    :cond_5b
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Error;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/sdk/Error;

    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->error_:Lio/bidmachine/protobuf/sdk/Error;

    if-eqz v4, :cond_b

    .line 128
    invoke-virtual {v4, v2}, Lio/bidmachine/protobuf/sdk/Error$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Error;)Lio/bidmachine/protobuf/sdk/Error$Builder;

    .line 129
    invoke-virtual {v4}, Lio/bidmachine/protobuf/sdk/Error$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->error_:Lio/bidmachine/protobuf/sdk/Error;

    goto :goto_b

    .line 118
    :sswitch_73
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->price_:D

    goto :goto_b

    .line 105
    :sswitch_7a
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->adType_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_82

    .line 106
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 108
    :cond_82
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->adType_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 110
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 111
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->adType_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 92
    :sswitch_9b
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->finishTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v2, :cond_a3

    .line 93
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Timestamp;->toBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v4

    .line 95
    :cond_a3
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Timestamp;

    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->finishTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v4, :cond_b

    .line 97
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    .line 98
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->finishTime_:Lcom/explorestack/protobuf/Timestamp;

    goto/16 :goto_b

    .line 79
    :sswitch_bc
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->startTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v2, :cond_c4

    .line 80
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Timestamp;->toBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v4

    .line 82
    :cond_c4
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Timestamp;

    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->startTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v4, :cond_b

    .line 84
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    .line 85
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->startTime_:Lcom/explorestack/protobuf/Timestamp;

    goto/16 :goto_b

    .line 66
    :sswitch_dd
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->network_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_e5

    .line 67
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StringValue;->toBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v4

    .line 69
    :cond_e5
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->network_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v4, :cond_b

    .line 71
    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 72
    invoke-virtual {v4}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->network_:Lcom/explorestack/protobuf/StringValue;

    goto/16 :goto_b

    .line 59
    :sswitch_fe
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 61
    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->context_:Ljava/lang/Object;

    goto/16 :goto_b

    .line 55
    :sswitch_106
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->action_:I
    :try_end_10c
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_10c} :catch_24
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10c} :catch_21
    .catchall {:try_start_d .. :try_end_10c} :catchall_1e

    goto/16 :goto_b

    .line 164
    :goto_10e
    :try_start_10e
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 165
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 162
    :goto_118
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_11d
    .catchall {:try_start_10e .. :try_end_11d} :catchall_1e

    .line 167
    :goto_11d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 168
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 169
    throw p1

    .line 167
    :cond_127
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 168
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_132
    .sparse-switch
        0x0 -> :sswitch_1c
        0x8 -> :sswitch_106
        0x12 -> :sswitch_fe
        0x1a -> :sswitch_dd
        0x22 -> :sswitch_bc
        0x2a -> :sswitch_9b
        0x32 -> :sswitch_7a
        0x39 -> :sswitch_73
        0x42 -> :sswitch_53
        0x4a -> :sswitch_33
        0x50 -> :sswitch_27
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/analytics/events/SDKEvent$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 496
    iput-byte p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/analytics/events/SDKEvent$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1002(Lio/bidmachine/protobuf/analytics/events/SDKEvent;D)D
    .registers 3

    .line 9
    iput-wide p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->price_:D

    return-wide p1
.end method

.method public static synthetic access$1102(Lio/bidmachine/protobuf/analytics/events/SDKEvent;Lio/bidmachine/protobuf/sdk/Error;)Lio/bidmachine/protobuf/sdk/Error;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->error_:Lio/bidmachine/protobuf/sdk/Error;

    return-object p1
.end method

.method public static synthetic access$1202(Lio/bidmachine/protobuf/analytics/events/SDKEvent;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->customParams_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method public static synthetic access$1302(Lio/bidmachine/protobuf/analytics/events/SDKEvent;Z)Z
    .registers 2

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->billable_:Z

    return p1
.end method

.method public static synthetic access$1402(Lio/bidmachine/protobuf/analytics/events/SDKEvent;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->bitField0_:I

    return p1
.end method

.method public static synthetic access$1500(Lio/bidmachine/protobuf/analytics/events/SDKEvent;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$1600()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$1700(Lcom/explorestack/protobuf/ByteString;)V
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

.method public static synthetic access$200()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/analytics/events/SDKEvent;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->action_:I

    return p1
.end method

.method public static synthetic access$500(Lio/bidmachine/protobuf/analytics/events/SDKEvent;)Ljava/lang/Object;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->context_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/analytics/events/SDKEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->context_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/analytics/events/SDKEvent;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->network_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/analytics/events/SDKEvent;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->startTime_:Lcom/explorestack/protobuf/Timestamp;

    return-object p1
.end method

.method public static synthetic access$802(Lio/bidmachine/protobuf/analytics/events/SDKEvent;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->finishTime_:Lcom/explorestack/protobuf/Timestamp;

    return-object p1
.end method

.method public static synthetic access$902(Lio/bidmachine/protobuf/analytics/events/SDKEvent;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->adType_:Lcom/explorestack/protobuf/StringValue;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/analytics/events/SDKEvent;
    .registers 1

    .line 2181
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 173
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/EventsProto;->internal_static_bidmachine_protobuf_analytics_events_SDKEvent_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 1

    .line 770
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->toBuilder()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/analytics/events/SDKEvent;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 2

    .line 773
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->toBuilder()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/events/SDKEvent;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/analytics/events/SDKEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 743
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 744
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/events/SDKEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 750
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 751
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/analytics/events/SDKEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 711
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/events/SDKEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 717
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/analytics/events/SDKEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 756
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 757
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/events/SDKEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 763
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 764
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/analytics/events/SDKEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 731
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 732
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/events/SDKEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 738
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 739
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/analytics/events/SDKEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 700
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/events/SDKEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 706
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/analytics/events/SDKEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 721
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/events/SDKEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 727
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/analytics/events/SDKEvent;",
            ">;"
        }
    .end annotation

    .line 2196
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 598
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    if-nez v1, :cond_d

    .line 599
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 601
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    .line 603
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getAction()I

    move-result v1

    .line 604
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 605
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getContext()Ljava/lang/String;

    move-result-object v1

    .line 606
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getContext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v3

    .line 607
    :cond_2a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasNetwork()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasNetwork()Z

    move-result v2

    if-eq v1, v2, :cond_35

    return v3

    .line 608
    :cond_35
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasNetwork()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 609
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getNetwork()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 610
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getNetwork()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    return v3

    .line 612
    :cond_4a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasStartTime()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasStartTime()Z

    move-result v2

    if-eq v1, v2, :cond_55

    return v3

    .line 613
    :cond_55
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasStartTime()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 614
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getStartTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 615
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getStartTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    return v3

    .line 617
    :cond_6a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasFinishTime()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasFinishTime()Z

    move-result v2

    if-eq v1, v2, :cond_75

    return v3

    .line 618
    :cond_75
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasFinishTime()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 619
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getFinishTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 620
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getFinishTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    return v3

    .line 622
    :cond_8a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasAdType()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasAdType()Z

    move-result v2

    if-eq v1, v2, :cond_95

    return v3

    .line 623
    :cond_95
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasAdType()Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 624
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getAdType()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 625
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getAdType()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_aa

    return v3

    .line 627
    :cond_aa
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getPrice()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 629
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getPrice()D

    move-result-wide v4

    .line 628
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-eqz v1, :cond_bf

    return v3

    .line 630
    :cond_bf
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasError()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasError()Z

    move-result v2

    if-eq v1, v2, :cond_ca

    return v3

    .line 631
    :cond_ca
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasError()Z

    move-result v1

    if-eqz v1, :cond_df

    .line 632
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getError()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v1

    .line 633
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getError()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/Error;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_df

    return v3

    .line 635
    :cond_df
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasCustomParams()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasCustomParams()Z

    move-result v2

    if-eq v1, v2, :cond_ea

    return v3

    .line 636
    :cond_ea
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasCustomParams()Z

    move-result v1

    if-eqz v1, :cond_ff

    .line 637
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getCustomParams()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 638
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getCustomParams()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ff

    return v3

    .line 640
    :cond_ff
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasBillable()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasBillable()Z

    move-result v2

    if-eq v1, v2, :cond_10a

    return v3

    .line 641
    :cond_10a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasBillable()Z

    move-result v1

    if-eqz v1, :cond_11b

    .line 642
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getBillable()Z

    move-result v1

    .line 643
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getBillable()Z

    move-result v2

    if-eq v1, v2, :cond_11b

    return v3

    .line 645
    :cond_11b
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_126

    return v3

    :cond_126
    return v0
.end method

.method public getAction()I
    .registers 2

    .line 197
    iget v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->action_:I

    return v0
.end method

.method public getAdType()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 384
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->adType_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getAdTypeOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 395
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getAdType()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getBillable()Z
    .registers 2

    .line 493
    iget-boolean v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->billable_:Z

    return v0
.end method

.method public getContext()Ljava/lang/String;
    .registers 3

    .line 212
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->context_:Ljava/lang/Object;

    .line 213
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 214
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 216
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 218
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 219
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->context_:Ljava/lang/Object;

    return-object v0
.end method

.method public getContextBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 234
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->context_:Ljava/lang/Object;

    .line 235
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 236
    check-cast v0, Ljava/lang/String;

    .line 237
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 239
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->context_:Ljava/lang/Object;

    return-object v0

    .line 242
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCustomParams()Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 467
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->customParams_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getCustomParamsOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .registers 2

    .line 474
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getCustomParams()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/events/SDKEvent;
    .registers 2

    .line 2206
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    return-object v0
.end method

.method public getError()Lio/bidmachine/protobuf/sdk/Error;
    .registers 2

    .line 437
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->error_:Lio/bidmachine/protobuf/sdk/Error;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Error;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getErrorOrBuilder()Lio/bidmachine/protobuf/sdk/ErrorOrBuilder;
    .registers 2

    .line 448
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getError()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v0

    return-object v0
.end method

.method public getFinishTime()Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 346
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->finishTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getFinishTimeOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .registers 2

    .line 357
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getFinishTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getNetwork()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 270
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->network_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getNetworkOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 281
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getNetwork()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/analytics/events/SDKEvent;",
            ">;"
        }
    .end annotation

    .line 2201
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getPrice()D
    .registers 3

    .line 410
    iget-wide v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->price_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 7

    .line 545
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 549
    :cond_6
    iget v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->action_:I

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 551
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 553
    :goto_11
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getContextBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    const/4 v2, 0x2

    .line 554
    iget-object v3, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->context_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 556
    :cond_23
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->network_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_31

    const/4 v2, 0x3

    .line 558
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getNetwork()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 560
    :cond_31
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->startTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v2, :cond_3f

    const/4 v2, 0x4

    .line 562
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getStartTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 564
    :cond_3f
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->finishTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v2, :cond_4d

    const/4 v2, 0x5

    .line 566
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getFinishTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 568
    :cond_4d
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->adType_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v2, :cond_5b

    const/4 v2, 0x6

    .line 570
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getAdType()Lcom/explorestack/protobuf/StringValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 572
    :cond_5b
    iget-wide v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->price_:D

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_69

    const/4 v4, 0x7

    .line 574
    invoke-static {v4, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 576
    :cond_69
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->error_:Lio/bidmachine/protobuf/sdk/Error;

    if-eqz v2, :cond_78

    const/16 v2, 0x8

    .line 578
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getError()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 580
    :cond_78
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->customParams_:Lcom/explorestack/protobuf/Struct;

    if-eqz v2, :cond_87

    const/16 v2, 0x9

    .line 582
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getCustomParams()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 584
    :cond_87
    iget v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->bitField0_:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_95

    const/16 v1, 0xa

    .line 585
    iget-boolean v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->billable_:Z

    .line 586
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 588
    :cond_95
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 589
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getStartTime()Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 308
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->startTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getStartTimeOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .registers 2

    .line 319
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getStartTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAdType()Z
    .registers 2

    .line 372
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->adType_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasBillable()Z
    .registers 3

    .line 485
    iget v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasCustomParams()Z
    .registers 2

    .line 459
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->customParams_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasError()Z
    .registers 2

    .line 425
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->error_:Lio/bidmachine/protobuf/sdk/Error;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasFinishTime()Z
    .registers 2

    .line 334
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->finishTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasNetwork()Z
    .registers 2

    .line 258
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->network_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasStartTime()Z
    .registers 2

    .line 296
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->startTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 651
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 655
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 657
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getAction()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 659
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getContext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 660
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasNetwork()Z

    move-result v0

    if-eqz v0, :cond_3f

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 662
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getNetwork()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 664
    :cond_3f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasStartTime()Z

    move-result v0

    if-eqz v0, :cond_54

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 666
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getStartTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Timestamp;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 668
    :cond_54
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasFinishTime()Z

    move-result v0

    if-eqz v0, :cond_69

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 670
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getFinishTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Timestamp;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 672
    :cond_69
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasAdType()Z

    move-result v0

    if-eqz v0, :cond_7e

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 674
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getAdType()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_7e
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 678
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getPrice()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 677
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    .line 679
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasError()Z

    move-result v0

    if-eqz v0, :cond_a6

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 681
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getError()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Error;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 683
    :cond_a6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasCustomParams()Z

    move-result v0

    if-eqz v0, :cond_bb

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 685
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getCustomParams()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 687
    :cond_bb
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasBillable()Z

    move-result v0

    if-eqz v0, :cond_d0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 690
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getBillable()Z

    move-result v0

    .line 689
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    :cond_d0
    mul-int/lit8 v1, v1, 0x1d

    .line 692
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 693
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 179
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/EventsProto;->internal_static_bidmachine_protobuf_analytics_events_SDKEvent_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    const-class v2, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    .line 180
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 499
    iget-byte v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 503
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->newBuilderForType()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->newBuilderForType()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 2

    .line 768
    invoke-static {}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->newBuilder()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 4

    .line 784
    new-instance v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/analytics/events/SDKEvent$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 26
    new-instance p1, Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    invoke-direct {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->toBuilder()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->toBuilder()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 777
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 778
    new-instance v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;-><init>(Lio/bidmachine/protobuf/analytics/events/SDKEvent$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;-><init>(Lio/bidmachine/protobuf/analytics/events/SDKEvent$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/events/SDKEvent;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    iget v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->action_:I

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 511
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 513
    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getContextBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x2

    .line 514
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->context_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 516
    :cond_18
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->network_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_24

    const/4 v0, 0x3

    .line 517
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getNetwork()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 519
    :cond_24
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->startTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_30

    const/4 v0, 0x4

    .line 520
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getStartTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 522
    :cond_30
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->finishTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_3c

    const/4 v0, 0x5

    .line 523
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getFinishTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 525
    :cond_3c
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->adType_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_48

    const/4 v0, 0x6

    .line 526
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getAdType()Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 528
    :cond_48
    iget-wide v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->price_:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_54

    const/4 v0, 0x7

    .line 529
    invoke-virtual {p1, v0, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 531
    :cond_54
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->error_:Lio/bidmachine/protobuf/sdk/Error;

    if-eqz v0, :cond_61

    const/16 v0, 0x8

    .line 532
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getError()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 534
    :cond_61
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->customParams_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_6e

    const/16 v0, 0x9

    .line 535
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getCustomParams()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 537
    :cond_6e
    iget v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->bitField0_:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_7a

    const/16 v0, 0xa

    .line 538
    iget-boolean v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->billable_:Z

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 540
    :cond_7a
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.analytics.events.SDKEvent.AnonymousClass1 (io.bidmachine.protobuf.analytics.events.SDKEvent$1)
.class Lio/bidmachine/protobuf/analytics/events/SDKEvent$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "SDKEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/analytics/events/SDKEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/analytics/events/SDKEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2185
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/events/SDKEvent;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2191
    new-instance v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/analytics/events/SDKEvent$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2185
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.analytics.events.SDKEvent.Builder (io.bidmachine.protobuf.analytics.events.SDKEvent$Builder)
.class public final Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SDKEvent.java"

# interfaces
.implements Lio/bidmachine/protobuf/analytics/events/SDKEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/analytics/events/SDKEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/analytics/events/SDKEventOrBuilder;"
    }
.end annotation


# instance fields
.field private action_:I

.field private adTypeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private adType_:Lcom/explorestack/protobuf/StringValue;

.field private billable_:Z

.field private bitField0_:I

.field private context_:Ljava/lang/Object;

.field private customParamsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private customParams_:Lcom/explorestack/protobuf/Struct;

.field private errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Error;",
            "Lio/bidmachine/protobuf/sdk/Error$Builder;",
            "Lio/bidmachine/protobuf/sdk/ErrorOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private error_:Lio/bidmachine/protobuf/sdk/Error;

.field private finishTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private finishTime_:Lcom/explorestack/protobuf/Timestamp;

.field private networkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private network_:Lcom/explorestack/protobuf/StringValue;

.field private price_:D

.field private startTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private startTime_:Lcom/explorestack/protobuf/Timestamp;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 808
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1087
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->context_:Ljava/lang/Object;

    .line 809
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 814
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1087
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->context_:Ljava/lang/Object;

    .line 815
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/analytics/events/SDKEvent$1;)V
    .registers 3

    .line 790
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/analytics/events/SDKEvent$1;)V
    .registers 2

    .line 790
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;-><init>()V

    return-void
.end method

.method private getAdTypeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 1792
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adTypeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1793
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1795
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->getAdType()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 1796
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1797
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adTypeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1798
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adType_:Lcom/explorestack/protobuf/StringValue;

    .line 1800
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adTypeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getCustomParamsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 2109
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParamsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 2110
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2112
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->getCustomParams()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 2113
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2114
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParamsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 2115
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParams_:Lcom/explorestack/protobuf/Struct;

    .line 2117
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParamsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 796
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/EventsProto;->internal_static_bidmachine_protobuf_analytics_events_SDKEvent_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getErrorFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Error;",
            "Lio/bidmachine/protobuf/sdk/Error$Builder;",
            "Lio/bidmachine/protobuf/sdk/ErrorOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1990
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1991
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1993
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->getError()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v1

    .line 1994
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1995
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1996
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    .line 1998
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getFinishTimeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 1637
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1638
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1640
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->getFinishTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 1641
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1642
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1643
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1645
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getNetworkFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 1327
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->networkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1328
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1330
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->getNetwork()Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    .line 1331
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1332
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->networkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1333
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->network_:Lcom/explorestack/protobuf/StringValue;

    .line 1335
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->networkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getStartTimeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 1482
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1483
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1485
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->getStartTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 1486
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1487
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1488
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1490
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 819
    invoke-static {}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 790
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 790
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 969
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 790
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->build()Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 790
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->build()Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/analytics/events/SDKEvent;
    .registers 3

    .line 885
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->buildPartial()Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    move-result-object v0

    .line 886
    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 887
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 790
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->buildPartial()Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 790
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->buildPartial()Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/analytics/events/SDKEvent;
    .registers 5

    .line 894
    new-instance v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/analytics/events/SDKEvent$1;)V

    .line 895
    iget v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->bitField0_:I

    .line 897
    iget v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->action_:I

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->access$402(Lio/bidmachine/protobuf/analytics/events/SDKEvent;I)I

    .line 898
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->context_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->access$502(Lio/bidmachine/protobuf/analytics/events/SDKEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->networkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_1c

    .line 900
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->network_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->access$602(Lio/bidmachine/protobuf/analytics/events/SDKEvent;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_25

    .line 902
    :cond_1c
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->access$602(Lio/bidmachine/protobuf/analytics/events/SDKEvent;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 904
    :goto_25
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_2f

    .line 905
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTime_:Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->access$702(Lio/bidmachine/protobuf/analytics/events/SDKEvent;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    goto :goto_38

    .line 907
    :cond_2f
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->access$702(Lio/bidmachine/protobuf/analytics/events/SDKEvent;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    .line 909
    :goto_38
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_42

    .line 910
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTime_:Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->access$802(Lio/bidmachine/protobuf/analytics/events/SDKEvent;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    goto :goto_4b

    .line 912
    :cond_42
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->access$802(Lio/bidmachine/protobuf/analytics/events/SDKEvent;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    .line 914
    :goto_4b
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adTypeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_55

    .line 915
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adType_:Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->access$902(Lio/bidmachine/protobuf/analytics/events/SDKEvent;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    goto :goto_5e

    .line 917
    :cond_55
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/StringValue;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->access$902(Lio/bidmachine/protobuf/analytics/events/SDKEvent;Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue;

    .line 919
    :goto_5e
    iget-wide v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->price_:D

    invoke-static {v0, v2, v3}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->access$1002(Lio/bidmachine/protobuf/analytics/events/SDKEvent;D)D

    .line 920
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_6d

    .line 921
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->access$1102(Lio/bidmachine/protobuf/analytics/events/SDKEvent;Lio/bidmachine/protobuf/sdk/Error;)Lio/bidmachine/protobuf/sdk/Error;

    goto :goto_76

    .line 923
    :cond_6d
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/sdk/Error;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->access$1102(Lio/bidmachine/protobuf/analytics/events/SDKEvent;Lio/bidmachine/protobuf/sdk/Error;)Lio/bidmachine/protobuf/sdk/Error;

    .line 925
    :goto_76
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParamsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_80

    .line 926
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParams_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->access$1202(Lio/bidmachine/protobuf/analytics/events/SDKEvent;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_89

    .line 928
    :cond_80
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->access$1202(Lio/bidmachine/protobuf/analytics/events/SDKEvent;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    :goto_89
    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_93

    .line 931
    iget-boolean v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->billable_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->access$1302(Lio/bidmachine/protobuf/analytics/events/SDKEvent;Z)Z

    goto :goto_94

    :cond_93
    const/4 v2, 0x0

    .line 934
    :goto_94
    invoke-static {v0, v2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->access$1402(Lio/bidmachine/protobuf/analytics/events/SDKEvent;I)I

    .line 935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 790
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->clear()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 790
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->clear()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 790
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->clear()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 790
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->clear()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 6

    .line 824
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 825
    iput v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->action_:I

    .line 827
    const-string v1, ""

    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->context_:Ljava/lang/Object;

    .line 829
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->networkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 830
    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->network_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_16

    .line 832
    :cond_12
    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->network_:Lcom/explorestack/protobuf/StringValue;

    .line 833
    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->networkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 835
    :goto_16
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1d

    .line 836
    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTime_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_21

    .line 838
    :cond_1d
    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 839
    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 841
    :goto_21
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_28

    .line 842
    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTime_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_2c

    .line 844
    :cond_28
    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 845
    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 847
    :goto_2c
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adTypeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_33

    .line 848
    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adType_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_37

    .line 850
    :cond_33
    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adType_:Lcom/explorestack/protobuf/StringValue;

    .line 851
    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adTypeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_37
    const-wide/16 v3, 0x0

    .line 853
    iput-wide v3, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->price_:D

    .line 855
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_42

    .line 856
    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    goto :goto_46

    .line 858
    :cond_42
    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    .line 859
    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 861
    :goto_46
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParamsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4d

    .line 862
    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParams_:Lcom/explorestack/protobuf/Struct;

    goto :goto_51

    .line 864
    :cond_4d
    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParams_:Lcom/explorestack/protobuf/Struct;

    .line 865
    iput-object v2, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParamsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 867
    :goto_51
    iput-boolean v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->billable_:Z

    .line 868
    iget v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAction()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 2

    const/4 v0, 0x0

    .line 1082
    iput v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->action_:I

    .line 1083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAdType()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 1745
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adTypeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1746
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adType_:Lcom/explorestack/protobuf/StringValue;

    .line 1747
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1749
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adType_:Lcom/explorestack/protobuf/StringValue;

    .line 1750
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adTypeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearBillable()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 2

    .line 2153
    iget v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2154
    iput-boolean v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->billable_:Z

    .line 2155
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearContext()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 2

    .line 1158
    invoke-static {}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getContext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->context_:Ljava/lang/Object;

    .line 1159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCustomParams()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 2074
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParamsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2075
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParams_:Lcom/explorestack/protobuf/Struct;

    .line 2076
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2078
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParams_:Lcom/explorestack/protobuf/Struct;

    .line 2079
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParamsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearError()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 1943
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1944
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    .line 1945
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1947
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    .line 1948
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 790
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 790
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 2

    .line 952
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    return-object p1
.end method

.method public clearFinishTime()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 1590
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1591
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1592
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1594
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1595
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearNetwork()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 1280
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->networkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1281
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->network_:Lcom/explorestack/protobuf/StringValue;

    .line 1282
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1284
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->network_:Lcom/explorestack/protobuf/StringValue;

    .line 1285
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->networkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 790
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 790
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 790
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 2

    .line 957
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    return-object p1
.end method

.method public clearPrice()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    const-wide/16 v0, 0x0

    .line 1841
    iput-wide v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->price_:D

    .line 1842
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStartTime()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 1435
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1436
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1437
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1439
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1440
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 790
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->clone()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 790
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->clone()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 790
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->clone()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 790
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->clone()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 790
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->clone()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 2

    .line 941
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 790
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->clone()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()I
    .registers 2

    .line 1055
    iget v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->action_:I

    return v0
.end method

.method public getAdType()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1671
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adTypeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1672
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adType_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1674
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getAdTypeBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 1764
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1765
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->getAdTypeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getAdTypeOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1775
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adTypeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1776
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 1778
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adType_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 1779
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getBillable()Z
    .registers 2

    .line 2135
    iget-boolean v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->billable_:Z

    return v0
.end method

.method public getContext()Ljava/lang/String;
    .registers 3

    .line 1097
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->context_:Ljava/lang/Object;

    .line 1098
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1099
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1101
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1102
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->context_:Ljava/lang/Object;

    return-object v0

    .line 1105
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContextBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1118
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->context_:Ljava/lang/Object;

    .line 1119
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1120
    check-cast v0, Ljava/lang/String;

    .line 1121
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1123
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->context_:Ljava/lang/Object;

    return-object v0

    .line 1126
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getCustomParams()Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 2016
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParamsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2017
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParams_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_c
    return-object v0

    .line 2019
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getCustomParamsBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .registers 2

    .line 2089
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2090
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->getCustomParamsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getCustomParamsOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .registers 2

    .line 2096
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParamsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 2097
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 2099
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParams_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_13

    .line 2100
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 790
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 790
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/events/SDKEvent;
    .registers 2

    .line 880
    invoke-static {}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 875
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/EventsProto;->internal_static_bidmachine_protobuf_analytics_events_SDKEvent_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getError()Lio/bidmachine/protobuf/sdk/Error;
    .registers 2

    .line 1869
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1870
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Error;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1872
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Error;

    return-object v0
.end method

.method public getErrorBuilder()Lio/bidmachine/protobuf/sdk/Error$Builder;
    .registers 2

    .line 1962
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1963
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->getErrorFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Error$Builder;

    return-object v0
.end method

.method public getErrorOrBuilder()Lio/bidmachine/protobuf/sdk/ErrorOrBuilder;
    .registers 2

    .line 1973
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1974
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/ErrorOrBuilder;

    return-object v0

    .line 1976
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    if-nez v0, :cond_13

    .line 1977
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Error;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getFinishTime()Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 1516
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1517
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1519
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp;

    return-object v0
.end method

.method public getFinishTimeBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;
    .registers 2

    .line 1609
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1610
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->getFinishTimeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp$Builder;

    return-object v0
.end method

.method public getFinishTimeOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .registers 2

    .line 1620
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1621
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/TimestampOrBuilder;

    return-object v0

    .line 1623
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_13

    .line 1624
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getNetwork()Lcom/explorestack/protobuf/StringValue;
    .registers 2

    .line 1206
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->networkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1207
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->network_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1209
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue;

    return-object v0
.end method

.method public getNetworkBuilder()Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    .line 1299
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1300
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->getNetworkFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public getNetworkOrBuilder()Lcom/explorestack/protobuf/StringValueOrBuilder;
    .registers 2

    .line 1310
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->networkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1311
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StringValueOrBuilder;

    return-object v0

    .line 1313
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->network_:Lcom/explorestack/protobuf/StringValue;

    if-nez v0, :cond_13

    .line 1314
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->getDefaultInstance()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getPrice()D
    .registers 3

    .line 1814
    iget-wide v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->price_:D

    return-wide v0
.end method

.method public getStartTime()Lcom/explorestack/protobuf/Timestamp;
    .registers 2

    .line 1361
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1362
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1364
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp;

    return-object v0
.end method

.method public getStartTimeBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;
    .registers 2

    .line 1454
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1455
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->getStartTimeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp$Builder;

    return-object v0
.end method

.method public getStartTimeOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .registers 2

    .line 1465
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1466
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/TimestampOrBuilder;

    return-object v0

    .line 1468
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_13

    .line 1469
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public hasAdType()Z
    .registers 2

    .line 1660
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adTypeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adType_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasBillable()Z
    .registers 3

    .line 2127
    iget v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public hasCustomParams()Z
    .registers 2

    .line 2009
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParamsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParams_:Lcom/explorestack/protobuf/Struct;

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

.method public hasError()Z
    .registers 2

    .line 1858
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

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

.method public hasFinishTime()Z
    .registers 2

    .line 1505
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTime_:Lcom/explorestack/protobuf/Timestamp;

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

.method public hasNetwork()Z
    .registers 2

    .line 1195
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->networkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->network_:Lcom/explorestack/protobuf/StringValue;

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

.method public hasStartTime()Z
    .registers 2

    .line 1350
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTime_:Lcom/explorestack/protobuf/Timestamp;

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

    .line 802
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/EventsProto;->internal_static_bidmachine_protobuf_analytics_events_SDKEvent_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    const-class v2, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    .line 803
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

.method public mergeAdType(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 1723
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adTypeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1724
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adType_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 1726
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adType_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 1728
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adType_:Lcom/explorestack/protobuf/StringValue;

    .line 1730
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1732
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeCustomParams(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 2056
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParamsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 2057
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParams_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_17

    .line 2059
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParams_:Lcom/explorestack/protobuf/Struct;

    goto :goto_19

    .line 2061
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParams_:Lcom/explorestack/protobuf/Struct;

    .line 2063
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2065
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeError(Lio/bidmachine/protobuf/sdk/Error;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 1921
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1922
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    if-eqz v0, :cond_17

    .line 1924
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Error;->newBuilder(Lio/bidmachine/protobuf/sdk/Error;)Lio/bidmachine/protobuf/sdk/Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Error$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Error;)Lio/bidmachine/protobuf/sdk/Error$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Error$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    goto :goto_19

    .line 1926
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    .line 1928
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1930
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeFinishTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 1568
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1569
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_17

    .line 1571
    invoke-static {v0}, Lcom/explorestack/protobuf/Timestamp;->newBuilder(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTime_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_19

    .line 1573
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1575
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1577
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

    .line 790
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 790
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

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

    .line 790
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

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

    .line 790
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 790
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

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

    .line 790
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1031
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->access$1600()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/events/SDKEvent;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 1037
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/events/SDKEvent;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 1033
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/analytics/events/SDKEvent;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 1034
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

    .line 1037
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/events/SDKEvent;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    .line 1039
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 973
    instance-of v0, p1, Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    if-eqz v0, :cond_b

    .line 974
    check-cast p1, Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/events/SDKEvent;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p1

    return-object p1

    .line 976
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/analytics/events/SDKEvent;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 6

    .line 982
    invoke-static {}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 983
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_14

    .line 984
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getAction()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setAction(I)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    .line 986
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getContext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 987
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->access$500(Lio/bidmachine/protobuf/analytics/events/SDKEvent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->context_:Ljava/lang/Object;

    .line 988
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 990
    :cond_27
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasNetwork()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 991
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getNetwork()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->mergeNetwork(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    .line 993
    :cond_34
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasStartTime()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 994
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getStartTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->mergeStartTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    .line 996
    :cond_41
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasFinishTime()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 997
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getFinishTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->mergeFinishTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    .line 999
    :cond_4e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasAdType()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1000
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getAdType()Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->mergeAdType(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    .line 1002
    :cond_5b
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getPrice()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_6c

    .line 1003
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getPrice()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setPrice(D)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    .line 1005
    :cond_6c
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasError()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 1006
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getError()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->mergeError(Lio/bidmachine/protobuf/sdk/Error;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    .line 1008
    :cond_79
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasCustomParams()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 1009
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getCustomParams()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->mergeCustomParams(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    .line 1011
    :cond_86
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->hasBillable()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 1012
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->getBillable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setBillable(Z)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    .line 1014
    :cond_93
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->access$1500(Lio/bidmachine/protobuf/analytics/events/SDKEvent;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    .line 1015
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeNetwork(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 1258
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->networkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1259
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->network_:Lcom/explorestack/protobuf/StringValue;

    if-eqz v0, :cond_17

    .line 1261
    invoke-static {v0}, Lcom/explorestack/protobuf/StringValue;->newBuilder(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/StringValue;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->buildPartial()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->network_:Lcom/explorestack/protobuf/StringValue;

    goto :goto_19

    .line 1263
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->network_:Lcom/explorestack/protobuf/StringValue;

    .line 1265
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1267
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeStartTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 1413
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1414
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_17

    .line 1416
    invoke-static {v0}, Lcom/explorestack/protobuf/Timestamp;->newBuilder(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTime_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_19

    .line 1418
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1420
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1422
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 790
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 790
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 790
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 2

    .line 2167
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    return-object p1
.end method

.method public setAction(I)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 2

    .line 1068
    iput p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->action_:I

    .line 1069
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setAdType(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 1706
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adTypeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1707
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adType_:Lcom/explorestack/protobuf/StringValue;

    .line 1708
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1710
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setAdType(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 1685
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adTypeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1687
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1689
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->adType_:Lcom/explorestack/protobuf/StringValue;

    .line 1690
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1692
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setBillable(Z)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 2143
    iget v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->bitField0_:I

    .line 2144
    iput-boolean p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->billable_:Z

    .line 2145
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setContext(Ljava/lang/String;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 2

    .line 1141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1144
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->context_:Ljava/lang/Object;

    .line 1145
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setContextBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 2

    .line 1174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1176
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->access$1700(Lcom/explorestack/protobuf/ByteString;)V

    .line 1178
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->context_:Ljava/lang/Object;

    .line 1179
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setCustomParams(Lcom/explorestack/protobuf/Struct$Builder;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 2043
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParamsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 2044
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParams_:Lcom/explorestack/protobuf/Struct;

    .line 2045
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2047
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setCustomParams(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 2026
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParamsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 2028
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2030
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->customParams_:Lcom/explorestack/protobuf/Struct;

    .line 2031
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 2033
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setError(Lio/bidmachine/protobuf/sdk/Error$Builder;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 1904
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1905
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Error$Builder;->build()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    .line 1906
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1908
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Error$Builder;->build()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setError(Lio/bidmachine/protobuf/sdk/Error;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 1883
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->errorBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1885
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1887
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->error_:Lio/bidmachine/protobuf/sdk/Error;

    .line 1888
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1890
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 790
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 790
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 947
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    return-object p1
.end method

.method public setFinishTime(Lcom/explorestack/protobuf/Timestamp$Builder;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 1551
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1552
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1553
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1555
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setFinishTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 1530
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1532
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1534
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->finishTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1535
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1537
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setNetwork(Lcom/explorestack/protobuf/StringValue$Builder;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 1241
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->networkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1242
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->network_:Lcom/explorestack/protobuf/StringValue;

    .line 1243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1245
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setNetwork(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 1220
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->networkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1224
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->network_:Lcom/explorestack/protobuf/StringValue;

    .line 1225
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1227
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setPrice(D)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 1827
    iput-wide p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->price_:D

    .line 1828
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 790
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 790
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 4

    .line 963
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    return-object p1
.end method

.method public setStartTime(Lcom/explorestack/protobuf/Timestamp$Builder;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 1396
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1397
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1400
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setStartTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 3

    .line 1375
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1377
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1379
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->startTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 1380
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1382
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 790
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 790
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;
    .registers 2

    .line 2161
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    return-object p1
.end method

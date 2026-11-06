###### Class io.bidmachine.protobuf.sdk.Context (io.bidmachine.protobuf.sdk.Context)
.class public final Lio/bidmachine/protobuf/sdk/Context;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Context.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/ContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/Context$Builder;
    }
.end annotation


# static fields
.field public static final APP_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Context;

.field public static final DEVICE_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Context;",
            ">;"
        }
    .end annotation
.end field

.field public static final REGS_FIELD_NUMBER:I = 0x6

.field public static final SDK_FIELD_NUMBER:I = 0x1

.field public static final SESSION_FIELD_NUMBER:I = 0x5

.field public static final USER_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private app_:Lio/bidmachine/protobuf/sdk/App;

.field private device_:Lio/bidmachine/protobuf/sdk/Device;

.field private memoizedIsInitialized:B

.field private regs_:Lio/bidmachine/protobuf/sdk/Regs;

.field private sdk_:Lio/bidmachine/protobuf/sdk/SDK;

.field private session_:Lio/bidmachine/protobuf/sdk/Session;

.field private user_:Lio/bidmachine/protobuf/sdk/User;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1514
    new-instance v0, Lio/bidmachine/protobuf/sdk/Context;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Context;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Context;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Context;

    .line 1522
    new-instance v0, Lio/bidmachine/protobuf/sdk/Context$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Context$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/sdk/Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 317
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/Context;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Context;-><init>()V

    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    if-nez v1, :cond_11b

    .line 46
    :try_start_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_e1

    const/16 v4, 0x12

    if-eq v2, v4, :cond_c0

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_9f

    const/16 v4, 0x22

    if-eq v2, v4, :cond_7e

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_5e

    const/16 v4, 0x32

    if-eq v2, v4, :cond_3e

    .line 130
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_33
    move v1, v3

    goto :goto_b

    :catchall_35
    move-exception p1

    goto/16 :goto_111

    :catch_38
    move-exception p1

    goto/16 :goto_102

    :catch_3b
    move-exception p1

    goto/16 :goto_10c

    .line 118
    :cond_3e
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Context;->regs_:Lio/bidmachine/protobuf/sdk/Regs;

    if-eqz v2, :cond_46

    .line 119
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/Regs;->toBuilder()Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object v5

    .line 121
    :cond_46
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/sdk/Regs;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Context;->regs_:Lio/bidmachine/protobuf/sdk/Regs;

    if-eqz v5, :cond_b

    .line 123
    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Regs;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    .line 124
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Context;->regs_:Lio/bidmachine/protobuf/sdk/Regs;

    goto :goto_b

    .line 105
    :cond_5e
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Context;->session_:Lio/bidmachine/protobuf/sdk/Session;

    if-eqz v2, :cond_66

    .line 106
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/Session;->toBuilder()Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object v5

    .line 108
    :cond_66
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/sdk/Session;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Context;->session_:Lio/bidmachine/protobuf/sdk/Session;

    if-eqz v5, :cond_b

    .line 110
    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/Session$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Session;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    .line 111
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/Session$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Context;->session_:Lio/bidmachine/protobuf/sdk/Session;

    goto :goto_b

    .line 92
    :cond_7e
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Context;->device_:Lio/bidmachine/protobuf/sdk/Device;

    if-eqz v2, :cond_86

    .line 93
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/Device;->toBuilder()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v5

    .line 95
    :cond_86
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/sdk/Device;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Context;->device_:Lio/bidmachine/protobuf/sdk/Device;

    if-eqz v5, :cond_b

    .line 97
    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 98
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/Device$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Context;->device_:Lio/bidmachine/protobuf/sdk/Device;

    goto/16 :goto_b

    .line 79
    :cond_9f
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Context;->user_:Lio/bidmachine/protobuf/sdk/User;

    if-eqz v2, :cond_a7

    .line 80
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/User;->toBuilder()Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object v5

    .line 82
    :cond_a7
    invoke-static {}, Lio/bidmachine/protobuf/sdk/User;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/sdk/User;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Context;->user_:Lio/bidmachine/protobuf/sdk/User;

    if-eqz v5, :cond_b

    .line 84
    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/User$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/User;)Lio/bidmachine/protobuf/sdk/User$Builder;

    .line 85
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/User$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Context;->user_:Lio/bidmachine/protobuf/sdk/User;

    goto/16 :goto_b

    .line 66
    :cond_c0
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Context;->app_:Lio/bidmachine/protobuf/sdk/App;

    if-eqz v2, :cond_c8

    .line 67
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/App;->toBuilder()Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object v5

    .line 69
    :cond_c8
    invoke-static {}, Lio/bidmachine/protobuf/sdk/App;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/sdk/App;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Context;->app_:Lio/bidmachine/protobuf/sdk/App;

    if-eqz v5, :cond_b

    .line 71
    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/App;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 72
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/App$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Context;->app_:Lio/bidmachine/protobuf/sdk/App;

    goto/16 :goto_b

    .line 53
    :cond_e1
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Context;->sdk_:Lio/bidmachine/protobuf/sdk/SDK;

    if-eqz v2, :cond_e9

    .line 54
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/SDK;->toBuilder()Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object v5

    .line 56
    :cond_e9
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDK;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/sdk/SDK;

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Context;->sdk_:Lio/bidmachine/protobuf/sdk/SDK;

    if-eqz v5, :cond_b

    .line 58
    invoke-virtual {v5, v2}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/SDK;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    .line 59
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Context;->sdk_:Lio/bidmachine/protobuf/sdk/SDK;
    :try_end_100
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_100} :catch_3b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_100} :catch_38
    .catchall {:try_start_d .. :try_end_100} :catchall_35

    goto/16 :goto_b

    .line 141
    :goto_102
    :try_start_102
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 142
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 139
    :goto_10c
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_111
    .catchall {:try_start_102 .. :try_end_111} :catchall_35

    .line 144
    :goto_111
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 145
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 146
    throw p1

    .line 144
    :cond_11b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 145
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Context$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Context;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 317
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/Context;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Context$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Context;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1000(Lio/bidmachine/protobuf/sdk/Context;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$1100()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/sdk/Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$200()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$402(Lio/bidmachine/protobuf/sdk/Context;Lio/bidmachine/protobuf/sdk/SDK;)Lio/bidmachine/protobuf/sdk/SDK;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context;->sdk_:Lio/bidmachine/protobuf/sdk/SDK;

    return-object p1
.end method

.method public static synthetic access$502(Lio/bidmachine/protobuf/sdk/Context;Lio/bidmachine/protobuf/sdk/App;)Lio/bidmachine/protobuf/sdk/App;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context;->app_:Lio/bidmachine/protobuf/sdk/App;

    return-object p1
.end method

.method public static synthetic access$602(Lio/bidmachine/protobuf/sdk/Context;Lio/bidmachine/protobuf/sdk/User;)Lio/bidmachine/protobuf/sdk/User;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context;->user_:Lio/bidmachine/protobuf/sdk/User;

    return-object p1
.end method

.method public static synthetic access$702(Lio/bidmachine/protobuf/sdk/Context;Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Device;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context;->device_:Lio/bidmachine/protobuf/sdk/Device;

    return-object p1
.end method

.method public static synthetic access$802(Lio/bidmachine/protobuf/sdk/Context;Lio/bidmachine/protobuf/sdk/Session;)Lio/bidmachine/protobuf/sdk/Session;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context;->session_:Lio/bidmachine/protobuf/sdk/Session;

    return-object p1
.end method

.method public static synthetic access$902(Lio/bidmachine/protobuf/sdk/Context;Lio/bidmachine/protobuf/sdk/Regs;)Lio/bidmachine/protobuf/sdk/Regs;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context;->regs_:Lio/bidmachine/protobuf/sdk/Regs;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/Context;
    .registers 1

    .line 1518
    sget-object v0, Lio/bidmachine/protobuf/sdk/Context;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Context;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 150
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Context_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 1

    .line 540
    sget-object v0, Lio/bidmachine/protobuf/sdk/Context;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Context;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Context;->toBuilder()Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/Context;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 2

    .line 543
    sget-object v0, Lio/bidmachine/protobuf/sdk/Context;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Context;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Context;->toBuilder()Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Context;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Context;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    sget-object v0, Lio/bidmachine/protobuf/sdk/Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 514
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Context;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Context;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    sget-object v0, Lio/bidmachine/protobuf/sdk/Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 521
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Context;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Context;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 481
    sget-object v0, Lio/bidmachine/protobuf/sdk/Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Context;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Context;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 487
    sget-object v0, Lio/bidmachine/protobuf/sdk/Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Context;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/sdk/Context;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    sget-object v0, Lio/bidmachine/protobuf/sdk/Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 527
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Context;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Context;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    sget-object v0, Lio/bidmachine/protobuf/sdk/Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 534
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Context;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Context;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    sget-object v0, Lio/bidmachine/protobuf/sdk/Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 502
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Context;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Context;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    sget-object v0, Lio/bidmachine/protobuf/sdk/Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 509
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Context;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/Context;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 470
    sget-object v0, Lio/bidmachine/protobuf/sdk/Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Context;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Context;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 476
    sget-object v0, Lio/bidmachine/protobuf/sdk/Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Context;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/Context;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 491
    sget-object v0, Lio/bidmachine/protobuf/sdk/Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Context;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Context;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 497
    sget-object v0, Lio/bidmachine/protobuf/sdk/Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Context;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Context;",
            ">;"
        }
    .end annotation

    .line 1533
    sget-object v0, Lio/bidmachine/protobuf/sdk/Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 392
    :cond_4
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/Context;

    if-nez v1, :cond_d

    .line 393
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 395
    :cond_d
    check-cast p1, Lio/bidmachine/protobuf/sdk/Context;

    .line 397
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->hasSdk()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Context;->hasSdk()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 398
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->hasSdk()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 399
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getSdk()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v1

    .line 400
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Context;->getSdk()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/SDK;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 402
    :cond_30
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->hasApp()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Context;->hasApp()Z

    move-result v2

    if-eq v1, v2, :cond_3b

    return v3

    .line 403
    :cond_3b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->hasApp()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 404
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getApp()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v1

    .line 405
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Context;->getApp()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/App;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    return v3

    .line 407
    :cond_50
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->hasUser()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Context;->hasUser()Z

    move-result v2

    if-eq v1, v2, :cond_5b

    return v3

    .line 408
    :cond_5b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->hasUser()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 409
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getUser()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v1

    .line 410
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Context;->getUser()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/User;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    return v3

    .line 412
    :cond_70
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->hasDevice()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Context;->hasDevice()Z

    move-result v2

    if-eq v1, v2, :cond_7b

    return v3

    .line 413
    :cond_7b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->hasDevice()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 414
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getDevice()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v1

    .line 415
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Context;->getDevice()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/Device;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    return v3

    .line 417
    :cond_90
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->hasSession()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Context;->hasSession()Z

    move-result v2

    if-eq v1, v2, :cond_9b

    return v3

    .line 418
    :cond_9b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->hasSession()Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 419
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getSession()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v1

    .line 420
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Context;->getSession()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/Session;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b0

    return v3

    .line 422
    :cond_b0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->hasRegs()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Context;->hasRegs()Z

    move-result v2

    if-eq v1, v2, :cond_bb

    return v3

    .line 423
    :cond_bb
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->hasRegs()Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 424
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getRegs()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object v1

    .line 425
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Context;->getRegs()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/Regs;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d0

    return v3

    .line 427
    :cond_d0
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_db

    return v3

    :cond_db
    return v0
.end method

.method public getApp()Lio/bidmachine/protobuf/sdk/App;
    .registers 2

    .line 203
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context;->app_:Lio/bidmachine/protobuf/sdk/App;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/App;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getAppOrBuilder()Lio/bidmachine/protobuf/sdk/AppOrBuilder;
    .registers 2

    .line 210
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getApp()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Context;
    .registers 2

    .line 1543
    sget-object v0, Lio/bidmachine/protobuf/sdk/Context;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Context;

    return-object v0
.end method

.method public getDevice()Lio/bidmachine/protobuf/sdk/Device;
    .registers 2

    .line 255
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context;->device_:Lio/bidmachine/protobuf/sdk/Device;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getDeviceOrBuilder()Lio/bidmachine/protobuf/sdk/DeviceOrBuilder;
    .registers 2

    .line 262
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getDevice()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/sdk/Context;",
            ">;"
        }
    .end annotation

    .line 1538
    sget-object v0, Lio/bidmachine/protobuf/sdk/Context;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getRegs()Lio/bidmachine/protobuf/sdk/Regs;
    .registers 2

    .line 307
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context;->regs_:Lio/bidmachine/protobuf/sdk/Regs;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getRegsOrBuilder()Lio/bidmachine/protobuf/sdk/RegsOrBuilder;
    .registers 2

    .line 314
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getRegs()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object v0

    return-object v0
.end method

.method public getSdk()Lio/bidmachine/protobuf/sdk/SDK;
    .registers 2

    .line 177
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context;->sdk_:Lio/bidmachine/protobuf/sdk/SDK;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDK;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getSdkOrBuilder()Lio/bidmachine/protobuf/sdk/SDKOrBuilder;
    .registers 2

    .line 184
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getSdk()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 354
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 358
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context;->sdk_:Lio/bidmachine/protobuf/sdk/SDK;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 360
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getSdk()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 362
    :goto_15
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Context;->app_:Lio/bidmachine/protobuf/sdk/App;

    if-eqz v1, :cond_23

    const/4 v1, 0x2

    .line 364
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getApp()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 366
    :cond_23
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Context;->user_:Lio/bidmachine/protobuf/sdk/User;

    if-eqz v1, :cond_31

    const/4 v1, 0x3

    .line 368
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getUser()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 370
    :cond_31
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Context;->device_:Lio/bidmachine/protobuf/sdk/Device;

    if-eqz v1, :cond_3f

    const/4 v1, 0x4

    .line 372
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getDevice()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 374
    :cond_3f
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Context;->session_:Lio/bidmachine/protobuf/sdk/Session;

    if-eqz v1, :cond_4d

    const/4 v1, 0x5

    .line 376
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getSession()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 378
    :cond_4d
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Context;->regs_:Lio/bidmachine/protobuf/sdk/Regs;

    if-eqz v1, :cond_5b

    const/4 v1, 0x6

    .line 380
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getRegs()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 382
    :cond_5b
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 383
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getSession()Lio/bidmachine/protobuf/sdk/Session;
    .registers 2

    .line 281
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context;->session_:Lio/bidmachine/protobuf/sdk/Session;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getSessionOrBuilder()Lio/bidmachine/protobuf/sdk/SessionOrBuilder;
    .registers 2

    .line 288
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getSession()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUser()Lio/bidmachine/protobuf/sdk/User;
    .registers 2

    .line 229
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context;->user_:Lio/bidmachine/protobuf/sdk/User;

    if-nez v0, :cond_8

    invoke-static {}, Lio/bidmachine/protobuf/sdk/User;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getUserOrBuilder()Lio/bidmachine/protobuf/sdk/UserOrBuilder;
    .registers 2

    .line 236
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getUser()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v0

    return-object v0
.end method

.method public hasApp()Z
    .registers 2

    .line 195
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context;->app_:Lio/bidmachine/protobuf/sdk/App;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasDevice()Z
    .registers 2

    .line 247
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context;->device_:Lio/bidmachine/protobuf/sdk/Device;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasRegs()Z
    .registers 2

    .line 299
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context;->regs_:Lio/bidmachine/protobuf/sdk/Regs;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasSdk()Z
    .registers 2

    .line 169
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context;->sdk_:Lio/bidmachine/protobuf/sdk/SDK;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasSession()Z
    .registers 2

    .line 273
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context;->session_:Lio/bidmachine/protobuf/sdk/Session;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasUser()Z
    .registers 2

    .line 221
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context;->user_:Lio/bidmachine/protobuf/sdk/User;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 433
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 437
    :cond_5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Context;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 438
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->hasSdk()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 440
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getSdk()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/SDK;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 442
    :cond_25
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->hasApp()Z

    move-result v0

    if-eqz v0, :cond_3a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 444
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getApp()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/App;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 446
    :cond_3a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->hasUser()Z

    move-result v0

    if-eqz v0, :cond_4f

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 448
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getUser()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/User;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 450
    :cond_4f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->hasDevice()Z

    move-result v0

    if-eqz v0, :cond_64

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 452
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getDevice()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 454
    :cond_64
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_79

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 456
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getSession()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Session;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 458
    :cond_79
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->hasRegs()Z

    move-result v0

    if-eqz v0, :cond_8e

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 460
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getRegs()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Regs;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_8e
    mul-int/lit8 v1, v1, 0x1d

    .line 462
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 463
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 156
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Context_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Context;

    const-class v2, Lio/bidmachine/protobuf/sdk/Context$Builder;

    .line 157
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 320
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/Context;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 324
    :cond_a
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/Context;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Context;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 2

    .line 538
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Context;->newBuilder()Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 4

    .line 554
    new-instance v0, Lio/bidmachine/protobuf/sdk/Context$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/Context$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Context$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 25
    new-instance p1, Lio/bidmachine/protobuf/sdk/Context;

    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/Context;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->toBuilder()Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->toBuilder()Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 547
    sget-object v0, Lio/bidmachine/protobuf/sdk/Context;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Context;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 548
    new-instance v0, Lio/bidmachine/protobuf/sdk/Context$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Context$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Context$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lio/bidmachine/protobuf/sdk/Context$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Context$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Context$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Context;)Lio/bidmachine/protobuf/sdk/Context$Builder;

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

    .line 331
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context;->sdk_:Lio/bidmachine/protobuf/sdk/SDK;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 332
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getSdk()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 334
    :cond_c
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context;->app_:Lio/bidmachine/protobuf/sdk/App;

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    .line 335
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getApp()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 337
    :cond_18
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context;->user_:Lio/bidmachine/protobuf/sdk/User;

    if-eqz v0, :cond_24

    const/4 v0, 0x3

    .line 338
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getUser()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 340
    :cond_24
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context;->device_:Lio/bidmachine/protobuf/sdk/Device;

    if-eqz v0, :cond_30

    const/4 v0, 0x4

    .line 341
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getDevice()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 343
    :cond_30
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context;->session_:Lio/bidmachine/protobuf/sdk/Session;

    if-eqz v0, :cond_3c

    const/4 v0, 0x5

    .line 344
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getSession()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 346
    :cond_3c
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context;->regs_:Lio/bidmachine/protobuf/sdk/Regs;

    if-eqz v0, :cond_48

    const/4 v0, 0x6

    .line 347
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context;->getRegs()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 349
    :cond_48
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class io.bidmachine.protobuf.sdk.Context.AnonymousClass1 (io.bidmachine.protobuf.sdk.Context$1)
.class Lio/bidmachine/protobuf/sdk/Context$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "Context.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lio/bidmachine/protobuf/sdk/Context;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1522
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Context;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1528
    new-instance v0, Lio/bidmachine/protobuf/sdk/Context;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/protobuf/sdk/Context;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/sdk/Context$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1522
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Context$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Context;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.protobuf.sdk.Context.Builder (io.bidmachine.protobuf.sdk.Context$Builder)
.class public final Lio/bidmachine/protobuf/sdk/Context$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Context.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/ContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/sdk/Context$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/ContextOrBuilder;"
    }
.end annotation


# instance fields
.field private appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/App;",
            "Lio/bidmachine/protobuf/sdk/App$Builder;",
            "Lio/bidmachine/protobuf/sdk/AppOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private app_:Lio/bidmachine/protobuf/sdk/App;

.field private deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Device;",
            "Lio/bidmachine/protobuf/sdk/Device$Builder;",
            "Lio/bidmachine/protobuf/sdk/DeviceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private device_:Lio/bidmachine/protobuf/sdk/Device;

.field private regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Regs;",
            "Lio/bidmachine/protobuf/sdk/Regs$Builder;",
            "Lio/bidmachine/protobuf/sdk/RegsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private regs_:Lio/bidmachine/protobuf/sdk/Regs;

.field private sdkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/SDK;",
            "Lio/bidmachine/protobuf/sdk/SDK$Builder;",
            "Lio/bidmachine/protobuf/sdk/SDKOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private sdk_:Lio/bidmachine/protobuf/sdk/SDK;

.field private sessionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Session;",
            "Lio/bidmachine/protobuf/sdk/Session$Builder;",
            "Lio/bidmachine/protobuf/sdk/SessionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private session_:Lio/bidmachine/protobuf/sdk/Session;

.field private userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/User;",
            "Lio/bidmachine/protobuf/sdk/User$Builder;",
            "Lio/bidmachine/protobuf/sdk/UserOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private user_:Lio/bidmachine/protobuf/sdk/User;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 578
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 579
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 2

    .line 584
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 585
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/sdk/Context$1;)V
    .registers 3

    .line 560
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Context$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Context$1;)V
    .registers 2

    .line 560
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;-><init>()V

    return-void
.end method

.method private getAppFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/App;",
            "Lio/bidmachine/protobuf/sdk/App$Builder;",
            "Lio/bidmachine/protobuf/sdk/AppOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1009
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1010
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1012
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->getApp()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v1

    .line 1013
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1014
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1015
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->app_:Lio/bidmachine/protobuf/sdk/App;

    .line 1017
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 566
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Context_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getDeviceFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Device;",
            "Lio/bidmachine/protobuf/sdk/Device$Builder;",
            "Lio/bidmachine/protobuf/sdk/DeviceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1247
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1248
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1250
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->getDevice()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v1

    .line 1251
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1252
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1253
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->device_:Lio/bidmachine/protobuf/sdk/Device;

    .line 1255
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getRegsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Regs;",
            "Lio/bidmachine/protobuf/sdk/Regs$Builder;",
            "Lio/bidmachine/protobuf/sdk/RegsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1485
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1486
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1488
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->getRegs()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object v1

    .line 1489
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1490
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1491
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regs_:Lio/bidmachine/protobuf/sdk/Regs;

    .line 1493
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getSdkFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/SDK;",
            "Lio/bidmachine/protobuf/sdk/SDK$Builder;",
            "Lio/bidmachine/protobuf/sdk/SDKOrBuilder;",
            ">;"
        }
    .end annotation

    .line 890
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 891
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 893
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->getSdk()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v1

    .line 894
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 895
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 896
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdk_:Lio/bidmachine/protobuf/sdk/SDK;

    .line 898
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getSessionFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/Session;",
            "Lio/bidmachine/protobuf/sdk/Session$Builder;",
            "Lio/bidmachine/protobuf/sdk/SessionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1366
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1367
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1369
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->getSession()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v1

    .line 1370
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1371
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1372
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    .line 1374
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getUserFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/sdk/User;",
            "Lio/bidmachine/protobuf/sdk/User$Builder;",
            "Lio/bidmachine/protobuf/sdk/UserOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1128
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1a

    .line 1129
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1131
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->getUser()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v1

    .line 1132
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1133
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1134
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->user_:Lio/bidmachine/protobuf/sdk/User;

    .line 1136
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .line 589
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Context;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Context$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Context$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 721
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Context$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->build()Lio/bidmachine/protobuf/sdk/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->build()Lio/bidmachine/protobuf/sdk/Context;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/Context;
    .registers 3

    .line 647
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Context;

    move-result-object v0

    .line 648
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Context;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 649
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Context;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/Context;
    .registers 3

    .line 656
    new-instance v0, Lio/bidmachine/protobuf/sdk/Context;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/Context;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/sdk/Context$1;)V

    .line 657
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_10

    .line 658
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdk_:Lio/bidmachine/protobuf/sdk/SDK;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Context;->access$402(Lio/bidmachine/protobuf/sdk/Context;Lio/bidmachine/protobuf/sdk/SDK;)Lio/bidmachine/protobuf/sdk/SDK;

    goto :goto_19

    .line 660
    :cond_10
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/SDK;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Context;->access$402(Lio/bidmachine/protobuf/sdk/Context;Lio/bidmachine/protobuf/sdk/SDK;)Lio/bidmachine/protobuf/sdk/SDK;

    .line 662
    :goto_19
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_23

    .line 663
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->app_:Lio/bidmachine/protobuf/sdk/App;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Context;->access$502(Lio/bidmachine/protobuf/sdk/Context;Lio/bidmachine/protobuf/sdk/App;)Lio/bidmachine/protobuf/sdk/App;

    goto :goto_2c

    .line 665
    :cond_23
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/App;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Context;->access$502(Lio/bidmachine/protobuf/sdk/Context;Lio/bidmachine/protobuf/sdk/App;)Lio/bidmachine/protobuf/sdk/App;

    .line 667
    :goto_2c
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_36

    .line 668
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->user_:Lio/bidmachine/protobuf/sdk/User;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Context;->access$602(Lio/bidmachine/protobuf/sdk/Context;Lio/bidmachine/protobuf/sdk/User;)Lio/bidmachine/protobuf/sdk/User;

    goto :goto_3f

    .line 670
    :cond_36
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/User;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Context;->access$602(Lio/bidmachine/protobuf/sdk/Context;Lio/bidmachine/protobuf/sdk/User;)Lio/bidmachine/protobuf/sdk/User;

    .line 672
    :goto_3f
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_49

    .line 673
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->device_:Lio/bidmachine/protobuf/sdk/Device;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Context;->access$702(Lio/bidmachine/protobuf/sdk/Context;Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Device;

    goto :goto_52

    .line 675
    :cond_49
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/Device;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Context;->access$702(Lio/bidmachine/protobuf/sdk/Context;Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Device;

    .line 677
    :goto_52
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_5c

    .line 678
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Context;->access$802(Lio/bidmachine/protobuf/sdk/Context;Lio/bidmachine/protobuf/sdk/Session;)Lio/bidmachine/protobuf/sdk/Session;

    goto :goto_65

    .line 680
    :cond_5c
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/Session;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Context;->access$802(Lio/bidmachine/protobuf/sdk/Context;Lio/bidmachine/protobuf/sdk/Session;)Lio/bidmachine/protobuf/sdk/Session;

    .line 682
    :goto_65
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_6f

    .line 683
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regs_:Lio/bidmachine/protobuf/sdk/Regs;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Context;->access$902(Lio/bidmachine/protobuf/sdk/Context;Lio/bidmachine/protobuf/sdk/Regs;)Lio/bidmachine/protobuf/sdk/Regs;

    goto :goto_78

    .line 685
    :cond_6f
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/sdk/Regs;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Context;->access$902(Lio/bidmachine/protobuf/sdk/Context;Lio/bidmachine/protobuf/sdk/Regs;)Lio/bidmachine/protobuf/sdk/Regs;

    .line 687
    :goto_78
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->clear()Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->clear()Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->clear()Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->clear()Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 594
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 595
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 596
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdk_:Lio/bidmachine/protobuf/sdk/SDK;

    goto :goto_f

    .line 598
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdk_:Lio/bidmachine/protobuf/sdk/SDK;

    .line 599
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 601
    :goto_f
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_16

    .line 602
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->app_:Lio/bidmachine/protobuf/sdk/App;

    goto :goto_1a

    .line 604
    :cond_16
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->app_:Lio/bidmachine/protobuf/sdk/App;

    .line 605
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 607
    :goto_1a
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_21

    .line 608
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->user_:Lio/bidmachine/protobuf/sdk/User;

    goto :goto_25

    .line 610
    :cond_21
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->user_:Lio/bidmachine/protobuf/sdk/User;

    .line 611
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 613
    :goto_25
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2c

    .line 614
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->device_:Lio/bidmachine/protobuf/sdk/Device;

    goto :goto_30

    .line 616
    :cond_2c
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->device_:Lio/bidmachine/protobuf/sdk/Device;

    .line 617
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 619
    :goto_30
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_37

    .line 620
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    goto :goto_3b

    .line 622
    :cond_37
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    .line 623
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 625
    :goto_3b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_42

    .line 626
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regs_:Lio/bidmachine/protobuf/sdk/Regs;

    return-object p0

    .line 628
    :cond_42
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regs_:Lio/bidmachine/protobuf/sdk/Regs;

    .line 629
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearApp()Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 974
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 975
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->app_:Lio/bidmachine/protobuf/sdk/App;

    .line 976
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 978
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->app_:Lio/bidmachine/protobuf/sdk/App;

    .line 979
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearDevice()Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 1212
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1213
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->device_:Lio/bidmachine/protobuf/sdk/Device;

    .line 1214
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1216
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->device_:Lio/bidmachine/protobuf/sdk/Device;

    .line 1217
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Context$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Context$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 2

    .line 704
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Context$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Context$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Context$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Context$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 2

    .line 709
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Context$Builder;

    return-object p1
.end method

.method public clearRegs()Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 1450
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1451
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regs_:Lio/bidmachine/protobuf/sdk/Regs;

    .line 1452
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1454
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regs_:Lio/bidmachine/protobuf/sdk/Regs;

    .line 1455
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearSdk()Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 855
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 856
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdk_:Lio/bidmachine/protobuf/sdk/SDK;

    .line 857
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 859
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdk_:Lio/bidmachine/protobuf/sdk/SDK;

    .line 860
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearSession()Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 1331
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1332
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    .line 1333
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1335
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    .line 1336
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public clearUser()Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 1093
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1094
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->user_:Lio/bidmachine/protobuf/sdk/User;

    .line 1095
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1097
    :cond_b
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->user_:Lio/bidmachine/protobuf/sdk/User;

    .line 1098
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->clone()Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->clone()Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->clone()Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->clone()Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->clone()Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 2

    .line 693
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Context$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->clone()Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApp()Lio/bidmachine/protobuf/sdk/App;
    .registers 2

    .line 916
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 917
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->app_:Lio/bidmachine/protobuf/sdk/App;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/App;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v0

    :cond_c
    return-object v0

    .line 919
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/App;

    return-object v0
.end method

.method public getAppBuilder()Lio/bidmachine/protobuf/sdk/App$Builder;
    .registers 2

    .line 989
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 990
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->getAppFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/App$Builder;

    return-object v0
.end method

.method public getAppOrBuilder()Lio/bidmachine/protobuf/sdk/AppOrBuilder;
    .registers 2

    .line 996
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 997
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/AppOrBuilder;

    return-object v0

    .line 999
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->app_:Lio/bidmachine/protobuf/sdk/App;

    if-nez v0, :cond_13

    .line 1000
    invoke-static {}, Lio/bidmachine/protobuf/sdk/App;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Context;
    .registers 2

    .line 642
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Context;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 637
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Context_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDevice()Lio/bidmachine/protobuf/sdk/Device;
    .registers 2

    .line 1154
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1155
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->device_:Lio/bidmachine/protobuf/sdk/Device;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1157
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Device;

    return-object v0
.end method

.method public getDeviceBuilder()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .registers 2

    .line 1227
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1228
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->getDeviceFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Device$Builder;

    return-object v0
.end method

.method public getDeviceOrBuilder()Lio/bidmachine/protobuf/sdk/DeviceOrBuilder;
    .registers 2

    .line 1234
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1235
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/DeviceOrBuilder;

    return-object v0

    .line 1237
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->device_:Lio/bidmachine/protobuf/sdk/Device;

    if-nez v0, :cond_13

    .line 1238
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getRegs()Lio/bidmachine/protobuf/sdk/Regs;
    .registers 2

    .line 1392
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1393
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regs_:Lio/bidmachine/protobuf/sdk/Regs;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1395
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Regs;

    return-object v0
.end method

.method public getRegsBuilder()Lio/bidmachine/protobuf/sdk/Regs$Builder;
    .registers 2

    .line 1465
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1466
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->getRegsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Regs$Builder;

    return-object v0
.end method

.method public getRegsOrBuilder()Lio/bidmachine/protobuf/sdk/RegsOrBuilder;
    .registers 2

    .line 1472
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1473
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/RegsOrBuilder;

    return-object v0

    .line 1475
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regs_:Lio/bidmachine/protobuf/sdk/Regs;

    if-nez v0, :cond_13

    .line 1476
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getSdk()Lio/bidmachine/protobuf/sdk/SDK;
    .registers 2

    .line 797
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 798
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdk_:Lio/bidmachine/protobuf/sdk/SDK;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDK;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v0

    :cond_c
    return-object v0

    .line 800
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/SDK;

    return-object v0
.end method

.method public getSdkBuilder()Lio/bidmachine/protobuf/sdk/SDK$Builder;
    .registers 2

    .line 870
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 871
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->getSdkFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/SDK$Builder;

    return-object v0
.end method

.method public getSdkOrBuilder()Lio/bidmachine/protobuf/sdk/SDKOrBuilder;
    .registers 2

    .line 877
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 878
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/SDKOrBuilder;

    return-object v0

    .line 880
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdk_:Lio/bidmachine/protobuf/sdk/SDK;

    if-nez v0, :cond_13

    .line 881
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDK;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getSession()Lio/bidmachine/protobuf/sdk/Session;
    .registers 2

    .line 1273
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1274
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1276
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Session;

    return-object v0
.end method

.method public getSessionBuilder()Lio/bidmachine/protobuf/sdk/Session$Builder;
    .registers 2

    .line 1346
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1347
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->getSessionFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Session$Builder;

    return-object v0
.end method

.method public getSessionOrBuilder()Lio/bidmachine/protobuf/sdk/SessionOrBuilder;
    .registers 2

    .line 1353
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1354
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/SessionOrBuilder;

    return-object v0

    .line 1356
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    if-nez v0, :cond_13

    .line 1357
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public getUser()Lio/bidmachine/protobuf/sdk/User;
    .registers 2

    .line 1035
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1036
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->user_:Lio/bidmachine/protobuf/sdk/User;

    if-nez v0, :cond_c

    invoke-static {}, Lio/bidmachine/protobuf/sdk/User;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v0

    :cond_c
    return-object v0

    .line 1038
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/User;

    return-object v0
.end method

.method public getUserBuilder()Lio/bidmachine/protobuf/sdk/User$Builder;
    .registers 2

    .line 1108
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1109
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->getUserFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/User$Builder;

    return-object v0
.end method

.method public getUserOrBuilder()Lio/bidmachine/protobuf/sdk/UserOrBuilder;
    .registers 2

    .line 1115
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_b

    .line 1116
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/UserOrBuilder;

    return-object v0

    .line 1118
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->user_:Lio/bidmachine/protobuf/sdk/User;

    if-nez v0, :cond_13

    .line 1119
    invoke-static {}, Lio/bidmachine/protobuf/sdk/User;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public hasApp()Z
    .registers 2

    .line 909
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->app_:Lio/bidmachine/protobuf/sdk/App;

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

.method public hasDevice()Z
    .registers 2

    .line 1147
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->device_:Lio/bidmachine/protobuf/sdk/Device;

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

.method public hasRegs()Z
    .registers 2

    .line 1385
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regs_:Lio/bidmachine/protobuf/sdk/Regs;

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

.method public hasSdk()Z
    .registers 2

    .line 790
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdk_:Lio/bidmachine/protobuf/sdk/SDK;

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

.method public hasSession()Z
    .registers 2

    .line 1266
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

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

.method public hasUser()Z
    .registers 2

    .line 1028
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->user_:Lio/bidmachine/protobuf/sdk/User;

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

    .line 572
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Context_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/sdk/Context;

    const-class v2, Lio/bidmachine/protobuf/sdk/Context$Builder;

    .line 573
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

.method public mergeApp(Lio/bidmachine/protobuf/sdk/App;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 956
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 957
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->app_:Lio/bidmachine/protobuf/sdk/App;

    if-eqz v0, :cond_17

    .line 959
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/App;->newBuilder(Lio/bidmachine/protobuf/sdk/App;)Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/App;)Lio/bidmachine/protobuf/sdk/App$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/App;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->app_:Lio/bidmachine/protobuf/sdk/App;

    goto :goto_19

    .line 961
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->app_:Lio/bidmachine/protobuf/sdk/App;

    .line 963
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 965
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeDevice(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 1194
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1195
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->device_:Lio/bidmachine/protobuf/sdk/Device;

    if-eqz v0, :cond_17

    .line 1197
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Device;->newBuilder(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->device_:Lio/bidmachine/protobuf/sdk/Device;

    goto :goto_19

    .line 1199
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->device_:Lio/bidmachine/protobuf/sdk/Device;

    .line 1201
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1203
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

    .line 560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Context$Builder;

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

    .line 560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Context$Builder;

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

    .line 560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Context$Builder;

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

    .line 560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 770
    :try_start_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Context;->access$1100()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Context;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 776
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Context$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Context;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 772
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/Context;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 773
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

    .line 776
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Context;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    .line 778
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 725
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/Context;

    if-eqz v0, :cond_b

    .line 726
    check-cast p1, Lio/bidmachine/protobuf/sdk/Context;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Context$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Context;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object p1

    return-object p1

    .line 728
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/Context;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 734
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Context;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Context;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 735
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Context;->hasSdk()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 736
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Context;->getSdk()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->mergeSdk(Lio/bidmachine/protobuf/sdk/SDK;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    .line 738
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Context;->hasApp()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 739
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Context;->getApp()Lio/bidmachine/protobuf/sdk/App;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->mergeApp(Lio/bidmachine/protobuf/sdk/App;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    .line 741
    :cond_21
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Context;->hasUser()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 742
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Context;->getUser()Lio/bidmachine/protobuf/sdk/User;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->mergeUser(Lio/bidmachine/protobuf/sdk/User;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    .line 744
    :cond_2e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Context;->hasDevice()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 745
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Context;->getDevice()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->mergeDevice(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    .line 747
    :cond_3b
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Context;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 748
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Context;->getSession()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->mergeSession(Lio/bidmachine/protobuf/sdk/Session;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    .line 750
    :cond_48
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Context;->hasRegs()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 751
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Context;->getRegs()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Context$Builder;->mergeRegs(Lio/bidmachine/protobuf/sdk/Regs;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    .line 753
    :cond_55
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Context;->access$1000(Lio/bidmachine/protobuf/sdk/Context;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Context$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    .line 754
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeRegs(Lio/bidmachine/protobuf/sdk/Regs;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 1432
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1433
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regs_:Lio/bidmachine/protobuf/sdk/Regs;

    if-eqz v0, :cond_17

    .line 1435
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Regs;->newBuilder(Lio/bidmachine/protobuf/sdk/Regs;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Regs;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regs_:Lio/bidmachine/protobuf/sdk/Regs;

    goto :goto_19

    .line 1437
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regs_:Lio/bidmachine/protobuf/sdk/Regs;

    .line 1439
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1441
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeSdk(Lio/bidmachine/protobuf/sdk/SDK;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 837
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 838
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdk_:Lio/bidmachine/protobuf/sdk/SDK;

    if-eqz v0, :cond_17

    .line 840
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/SDK;->newBuilder(Lio/bidmachine/protobuf/sdk/SDK;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/SDK;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdk_:Lio/bidmachine/protobuf/sdk/SDK;

    goto :goto_19

    .line 842
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdk_:Lio/bidmachine/protobuf/sdk/SDK;

    .line 844
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 846
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public mergeSession(Lio/bidmachine/protobuf/sdk/Session;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 1313
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1314
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    if-eqz v0, :cond_17

    .line 1316
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Session;->newBuilder(Lio/bidmachine/protobuf/sdk/Session;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Session;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    goto :goto_19

    .line 1318
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    .line 1320
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1322
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Context$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Context$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Context$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 2

    .line 1504
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Context$Builder;

    return-object p1
.end method

.method public mergeUser(Lio/bidmachine/protobuf/sdk/User;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 1075
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 1076
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->user_:Lio/bidmachine/protobuf/sdk/User;

    if-eqz v0, :cond_17

    .line 1078
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/User;->newBuilder(Lio/bidmachine/protobuf/sdk/User;)Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/User$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/User;)Lio/bidmachine/protobuf/sdk/User$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/User$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/User;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->user_:Lio/bidmachine/protobuf/sdk/User;

    goto :goto_19

    .line 1080
    :cond_17
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->user_:Lio/bidmachine/protobuf/sdk/User;

    .line 1082
    :goto_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1084
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setApp(Lio/bidmachine/protobuf/sdk/App$Builder;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 943
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 944
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->build()Lio/bidmachine/protobuf/sdk/App;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->app_:Lio/bidmachine/protobuf/sdk/App;

    .line 945
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 947
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->build()Lio/bidmachine/protobuf/sdk/App;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setApp(Lio/bidmachine/protobuf/sdk/App;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 926
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->appBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 928
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 930
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->app_:Lio/bidmachine/protobuf/sdk/App;

    .line 931
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 933
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setDevice(Lio/bidmachine/protobuf/sdk/Device$Builder;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 1181
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1182
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->build()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->device_:Lio/bidmachine/protobuf/sdk/Device;

    .line 1183
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1185
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->build()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setDevice(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 1164
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->deviceBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1168
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->device_:Lio/bidmachine/protobuf/sdk/Device;

    .line 1169
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1171
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Context$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Context$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 699
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Context$Builder;

    return-object p1
.end method

.method public setRegs(Lio/bidmachine/protobuf/sdk/Regs$Builder;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 1419
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1420
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->build()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regs_:Lio/bidmachine/protobuf/sdk/Regs;

    .line 1421
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1423
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->build()Lio/bidmachine/protobuf/sdk/Regs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setRegs(Lio/bidmachine/protobuf/sdk/Regs;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 1402
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1404
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1406
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->regs_:Lio/bidmachine/protobuf/sdk/Regs;

    .line 1407
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1409
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 560
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Context$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 560
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Context$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 4

    .line 715
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Context$Builder;

    return-object p1
.end method

.method public setSdk(Lio/bidmachine/protobuf/sdk/SDK$Builder;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 824
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 825
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->build()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdk_:Lio/bidmachine/protobuf/sdk/SDK;

    .line 826
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 828
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->build()Lio/bidmachine/protobuf/sdk/SDK;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setSdk(Lio/bidmachine/protobuf/sdk/SDK;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 807
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdkBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 809
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 811
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sdk_:Lio/bidmachine/protobuf/sdk/SDK;

    .line 812
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 814
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setSession(Lio/bidmachine/protobuf/sdk/Session$Builder;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 1300
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1301
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->build()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    .line 1302
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1304
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->build()Lio/bidmachine/protobuf/sdk/Session;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setSession(Lio/bidmachine/protobuf/sdk/Session;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 1283
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->sessionBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1285
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1287
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->session_:Lio/bidmachine/protobuf/sdk/Session;

    .line 1288
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1290
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Context$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Context$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 2

    .line 1498
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Context$Builder;

    return-object p1
.end method

.method public setUser(Lio/bidmachine/protobuf/sdk/User$Builder;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 1062
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 1063
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/User$Builder;->build()Lio/bidmachine/protobuf/sdk/User;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->user_:Lio/bidmachine/protobuf/sdk/User;

    .line 1064
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1066
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/User$Builder;->build()Lio/bidmachine/protobuf/sdk/User;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

.method public setUser(Lio/bidmachine/protobuf/sdk/User;)Lio/bidmachine/protobuf/sdk/Context$Builder;
    .registers 3

    .line 1045
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->userBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 1047
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1049
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Context$Builder;->user_:Lio/bidmachine/protobuf/sdk/User;

    .line 1050
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    .line 1052
    :cond_d
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object p0
.end method

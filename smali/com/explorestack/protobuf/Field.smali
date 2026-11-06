###### Class com.explorestack.protobuf.Field (com.explorestack.protobuf.Field)
.class public final Lcom/explorestack/protobuf/Field;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Field.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/Field$Builder;,
        Lcom/explorestack/protobuf/Field$Cardinality;,
        Lcom/explorestack/protobuf/Field$Kind;
    }
.end annotation


# static fields
.field public static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Field;

.field public static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Field;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cardinality_:I

.field public volatile defaultValue_:Ljava/lang/Object;

.field public volatile jsonName_:Ljava/lang/Object;

.field public kind_:I

.field public memoizedIsInitialized:B

.field public volatile name_:Ljava/lang/Object;

.field public number_:I

.field public oneofIndex_:I

.field public options_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field public packed_:Z

.field public volatile typeUrl_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2580
    new-instance v0, Lcom/explorestack/protobuf/Field;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Field;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Field;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Field;

    .line 2588
    new-instance v0, Lcom/explorestack/protobuf/Field$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Field$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Field;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1083
    iput-byte v0, p0, Lcom/explorestack/protobuf/Field;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/explorestack/protobuf/Field;->kind_:I

    .line 24
    iput v0, p0, Lcom/explorestack/protobuf/Field;->cardinality_:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->name_:Ljava/lang/Object;

    .line 26
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    .line 27
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    .line 28
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->jsonName_:Ljava/lang/Object;

    .line 29
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field;-><init>()V

    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    if-nez v1, :cond_9f

    .line 58
    :try_start_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_b4

    .line 124
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_c

    :sswitch_1c
    move v1, v4

    goto :goto_c

    :catchall_1e
    move-exception p1

    goto/16 :goto_8b

    :catch_21
    move-exception p1

    goto :goto_7c

    :catch_23
    move-exception p1

    goto :goto_86

    .line 118
    :sswitch_25
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 120
    iput-object v3, p0, Lcom/explorestack/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    goto :goto_c

    .line 112
    :sswitch_2c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 114
    iput-object v3, p0, Lcom/explorestack/protobuf/Field;->jsonName_:Ljava/lang/Object;

    goto :goto_c

    :sswitch_33
    if-nez v2, :cond_3d

    .line 104
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    move v2, v4

    .line 107
    :cond_3d
    iget-object v3, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    .line 108
    invoke-static {}, Lcom/explorestack/protobuf/Option;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    .line 107
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 99
    :sswitch_4b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/protobuf/Field;->packed_:Z

    goto :goto_c

    .line 94
    :sswitch_52
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/Field;->oneofIndex_:I

    goto :goto_c

    .line 87
    :sswitch_59
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 89
    iput-object v3, p0, Lcom/explorestack/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    goto :goto_c

    .line 81
    :sswitch_60
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 83
    iput-object v3, p0, Lcom/explorestack/protobuf/Field;->name_:Ljava/lang/Object;

    goto :goto_c

    .line 77
    :sswitch_67
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/Field;->number_:I

    goto :goto_c

    .line 70
    :sswitch_6e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 72
    iput v3, p0, Lcom/explorestack/protobuf/Field;->cardinality_:I

    goto :goto_c

    .line 64
    :sswitch_75
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 66
    iput v3, p0, Lcom/explorestack/protobuf/Field;->kind_:I
    :try_end_7b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_7b} :catch_23
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_7b} :catch_21
    .catchall {:try_start_e .. :try_end_7b} :catchall_1e

    goto :goto_c

    .line 135
    :goto_7c
    :try_start_7c
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 136
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 133
    :goto_86
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_8b
    .catchall {:try_start_7c .. :try_end_8b} :catchall_1e

    :goto_8b
    if-eqz v2, :cond_95

    .line 139
    iget-object p2, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    .line 141
    :cond_95
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 142
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 143
    throw p1

    :cond_9f
    if-eqz v2, :cond_a9

    .line 139
    iget-object p1, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    .line 141
    :cond_a9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 142
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_b4
    .sparse-switch
        0x0 -> :sswitch_1c
        0x8 -> :sswitch_75
        0x10 -> :sswitch_6e
        0x18 -> :sswitch_67
        0x22 -> :sswitch_60
        0x32 -> :sswitch_59
        0x38 -> :sswitch_52
        0x40 -> :sswitch_4b
        0x4a -> :sswitch_33
        0x52 -> :sswitch_2c
        0x5a -> :sswitch_25
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/Field$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/Field;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V
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

    .line 1083
    iput-byte p1, p0, Lcom/explorestack/protobuf/Field;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Field$1;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Field;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/explorestack/protobuf/Field;)Ljava/util/List;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1002(Lcom/explorestack/protobuf/Field;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/explorestack/protobuf/Field;)Ljava/lang/Object;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/Field;->jsonName_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1102(Lcom/explorestack/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/Field;->jsonName_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1200(Lcom/explorestack/protobuf/Field;)Ljava/lang/Object;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1202(Lcom/explorestack/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1300()Lcom/explorestack/protobuf/Parser;
    .registers 1

    .line 13
    sget-object v0, Lcom/explorestack/protobuf/Field;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/explorestack/protobuf/Field;)I
    .registers 1

    .line 13
    iget p0, p0, Lcom/explorestack/protobuf/Field;->kind_:I

    return p0
.end method

.method public static synthetic access$302(Lcom/explorestack/protobuf/Field;I)I
    .registers 2

    .line 13
    iput p1, p0, Lcom/explorestack/protobuf/Field;->kind_:I

    return p1
.end method

.method public static synthetic access$400(Lcom/explorestack/protobuf/Field;)I
    .registers 1

    .line 13
    iget p0, p0, Lcom/explorestack/protobuf/Field;->cardinality_:I

    return p0
.end method

.method public static synthetic access$402(Lcom/explorestack/protobuf/Field;I)I
    .registers 2

    .line 13
    iput p1, p0, Lcom/explorestack/protobuf/Field;->cardinality_:I

    return p1
.end method

.method public static synthetic access$502(Lcom/explorestack/protobuf/Field;I)I
    .registers 2

    .line 13
    iput p1, p0, Lcom/explorestack/protobuf/Field;->number_:I

    return p1
.end method

.method public static synthetic access$600(Lcom/explorestack/protobuf/Field;)Ljava/lang/Object;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/Field;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/explorestack/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/Field;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/explorestack/protobuf/Field;)Ljava/lang/Object;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$702(Lcom/explorestack/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$802(Lcom/explorestack/protobuf/Field;I)I
    .registers 2

    .line 13
    iput p1, p0, Lcom/explorestack/protobuf/Field;->oneofIndex_:I

    return p1
.end method

.method public static synthetic access$902(Lcom/explorestack/protobuf/Field;Z)Z
    .registers 2

    .line 13
    iput-boolean p1, p0, Lcom/explorestack/protobuf/Field;->packed_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/Field;
    .registers 1

    .line 2584
    sget-object v0, Lcom/explorestack/protobuf/Field;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Field;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 147
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Field_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/Field$Builder;
    .registers 1

    .line 1317
    sget-object v0, Lcom/explorestack/protobuf/Field;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Field;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Field;->toBuilder()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1182
    :cond_4
    instance-of v1, p1, Lcom/explorestack/protobuf/Field;

    if-nez v1, :cond_d

    .line 1183
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1185
    :cond_d
    check-cast p1, Lcom/explorestack/protobuf/Field;

    .line 1187
    iget v1, p0, Lcom/explorestack/protobuf/Field;->kind_:I

    iget v2, p1, Lcom/explorestack/protobuf/Field;->kind_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    return v3

    .line 1188
    :cond_17
    iget v1, p0, Lcom/explorestack/protobuf/Field;->cardinality_:I

    iget v2, p1, Lcom/explorestack/protobuf/Field;->cardinality_:I

    if-eq v1, v2, :cond_1e

    return v3

    .line 1189
    :cond_1e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getNumber()I

    move-result v1

    .line 1190
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_29

    return v3

    .line 1191
    :cond_29
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1192
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v3

    .line 1193
    :cond_38
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    .line 1194
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    return v3

    .line 1195
    :cond_47
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getOneofIndex()I

    move-result v1

    .line 1196
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getOneofIndex()I

    move-result v2

    if-eq v1, v2, :cond_52

    return v3

    .line 1197
    :cond_52
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getPacked()Z

    move-result v1

    .line 1198
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getPacked()Z

    move-result v2

    if-eq v1, v2, :cond_5d

    return v3

    .line 1199
    :cond_5d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getOptionsList()Ljava/util/List;

    move-result-object v1

    .line 1200
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getOptionsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    return v3

    .line 1201
    :cond_6c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getJsonName()Ljava/lang/String;

    move-result-object v1

    .line 1202
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getJsonName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b

    return v3

    .line 1203
    :cond_7b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    .line 1204
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    return v3

    .line 1205
    :cond_8a
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_95

    return v3

    :cond_95
    return v0
.end method

.method public getCardinalityValue()I
    .registers 2

    .line 775
    iget v0, p0, Lcom/explorestack/protobuf/Field;->cardinality_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/Field;
    .registers 2

    .line 2609
    sget-object v0, Lcom/explorestack/protobuf/Field;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Field;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .registers 3

    .line 1049
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    .line 1050
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1051
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1053
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1055
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1056
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDefaultValueBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1071
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    .line 1072
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1073
    check-cast v0, Ljava/lang/String;

    .line 1074
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1076
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    return-object v0

    .line 1079
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getJsonName()Ljava/lang/String;
    .registers 3

    .line 1003
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->jsonName_:Ljava/lang/Object;

    .line 1004
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1005
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1007
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1009
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1010
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->jsonName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getJsonNameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1025
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->jsonName_:Ljava/lang/Object;

    .line 1026
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1027
    check-cast v0, Ljava/lang/String;

    .line 1028
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1030
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->jsonName_:Ljava/lang/Object;

    return-object v0

    .line 1033
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getKindValue()I
    .registers 2

    .line 748
    iget v0, p0, Lcom/explorestack/protobuf/Field;->kind_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 818
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->name_:Ljava/lang/Object;

    .line 819
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 820
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 822
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 824
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 825
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 840
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->name_:Ljava/lang/Object;

    .line 841
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 842
    check-cast v0, Ljava/lang/String;

    .line 843
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 845
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->name_:Ljava/lang/Object;

    return-object v0

    .line 848
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getNumber()I
    .registers 2

    .line 803
    iget v0, p0, Lcom/explorestack/protobuf/Field;->number_:I

    return v0
.end method

.method public getOneofIndex()I
    .registers 2

    .line 913
    iget v0, p0, Lcom/explorestack/protobuf/Field;->oneofIndex_:I

    return v0
.end method

.method public getOptionsCount()I
    .registers 2

    .line 965
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 942
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    return-object v0
.end method

.method public getPacked()Z
    .registers 2

    .line 928
    iget-boolean v0, p0, Lcom/explorestack/protobuf/Field;->packed_:Z

    return v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Field;",
            ">;"
        }
    .end annotation

    .line 2604
    sget-object v0, Lcom/explorestack/protobuf/Field;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 1132
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 1136
    :cond_6
    iget v0, p0, Lcom/explorestack/protobuf/Field;->kind_:I

    sget-object v1, Lcom/explorestack/protobuf/Field$Kind;->TYPE_UNKNOWN:Lcom/explorestack/protobuf/Field$Kind;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Field$Kind;->getNumber()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_19

    .line 1137
    iget v0, p0, Lcom/explorestack/protobuf/Field;->kind_:I

    const/4 v1, 0x1

    .line 1138
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    goto :goto_1a

    :cond_19
    move v0, v2

    .line 1140
    :goto_1a
    iget v1, p0, Lcom/explorestack/protobuf/Field;->cardinality_:I

    sget-object v3, Lcom/explorestack/protobuf/Field$Cardinality;->CARDINALITY_UNKNOWN:Lcom/explorestack/protobuf/Field$Cardinality;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/Field$Cardinality;->getNumber()I

    move-result v3

    if-eq v1, v3, :cond_2c

    const/4 v1, 0x2

    .line 1141
    iget v3, p0, Lcom/explorestack/protobuf/Field;->cardinality_:I

    .line 1142
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1144
    :cond_2c
    iget v1, p0, Lcom/explorestack/protobuf/Field;->number_:I

    if-eqz v1, :cond_36

    const/4 v3, 0x3

    .line 1146
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1148
    :cond_36
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_48

    const/4 v1, 0x4

    .line 1149
    iget-object v3, p0, Lcom/explorestack/protobuf/Field;->name_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1151
    :cond_48
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getTypeUrlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5a

    const/4 v1, 0x6

    .line 1152
    iget-object v3, p0, Lcom/explorestack/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1154
    :cond_5a
    iget v1, p0, Lcom/explorestack/protobuf/Field;->oneofIndex_:I

    if-eqz v1, :cond_64

    const/4 v3, 0x7

    .line 1156
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1158
    :cond_64
    iget-boolean v1, p0, Lcom/explorestack/protobuf/Field;->packed_:Z

    if-eqz v1, :cond_6f

    const/16 v3, 0x8

    .line 1160
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1162
    :cond_6f
    :goto_6f
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_89

    .line 1163
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    .line 1164
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/16 v3, 0x9

    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    .line 1166
    :cond_89
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getJsonNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9c

    const/16 v1, 0xa

    .line 1167
    iget-object v2, p0, Lcom/explorestack/protobuf/Field;->jsonName_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1169
    :cond_9c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getDefaultValueBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_af

    const/16 v1, 0xb

    .line 1170
    iget-object v2, p0, Lcom/explorestack/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1172
    :cond_af
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1173
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getTypeUrl()Ljava/lang/String;
    .registers 3

    .line 865
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    .line 866
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 867
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 869
    :cond_9
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 871
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 872
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTypeUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 888
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    .line 889
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 890
    check-cast v0, Ljava/lang/String;

    .line 891
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 893
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    return-object v0

    .line 896
    :cond_f
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1211
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 1215
    :cond_5
    invoke-static {}, Lcom/explorestack/protobuf/Field;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 1217
    iget v0, p0, Lcom/explorestack/protobuf/Field;->kind_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 1219
    iget v0, p0, Lcom/explorestack/protobuf/Field;->cardinality_:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 1221
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getNumber()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 1223
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 1225
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 1227
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getOneofIndex()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 1230
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getPacked()Z

    move-result v0

    .line 1229
    invoke-static {v0}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 1231
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getOptionsCount()I

    move-result v0

    if-lez v0, :cond_7a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 1233
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getOptionsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_7a
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 1236
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getJsonName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    .line 1238
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 1239
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1240
    iput v1, p0, Lcom/explorestack/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 153
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Field_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Field;

    const-class v2, Lcom/explorestack/protobuf/Field$Builder;

    .line 154
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 1086
    iget-byte v0, p0, Lcom/explorestack/protobuf/Field;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 1090
    :cond_a
    iput-byte v1, p0, Lcom/explorestack/protobuf/Field;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/explorestack/protobuf/Field$Builder;
    .registers 2

    .line 1315
    invoke-static {}, Lcom/explorestack/protobuf/Field;->newBuilder()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Field$Builder;
    .registers 4

    .line 1331
    new-instance v0, Lcom/explorestack/protobuf/Field$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/Field$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Field$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->newBuilderForType()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->newBuilderForType()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .registers 2

    .line 36
    new-instance p1, Lcom/explorestack/protobuf/Field;

    invoke-direct {p1}, Lcom/explorestack/protobuf/Field;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/explorestack/protobuf/Field$Builder;
    .registers 3

    .line 1324
    sget-object v0, Lcom/explorestack/protobuf/Field;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Field;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    new-instance v0, Lcom/explorestack/protobuf/Field$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Field$Builder;-><init>(Lcom/explorestack/protobuf/Field$1;)V

    return-object v0

    :cond_b
    new-instance v0, Lcom/explorestack/protobuf/Field$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Field$Builder;-><init>(Lcom/explorestack/protobuf/Field$1;)V

    .line 1325
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/Field;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->toBuilder()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->toBuilder()Lcom/explorestack/protobuf/Field$Builder;

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

    .line 1097
    iget v0, p0, Lcom/explorestack/protobuf/Field;->kind_:I

    sget-object v1, Lcom/explorestack/protobuf/Field$Kind;->TYPE_UNKNOWN:Lcom/explorestack/protobuf/Field$Kind;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Field$Kind;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_10

    .line 1098
    iget v0, p0, Lcom/explorestack/protobuf/Field;->kind_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1100
    :cond_10
    iget v0, p0, Lcom/explorestack/protobuf/Field;->cardinality_:I

    sget-object v1, Lcom/explorestack/protobuf/Field$Cardinality;->CARDINALITY_UNKNOWN:Lcom/explorestack/protobuf/Field$Cardinality;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Field$Cardinality;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_20

    const/4 v0, 0x2

    .line 1101
    iget v1, p0, Lcom/explorestack/protobuf/Field;->cardinality_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1103
    :cond_20
    iget v0, p0, Lcom/explorestack/protobuf/Field;->number_:I

    if-eqz v0, :cond_28

    const/4 v1, 0x3

    .line 1104
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1106
    :cond_28
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    const/4 v0, 0x4

    .line 1107
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->name_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1109
    :cond_38
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getTypeUrlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    const/4 v0, 0x6

    .line 1110
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1112
    :cond_48
    iget v0, p0, Lcom/explorestack/protobuf/Field;->oneofIndex_:I

    if-eqz v0, :cond_50

    const/4 v1, 0x7

    .line 1113
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1115
    :cond_50
    iget-boolean v0, p0, Lcom/explorestack/protobuf/Field;->packed_:Z

    if-eqz v0, :cond_59

    const/16 v1, 0x8

    .line 1116
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_59
    const/4 v0, 0x0

    .line 1118
    :goto_5a
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_72

    .line 1119
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/MessageLite;

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 1121
    :cond_72
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getJsonNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_83

    const/16 v0, 0xa

    .line 1122
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->jsonName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1124
    :cond_83
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getDefaultValueBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_94

    const/16 v0, 0xb

    .line 1125
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1127
    :cond_94
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class com.explorestack.protobuf.Field.AnonymousClass1 (com.explorestack.protobuf.Field$1)
.class public final Lcom/explorestack/protobuf/Field$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "Field.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lcom/explorestack/protobuf/Field;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2588
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Field;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2594
    new-instance v0, Lcom/explorestack/protobuf/Field;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/explorestack/protobuf/Field;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/Field$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2588
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Field;

    move-result-object p1

    return-object p1
.end method

###### Class com.explorestack.protobuf.Field.Builder (com.explorestack.protobuf.Field$Builder)
.class public final Lcom/explorestack/protobuf/Field$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Field.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/Field$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/MessageOrBuilder;"
    }
.end annotation


# instance fields
.field public bitField0_:I

.field public cardinality_:I

.field public defaultValue_:Ljava/lang/Object;

.field public jsonName_:Ljava/lang/Object;

.field public kind_:I

.field public name_:Ljava/lang/Object;

.field public number_:I

.field public oneofIndex_:I

.field public optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Option;",
            "Lcom/explorestack/protobuf/Option$Builder;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public options_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field public packed_:Z

.field public typeUrl_:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1359
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 1581
    iput v0, p0, Lcom/explorestack/protobuf/Field$Builder;->kind_:I

    .line 1655
    iput v0, p0, Lcom/explorestack/protobuf/Field$Builder;->cardinality_:I

    .line 1772
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    .line 1868
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    .line 2059
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    .line 2370
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    .line 2466
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    .line 1360
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/Field$1;)V
    .registers 2

    .line 1341
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 3

    .line 1365
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 1581
    iput p1, p0, Lcom/explorestack/protobuf/Field$Builder;->kind_:I

    .line 1655
    iput p1, p0, Lcom/explorestack/protobuf/Field$Builder;->cardinality_:I

    .line 1772
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    .line 1868
    iput-object p1, p0, Lcom/explorestack/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    .line 2059
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    .line 2370
    iput-object p1, p0, Lcom/explorestack/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    .line 2466
    iput-object p1, p0, Lcom/explorestack/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    .line 1366
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Field$1;)V
    .registers 3

    .line 1341
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 1369
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_7

    .line 1371
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_7
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Field$Builder;
    .registers 3

    .line 1480
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Field$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1341
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1341
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/explorestack/protobuf/Field;
    .registers 3

    .line 1417
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->buildPartial()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    .line 1418
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Field;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 1419
    :cond_b
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->build()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->build()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/Field;
    .registers 3

    .line 1426
    new-instance v0, Lcom/explorestack/protobuf/Field;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/Field;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Field$1;)V

    .line 1428
    iget v1, p0, Lcom/explorestack/protobuf/Field$Builder;->kind_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->access$302(Lcom/explorestack/protobuf/Field;I)I

    .line 1429
    iget v1, p0, Lcom/explorestack/protobuf/Field$Builder;->cardinality_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->access$402(Lcom/explorestack/protobuf/Field;I)I

    .line 1430
    iget v1, p0, Lcom/explorestack/protobuf/Field$Builder;->number_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->access$502(Lcom/explorestack/protobuf/Field;I)I

    .line 1431
    iget-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->access$602(Lcom/explorestack/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    iget-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->access$702(Lcom/explorestack/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    iget v1, p0, Lcom/explorestack/protobuf/Field$Builder;->oneofIndex_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->access$802(Lcom/explorestack/protobuf/Field;I)I

    .line 1434
    iget-boolean v1, p0, Lcom/explorestack/protobuf/Field$Builder;->packed_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->access$902(Lcom/explorestack/protobuf/Field;Z)Z

    .line 1435
    iget-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_47

    .line 1436
    iget v1, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_41

    .line 1437
    iget-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    .line 1438
    iget v1, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    .line 1440
    :cond_41
    iget-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->access$1002(Lcom/explorestack/protobuf/Field;Ljava/util/List;)Ljava/util/List;

    goto :goto_4e

    .line 1442
    :cond_47
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->access$1002(Lcom/explorestack/protobuf/Field;Ljava/util/List;)Ljava/util/List;

    .line 1444
    :goto_4e
    iget-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->access$1102(Lcom/explorestack/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    iget-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->access$1202(Lcom/explorestack/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->buildPartial()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->buildPartial()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->clear()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/Field$Builder;
    .registers 3

    .line 1376
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 1377
    iput v0, p0, Lcom/explorestack/protobuf/Field$Builder;->kind_:I

    .line 1379
    iput v0, p0, Lcom/explorestack/protobuf/Field$Builder;->cardinality_:I

    .line 1381
    iput v0, p0, Lcom/explorestack/protobuf/Field$Builder;->number_:I

    .line 1383
    const-string v1, ""

    iput-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    .line 1385
    iput-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    .line 1387
    iput v0, p0, Lcom/explorestack/protobuf/Field$Builder;->oneofIndex_:I

    .line 1389
    iput-boolean v0, p0, Lcom/explorestack/protobuf/Field$Builder;->packed_:Z

    .line 1391
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_23

    .line 1392
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    .line 1393
    iget v0, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    goto :goto_26

    .line 1395
    :cond_23
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 1397
    :goto_26
    iput-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    .line 1399
    iput-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->clear()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->clear()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->clear()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Field$Builder;
    .registers 2

    .line 1463
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Field$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1341
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1341
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1341
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Field$Builder;
    .registers 2

    .line 1468
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Field$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1341
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1341
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->clone()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 1341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->clone()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/Field$Builder;
    .registers 2

    .line 1452
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Field$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->clone()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->clone()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 1341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->clone()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->clone()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final ensureOptionsIsMutable()V
    .registers 3

    .line 2061
    iget v0, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 2062
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    .line 2063
    iget v0, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/Field;
    .registers 2

    .line 1412
    invoke-static {}, Lcom/explorestack/protobuf/Field;->getDefaultInstance()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 1341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 1341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 1407
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Field_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Option;",
            "Lcom/explorestack/protobuf/Option$Builder;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2358
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_20

    .line 2359
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    .line 2363
    :goto_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2364
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 2365
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    .line 2367
    :cond_20
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .line 1353
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Field_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Field;

    const-class v2, Lcom/explorestack/protobuf/Field$Builder;

    .line 1354
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

    .line 1341
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1341
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Field$Builder;

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

    .line 1341
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Field$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1568
    :try_start_1
    invoke-static {}, Lcom/explorestack/protobuf/Field;->access$1300()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Field;
    :try_end_b
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz p1, :cond_10

    .line 1574
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/Field;)Lcom/explorestack/protobuf/Field$Builder;

    :cond_10
    return-object p0

    :catchall_11
    move-exception p1

    goto :goto_21

    :catch_13
    move-exception p1

    .line 1570
    :try_start_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/Field;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 1571
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

    .line 1574
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/Field;)Lcom/explorestack/protobuf/Field$Builder;

    .line 1576
    :cond_26
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Field;)Lcom/explorestack/protobuf/Field$Builder;
    .registers 4

    .line 1493
    invoke-static {}, Lcom/explorestack/protobuf/Field;->getDefaultInstance()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 1494
    :cond_7
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->access$300(Lcom/explorestack/protobuf/Field;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 1495
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getKindValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Field$Builder;->setKindValue(I)Lcom/explorestack/protobuf/Field$Builder;

    .line 1497
    :cond_14
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->access$400(Lcom/explorestack/protobuf/Field;)I

    move-result v0

    if-eqz v0, :cond_21

    .line 1498
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getCardinalityValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Field$Builder;->setCardinalityValue(I)Lcom/explorestack/protobuf/Field$Builder;

    .line 1500
    :cond_21
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getNumber()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 1501
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Field$Builder;->setNumber(I)Lcom/explorestack/protobuf/Field$Builder;

    .line 1503
    :cond_2e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 1504
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->access$600(Lcom/explorestack/protobuf/Field;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    .line 1505
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1507
    :cond_41
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    .line 1508
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->access$700(Lcom/explorestack/protobuf/Field;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    .line 1509
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1511
    :cond_54
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getOneofIndex()I

    move-result v0

    if-eqz v0, :cond_61

    .line 1512
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getOneofIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Field$Builder;->setOneofIndex(I)Lcom/explorestack/protobuf/Field$Builder;

    .line 1514
    :cond_61
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getPacked()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1515
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getPacked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Field$Builder;->setPacked(Z)Lcom/explorestack/protobuf/Field$Builder;

    .line 1517
    :cond_6e
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_a1

    .line 1518
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->access$1000(Lcom/explorestack/protobuf/Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_db

    .line 1519
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 1520
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->access$1000(Lcom/explorestack/protobuf/Field;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    .line 1521
    iget v0, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    goto :goto_9d

    .line 1523
    :cond_91
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->ensureOptionsIsMutable()V

    .line 1524
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->access$1000(Lcom/explorestack/protobuf/Field;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1526
    :goto_9d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_db

    .line 1529
    :cond_a1
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->access$1000(Lcom/explorestack/protobuf/Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_db

    .line 1530
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 1531
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 1532
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1533
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->access$1000(Lcom/explorestack/protobuf/Field;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Field$Builder;->options_:Ljava/util/List;

    .line 1534
    iget v1, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/Field$Builder;->bitField0_:I

    .line 1535
    sget-boolean v1, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_cf

    .line 1537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_cf
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_db

    .line 1539
    :cond_d2
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->access$1000(Lcom/explorestack/protobuf/Field;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1543
    :cond_db
    :goto_db
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getJsonName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ee

    .line 1544
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->access$1100(Lcom/explorestack/protobuf/Field;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    .line 1545
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1547
    :cond_ee
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_101

    .line 1548
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->access$1200(Lcom/explorestack/protobuf/Field;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    .line 1549
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1551
    :cond_101
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Field$Builder;

    .line 1552
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Field$Builder;
    .registers 3

    .line 1484
    instance-of v0, p1, Lcom/explorestack/protobuf/Field;

    if-eqz v0, :cond_b

    .line 1485
    check-cast p1, Lcom/explorestack/protobuf/Field;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/Field;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1

    .line 1487
    :cond_b
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1341
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1341
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Field$Builder;

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

    .line 1341
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1341
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Field$Builder;
    .registers 2

    .line 2570
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Field$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1341
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1341
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCardinalityValue(I)Lcom/explorestack/protobuf/Field$Builder;
    .registers 2

    .line 1678
    iput p1, p0, Lcom/explorestack/protobuf/Field$Builder;->cardinality_:I

    .line 1679
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Field$Builder;
    .registers 3

    .line 1458
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Field$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .line 1341
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 1341
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setKindValue(I)Lcom/explorestack/protobuf/Field$Builder;
    .registers 2

    .line 1604
    iput p1, p0, Lcom/explorestack/protobuf/Field$Builder;->kind_:I

    .line 1605
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setNumber(I)Lcom/explorestack/protobuf/Field$Builder;
    .registers 2

    .line 1753
    iput p1, p0, Lcom/explorestack/protobuf/Field$Builder;->number_:I

    .line 1754
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setOneofIndex(I)Lcom/explorestack/protobuf/Field$Builder;
    .registers 2

    .line 1995
    iput p1, p0, Lcom/explorestack/protobuf/Field$Builder;->oneofIndex_:I

    .line 1996
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setPacked(Z)Lcom/explorestack/protobuf/Field$Builder;
    .registers 2

    .line 2039
    iput-boolean p1, p0, Lcom/explorestack/protobuf/Field$Builder;->packed_:Z

    .line 2040
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Field$Builder;
    .registers 4

    .line 1474
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Field$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .line 1341
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Field$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 1341
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Field$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Field$Builder;
    .registers 2

    .line 2564
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Field$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .line 1341
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 1341
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

###### Class com.explorestack.protobuf.Field.Cardinality (com.explorestack.protobuf.Field$Cardinality)
.class public final enum Lcom/explorestack/protobuf/Field$Cardinality;
.super Ljava/lang/Enum;
.source "Field.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Cardinality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/Field$Cardinality;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/Field$Cardinality;

.field public static final enum CARDINALITY_OPTIONAL:Lcom/explorestack/protobuf/Field$Cardinality;

.field public static final CARDINALITY_OPTIONAL_VALUE:I = 0x1

.field public static final enum CARDINALITY_REPEATED:Lcom/explorestack/protobuf/Field$Cardinality;

.field public static final CARDINALITY_REPEATED_VALUE:I = 0x3

.field public static final enum CARDINALITY_REQUIRED:Lcom/explorestack/protobuf/Field$Cardinality;

.field public static final CARDINALITY_REQUIRED_VALUE:I = 0x2

.field public static final enum CARDINALITY_UNKNOWN:Lcom/explorestack/protobuf/Field$Cardinality;

.field public static final CARDINALITY_UNKNOWN_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/explorestack/protobuf/Field$Cardinality;

.field private static final VALUES:[Lcom/explorestack/protobuf/Field$Cardinality;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/explorestack/protobuf/Field$Cardinality;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 591
    new-instance v0, Lcom/explorestack/protobuf/Field$Cardinality;

    const-string v1, "CARDINALITY_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/explorestack/protobuf/Field$Cardinality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/Field$Cardinality;->CARDINALITY_UNKNOWN:Lcom/explorestack/protobuf/Field$Cardinality;

    .line 599
    new-instance v1, Lcom/explorestack/protobuf/Field$Cardinality;

    const-string v2, "CARDINALITY_OPTIONAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/explorestack/protobuf/Field$Cardinality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/Field$Cardinality;->CARDINALITY_OPTIONAL:Lcom/explorestack/protobuf/Field$Cardinality;

    .line 607
    new-instance v2, Lcom/explorestack/protobuf/Field$Cardinality;

    const-string v3, "CARDINALITY_REQUIRED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/explorestack/protobuf/Field$Cardinality;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/explorestack/protobuf/Field$Cardinality;->CARDINALITY_REQUIRED:Lcom/explorestack/protobuf/Field$Cardinality;

    .line 615
    new-instance v3, Lcom/explorestack/protobuf/Field$Cardinality;

    const-string v4, "CARDINALITY_REPEATED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/explorestack/protobuf/Field$Cardinality;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/explorestack/protobuf/Field$Cardinality;->CARDINALITY_REPEATED:Lcom/explorestack/protobuf/Field$Cardinality;

    .line 616
    new-instance v4, Lcom/explorestack/protobuf/Field$Cardinality;

    const/4 v5, 0x4

    const/4 v6, -0x1

    const-string v7, "UNRECOGNIZED"

    invoke-direct {v4, v7, v5, v6}, Lcom/explorestack/protobuf/Field$Cardinality;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/explorestack/protobuf/Field$Cardinality;->UNRECOGNIZED:Lcom/explorestack/protobuf/Field$Cardinality;

    .line 582
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/explorestack/protobuf/Field$Cardinality;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/Field$Cardinality;->$VALUES:[Lcom/explorestack/protobuf/Field$Cardinality;

    .line 690
    new-instance v0, Lcom/explorestack/protobuf/Field$Cardinality$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Field$Cardinality$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Field$Cardinality;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 714
    invoke-static {}, Lcom/explorestack/protobuf/Field$Cardinality;->values()[Lcom/explorestack/protobuf/Field$Cardinality;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/Field$Cardinality;->VALUES:[Lcom/explorestack/protobuf/Field$Cardinality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 730
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 731
    iput p3, p0, Lcom/explorestack/protobuf/Field$Cardinality;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/Field$Cardinality;
    .registers 2

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 680
    :cond_d
    sget-object p0, Lcom/explorestack/protobuf/Field$Cardinality;->CARDINALITY_REPEATED:Lcom/explorestack/protobuf/Field$Cardinality;

    return-object p0

    .line 679
    :cond_10
    sget-object p0, Lcom/explorestack/protobuf/Field$Cardinality;->CARDINALITY_REQUIRED:Lcom/explorestack/protobuf/Field$Cardinality;

    return-object p0

    .line 678
    :cond_13
    sget-object p0, Lcom/explorestack/protobuf/Field$Cardinality;->CARDINALITY_OPTIONAL:Lcom/explorestack/protobuf/Field$Cardinality;

    return-object p0

    .line 677
    :cond_16
    sget-object p0, Lcom/explorestack/protobuf/Field$Cardinality;->CARDINALITY_UNKNOWN:Lcom/explorestack/protobuf/Field$Cardinality;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 711
    invoke-static {}, Lcom/explorestack/protobuf/Field;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/explorestack/protobuf/Field$Cardinality;",
            ">;"
        }
    .end annotation

    .line 687
    sget-object v0, Lcom/explorestack/protobuf/Field$Cardinality;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/Field$Cardinality;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 668
    invoke-static {p0}, Lcom/explorestack/protobuf/Field$Cardinality;->forNumber(I)Lcom/explorestack/protobuf/Field$Cardinality;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/explorestack/protobuf/Field$Cardinality;
    .registers 3

    .line 718
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/explorestack/protobuf/Field$Cardinality;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 722
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 723
    sget-object p0, Lcom/explorestack/protobuf/Field$Cardinality;->UNRECOGNIZED:Lcom/explorestack/protobuf/Field$Cardinality;

    return-object p0

    .line 725
    :cond_14
    sget-object v0, Lcom/explorestack/protobuf/Field$Cardinality;->VALUES:[Lcom/explorestack/protobuf/Field$Cardinality;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 719
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/Field$Cardinality;
    .registers 2

    .line 582
    const-class v0, Lcom/explorestack/protobuf/Field$Cardinality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Field$Cardinality;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/Field$Cardinality;
    .registers 1

    .line 582
    sget-object v0, Lcom/explorestack/protobuf/Field$Cardinality;->$VALUES:[Lcom/explorestack/protobuf/Field$Cardinality;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/Field$Cardinality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/Field$Cardinality;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 707
    invoke-static {}, Lcom/explorestack/protobuf/Field$Cardinality;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .registers 3

    .line 654
    sget-object v0, Lcom/explorestack/protobuf/Field$Cardinality;->UNRECOGNIZED:Lcom/explorestack/protobuf/Field$Cardinality;

    if-eq p0, v0, :cond_7

    .line 658
    iget v0, p0, Lcom/explorestack/protobuf/Field$Cardinality;->value:I

    return v0

    .line 655
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .registers 3

    .line 699
    sget-object v0, Lcom/explorestack/protobuf/Field$Cardinality;->UNRECOGNIZED:Lcom/explorestack/protobuf/Field$Cardinality;

    if-eq p0, v0, :cond_17

    .line 703
    invoke-static {}, Lcom/explorestack/protobuf/Field$Cardinality;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0

    .line 700
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.explorestack.protobuf.Field.Cardinality.AnonymousClass1 (com.explorestack.protobuf.Field$Cardinality$1)
.class public final Lcom/explorestack/protobuf/Field$Cardinality$1;
.super Ljava/lang/Object;
.source "Field.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Field$Cardinality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lcom/explorestack/protobuf/Field$Cardinality;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/explorestack/protobuf/Field$Cardinality;
    .registers 2

    .line 693
    invoke-static {p1}, Lcom/explorestack/protobuf/Field$Cardinality;->forNumber(I)Lcom/explorestack/protobuf/Field$Cardinality;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .registers 2

    .line 691
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Cardinality$1;->findValueByNumber(I)Lcom/explorestack/protobuf/Field$Cardinality;

    move-result-object p1

    return-object p1
.end method

###### Class com.explorestack.protobuf.Field.Kind (com.explorestack.protobuf.Field$Kind)
.class public final enum Lcom/explorestack/protobuf/Field$Kind;
.super Ljava/lang/Enum;
.source "Field.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/Field$Kind;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/Field$Kind;

.field public static final enum TYPE_BOOL:Lcom/explorestack/protobuf/Field$Kind;

.field public static final TYPE_BOOL_VALUE:I = 0x8

.field public static final enum TYPE_BYTES:Lcom/explorestack/protobuf/Field$Kind;

.field public static final TYPE_BYTES_VALUE:I = 0xc

.field public static final enum TYPE_DOUBLE:Lcom/explorestack/protobuf/Field$Kind;

.field public static final TYPE_DOUBLE_VALUE:I = 0x1

.field public static final enum TYPE_ENUM:Lcom/explorestack/protobuf/Field$Kind;

.field public static final TYPE_ENUM_VALUE:I = 0xe

.field public static final enum TYPE_FIXED32:Lcom/explorestack/protobuf/Field$Kind;

.field public static final TYPE_FIXED32_VALUE:I = 0x7

.field public static final enum TYPE_FIXED64:Lcom/explorestack/protobuf/Field$Kind;

.field public static final TYPE_FIXED64_VALUE:I = 0x6

.field public static final enum TYPE_FLOAT:Lcom/explorestack/protobuf/Field$Kind;

.field public static final TYPE_FLOAT_VALUE:I = 0x2

.field public static final enum TYPE_GROUP:Lcom/explorestack/protobuf/Field$Kind;

.field public static final TYPE_GROUP_VALUE:I = 0xa

.field public static final enum TYPE_INT32:Lcom/explorestack/protobuf/Field$Kind;

.field public static final TYPE_INT32_VALUE:I = 0x5

.field public static final enum TYPE_INT64:Lcom/explorestack/protobuf/Field$Kind;

.field public static final TYPE_INT64_VALUE:I = 0x3

.field public static final enum TYPE_MESSAGE:Lcom/explorestack/protobuf/Field$Kind;

.field public static final TYPE_MESSAGE_VALUE:I = 0xb

.field public static final enum TYPE_SFIXED32:Lcom/explorestack/protobuf/Field$Kind;

.field public static final TYPE_SFIXED32_VALUE:I = 0xf

.field public static final enum TYPE_SFIXED64:Lcom/explorestack/protobuf/Field$Kind;

.field public static final TYPE_SFIXED64_VALUE:I = 0x10

.field public static final enum TYPE_SINT32:Lcom/explorestack/protobuf/Field$Kind;

.field public static final TYPE_SINT32_VALUE:I = 0x11

.field public static final enum TYPE_SINT64:Lcom/explorestack/protobuf/Field$Kind;

.field public static final TYPE_SINT64_VALUE:I = 0x12

.field public static final enum TYPE_STRING:Lcom/explorestack/protobuf/Field$Kind;

.field public static final TYPE_STRING_VALUE:I = 0x9

.field public static final enum TYPE_UINT32:Lcom/explorestack/protobuf/Field$Kind;

.field public static final TYPE_UINT32_VALUE:I = 0xd

.field public static final enum TYPE_UINT64:Lcom/explorestack/protobuf/Field$Kind;

.field public static final TYPE_UINT64_VALUE:I = 0x4

.field public static final enum TYPE_UNKNOWN:Lcom/explorestack/protobuf/Field$Kind;

.field public static final TYPE_UNKNOWN_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/explorestack/protobuf/Field$Kind;

.field private static final VALUES:[Lcom/explorestack/protobuf/Field$Kind;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/explorestack/protobuf/Field$Kind;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 23

    .line 174
    new-instance v1, Lcom/explorestack/protobuf/Field$Kind;

    const-string v0, "TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/explorestack/protobuf/Field$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/Field$Kind;->TYPE_UNKNOWN:Lcom/explorestack/protobuf/Field$Kind;

    .line 182
    new-instance v2, Lcom/explorestack/protobuf/Field$Kind;

    const-string v0, "TYPE_DOUBLE"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v3}, Lcom/explorestack/protobuf/Field$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/explorestack/protobuf/Field$Kind;->TYPE_DOUBLE:Lcom/explorestack/protobuf/Field$Kind;

    .line 190
    new-instance v3, Lcom/explorestack/protobuf/Field$Kind;

    const-string v0, "TYPE_FLOAT"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4, v4}, Lcom/explorestack/protobuf/Field$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/explorestack/protobuf/Field$Kind;->TYPE_FLOAT:Lcom/explorestack/protobuf/Field$Kind;

    .line 198
    new-instance v4, Lcom/explorestack/protobuf/Field$Kind;

    const-string v0, "TYPE_INT64"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5, v5}, Lcom/explorestack/protobuf/Field$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/explorestack/protobuf/Field$Kind;->TYPE_INT64:Lcom/explorestack/protobuf/Field$Kind;

    .line 206
    new-instance v5, Lcom/explorestack/protobuf/Field$Kind;

    const-string v0, "TYPE_UINT64"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6, v6}, Lcom/explorestack/protobuf/Field$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/explorestack/protobuf/Field$Kind;->TYPE_UINT64:Lcom/explorestack/protobuf/Field$Kind;

    .line 214
    new-instance v6, Lcom/explorestack/protobuf/Field$Kind;

    const-string v0, "TYPE_INT32"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7, v7}, Lcom/explorestack/protobuf/Field$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/explorestack/protobuf/Field$Kind;->TYPE_INT32:Lcom/explorestack/protobuf/Field$Kind;

    .line 222
    new-instance v7, Lcom/explorestack/protobuf/Field$Kind;

    const-string v0, "TYPE_FIXED64"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8, v8}, Lcom/explorestack/protobuf/Field$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/explorestack/protobuf/Field$Kind;->TYPE_FIXED64:Lcom/explorestack/protobuf/Field$Kind;

    .line 230
    new-instance v8, Lcom/explorestack/protobuf/Field$Kind;

    const-string v0, "TYPE_FIXED32"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9, v9}, Lcom/explorestack/protobuf/Field$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/explorestack/protobuf/Field$Kind;->TYPE_FIXED32:Lcom/explorestack/protobuf/Field$Kind;

    .line 238
    new-instance v9, Lcom/explorestack/protobuf/Field$Kind;

    const-string v0, "TYPE_BOOL"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10, v10}, Lcom/explorestack/protobuf/Field$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/explorestack/protobuf/Field$Kind;->TYPE_BOOL:Lcom/explorestack/protobuf/Field$Kind;

    .line 246
    new-instance v10, Lcom/explorestack/protobuf/Field$Kind;

    const-string v0, "TYPE_STRING"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11, v11}, Lcom/explorestack/protobuf/Field$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/explorestack/protobuf/Field$Kind;->TYPE_STRING:Lcom/explorestack/protobuf/Field$Kind;

    .line 254
    new-instance v11, Lcom/explorestack/protobuf/Field$Kind;

    const-string v0, "TYPE_GROUP"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12, v12}, Lcom/explorestack/protobuf/Field$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/explorestack/protobuf/Field$Kind;->TYPE_GROUP:Lcom/explorestack/protobuf/Field$Kind;

    .line 262
    new-instance v12, Lcom/explorestack/protobuf/Field$Kind;

    const-string v0, "TYPE_MESSAGE"

    const/16 v13, 0xb

    invoke-direct {v12, v0, v13, v13}, Lcom/explorestack/protobuf/Field$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/explorestack/protobuf/Field$Kind;->TYPE_MESSAGE:Lcom/explorestack/protobuf/Field$Kind;

    .line 270
    new-instance v13, Lcom/explorestack/protobuf/Field$Kind;

    const-string v0, "TYPE_BYTES"

    const/16 v14, 0xc

    invoke-direct {v13, v0, v14, v14}, Lcom/explorestack/protobuf/Field$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/explorestack/protobuf/Field$Kind;->TYPE_BYTES:Lcom/explorestack/protobuf/Field$Kind;

    .line 278
    new-instance v14, Lcom/explorestack/protobuf/Field$Kind;

    const-string v0, "TYPE_UINT32"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15, v15}, Lcom/explorestack/protobuf/Field$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/explorestack/protobuf/Field$Kind;->TYPE_UINT32:Lcom/explorestack/protobuf/Field$Kind;

    .line 286
    new-instance v15, Lcom/explorestack/protobuf/Field$Kind;

    const-string v0, "TYPE_ENUM"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v15, v0, v1, v1}, Lcom/explorestack/protobuf/Field$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/explorestack/protobuf/Field$Kind;->TYPE_ENUM:Lcom/explorestack/protobuf/Field$Kind;

    .line 294
    new-instance v0, Lcom/explorestack/protobuf/Field$Kind;

    const-string v1, "TYPE_SFIXED32"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lcom/explorestack/protobuf/Field$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/Field$Kind;->TYPE_SFIXED32:Lcom/explorestack/protobuf/Field$Kind;

    .line 302
    new-instance v1, Lcom/explorestack/protobuf/Field$Kind;

    const-string v2, "TYPE_SFIXED64"

    move-object/from16 v18, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0, v0}, Lcom/explorestack/protobuf/Field$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/Field$Kind;->TYPE_SFIXED64:Lcom/explorestack/protobuf/Field$Kind;

    .line 310
    new-instance v0, Lcom/explorestack/protobuf/Field$Kind;

    const-string v2, "TYPE_SINT32"

    move-object/from16 v19, v1

    const/16 v1, 0x11

    invoke-direct {v0, v2, v1, v1}, Lcom/explorestack/protobuf/Field$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/Field$Kind;->TYPE_SINT32:Lcom/explorestack/protobuf/Field$Kind;

    .line 318
    new-instance v1, Lcom/explorestack/protobuf/Field$Kind;

    const-string v2, "TYPE_SINT64"

    move-object/from16 v20, v0

    const/16 v0, 0x12

    invoke-direct {v1, v2, v0, v0}, Lcom/explorestack/protobuf/Field$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/Field$Kind;->TYPE_SINT64:Lcom/explorestack/protobuf/Field$Kind;

    .line 319
    new-instance v0, Lcom/explorestack/protobuf/Field$Kind;

    const/16 v2, 0x13

    move-object/from16 v21, v1

    const/4 v1, -0x1

    move-object/from16 v22, v3

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v2, v1}, Lcom/explorestack/protobuf/Field$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/Field$Kind;->UNRECOGNIZED:Lcom/explorestack/protobuf/Field$Kind;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v3, v22

    move-object/from16 v20, v0

    .line 165
    filled-new-array/range {v1 .. v20}, [Lcom/explorestack/protobuf/Field$Kind;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/Field$Kind;->$VALUES:[Lcom/explorestack/protobuf/Field$Kind;

    .line 528
    new-instance v0, Lcom/explorestack/protobuf/Field$Kind$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Field$Kind$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Field$Kind;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 552
    invoke-static {}, Lcom/explorestack/protobuf/Field$Kind;->values()[Lcom/explorestack/protobuf/Field$Kind;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/Field$Kind;->VALUES:[Lcom/explorestack/protobuf/Field$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 568
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 569
    iput p3, p0, Lcom/explorestack/protobuf/Field$Kind;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/Field$Kind;
    .registers 1

    packed-switch p0, :pswitch_data_3e

    const/4 p0, 0x0

    return-object p0

    .line 518
    :pswitch_5
    sget-object p0, Lcom/explorestack/protobuf/Field$Kind;->TYPE_SINT64:Lcom/explorestack/protobuf/Field$Kind;

    return-object p0

    .line 517
    :pswitch_8
    sget-object p0, Lcom/explorestack/protobuf/Field$Kind;->TYPE_SINT32:Lcom/explorestack/protobuf/Field$Kind;

    return-object p0

    .line 516
    :pswitch_b
    sget-object p0, Lcom/explorestack/protobuf/Field$Kind;->TYPE_SFIXED64:Lcom/explorestack/protobuf/Field$Kind;

    return-object p0

    .line 515
    :pswitch_e
    sget-object p0, Lcom/explorestack/protobuf/Field$Kind;->TYPE_SFIXED32:Lcom/explorestack/protobuf/Field$Kind;

    return-object p0

    .line 514
    :pswitch_11
    sget-object p0, Lcom/explorestack/protobuf/Field$Kind;->TYPE_ENUM:Lcom/explorestack/protobuf/Field$Kind;

    return-object p0

    .line 513
    :pswitch_14
    sget-object p0, Lcom/explorestack/protobuf/Field$Kind;->TYPE_UINT32:Lcom/explorestack/protobuf/Field$Kind;

    return-object p0

    .line 512
    :pswitch_17
    sget-object p0, Lcom/explorestack/protobuf/Field$Kind;->TYPE_BYTES:Lcom/explorestack/protobuf/Field$Kind;

    return-object p0

    .line 511
    :pswitch_1a
    sget-object p0, Lcom/explorestack/protobuf/Field$Kind;->TYPE_MESSAGE:Lcom/explorestack/protobuf/Field$Kind;

    return-object p0

    .line 510
    :pswitch_1d
    sget-object p0, Lcom/explorestack/protobuf/Field$Kind;->TYPE_GROUP:Lcom/explorestack/protobuf/Field$Kind;

    return-object p0

    .line 509
    :pswitch_20
    sget-object p0, Lcom/explorestack/protobuf/Field$Kind;->TYPE_STRING:Lcom/explorestack/protobuf/Field$Kind;

    return-object p0

    .line 508
    :pswitch_23
    sget-object p0, Lcom/explorestack/protobuf/Field$Kind;->TYPE_BOOL:Lcom/explorestack/protobuf/Field$Kind;

    return-object p0

    .line 507
    :pswitch_26
    sget-object p0, Lcom/explorestack/protobuf/Field$Kind;->TYPE_FIXED32:Lcom/explorestack/protobuf/Field$Kind;

    return-object p0

    .line 506
    :pswitch_29
    sget-object p0, Lcom/explorestack/protobuf/Field$Kind;->TYPE_FIXED64:Lcom/explorestack/protobuf/Field$Kind;

    return-object p0

    .line 505
    :pswitch_2c
    sget-object p0, Lcom/explorestack/protobuf/Field$Kind;->TYPE_INT32:Lcom/explorestack/protobuf/Field$Kind;

    return-object p0

    .line 504
    :pswitch_2f
    sget-object p0, Lcom/explorestack/protobuf/Field$Kind;->TYPE_UINT64:Lcom/explorestack/protobuf/Field$Kind;

    return-object p0

    .line 503
    :pswitch_32
    sget-object p0, Lcom/explorestack/protobuf/Field$Kind;->TYPE_INT64:Lcom/explorestack/protobuf/Field$Kind;

    return-object p0

    .line 502
    :pswitch_35
    sget-object p0, Lcom/explorestack/protobuf/Field$Kind;->TYPE_FLOAT:Lcom/explorestack/protobuf/Field$Kind;

    return-object p0

    .line 501
    :pswitch_38
    sget-object p0, Lcom/explorestack/protobuf/Field$Kind;->TYPE_DOUBLE:Lcom/explorestack/protobuf/Field$Kind;

    return-object p0

    .line 500
    :pswitch_3b
    sget-object p0, Lcom/explorestack/protobuf/Field$Kind;->TYPE_UNKNOWN:Lcom/explorestack/protobuf/Field$Kind;

    return-object p0

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 549
    invoke-static {}, Lcom/explorestack/protobuf/Field;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/explorestack/protobuf/Field$Kind;",
            ">;"
        }
    .end annotation

    .line 525
    sget-object v0, Lcom/explorestack/protobuf/Field$Kind;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/Field$Kind;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 491
    invoke-static {p0}, Lcom/explorestack/protobuf/Field$Kind;->forNumber(I)Lcom/explorestack/protobuf/Field$Kind;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/explorestack/protobuf/Field$Kind;
    .registers 3

    .line 556
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/explorestack/protobuf/Field$Kind;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 560
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 561
    sget-object p0, Lcom/explorestack/protobuf/Field$Kind;->UNRECOGNIZED:Lcom/explorestack/protobuf/Field$Kind;

    return-object p0

    .line 563
    :cond_14
    sget-object v0, Lcom/explorestack/protobuf/Field$Kind;->VALUES:[Lcom/explorestack/protobuf/Field$Kind;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 557
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/Field$Kind;
    .registers 2

    .line 165
    const-class v0, Lcom/explorestack/protobuf/Field$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Field$Kind;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/Field$Kind;
    .registers 1

    .line 165
    sget-object v0, Lcom/explorestack/protobuf/Field$Kind;->$VALUES:[Lcom/explorestack/protobuf/Field$Kind;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/Field$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/Field$Kind;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .registers 2

    .line 545
    invoke-static {}, Lcom/explorestack/protobuf/Field$Kind;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .registers 3

    .line 477
    sget-object v0, Lcom/explorestack/protobuf/Field$Kind;->UNRECOGNIZED:Lcom/explorestack/protobuf/Field$Kind;

    if-eq p0, v0, :cond_7

    .line 481
    iget v0, p0, Lcom/explorestack/protobuf/Field$Kind;->value:I

    return v0

    .line 478
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .registers 3

    .line 537
    sget-object v0, Lcom/explorestack/protobuf/Field$Kind;->UNRECOGNIZED:Lcom/explorestack/protobuf/Field$Kind;

    if-eq p0, v0, :cond_17

    .line 541
    invoke-static {}, Lcom/explorestack/protobuf/Field$Kind;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0

    .line 538
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.explorestack.protobuf.Field.Kind.AnonymousClass1 (com.explorestack.protobuf.Field$Kind$1)
.class public final Lcom/explorestack/protobuf/Field$Kind$1;
.super Ljava/lang/Object;
.source "Field.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Field$Kind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
        "Lcom/explorestack/protobuf/Field$Kind;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/explorestack/protobuf/Field$Kind;
    .registers 2

    .line 531
    invoke-static {p1}, Lcom/explorestack/protobuf/Field$Kind;->forNumber(I)Lcom/explorestack/protobuf/Field$Kind;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/explorestack/protobuf/Internal$EnumLite;
    .registers 2

    .line 529
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$Kind$1;->findValueByNumber(I)Lcom/explorestack/protobuf/Field$Kind;

    move-result-object p1

    return-object p1
.end method

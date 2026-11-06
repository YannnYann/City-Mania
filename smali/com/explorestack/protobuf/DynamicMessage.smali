###### Class com.explorestack.protobuf.DynamicMessage (com.explorestack.protobuf.DynamicMessage)
.class public final Lcom/explorestack/protobuf/DynamicMessage;
.super Lcom/explorestack/protobuf/AbstractMessage;
.source "DynamicMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/DynamicMessage$Builder;
    }
.end annotation


# instance fields
.field public final fields:Lcom/explorestack/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/FieldSet<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public memoizedSize:I

.field public final oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

.field public final type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field public final unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/FieldSet;[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/UnknownFieldSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            "Lcom/explorestack/protobuf/FieldSet<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;[",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Lcom/explorestack/protobuf/UnknownFieldSet;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractMessage;-><init>()V

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->memoizedSize:I

    .line 71
    iput-object p1, p0, Lcom/explorestack/protobuf/DynamicMessage;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 72
    iput-object p2, p0, Lcom/explorestack/protobuf/DynamicMessage;->fields:Lcom/explorestack/protobuf/FieldSet;

    .line 73
    iput-object p3, p0, Lcom/explorestack/protobuf/DynamicMessage;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 74
    iput-object p4, p0, Lcom/explorestack/protobuf/DynamicMessage;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-void
.end method

.method public static synthetic access$200(Lcom/explorestack/protobuf/DynamicMessage;)Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/explorestack/protobuf/DynamicMessage;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/explorestack/protobuf/DynamicMessage;)Lcom/explorestack/protobuf/FieldSet;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/explorestack/protobuf/DynamicMessage;->fields:Lcom/explorestack/protobuf/FieldSet;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/explorestack/protobuf/DynamicMessage;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/explorestack/protobuf/DynamicMessage;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/explorestack/protobuf/DynamicMessage;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/explorestack/protobuf/DynamicMessage;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    return-object p0
.end method

.method public static getDefaultInstance(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage;
    .registers 5

    .line 79
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result v0

    .line 80
    new-array v0, v0, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 81
    new-instance v1, Lcom/explorestack/protobuf/DynamicMessage;

    .line 83
    invoke-static {}, Lcom/explorestack/protobuf/FieldSet;->emptySet()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v2

    .line 85
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/explorestack/protobuf/DynamicMessage;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/FieldSet;[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/UnknownFieldSet;)V

    return-object v1
.end method

.method public static isInitialized(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/FieldSet;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            "Lcom/explorestack/protobuf/FieldSet<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;)Z"
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 228
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 229
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/FieldSet;->hasField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 236
    :cond_22
    invoke-virtual {p1}, Lcom/explorestack/protobuf/FieldSet;->isInitialized()Z

    move-result p0

    return p0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .registers 3

    .line 141
    new-instance v0, Lcom/explorestack/protobuf/DynamicMessage$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/DynamicMessage$1;)V

    return-object v0
.end method

.method private verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V
    .registers 3

    .line 304
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p1

    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-ne p1, v0, :cond_9

    return-void

    .line 305
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyOneofContainingType(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)V
    .registers 3

    .line 311
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p1

    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-ne p1, v0, :cond_9

    return-void

    .line 312
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OneofDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAllFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->getAllFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/DynamicMessage;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/explorestack/protobuf/DynamicMessage;->getDefaultInstance(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 51
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 51
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .registers 4

    .line 194
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 195
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 197
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 198
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 199
    :cond_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_25

    .line 200
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-static {p1}, Lcom/explorestack/protobuf/DynamicMessage;->getDefaultInstance(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object p1

    return-object p1

    .line 202
    :cond_25
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2a
    return-object v0
.end method

.method public getOneofFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .registers 3

    .line 182
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage;->verifyOneofContainingType(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)V

    .line 183
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DynamicMessage;",
            ">;"
        }
    .end annotation

    .line 284
    new-instance v0, Lcom/explorestack/protobuf/DynamicMessage$1;

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/DynamicMessage$1;-><init>(Lcom/explorestack/protobuf/DynamicMessage;)V

    return-object v0
.end method

.method public getRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .registers 4

    .line 216
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 217
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/FieldSet;->getRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I
    .registers 3

    .line 210
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 211
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result p1

    return p1
.end method

.method public getSerializedSize()I
    .registers 3

    .line 257
    iget v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 260
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 261
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result v0

    .line 262
    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSizeAsMessageSet()I

    move-result v1

    :goto_1e
    add-int/2addr v0, v1

    goto :goto_2d

    .line 264
    :cond_20
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->getSerializedSize()I

    move-result v0

    .line 265
    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    goto :goto_1e

    .line 268
    :goto_2d
    iput v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->memoizedSize:I

    return v0
.end method

.method public getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z
    .registers 3

    .line 188
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 189
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->hasField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1
.end method

.method public hasOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Z
    .registers 3

    .line 172
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage;->verifyOneofContainingType(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)V

    .line 173
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    move-result p1

    aget-object p1, v0, p1

    if-nez p1, :cond_f

    const/4 p1, 0x0

    return p1

    :cond_f
    const/4 p1, 0x1

    return p1
.end method

.method public isInitialized()Z
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DynamicMessage;->isInitialized(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/FieldSet;)Z

    move-result v0

    return v0
.end method

.method public newBuilderForType()Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .registers 4

    .line 274
    new-instance v0, Lcom/explorestack/protobuf/DynamicMessage$Builder;

    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/DynamicMessage$Builder;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/DynamicMessage$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 51
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage;->newBuilderForType()Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 51
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage;->newBuilderForType()Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .registers 2

    .line 279
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage;->newBuilderForType()Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 51
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage;->toBuilder()Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 51
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage;->toBuilder()Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 247
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->writeMessageSetTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 248
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeAsMessageSetTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void

    .line 250
    :cond_17
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 251
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method

###### Class com.explorestack.protobuf.DynamicMessage.AnonymousClass1 (com.explorestack.protobuf.DynamicMessage$1)
.class public Lcom/explorestack/protobuf/DynamicMessage$1;
.super Lcom/explorestack/protobuf/AbstractParser;
.source "DynamicMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/protobuf/DynamicMessage;->getParserForType()Lcom/explorestack/protobuf/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractParser<",
        "Lcom/explorestack/protobuf/DynamicMessage;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/explorestack/protobuf/DynamicMessage;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/DynamicMessage;)V
    .registers 2

    .line 284
    iput-object p1, p0, Lcom/explorestack/protobuf/DynamicMessage$1;->this$0:Lcom/explorestack/protobuf/DynamicMessage;

    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DynamicMessage;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$1;->this$0:Lcom/explorestack/protobuf/DynamicMessage;

    invoke-static {v0}, Lcom/explorestack/protobuf/DynamicMessage;->access$200(Lcom/explorestack/protobuf/DynamicMessage;)Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/DynamicMessage;->newBuilder(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    .line 291
    :try_start_a
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    :try_end_d
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_a .. :try_end_d} :catch_21
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_12

    .line 297
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object p1

    return-object p1

    :catch_12
    move-exception p1

    .line 295
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_21
    move-exception p1

    .line 293
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 284
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DynamicMessage$1;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object p1

    return-object p1
.end method

###### Class com.explorestack.protobuf.DynamicMessage.Builder (com.explorestack.protobuf.DynamicMessage$Builder)
.class public final Lcom/explorestack/protobuf/DynamicMessage$Builder;
.super Lcom/explorestack/protobuf/AbstractMessage$Builder;
.source "DynamicMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DynamicMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractMessage$Builder<",
        "Lcom/explorestack/protobuf/DynamicMessage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public fields:Lcom/explorestack/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/FieldSet<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public final oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

.field public final type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field public unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;)V
    .registers 3

    .line 326
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;-><init>()V

    .line 327
    iput-object p1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 328
    invoke-static {}, Lcom/explorestack/protobuf/FieldSet;->newFieldSet()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    .line 329
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 330
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result p1

    new-array p1, p1, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    iput-object p1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/DynamicMessage$1;)V
    .registers 3

    .line 319
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;)V

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .registers 4

    .line 587
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 588
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->ensureIsMutable()V

    .line 589
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/FieldSet;->addRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 319
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/explorestack/protobuf/DynamicMessage;
    .registers 6

    .line 378
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 386
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0

    .line 379
    :cond_b
    new-instance v0, Lcom/explorestack/protobuf/DynamicMessage;

    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    iget-object v2, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    iget-object v3, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    array-length v4, v3

    .line 383
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    iget-object v4, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/DynamicMessage;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/FieldSet;[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/UnknownFieldSet;)V

    .line 379
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->build()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->build()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/DynamicMessage;
    .registers 6

    .line 409
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getMapEntry()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 410
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 411
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isOptional()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v2, v1}, Lcom/explorestack/protobuf/FieldSet;->hasField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 412
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_46

    .line 413
    iget-object v2, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v3

    invoke-static {v3}, Lcom/explorestack/protobuf/DynamicMessage;->getDefaultInstance(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/explorestack/protobuf/FieldSet;->setField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_16

    .line 415
    :cond_46
    iget-object v2, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/explorestack/protobuf/FieldSet;->setField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_16

    .line 421
    :cond_50
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->makeImmutable()V

    .line 422
    new-instance v0, Lcom/explorestack/protobuf/DynamicMessage;

    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    iget-object v2, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    iget-object v3, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    array-length v4, v3

    .line 424
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    iget-object v4, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/DynamicMessage;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/FieldSet;[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/UnknownFieldSet;)V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->clear()Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 339
    invoke-static {}, Lcom/explorestack/protobuf/FieldSet;->newFieldSet()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    goto :goto_14

    .line 341
    :cond_f
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->clear()V

    .line 343
    :goto_14
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->clear()Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->clear()Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .registers 5

    .line 552
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 553
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->ensureIsMutable()V

    .line 554
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 556
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    move-result v0

    .line 557
    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_19

    const/4 v2, 0x0

    .line 558
    aput-object v2, v1, v0

    .line 561
    :cond_19
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->clearField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 319
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 319
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .registers 3

    .line 487
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->verifyOneofContainingType(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)V

    .line 488
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    move-result p1

    aget-object p1, v0, p1

    if-eqz p1, :cond_10

    .line 490
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    :cond_10
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 319
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->clone()Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->clone()Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .registers 6

    .line 430
    new-instance v0, Lcom/explorestack/protobuf/DynamicMessage$Builder;

    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;)V

    .line 431
    iget-object v1, v0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    iget-object v2, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/FieldSet;->mergeFrom(Lcom/explorestack/protobuf/FieldSet;)V

    .line 432
    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    .line 433
    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    iget-object v2, v0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->clone()Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .registers 2

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->clone()Lcom/explorestack/protobuf/DynamicMessage$Builder;

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

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->clone()Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final ensureEnumValueDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V
    .registers 4

    .line 645
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 646
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 647
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->ensureSingularEnumValueDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    goto :goto_c

    :cond_1a
    return-void

    .line 650
    :cond_1b
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->ensureSingularEnumValueDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    return-void
.end method

.method public final ensureIsMutable()V
    .registers 2

    .line 655
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 656
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->clone()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    :cond_10
    return-void
.end method

.method public final ensureSingularEnumValueDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V
    .registers 3

    .line 627
    invoke-static {p2}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    instance-of p1, p2, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    if-eqz p1, :cond_8

    return-void

    .line 629
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DynamicMessage should use EnumValueDescriptor to set Enum Value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAllFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->getAllFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/DynamicMessage;
    .registers 2

    .line 449
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/explorestack/protobuf/DynamicMessage;->getDefaultInstance(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .registers 2

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 2

    .line 444
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .registers 4

    .line 503
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 504
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 506
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 507
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 508
    :cond_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_25

    .line 509
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-static {p1}, Lcom/explorestack/protobuf/DynamicMessage;->getDefaultInstance(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object p1

    return-object p1

    .line 511
    :cond_25
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2a
    return-object v0
.end method

.method public getFieldBuilder(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 663
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getFieldBuilder() called on a dynamic message type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getOneofFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .registers 3

    .line 481
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->verifyOneofContainingType(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)V

    .line 482
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .registers 4

    .line 573
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 574
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/FieldSet;->getRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldBuilder(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 670
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getRepeatedFieldBuilder() called on a dynamic message type."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRepeatedFieldCount(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I
    .registers 3

    .line 567
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 568
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result p1

    return p1
.end method

.method public getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .registers 2

    .line 595
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z
    .registers 3

    .line 497
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 498
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->hasField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1
.end method

.method public hasOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Z
    .registers 3

    .line 471
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->verifyOneofContainingType(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)V

    .line 472
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    move-result p1

    aget-object p1, v0, p1

    if-nez p1, :cond_f

    const/4 p1, 0x0

    return p1

    :cond_f
    const/4 p1, 0x1

    return p1
.end method

.method public isInitialized()Z
    .registers 3

    .line 439
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DynamicMessage;->isInitialized(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/FieldSet;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 319
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .registers 5

    .line 349
    instance-of v0, p1, Lcom/explorestack/protobuf/DynamicMessage;

    if-eqz v0, :cond_67

    .line 351
    check-cast p1, Lcom/explorestack/protobuf/DynamicMessage;

    .line 352
    invoke-static {p1}, Lcom/explorestack/protobuf/DynamicMessage;->access$200(Lcom/explorestack/protobuf/DynamicMessage;)Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_5f

    .line 356
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->ensureIsMutable()V

    .line 357
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-static {p1}, Lcom/explorestack/protobuf/DynamicMessage;->access$300(Lcom/explorestack/protobuf/DynamicMessage;)Lcom/explorestack/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/FieldSet;->mergeFrom(Lcom/explorestack/protobuf/FieldSet;)V

    .line 358
    invoke-static {p1}, Lcom/explorestack/protobuf/DynamicMessage;->access$400(Lcom/explorestack/protobuf/DynamicMessage;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    const/4 v0, 0x0

    .line 359
    :goto_22
    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    array-length v2, v1

    if-ge v0, v2, :cond_5e

    .line 360
    aget-object v2, v1, v0

    if-nez v2, :cond_34

    .line 361
    invoke-static {p1}, Lcom/explorestack/protobuf/DynamicMessage;->access$500(Lcom/explorestack/protobuf/DynamicMessage;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    goto :goto_5b

    .line 363
    :cond_34
    invoke-static {p1}, Lcom/explorestack/protobuf/DynamicMessage;->access$500(Lcom/explorestack/protobuf/DynamicMessage;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    aget-object v1, v1, v0

    .line 364
    invoke-static {p1}, Lcom/explorestack/protobuf/DynamicMessage;->access$500(Lcom/explorestack/protobuf/DynamicMessage;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_5b

    .line 365
    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    iget-object v2, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/FieldSet;->clearField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 366
    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-static {p1}, Lcom/explorestack/protobuf/DynamicMessage;->access$500(Lcom/explorestack/protobuf/DynamicMessage;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    :cond_5b
    :goto_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_5e
    return-object p0

    .line 353
    :cond_5f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 372
    :cond_67
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DynamicMessage$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 319
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 319
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .registers 3

    .line 606
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 607
    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 319
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public newBuilderForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .registers 4

    .line 459
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 461
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_15

    .line 466
    new-instance v0, Lcom/explorestack/protobuf/DynamicMessage$Builder;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;)V

    return-object v0

    .line 462
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newBuilderForField is only valid for fields with message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic newBuilderForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 319
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->newBuilderForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .registers 6

    .line 519
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 520
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->ensureIsMutable()V

    .line 526
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_11

    .line 527
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->ensureEnumValueDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    .line 529
    :cond_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 531
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    move-result v0

    .line 532
    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    aget-object v1, v1, v0

    if-eqz v1, :cond_28

    if-eq v1, p1, :cond_28

    .line 534
    iget-object v2, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v2, v1}, Lcom/explorestack/protobuf/FieldSet;->clearField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 536
    :cond_28
    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    aput-object p1, v1, v0

    goto :goto_57

    .line 537
    :cond_2d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getSyntax()Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO3:Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne v0, v1, :cond_57

    .line 538
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_57

    .line 539
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_57

    .line 540
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 542
    iget-object p2, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/FieldSet;->clearField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)V

    return-object p0

    .line 546
    :cond_57
    :goto_57
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/FieldSet;->setField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 3

    .line 319
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .registers 5

    .line 579
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 580
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->ensureIsMutable()V

    .line 581
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/explorestack/protobuf/FieldSet;->setRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 4

    .line 319
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .registers 2

    .line 600
    iput-object p1, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .registers 2

    .line 319
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V
    .registers 3

    .line 613
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p1

    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-ne p1, v0, :cond_9

    return-void

    .line 614
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final verifyOneofContainingType(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)V
    .registers 3

    .line 620
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p1

    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-ne p1, v0, :cond_9

    return-void

    .line 621
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OneofDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

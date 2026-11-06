###### Class com.explorestack.protobuf.LazyFieldLite (com.explorestack.protobuf.LazyFieldLite)
.class public Lcom/explorestack/protobuf/LazyFieldLite;
.super Ljava/lang/Object;
.source "LazyFieldLite.java"


# static fields
.field public static final EMPTY_REGISTRY:Lcom/explorestack/protobuf/ExtensionRegistryLite;


# instance fields
.field public delayedBytes:Lcom/explorestack/protobuf/ByteString;

.field public extensionRegistry:Lcom/explorestack/protobuf/ExtensionRegistryLite;

.field public volatile memoizedBytes:Lcom/explorestack/protobuf/ByteString;

.field public volatile value:Lcom/explorestack/protobuf/MessageLite;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    invoke-static {}, Lcom/explorestack/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/explorestack/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/LazyFieldLite;->EMPTY_REGISTRY:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/ByteString;)V
    .registers 3

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/LazyFieldLite;->checkArguments(Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/ByteString;)V

    .line 120
    iput-object p1, p0, Lcom/explorestack/protobuf/LazyFieldLite;->extensionRegistry:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    .line 121
    iput-object p2, p0, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    return-void
.end method

.method public static checkArguments(Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/ByteString;)V
    .registers 2

    if-eqz p0, :cond_d

    if-eqz p1, :cond_5

    return-void

    .line 438
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "found null ByteString"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 435
    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "found null ExtensionRegistry"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public ensureInitialized(Lcom/explorestack/protobuf/MessageLite;)V
    .registers 5

    .line 406
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    if-eqz v0, :cond_5

    goto :goto_35

    .line 409
    :cond_5
    monitor-enter p0

    .line 410
    :try_start_6
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    if-eqz v0, :cond_e

    .line 411
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception p1

    goto :goto_36

    .line 414
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    if-eqz v0, :cond_27

    .line 417
    invoke-interface {p1}, Lcom/explorestack/protobuf/MessageLite;->getParserForType()Lcom/explorestack/protobuf/Parser;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    iget-object v2, p0, Lcom/explorestack/protobuf/LazyFieldLite;->extensionRegistry:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    invoke-interface {v0, v1, v2}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/MessageLite;

    .line 418
    iput-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    .line 419
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    iput-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    goto :goto_34

    .line 421
    :cond_27
    iput-object p1, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    .line 422
    sget-object v0, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    iput-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;
    :try_end_2d
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_2d} :catch_2e
    .catchall {:try_start_e .. :try_end_2d} :catchall_c

    goto :goto_34

    .line 427
    :catch_2e
    :try_start_2e
    iput-object p1, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    .line 428
    sget-object p1, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    iput-object p1, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    .line 430
    :goto_34
    monitor-exit p0

    :goto_35
    return-void

    :goto_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_c

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 143
    :cond_4
    instance-of v0, p1, Lcom/explorestack/protobuf/LazyFieldLite;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 147
    :cond_a
    check-cast p1, Lcom/explorestack/protobuf/LazyFieldLite;

    .line 153
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    .line 154
    iget-object v1, p1, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    if-nez v0, :cond_21

    if-nez v1, :cond_21

    .line 156
    invoke-virtual {p0}, Lcom/explorestack/protobuf/LazyFieldLite;->toByteString()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1}, Lcom/explorestack/protobuf/LazyFieldLite;->toByteString()Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_21
    if-eqz v0, :cond_2a

    if-eqz v1, :cond_2a

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2a
    if-eqz v0, :cond_39

    .line 160
    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/LazyFieldLite;->getValue(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 162
    :cond_39
    invoke-interface {v1}, Lcom/explorestack/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/LazyFieldLite;->getValue(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getSerializedSize()I
    .registers 2

    .line 357
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    if-eqz v0, :cond_b

    .line 358
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    return v0

    .line 359
    :cond_b
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    if-eqz v0, :cond_14

    .line 360
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    return v0

    .line 361
    :cond_14
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    if-eqz v0, :cond_1f

    .line 362
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public getValue(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 223
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/LazyFieldLite;->ensureInitialized(Lcom/explorestack/protobuf/MessageLite;)V

    .line 224
    iget-object p1, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    return-object p1
.end method

.method public hashCode()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public setValue(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite;
    .registers 4

    .line 234
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    const/4 v1, 0x0

    .line 235
    iput-object v1, p0, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    .line 236
    iput-object v1, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    .line 237
    iput-object p1, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    return-object v0
.end method

.method public toByteString()Lcom/explorestack/protobuf/ByteString;
    .registers 2

    .line 370
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    if-eqz v0, :cond_7

    .line 371
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    return-object v0

    .line 375
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->delayedBytes:Lcom/explorestack/protobuf/ByteString;

    if-eqz v0, :cond_c

    return-object v0

    .line 378
    :cond_c
    monitor-enter p0

    .line 379
    :try_start_d
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    if-eqz v0, :cond_17

    .line 380
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    goto :goto_2c

    .line 382
    :cond_17
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    if-nez v0, :cond_20

    .line 383
    sget-object v0, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    iput-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    goto :goto_28

    .line 385
    :cond_20
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->value:Lcom/explorestack/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageLite;->toByteString()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    .line 387
    :goto_28
    iget-object v0, p0, Lcom/explorestack/protobuf/LazyFieldLite;->memoizedBytes:Lcom/explorestack/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    .line 388
    :goto_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_15

    throw v0
.end method

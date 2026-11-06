###### Class com.google.crypto.tink.shaded.protobuf.LazyFieldLite (com.google.crypto.tink.shaded.protobuf.LazyFieldLite)
.class public Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;
.super Ljava/lang/Object;
.source "LazyFieldLite.java"


# instance fields
.field public volatile corrupted:Z

.field public delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

.field public extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

.field public volatile memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

.field public volatile value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ensureInitialized(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultInstance"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-eqz v0, :cond_5

    goto :goto_38

    .line 387
    :cond_5
    monitor-enter p0

    .line 388
    :try_start_6
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-eqz v0, :cond_e

    .line 389
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception p1

    goto :goto_39

    .line 392
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_27

    .line 395
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    invoke-interface {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/Parser;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 396
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 397
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    goto :goto_37

    .line 399
    :cond_27
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 400
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    :try_end_2d
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_2d} :catch_2e
    .catchall {:try_start_e .. :try_end_2d} :catchall_c

    goto :goto_37

    :catch_2e
    const/4 v0, 0x1

    .line 405
    :try_start_2f
    iput-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->corrupted:Z

    .line 406
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 407
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 409
    :goto_37
    monitor-exit p0

    :goto_38
    return-void

    :goto_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_c

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 121
    :cond_4
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 125
    :cond_a
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;

    .line 131
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 132
    iget-object v1, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-nez v0, :cond_21

    if-nez v1, :cond_21

    .line 134
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_21
    if-eqz v0, :cond_2a

    if-eqz v1, :cond_2a

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2a
    if-eqz v0, :cond_39

    .line 138
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageLiteOrBuilder;->getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->getValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 140
    :cond_39
    invoke-interface {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageLiteOrBuilder;->getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->getValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getSerializedSize()I
    .registers 2

    .line 335
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_b

    .line 336
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v0

    return v0

    .line 337
    :cond_b
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_14

    .line 338
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v0

    return v0

    .line 339
    :cond_14
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-eqz v0, :cond_1f

    .line 340
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public getValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultInstance"
        }
    .end annotation

    .line 201
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->ensureInitialized(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V

    .line 202
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    return-object p1
.end method

.method public hashCode()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public setValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    const/4 v1, 0x0

    .line 213
    iput-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 214
    iput-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 215
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    return-object v0
.end method

.method public toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2

    .line 348
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_7

    .line 349
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0

    .line 353
    :cond_7
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_c

    return-object v0

    .line 356
    :cond_c
    monitor-enter p0

    .line 357
    :try_start_d
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_17

    .line 358
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    goto :goto_2c

    .line 360
    :cond_17
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-nez v0, :cond_20

    .line 361
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    goto :goto_28

    .line 363
    :cond_20
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 365
    :goto_28
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    .line 366
    :goto_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_15

    throw v0
.end method

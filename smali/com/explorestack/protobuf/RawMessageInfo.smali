###### Class com.explorestack.protobuf.RawMessageInfo (com.explorestack.protobuf.RawMessageInfo)
.class public final Lcom/explorestack/protobuf/RawMessageInfo;
.super Ljava/lang/Object;
.source "RawMessageInfo.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageInfo;


# instance fields
.field public final defaultInstance:Lcom/explorestack/protobuf/MessageLite;

.field public final flags:I

.field public final info:Ljava/lang/String;

.field public final objects:[Ljava/lang/Object;


# virtual methods
.method public getDefaultInstance()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/explorestack/protobuf/RawMessageInfo;->defaultInstance:Lcom/explorestack/protobuf/MessageLite;

    return-object v0
.end method

.method public getObjects()[Ljava/lang/Object;
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/explorestack/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    return-object v0
.end method

.method public getStringInfo()Ljava/lang/String;
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/explorestack/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getSyntax()Lcom/explorestack/protobuf/ProtoSyntax;
    .registers 3

    .line 238
    iget v0, p0, Lcom/explorestack/protobuf/RawMessageInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    sget-object v0, Lcom/explorestack/protobuf/ProtoSyntax;->PROTO2:Lcom/explorestack/protobuf/ProtoSyntax;

    return-object v0

    :cond_9
    sget-object v0, Lcom/explorestack/protobuf/ProtoSyntax;->PROTO3:Lcom/explorestack/protobuf/ProtoSyntax;

    return-object v0
.end method

.method public isMessageSetWireFormat()Z
    .registers 3

    .line 243
    iget v0, p0, Lcom/explorestack/protobuf/RawMessageInfo;->flags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

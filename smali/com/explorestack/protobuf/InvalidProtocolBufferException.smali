###### Class com.explorestack.protobuf.InvalidProtocolBufferException (com.explorestack.protobuf.InvalidProtocolBufferException)
.class public Lcom/explorestack/protobuf/InvalidProtocolBufferException;
.super Ljava/io/IOException;
.source "InvalidProtocolBufferException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x166db9773d0dffacL


# instance fields
.field private unfinishedMessage:Lcom/explorestack/protobuf/MessageLite;

.field private wasThrownFromInputStream:Z


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .registers 3

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lcom/explorestack/protobuf/MessageLite;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lcom/explorestack/protobuf/MessageLite;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;)V
    .registers 3

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lcom/explorestack/protobuf/MessageLite;

    return-void
.end method

.method public static invalidEndTag()Lcom/explorestack/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 129
    new-instance v0, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static invalidTag()Lcom/explorestack/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 125
    new-instance v0, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static invalidUtf8()Lcom/explorestack/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 164
    new-instance v0, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .registers 2

    .line 134
    new-instance v0, Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static malformedVarint()Lcom/explorestack/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 121
    new-instance v0, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static negativeSize()Lcom/explorestack/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 115
    new-instance v0, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static parseFailure()Lcom/explorestack/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 160
    new-instance v0, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    const-string v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static recursionLimitExceeded()Lcom/explorestack/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 148
    new-instance v0, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static sizeLimitExceeded()Lcom/explorestack/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 154
    new-instance v0, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 107
    new-instance v0, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getThrownFromInputStream()Z
    .registers 2

    .line 95
    iget-boolean v0, p0, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->wasThrownFromInputStream:Z

    return v0
.end method

.method public getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lcom/explorestack/protobuf/MessageLite;

    return-object v0
.end method

.method public setThrownFromInputStream()V
    .registers 2

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->wasThrownFromInputStream:Z

    return-void
.end method

.method public setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lcom/explorestack/protobuf/MessageLite;

    return-object p0
.end method

.method public unwrapIOException()Ljava/io/IOException;
    .registers 2

    .line 103
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0

    :cond_f
    return-object p0
.end method

###### Class com.explorestack.protobuf.InvalidProtocolBufferException.InvalidWireTypeException (com.explorestack.protobuf.InvalidProtocolBufferException$InvalidWireTypeException)
.class public Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
.super Lcom/explorestack/protobuf/InvalidProtocolBufferException;
.source "InvalidProtocolBufferException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/InvalidProtocolBufferException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidWireTypeException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2d92b8a3b8283743L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 143
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-void
.end method

###### Class ads_mobile_sdk.xj (ads_mobile_sdk.xj)
.class public final Lads_mobile_sdk/xj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/wj;


# instance fields
.field public final a:Ljava/nio/channels/FileChannel;

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;JJ)V
    .registers 6

    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    iput-object p1, p0, Lads_mobile_sdk/xj;->a:Ljava/nio/channels/FileChannel;

    .line 1026
    iput-wide p2, p0, Lads_mobile_sdk/xj;->b:J

    .line 1027
    iput-wide p4, p0, Lads_mobile_sdk/xj;->c:J

    return-void
.end method


# virtual methods
.method public final a([Ljava/security/MessageDigest;JI)V
    .registers 13

    .line 1044
    iget-wide v0, p0, Lads_mobile_sdk/xj;->b:J

    add-long v4, v0, p2

    .line 1046
    iget-object v2, p0, Lads_mobile_sdk/xj;->a:Ljava/nio/channels/FileChannel;

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    int-to-long v6, p4

    .line 1047
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p2

    .line 1048
    invoke-virtual {p2}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    .line 1049
    array-length p3, p1

    const/4 p4, 0x0

    move v0, p4

    :goto_13
    if-ge v0, p3, :cond_20

    aget-object v1, p1, v0

    .line 1050
    invoke-virtual {p2, p4}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1051
    invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_20
    return-void
.end method

.method public final size()J
    .registers 3

    .line 1032
    iget-wide v0, p0, Lads_mobile_sdk/xj;->c:J

    return-wide v0
.end method

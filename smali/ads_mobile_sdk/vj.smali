###### Class ads_mobile_sdk.vj (ads_mobile_sdk.vj)
.class public final Lads_mobile_sdk/vj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/wj;


# instance fields
.field public final a:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 1066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1068
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/vj;->a:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final a([Ljava/security/MessageDigest;JI)V
    .registers 7

    .line 1089
    iget-object v0, p0, Lads_mobile_sdk/vj;->a:Ljava/nio/ByteBuffer;

    monitor-enter v0

    .line 1090
    :try_start_3
    iget-object v1, p0, Lads_mobile_sdk/vj;->a:Ljava/nio/ByteBuffer;

    long-to-int p2, p2

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1091
    iget-object p3, p0, Lads_mobile_sdk/vj;->a:Ljava/nio/ByteBuffer;

    add-int/2addr p2, p4

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1092
    iget-object p2, p0, Lads_mobile_sdk/vj;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 1093
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_27

    .line 1095
    array-length p3, p1

    const/4 p4, 0x0

    move v0, p4

    :goto_19
    if-ge v0, p3, :cond_26

    aget-object v1, p1, v0

    .line 1098
    invoke-virtual {p2, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1099
    invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_26
    return-void

    :catchall_27
    move-exception p1

    .line 1100
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public final size()J
    .registers 3

    .line 1073
    iget-object v0, p0, Lads_mobile_sdk/vj;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

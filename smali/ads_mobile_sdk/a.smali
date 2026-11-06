###### Class ads_mobile_sdk.a (ads_mobile_sdk.a)
.class public final Lads_mobile_sdk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/security/MessageDigest;

.field public final b:Lads_mobile_sdk/ts3;

.field public final c:Ljava/lang/Object;

.field public d:Z

.field public e:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ts3;)V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/a;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lads_mobile_sdk/a;->d:Z

    .line 80
    iput-object p1, p0, Lads_mobile_sdk/a;->b:Lads_mobile_sdk/ts3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[B)Lads_mobile_sdk/ai;
    .registers 11

    .line 724
    invoke-static {}, Lads_mobile_sdk/bi;->v()Lads_mobile_sdk/ai;

    move-result-object v0

    .line 726
    invoke-virtual {p0, p2}, Lads_mobile_sdk/a;->a([B)[B

    move-result-object v1

    invoke-static {v1}, Lads_mobile_sdk/du;->a([B)Lads_mobile_sdk/du;

    move-result-object v1

    invoke-virtual {v0, v1}, Lads_mobile_sdk/ai;->b(Lads_mobile_sdk/du;)V

    .line 727
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    div-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, 0x1

    .line 728
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_1d
    if-ge v4, v1, :cond_32

    mul-int/lit16 v5, v4, 0xff

    .line 732
    array-length v6, p2

    add-int/lit16 v7, v5, 0xff

    if-le v6, v7, :cond_27

    goto :goto_28

    .line 734
    :cond_27
    array-length v7, p2

    .line 735
    :goto_28
    invoke-static {p2, v5, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 736
    :cond_32
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_36
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 738
    invoke-virtual {p0, v1, p1, v3}, Lads_mobile_sdk/a;->a([BLjava/lang/String;Z)[B

    move-result-object v1

    .line 739
    invoke-static {v1}, Lads_mobile_sdk/du;->a([B)Lads_mobile_sdk/du;

    move-result-object v1

    invoke-virtual {v0, v1}, Lads_mobile_sdk/ai;->a(Lads_mobile_sdk/du;)Lads_mobile_sdk/ai;

    goto :goto_36

    :cond_4e
    return-object v0
.end method

.method public final a(Lads_mobile_sdk/fh;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 719
    :try_start_0
    invoke-virtual {p1}, Lads_mobile_sdk/f;->c()[B

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lads_mobile_sdk/a;->a(Ljava/lang/String;[B)Lads_mobile_sdk/ai;

    move-result-object p1

    .line 720
    invoke-virtual {p1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bi;

    invoke-virtual {p1}, Lads_mobile_sdk/f;->c()[B

    move-result-object p1

    const/16 v0, 0xb

    .line 721
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_18} :catch_19

    return-object p1

    .line 722
    :catch_19
    sget-object p1, Lads_mobile_sdk/ug;->b:Lads_mobile_sdk/ug;

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/a;->a(Lads_mobile_sdk/ug;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/ug;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 968
    invoke-static {}, Lads_mobile_sdk/fh;->D()Lads_mobile_sdk/xf;

    move-result-object v0

    .line 969
    iget p1, p1, Lads_mobile_sdk/ug;->a:I

    int-to-long v1, p1

    .line 970
    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/xf;->t(J)Lads_mobile_sdk/xf;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/fh;

    .line 971
    invoke-virtual {p1}, Lads_mobile_sdk/f;->c()[B

    move-result-object p1

    const/4 v0, 0x1

    .line 973
    invoke-virtual {p0, p1, p2, v0}, Lads_mobile_sdk/a;->a([BLjava/lang/String;Z)[B

    move-result-object p1

    const/16 p2, 0xb

    .line 974
    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .registers 2

    .line 1049
    monitor-enter p0

    .line 1050
    :try_start_1
    iget-boolean v0, p0, Lads_mobile_sdk/a;->d:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    monitor-exit p0

    if-nez v0, :cond_e

    .line 1051
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0, v0}, Lads_mobile_sdk/a;->a(Ljava/security/SecureRandom;)V

    :cond_e
    return-void

    :catchall_f
    move-exception v0

    .line 1053
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/security/SecureRandom;)V
    .registers 6

    monitor-enter p0

    .line 1135
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/a;->b:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->J:Lads_mobile_sdk/lq0;

    .line 1136
    new-instance v2, Lads_mobile_sdk/qr3;

    .line 1137
    iget-object v3, v0, Lads_mobile_sdk/ts3;->b:Lads_mobile_sdk/tx;

    .line 1138
    iget-object v0, v0, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    invoke-direct {v2, v1, v3, v0}, Lads_mobile_sdk/qr3;-><init>(Lads_mobile_sdk/lq0;Lads_mobile_sdk/tx;Lads_mobile_sdk/qt1;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_31

    .line 1139
    :try_start_e
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->b()V

    .line 1140
    iput-object p1, p0, Lads_mobile_sdk/a;->e:Ljava/security/SecureRandom;

    .line 1141
    const-string p1, "MD5"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/a;->a:Ljava/security/MessageDigest;

    const/4 p1, 0x1

    .line 1142
    iput-boolean p1, p0, Lads_mobile_sdk/a;->d:Z
    :try_end_1e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_1e} :catch_21
    .catchall {:try_start_e .. :try_end_1e} :catchall_1f

    goto :goto_2c

    :catchall_1f
    move-exception p1

    goto :goto_23

    :catch_21
    move-exception p1

    goto :goto_29

    .line 1154
    :goto_23
    :try_start_23
    invoke-virtual {v2, p1}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    .line 1155
    throw p1

    :catchall_27
    move-exception p1

    goto :goto_33

    .line 1156
    :goto_29
    invoke-virtual {v2, p1}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_27

    .line 1153
    :goto_2c
    :try_start_2c
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->a()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_31

    .line 1156
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    goto :goto_37

    .line 1162
    :goto_33
    :try_start_33
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->a()V

    .line 1163
    throw p1

    :goto_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_31

    throw p1
.end method

.method public final a([B)[B
    .registers 4

    .line 236
    iget-object v0, p0, Lads_mobile_sdk/a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_3
    iget-object v1, p0, Lads_mobile_sdk/a;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 238
    iget-object v1, p0, Lads_mobile_sdk/a;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 239
    iget-object p1, p0, Lads_mobile_sdk/a;->a:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_15
    move-exception p1

    .line 240
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public final a([BLjava/lang/String;Z)[B
    .registers 13

    const/16 v0, 0xff

    if-eqz p3, :cond_7

    const/16 v1, 0xef

    goto :goto_8

    :cond_7
    move v1, v0

    .line 427
    :goto_8
    array-length v2, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gt v2, v1, :cond_f

    move v2, v3

    goto :goto_10

    :cond_f
    move v2, v4

    :goto_10
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    add-int/lit8 v2, v1, 0x1

    .line 429
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v5, p1

    int-to-byte v5, v5

    .line 430
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 431
    array-length v5, p1

    if-lt v5, v1, :cond_23

    goto :goto_37

    .line 435
    :cond_23
    array-length v5, p1

    sub-int/2addr v1, v5

    new-array v5, v1, [B

    .line 436
    iget-object v6, p0, Lads_mobile_sdk/a;->e:Ljava/security/SecureRandom;

    invoke-virtual {v6, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 437
    array-length v6, p1

    add-int/2addr v6, v1

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    .line 438
    array-length p1, p1

    invoke-static {v5, v4, v6, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v6

    .line 439
    :goto_37
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 440
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/16 v1, 0x100

    if-eqz p3, :cond_57

    .line 444
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 445
    invoke-virtual {p0, p1}, Lads_mobile_sdk/a;->a([B)[B

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 446
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 447
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 450
    :cond_57
    new-array p3, v1, [B

    .line 451
    new-instance v2, Lads_mobile_sdk/ep0;

    invoke-direct {v2}, Lads_mobile_sdk/ep0;-><init>()V

    .line 452
    iget-object v2, v2, Lads_mobile_sdk/ep0;->K2:[Lads_mobile_sdk/ro0;

    array-length v5, v2

    move v6, v4

    :goto_62
    if-ge v6, v5, :cond_6c

    aget-object v7, v2, v6

    invoke-interface {v7, p1, p3}, Lads_mobile_sdk/ro0;->a([B[B)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_62

    .line 453
    :cond_6c
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b2

    .line 454
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x20

    if-le p1, v2, :cond_85

    .line 455
    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    goto :goto_8b

    .line 456
    :cond_85
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 459
    :goto_8b
    new-instance p2, Lads_mobile_sdk/c;

    invoke-direct {p2, p1}, Lads_mobile_sdk/c;-><init>([B)V

    move p1, v4

    move v2, p1

    :goto_92
    if-ge v4, v1, :cond_b2

    add-int/2addr p1, v3

    and-int/2addr p1, v0

    .line 460
    iget-object v5, p2, Lads_mobile_sdk/c;->a:[B

    aget-byte v6, v5, p1

    add-int/2addr v2, v6

    and-int/2addr v2, v0

    .line 463
    aget-byte v7, v5, v2

    aput-byte v7, v5, p1

    .line 464
    aput-byte v6, v5, v2

    .line 466
    aget-byte v7, p3, v4

    aget-byte v8, v5, p1

    add-int/2addr v8, v6

    and-int/lit16 v6, v8, 0xff

    aget-byte v5, v5, v6

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_92

    :cond_b2
    return-object p3
.end method

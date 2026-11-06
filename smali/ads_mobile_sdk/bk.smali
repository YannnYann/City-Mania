###### Class ads_mobile_sdk.bk (ads_mobile_sdk.bk)
.class public abstract Lads_mobile_sdk/bk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(II)I
    .registers 5

    .line 646
    invoke-static {p0}, Lads_mobile_sdk/bk;->b(I)I

    move-result p0

    .line 647
    invoke-static {p1}, Lads_mobile_sdk/bk;->b(I)I

    move-result p1

    const-string v0, "Unknown digestAlgorithm2: "

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2c

    if-ne p0, v1, :cond_20

    if-eq p1, v2, :cond_1f

    if-ne p1, v1, :cond_15

    goto :goto_3c

    .line 648
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 649
    invoke-static {v0, p1}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 650
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    return v2

    .line 654
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 655
    const-string v0, "Unknown digestAlgorithm1: "

    invoke-static {v0, p0}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 656
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2c
    if-eq p1, v2, :cond_3c

    if-ne p1, v1, :cond_32

    const/4 p0, -0x1

    return p0

    .line 657
    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 658
    invoke-static {v0, p1}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 659
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3c
    :goto_3c
    const/4 p0, 0x0

    return p0
.end method

.method public static a(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    .line 3633
    const-string p0, "SHA-512"

    return-object p0

    .line 3635
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3636
    const-string v1, "Unknown content digest algorthm: "

    invoke-static {v1, p0}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 4338
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4339
    :cond_15
    const-string p0, "SHA-256"

    return-object p0
.end method

.method public static a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 5

    .line 5180
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_40

    .line 5185
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-ltz v0, :cond_38

    .line 5188
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_18

    .line 5192
    invoke-static {p0, v0}, Lads_mobile_sdk/bk;->a(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 5193
    :cond_18
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Length-prefixed field longer than remaining buffer. Field length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remaining: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5194
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5195
    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Negative length"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5196
    :cond_40
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remaining buffer too short to contain length of length-prefixed field. Remaining: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5198
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .registers 5

    if-ltz p1, :cond_2f

    .line 2097
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    .line 2098
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr p1, v1

    if-lt p1, v1, :cond_29

    if-gt p1, v0, :cond_29

    .line 2103
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2105
    :try_start_12
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2106
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2107
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_24

    .line 2110
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v1

    :catchall_24
    move-exception p1

    .line 2111
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2112
    throw p1

    .line 2113
    :cond_29
    new-instance p0, Ljava/nio/BufferUnderflowException;

    invoke-direct {p0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p0

    .line 2114
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 2115
    const-string v0, "size: "

    invoke-static {v0, p1}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2928
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a([BI)V
    .registers 4

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x1

    .line 5200
    aput-byte v0, p0, v1

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x2

    .line 5201
    aput-byte v0, p0, v1

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x3

    .line 5202
    aput-byte v0, p0, v1

    ushr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x4

    .line 5203
    aput-byte p1, p0, v0

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;Ljava/util/HashMap;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;
    .registers 21

    .line 5459
    invoke-static/range {p0 .. p0}, Lads_mobile_sdk/bk;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5460
    invoke-static/range {p0 .. p0}, Lads_mobile_sdk/bk;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 5461
    invoke-static/range {p0 .. p0}, Lads_mobile_sdk/bk;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    .line 5466
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move v8, v4

    move v7, v5

    move-object v9, v6

    .line 5467
    :cond_17
    :goto_17
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v10

    const/16 v11, 0x8

    const/16 v12, 0x301

    const/16 v13, 0x202

    const/16 v14, 0x201

    if-eqz v10, :cond_6d

    add-int/lit8 v8, v8, 0x1

    .line 5470
    :try_start_27
    invoke-static {v1}, Lads_mobile_sdk/bk;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 5471
    invoke-virtual {v10}, Ljava/nio/Buffer;->remaining()I

    move-result v15

    if-lt v15, v11, :cond_59

    .line 5474
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .line 5475
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v11, v14, :cond_46

    if-eq v11, v13, :cond_46

    if-eq v11, v12, :cond_46

    packed-switch v11, :pswitch_data_274

    goto :goto_17

    :cond_46
    :pswitch_46
    if-eq v7, v5, :cond_53

    .line 5480
    invoke-static {v11, v7}, Lads_mobile_sdk/bk;->a(II)I

    move-result v12

    if-lez v12, :cond_17

    goto :goto_53

    :catch_4f
    move-exception v0

    goto :goto_61

    :catch_51
    move-exception v0

    goto :goto_61

    .line 5482
    :cond_53
    :goto_53
    invoke-static {v10}, Lads_mobile_sdk/bk;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object v9

    move v7, v11

    goto :goto_17

    .line 5483
    :cond_59
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Signature record too short"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_61} :catch_51
    .catch Ljava/nio/BufferUnderflowException; {:try_start_27 .. :try_end_61} :catch_4f

    .line 5496
    :goto_61
    new-instance v1, Ljava/lang/SecurityException;

    .line 5497
    const-string v2, "Failed to parse signature record #"

    invoke-static {v2, v8}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 5498
    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6d
    if-ne v7, v5, :cond_81

    if-nez v8, :cond_79

    .line 5505
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No signatures found"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5507
    :cond_79
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No supported signatures found"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_81
    const-string v1, "Unknown signature algorithm: 0x"

    if-eq v7, v14, :cond_a9

    if-eq v7, v13, :cond_a9

    if-eq v7, v12, :cond_a6

    packed-switch v7, :pswitch_data_280

    .line 5508
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v3, v7

    .line 5510
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5511
    :pswitch_a3
    const-string v5, "RSA"

    goto :goto_ab

    .line 5516
    :cond_a6
    const-string v5, "DSA"

    goto :goto_ab

    .line 5517
    :cond_a9
    const-string v5, "EC"

    :goto_ab
    if-eq v7, v14, :cond_113

    if-eq v7, v13, :cond_10c

    if-eq v7, v12, :cond_105

    packed-switch v7, :pswitch_data_28c

    .line 5518
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v3, v7

    .line 5520
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5521
    :pswitch_cb
    const-string v1, "SHA512withRSA"

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_119

    .line 5522
    :pswitch_d2
    const-string v1, "SHA256withRSA"

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_119

    .line 5523
    :pswitch_d9
    new-instance v12, Ljava/security/spec/PSSParameterSpec;

    sget-object v15, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v16, 0x40

    const/16 v17, 0x1

    const-string v13, "SHA-512"

    const-string v14, "MGF1"

    invoke-direct/range {v12 .. v17}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v1, "SHA512withRSA/PSS"

    invoke-static {v1, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_119

    .line 5524
    :pswitch_ef
    new-instance v12, Ljava/security/spec/PSSParameterSpec;

    sget-object v15, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v16, 0x20

    const/16 v17, 0x1

    const-string v13, "SHA-256"

    const-string v14, "MGF1"

    invoke-direct/range {v12 .. v17}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v1, "SHA256withRSA/PSS"

    invoke-static {v1, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_119

    .line 5542
    :cond_105
    const-string v1, "SHA256withDSA"

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_119

    .line 5543
    :cond_10c
    const-string v1, "SHA512withECDSA"

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_119

    .line 5544
    :cond_113
    const-string v1, "SHA256withECDSA"

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 5545
    :goto_119
    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 5546
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    .line 5550
    :try_start_121
    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    new-instance v10, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v10, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 5551
    invoke-virtual {v5, v10}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    .line 5552
    invoke-static {v8}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v10

    .line 5553
    invoke-virtual {v10, v5}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    if-eqz v1, :cond_14a

    .line 5555
    invoke-virtual {v10, v1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_14a

    :catch_13b
    move-exception v0

    goto/16 :goto_25a

    :catch_13e
    move-exception v0

    goto/16 :goto_25a

    :catch_141
    move-exception v0

    goto/16 :goto_25a

    :catch_144
    move-exception v0

    goto/16 :goto_25a

    :catch_147
    move-exception v0

    goto/16 :goto_25a

    .line 5557
    :cond_14a
    :goto_14a
    invoke-virtual {v10, v0}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 5558
    invoke-virtual {v10, v9}, Ljava/security/Signature;->verify([B)Z

    move-result v1
    :try_end_151
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_121 .. :try_end_151} :catch_147
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_121 .. :try_end_151} :catch_144
    .catch Ljava/security/InvalidKeyException; {:try_start_121 .. :try_end_151} :catch_141
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_121 .. :try_end_151} :catch_13e
    .catch Ljava/security/SignatureException; {:try_start_121 .. :try_end_151} :catch_13b

    if-eqz v1, :cond_243

    .line 5571
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 5572
    invoke-static {v0}, Lads_mobile_sdk/bk;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 5573
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v8, v4

    .line 5575
    :cond_160
    :goto_160
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_19c

    add-int/lit8 v8, v8, 0x1

    .line 5578
    :try_start_168
    invoke-static {v1}, Lads_mobile_sdk/bk;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 5579
    invoke-virtual {v9}, Ljava/nio/Buffer;->remaining()I

    move-result v10

    if-lt v10, v11, :cond_188

    .line 5582
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 5583
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v10, v7, :cond_160

    .line 5585
    invoke-static {v9}, Lads_mobile_sdk/bk;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object v6

    goto :goto_160

    :catch_184
    move-exception v0

    goto :goto_190

    :catch_186
    move-exception v0

    goto :goto_190

    .line 5586
    :cond_188
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Record too short"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_190
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_190} :catch_186
    .catch Ljava/nio/BufferUnderflowException; {:try_start_168 .. :try_end_190} :catch_184

    .line 5594
    :goto_190
    new-instance v1, Ljava/io/IOException;

    .line 5595
    const-string v2, "Failed to parse digest record #"

    invoke-static {v2, v8}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 5596
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5600
    :cond_19c
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23b

    .line 5604
    invoke-static {v7}, Lads_mobile_sdk/bk;->b(I)I

    move-result v1

    .line 5605
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v5, p1

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_1cb

    .line 5607
    invoke-static {v3, v6}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v3

    if-eqz v3, :cond_1bb

    goto :goto_1cb

    .line 5608
    :cond_1bb
    new-instance v0, Ljava/lang/SecurityException;

    .line 5609
    invoke-static {v1}, Lads_mobile_sdk/bk;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " contents digest does not match the digest specified by a preceding signer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5613
    :cond_1cb
    :goto_1cb
    invoke-static {v0}, Lads_mobile_sdk/bk;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5614
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    .line 5616
    :goto_1d5
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_204

    add-int/lit8 v3, v3, 0x1

    .line 5618
    invoke-static {v0}, Lads_mobile_sdk/bk;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object v5

    .line 5621
    :try_start_1e1
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v7, p2

    .line 5622
    invoke-virtual {v7, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;
    :try_end_1ee
    .catch Ljava/security/cert/CertificateException; {:try_start_1e1 .. :try_end_1ee} :catch_1f7

    .line 5626
    new-instance v8, Lads_mobile_sdk/zj;

    invoke-direct {v8, v6, v5}, Lads_mobile_sdk/zj;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 5627
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d5

    :catch_1f7
    move-exception v0

    .line 5628
    new-instance v1, Ljava/lang/SecurityException;

    .line 5629
    const-string v2, "Failed to decode certificate #"

    invoke-static {v2, v3}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 5630
    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5636
    :cond_204
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_233

    .line 5639
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 5640
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 5641
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_22b

    .line 5646
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0

    .line 5647
    :cond_22b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Public key mismatch between certificate and signature record"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5648
    :cond_233
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No certificates listed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5649
    :cond_23b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Signature algorithms don\'t match between digests and signatures records"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5650
    :cond_243
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " signature did not verify"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5651
    :goto_25a
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to verify "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " signature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_274
    .packed-switch 0x101
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
    .end packed-switch

    :pswitch_data_280
    .packed-switch 0x101
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
    .end packed-switch

    :pswitch_data_28c
    .packed-switch 0x101
        :pswitch_ef
        :pswitch_d9
        :pswitch_d2
        :pswitch_cb
    .end packed-switch
.end method

.method public static a([I[Lads_mobile_sdk/wj;)[[B
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1162
    array-length v2, v1

    const/4 v5, 0x0

    move v6, v5

    const-wide/16 v7, 0x0

    :goto_9
    const-wide/32 v9, 0x100000

    if-ge v6, v2, :cond_1d

    aget-object v11, v1, v6

    .line 1163
    invoke-interface {v11}, Lads_mobile_sdk/wj;->size()J

    move-result-wide v11

    const-wide/32 v13, 0xfffff

    add-long/2addr v11, v13

    .line 1164
    div-long/2addr v11, v9

    add-long/2addr v7, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_1d
    const-wide/32 v11, 0x1fffff

    cmp-long v2, v7, v11

    if-gez v2, :cond_19d

    long-to-int v2, v7

    .line 1165
    array-length v6, v0

    new-array v6, v6, [[B

    move v7, v5

    .line 1166
    :goto_29
    array-length v8, v0

    const-string v12, "Unknown content digest algorthm: "

    const/4 v14, 0x2

    const/4 v15, 0x5

    const-wide/16 v16, 0x0

    const/4 v3, 0x1

    if-ge v7, v8, :cond_58

    .line 1167
    aget v4, v0, v7

    if-eq v4, v3, :cond_46

    if-ne v4, v14, :cond_3c

    const/16 v11, 0x40

    goto :goto_48

    .line 1168
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1169
    invoke-static {v12, v4}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1170
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    const/16 v11, 0x20

    :goto_48
    mul-int/2addr v11, v2

    add-int/2addr v11, v15

    .line 1171
    new-array v3, v11, [B

    const/16 v4, 0x5a

    .line 1173
    aput-byte v4, v3, v5

    .line 1174
    invoke-static {v3, v2}, Lads_mobile_sdk/bk;->a([BI)V

    .line 1178
    aput-object v3, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    .line 1181
    :cond_58
    new-array v2, v15, [B

    const/16 v4, -0x5b

    .line 1182
    aput-byte v4, v2, v5

    .line 1184
    array-length v4, v0

    new-array v7, v4, [Ljava/security/MessageDigest;

    move v8, v5

    .line 1185
    :goto_62
    array-length v5, v0

    const-string v11, " digest not supported"

    if-ge v8, v5, :cond_81

    .line 1186
    aget v5, v0, v8

    .line 1187
    invoke-static {v5}, Lads_mobile_sdk/bk;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 1189
    :try_start_6d
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v18

    aput-object v18, v7, v8
    :try_end_73
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6d .. :try_end_73} :catch_76

    add-int/lit8 v8, v8, 0x1

    goto :goto_62

    :catch_76
    move-exception v0

    .line 1191
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v5, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1198
    :cond_81
    array-length v5, v1

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    :goto_86
    if-ge v8, v5, :cond_173

    move/from16 v19, v15

    aget-object v15, v1, v8

    .line 1200
    invoke-interface {v15}, Lads_mobile_sdk/wj;->size()J

    move-result-wide v20

    move-wide/from16 v22, v20

    move-object/from16 v20, v15

    move-wide/from16 v14, v22

    move-wide/from16 v23, v16

    move/from16 v22, v18

    :goto_9a
    cmp-long v21, v14, v16

    if-lez v21, :cond_157

    move/from16 v25, v4

    .line 1202
    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 1203
    invoke-static {v2, v3}, Lads_mobile_sdk/bk;->a([BI)V

    move/from16 v4, v25

    const/4 v9, 0x0

    :goto_ab
    if-ge v9, v4, :cond_b5

    .line 1205
    aget-object v10, v7, v9

    invoke-virtual {v10, v2}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_ab

    :cond_b5
    move-object v10, v2

    move-object/from16 v9, v20

    move-wide/from16 v1, v23

    .line 1208
    :try_start_ba
    invoke-interface {v9, v7, v1, v2, v3}, Lads_mobile_sdk/wj;->a([Ljava/security/MessageDigest;JI)V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_138

    move-wide/from16 v23, v1

    const/4 v1, 0x0

    .line 1215
    :goto_c0
    array-length v2, v0

    if-ge v1, v2, :cond_11d

    .line 1216
    aget v2, v0, v1

    move/from16 v20, v1

    .line 1217
    aget-object v1, v6, v20

    move/from16 v26, v4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_de

    const/4 v4, 0x2

    if-ne v2, v4, :cond_d4

    const/16 v2, 0x40

    goto :goto_e0

    .line 1218
    :cond_d4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1219
    invoke-static {v12, v2}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1220
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_de
    const/16 v2, 0x20

    .line 1221
    :goto_e0
    aget-object v4, v7, v20

    move/from16 v27, v5

    move/from16 v5, v22

    mul-int v22, v5, v2

    move-object/from16 v28, v6

    add-int/lit8 v6, v22, 0x5

    .line 1223
    invoke-virtual {v4, v1, v6, v2}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v1

    if-ne v1, v2, :cond_fd

    add-int/lit8 v1, v20, 0x1

    move/from16 v22, v5

    move/from16 v4, v26

    move/from16 v5, v27

    move-object/from16 v6, v28

    goto :goto_c0

    .line 1228
    :cond_fd
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected output size of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1229
    invoke-virtual {v4}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " digest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11d
    move/from16 v26, v4

    move/from16 v27, v5

    move-object/from16 v28, v6

    move/from16 v5, v22

    int-to-long v1, v3

    add-long v23, v23, v1

    sub-long/2addr v14, v1

    add-int/lit8 v22, v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v20, v9

    move-object v2, v10

    move/from16 v5, v27

    const/4 v3, 0x1

    const-wide/32 v9, 0x100000

    goto/16 :goto_9a

    :catch_138
    move-exception v0

    move/from16 v5, v22

    .line 1230
    new-instance v1, Ljava/security/DigestException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to digest chunk #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " of section #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/DigestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_157
    move-object v10, v2

    move/from16 v26, v4

    move/from16 v27, v5

    move-object/from16 v28, v6

    move/from16 v5, v22

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    move/from16 v18, v5

    move/from16 v15, v19

    move/from16 v5, v27

    const/4 v3, 0x1

    const-wide/32 v9, 0x100000

    const/4 v14, 0x2

    goto/16 :goto_86

    :cond_173
    move-object/from16 v28, v6

    .line 1259
    array-length v1, v0

    new-array v1, v1, [[B

    const/4 v5, 0x0

    .line 1260
    :goto_179
    array-length v2, v0

    if-ge v5, v2, :cond_19c

    .line 1261
    aget v2, v0, v5

    .line 1262
    aget-object v3, v28, v5

    .line 1263
    invoke-static {v2}, Lads_mobile_sdk/bk;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 1266
    :try_start_184
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_188
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_184 .. :try_end_188} :catch_191

    .line 1270
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 1271
    aput-object v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_179

    :catch_191
    move-exception v0

    .line 1272
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_19c
    return-object v1

    .line 1273
    :cond_19d
    new-instance v0, Ljava/security/DigestException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Too many chunks: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/io/RandomAccessFile;)[[Ljava/security/cert/X509Certificate;
    .registers 29

    move-object/from16 v0, p0

    .line 5205
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x16

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-gez v2, :cond_f

    const/4 v2, 0x0

    goto :goto_1d

    .line 5213
    :cond_f
    invoke-static {v0, v3}, Lads_mobile_sdk/y24;->a(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_16

    goto :goto_1d

    :cond_16
    const v2, 0xffff

    .line 5221
    invoke-static {v0, v2}, Lads_mobile_sdk/y24;->a(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;

    move-result-object v2

    :goto_1d
    if-eqz v2, :cond_421

    .line 5222
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 5223
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x14

    sub-long v7, v5, v7

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-gez v2, :cond_36

    goto :goto_42

    .line 5224
    :cond_36
    invoke-virtual {v0, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 5227
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    const v7, 0x504b0607

    if-eq v2, v7, :cond_419

    .line 5228
    :goto_42
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const-string v8, "ByteBuffer byte order must be little endian"

    if-ne v2, v7, :cond_413

    .line 5229
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v2

    const/16 v11, 0x10

    add-int/2addr v2, v11

    .line 5230
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    int-to-long v12, v2

    const-wide v14, 0xffffffffL

    and-long v18, v12, v14

    cmp-long v2, v18, v5

    if-gez v2, :cond_3f5

    .line 5231
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    if-ne v2, v7, :cond_3ef

    .line 5232
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    .line 5233
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    int-to-long v12, v2

    and-long/2addr v12, v14

    add-long v12, v18, v12

    cmp-long v2, v12, v5

    if-nez v2, :cond_3e7

    const-wide/16 v12, 0x20

    cmp-long v2, v18, v12

    if-ltz v2, :cond_3d1

    const/16 v2, 0x18

    .line 5234
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 5235
    invoke-virtual {v12, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5236
    invoke-virtual {v12}, Ljava/nio/Buffer;->capacity()I

    move-result v13

    move-wide/from16 v22, v9

    int-to-long v9, v13

    sub-long v9, v18, v9

    invoke-virtual {v0, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 5237
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    invoke-virtual {v12}, Ljava/nio/Buffer;->capacity()I

    move-result v13

    invoke-virtual {v0, v9, v10, v13}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/16 v9, 0x8

    .line 5238
    invoke-virtual {v12, v9}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v16

    const-wide v20, 0x20676953204b5041L

    cmp-long v10, v16, v20

    if-nez v10, :cond_3c9

    .line 5239
    invoke-virtual {v12, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v16

    const-wide v20, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v10, v16, v20

    if-nez v10, :cond_3c9

    move-wide/from16 v24, v14

    .line 5244
    invoke-virtual {v12, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v14

    .line 5245
    invoke-virtual {v12}, Ljava/nio/Buffer;->capacity()I

    move-result v10

    int-to-long v12, v10

    cmp-long v10, v14, v12

    if-ltz v10, :cond_3b5

    const-wide/32 v12, 0x7ffffff7

    cmp-long v10, v14, v12

    if-gtz v10, :cond_3b5

    const-wide/16 v12, 0x8

    add-long/2addr v12, v14

    long-to-int v10, v12

    int-to-long v12, v10

    sub-long v12, v18, v12

    cmp-long v16, v12, v22

    if-ltz v16, :cond_3a1

    .line 5256
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 5257
    invoke-virtual {v10, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5258
    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    move/from16 v16, v2

    .line 5259
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    move/from16 v26, v11

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v11

    const/16 v27, 0x1

    invoke-virtual {v10}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v2, v11, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 5260
    invoke-virtual {v10, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    cmp-long v11, v1, v14

    if-nez v11, :cond_385

    .line 5266
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 5267
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 5268
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 5269
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    if-ne v1, v7, :cond_37f

    .line 5270
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    add-int/lit8 v1, v1, -0x18

    if-lt v1, v9, :cond_366

    .line 5271
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    .line 5272
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v10

    if-gt v1, v10, :cond_34a

    .line 5275
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v7

    .line 5276
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v10

    .line 5278
    :try_start_13d
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5279
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 5280
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5281
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 5282
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_151
    .catchall {:try_start_13d .. :try_end_151} :catchall_33f

    .line 5285
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5286
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 5287
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move v2, v3

    .line 5288
    :goto_15b
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_337

    add-int/lit8 v2, v2, 0x1

    .line 5290
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    if-lt v7, v9, :cond_32b

    .line 5294
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v10

    const-wide/16 v12, 0x4

    cmp-long v7, v10, v12

    const-string v12, " size out of range: "

    const-string v13, "APK Signing Block entry #"

    if-ltz v7, :cond_313

    const-wide/32 v16, 0x7fffffff

    cmp-long v7, v10, v16

    if-gtz v7, :cond_313

    long-to-int v7, v10

    .line 5301
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v10

    add-int/2addr v10, v7

    .line 5302
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v11

    if-gt v7, v11, :cond_2ef

    .line 5307
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    const v12, 0x7109871a

    if-ne v11, v12, :cond_2ea

    add-int/lit8 v7, v7, -0x4

    .line 5309
    invoke-static {v1, v7}, Lads_mobile_sdk/bk;->a(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 5310
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v17

    .line 5311
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5312
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5315
    :try_start_1a7
    const-string v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v7
    :try_end_1ad
    .catch Ljava/security/cert/CertificateException; {:try_start_1a7 .. :try_end_1ad} :catch_2e1

    .line 5321
    :try_start_1ad
    invoke-static {v1}, Lads_mobile_sdk/bk;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_1b1
    .catch Ljava/io/IOException; {:try_start_1ad .. :try_end_1b1} :catch_2d8

    move v9, v3

    .line 5325
    :goto_1b2
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v10

    if-eqz v10, :cond_1e4

    add-int/lit8 v9, v9, 0x1

    .line 5328
    :try_start_1ba
    invoke-static {v1}, Lads_mobile_sdk/bk;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 5329
    invoke-static {v10, v0, v7}, Lads_mobile_sdk/bk;->a(Ljava/nio/ByteBuffer;Ljava/util/HashMap;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;

    move-result-object v10

    .line 5330
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1c5
    .catch Ljava/io/IOException; {:try_start_1ba .. :try_end_1c5} :catch_1ca
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1ba .. :try_end_1c5} :catch_1c8
    .catch Ljava/lang/SecurityException; {:try_start_1ba .. :try_end_1c5} :catch_1c6

    goto :goto_1b2

    :catch_1c6
    move-exception v0

    goto :goto_1cb

    :catch_1c8
    move-exception v0

    goto :goto_1cb

    :catch_1ca
    move-exception v0

    .line 5332
    :goto_1cb
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse/verify signer #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " block"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1e4
    move/from16 v1, v27

    if-lt v9, v1, :cond_2d0

    .line 5342
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c8

    .line 5343
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c0

    .line 5357
    new-instance v10, Lads_mobile_sdk/xj;

    const-wide/16 v12, 0x0

    move-object/from16 v11, v17

    invoke-direct/range {v10 .. v15}, Lads_mobile_sdk/xj;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    .line 5359
    new-instance v16, Lads_mobile_sdk/xj;

    sub-long v20, v5, v18

    invoke-direct/range {v16 .. v21}, Lads_mobile_sdk/xj;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    .line 5365
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 5366
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5367
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    if-ne v5, v4, :cond_2ba

    .line 5368
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x10

    cmp-long v5, v14, v22

    if-ltz v5, :cond_2a6

    cmp-long v5, v14, v24

    if-gtz v5, :cond_2a6

    .line 5369
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/2addr v5, v4

    long-to-int v4, v14

    invoke-virtual {v1, v5, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 5370
    new-instance v4, Lads_mobile_sdk/vj;

    invoke-direct {v4, v1}, Lads_mobile_sdk/vj;-><init>(Ljava/nio/ByteBuffer;)V

    .line 5372
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v5, v1, [I

    .line 5374
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v3

    :goto_23e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_255

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 5375
    aput v8, v5, v7

    const/16 v27, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_23e

    :cond_255
    const/16 v27, 0x1

    const/4 v6, 0x3

    .line 5380
    :try_start_258
    new-array v6, v6, [Lads_mobile_sdk/wj;

    aput-object v10, v6, v3

    aput-object v16, v6, v27

    const/4 v7, 0x2

    aput-object v4, v6, v7

    .line 5381
    invoke-static {v5, v6}, Lads_mobile_sdk/bk;->a([I[Lads_mobile_sdk/wj;)[[B

    move-result-object v4
    :try_end_265
    .catch Ljava/security/DigestException; {:try_start_258 .. :try_end_265} :catch_29d

    :goto_265
    if-ge v3, v1, :cond_290

    .line 5388
    aget v6, v5, v3

    .line 5389
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 5390
    aget-object v8, v4, v3

    .line 5391
    invoke-static {v7, v8}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v7

    if-eqz v7, :cond_280

    const/16 v27, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_265

    .line 5392
    :cond_280
    new-instance v0, Ljava/lang/SecurityException;

    .line 5393
    invoke-static {v6}, Lads_mobile_sdk/bk;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " digest of contents did not verify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5394
    :cond_290
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [[Ljava/security/cert/X509Certificate;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/security/cert/X509Certificate;

    return-object v0

    :catch_29d
    move-exception v0

    .line 5395
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Failed to compute digest(s) of contents"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5396
    :cond_2a6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uint32 value of out range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5397
    :cond_2ba
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5398
    :cond_2c0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No digests provided"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5399
    :cond_2c8
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No content digests found"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5400
    :cond_2d0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No signers found"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2d8
    move-exception v0

    .line 5401
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Failed to read list of signers"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2e1
    move-exception v0

    .line 5402
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5403
    :cond_2ea
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_15b

    .line 5404
    :cond_2ef
    new-instance v0, Lads_mobile_sdk/yj;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", available: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5406
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5407
    :cond_313
    new-instance v0, Lads_mobile_sdk/yj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5408
    :cond_32b
    new-instance v0, Lads_mobile_sdk/yj;

    .line 5409
    const-string v1, "Insufficient data to read size of APK Signing Block entry #"

    invoke-static {v1, v2}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 5410
    invoke-direct {v0, v1}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5433
    :cond_337
    new-instance v0, Lads_mobile_sdk/yj;

    const-string v1, "No APK Signature Scheme v2 block in APK Signing Block"

    invoke-direct {v0, v1}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_33f
    move-exception v0

    .line 5434
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5435
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 5436
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5437
    throw v0

    .line 5438
    :cond_34a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "end > capacity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5439
    :cond_366
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "end < start: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " < 8"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5440
    :cond_37f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5441
    :cond_385
    new-instance v0, Lads_mobile_sdk/yj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "APK Signing Block sizes in header and footer do not match: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " vs "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5442
    :cond_3a1
    new-instance v0, Lads_mobile_sdk/yj;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "APK Signing Block offset out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5443
    :cond_3b5
    new-instance v0, Lads_mobile_sdk/yj;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "APK Signing Block size out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5444
    :cond_3c9
    new-instance v0, Lads_mobile_sdk/yj;

    const-string v1, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {v0, v1}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d1
    move-wide/from16 v10, v18

    .line 5445
    new-instance v0, Lads_mobile_sdk/yj;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5446
    :cond_3e7
    new-instance v0, Lads_mobile_sdk/yj;

    const-string v1, "ZIP Central Directory is not immediately followed by End of Central Directory"

    invoke-direct {v0, v1}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5447
    :cond_3ef
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f5
    move-wide/from16 v10, v18

    .line 5448
    new-instance v0, Lads_mobile_sdk/yj;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ZIP Central Directory offset out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ". ZIP End of Central Directory offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5449
    :cond_413
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5450
    :cond_419
    new-instance v0, Lads_mobile_sdk/yj;

    const-string v1, "ZIP64 APK not supported"

    invoke-direct {v0, v1}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5451
    :cond_421
    new-instance v1, Lads_mobile_sdk/yj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not an APK file: ZIP End of Central Directory record not found in file with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5453
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;
    .registers 3

    .line 5652
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5654
    :try_start_7
    invoke-static {v0}, Lads_mobile_sdk/bk;->a(Ljava/io/RandomAccessFile;)[[Ljava/security/cert/X509Certificate;

    move-result-object p0

    .line 5655
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_12

    .line 5659
    :try_start_e
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_11

    :catch_11
    return-object p0

    :catchall_12
    move-exception p0

    .line 5660
    :try_start_13
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_16

    .line 5664
    :catch_16
    throw p0
.end method

.method public static b(I)I
    .registers 5

    const/16 v0, 0x201

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x202

    if-eq p0, v0, :cond_28

    const/16 v0, 0x301

    if-eq p0, v0, :cond_2a

    packed-switch p0, :pswitch_data_2c

    .line 690
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown signature algorithm: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v2, p0

    .line 692
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    :pswitch_28
    const/4 p0, 0x2

    return p0

    :cond_2a
    :pswitch_2a
    const/4 p0, 0x1

    return p0

    :pswitch_data_2c
    .packed-switch 0x101
        :pswitch_2a
        :pswitch_28
        :pswitch_2a
        :pswitch_28
    .end packed-switch
.end method

.method public static b(Ljava/nio/ByteBuffer;)[B
    .registers 5

    .line 1542
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-ltz v0, :cond_32

    .line 1545
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_12

    .line 1549
    new-array v0, v0, [B

    .line 1550
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0

    .line 1551
    :cond_12
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Underflow while reading length-prefixed value. Length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", available: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1553
    :cond_32
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Negative length"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

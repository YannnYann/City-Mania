###### Class com.ironsource.adqualitysdk.sdk.i.AbstractC0061 (com.ironsource.adqualitysdk.sdk.i.Ł)
.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/Ł;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﾒ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "JM8TvUTCbnkc/jahSd0=\n"

    const-string v1, "ZatCyCWuBw0=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/Ł;->ﾒ:Ljava/lang/String;

    const-string v0, "gRPHBrA+XPSAHcsOvj4S6w==\n"

    const-string v1, "8nyoa9xfcYA=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    .line 2
    array-length v2, p0

    const/16 v3, 0x10

    invoke-static {p0, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_e8

    .line 3
    :try_start_11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 4
    div-int/lit8 v4, v2, 0x2

    new-array v4, v4, [B

    move v5, v1

    :goto_1a
    if-ge v5, v2, :cond_3c

    .line 6
    div-int/lit8 v6, v5, 0x2

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v5, 0x1

    .line 7
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    add-int/2addr v8, v7

    int-to-byte v7, v8

    aput-byte v7, v4, v6

    add-int/lit8 v5, v5, 0x2

    goto :goto_1a

    :catchall_39
    move-exception p0

    goto/16 :goto_cd

    .line 8
    :cond_3c
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    .line 9
    div-int/lit8 v2, p2, 0x2

    new-array v2, v2, [B

    move v5, v1

    :goto_45
    if-ge v5, p2, :cond_64

    .line 11
    div-int/lit8 v6, v5, 0x2

    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v5, 0x1

    .line 12
    invoke-virtual {p3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    add-int/2addr v8, v7

    int-to-byte v7, v8

    aput-byte v7, v2, v6

    add-int/lit8 v5, v5, 0x2

    goto :goto_45

    .line 13
    :cond_64
    const-string p2, "SNNN6gq1eKJZ3V2WfKda6W3/cKI=\n"

    const-string p3, "CZYexUn3O40=\n"

    invoke-static {p2, p3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 15
    new-instance p3, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/16 v3, 0x100

    const/4 v5, 0x1

    invoke-direct {p3, p1, v2, v5, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 16
    const-string p1, "1WKZaMT9o3PBFZ1xyZveCMdpiH7I+sZ9x2PxcN3spW3WbA==\n"

    const-string v2, "hSDcP42p6z4=\n"

    invoke-static {p1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "pqI=\n"

    const-string v3, "5OGNGWEaOdM=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    .line 17
    invoke-virtual {p1, p3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 18
    new-instance p3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    invoke-direct {p3, v4, v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    const/4 v2, 0x2

    invoke-virtual {p2, v2, p1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 20
    new-instance p1, Ljavax/crypto/CipherInputStream;

    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-direct {p3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p1, p3, p2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_ab
    .catchall {:try_start_11 .. :try_end_ab} :catchall_39

    .line 22
    :try_start_ab
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 p2, 0x2000

    .line 23
    new-array p2, p2, [B

    .line 24
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p3

    :goto_b8
    const/4 v2, -0x1

    if-le p3, v2, :cond_c5

    .line 27
    invoke-virtual {p0, p2, v1, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 28
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p3

    goto :goto_b8

    :catchall_c3
    move-exception p0

    goto :goto_ce

    .line 31
    :cond_c5
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_c9
    .catchall {:try_start_ab .. :try_end_c9} :catchall_c3

    .line 37
    :try_start_c9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_cc

    :catchall_cc
    return-object p0

    :goto_cd
    move-object p1, v0

    .line 38
    :goto_ce
    :try_start_ce
    sget-object p2, Lcom/ironsource/adqualitysdk/sdk/i/Ł;->ﾒ:Ljava/lang/String;

    const-string p3, "7oOPuUca5Q3Ig4SmQVPvD4uCiaRcVOY=\n"

    const-string v2, "q/H91jU6gWg=\n"

    invoke-static {p3, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    :try_end_db
    .catchall {:try_start_ce .. :try_end_db} :catchall_e1

    if-eqz p1, :cond_f6

    .line 42
    :try_start_dd
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_e0
    .catchall {:try_start_dd .. :try_end_e0} :catchall_f6

    goto :goto_f6

    :catchall_e1
    move-exception p0

    if-eqz p1, :cond_e7

    :try_start_e4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_e7
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_e7

    .line 46
    :catchall_e7
    :cond_e7
    :try_start_e7
    throw p0
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e8

    :catchall_e8
    move-exception p0

    .line 48
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/Ł;->ﾒ:Ljava/lang/String;

    const-string p2, "jbqlI6l3RuytqaMltTAF+q2rpTWrIwX/pK+4\n"

    const-string p3, "yMjXTNtXJZ4=\n"

    invoke-static {p2, p3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :catchall_f6
    :cond_f6
    :goto_f6
    return-object v0
.end method

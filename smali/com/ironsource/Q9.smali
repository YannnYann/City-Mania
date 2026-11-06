###### Class com.ironsource.Q9 (com.ironsource.Q9)
.class public Lcom/ironsource/Q9;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/ironsource/Q9;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-static {}, Lcom/ironsource/p5;->b()Lcom/ironsource/p5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/p5;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/ironsource/Q9;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-class v0, Lcom/ironsource/Q9;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string p0, ""
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    goto :goto_30

    .line 5
    :cond_f
    :try_start_f
    invoke-static {p1}, Lcom/ironsource/Y9;->a(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 7
    invoke-static {p0, p1}, Lcom/ironsource/Q9;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_19} :catch_1b
    .catchall {:try_start_f .. :try_end_19} :catchall_d

    monitor-exit v0

    return-object p0

    :catch_1b
    move-exception p0

    .line 10
    :try_start_1c
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 11
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 13
    :cond_2c
    const-string p0, ""
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_d

    monitor-exit v0

    return-object p0

    :goto_30
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_d

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    const-class v0, Lcom/ironsource/Q9;

    monitor-enter v0

    .line 14
    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string p0, ""
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    goto :goto_5b

    :cond_f
    if-nez p1, :cond_15

    .line 16
    :try_start_11
    const-string p0, ""
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_d

    monitor-exit v0

    return-object p0

    .line 19
    :cond_15
    :try_start_15
    invoke-static {p0}, Lcom/ironsource/Q9;->d(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p0

    const/16 v1, 0x10

    .line 22
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 23
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 24
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 27
    const-string v1, "AES/CBC/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v4, 0x1

    .line 28
    invoke-virtual {v1, v4, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 30
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 31
    const-string p1, "line.separator"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_44} :catch_46
    .catchall {:try_start_15 .. :try_end_44} :catchall_d

    monitor-exit v0

    return-object p0

    :catch_46
    move-exception p0

    .line 36
    :try_start_47
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 37
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 40
    const-string p0, ""
    :try_end_59
    .catchall {:try_start_47 .. :try_end_59} :catchall_d

    monitor-exit v0

    return-object p0

    :goto_5b
    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_d

    throw p0
.end method

.method public static declared-synchronized b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/ironsource/Q9;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-static {}, Lcom/ironsource/p5;->b()Lcom/ironsource/p5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/p5;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/ironsource/Q9;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/ironsource/Q9;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-static {p0, p1}, Lcom/ironsource/Q9;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_12

    .line 4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit v0

    return-object p1

    :catchall_10
    move-exception p0

    goto :goto_16

    .line 6
    :cond_12
    :try_start_12
    const-string p0, ""
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_10

    monitor-exit v0

    return-object p0

    :goto_16
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_10

    throw p0
.end method

.method public static declared-synchronized c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/ironsource/Q9;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-static {}, Lcom/ironsource/p5;->b()Lcom/ironsource/p5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/p5;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/ironsource/Q9;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public static declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 7

    const-class v0, Lcom/ironsource/Q9;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_39

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    monitor-exit v0

    return-object v2

    .line 4
    :cond_c
    :try_start_c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_39

    if-eqz v1, :cond_14

    monitor-exit v0

    return-object v2

    .line 7
    :cond_14
    :try_start_14
    invoke-static {p0}, Lcom/ironsource/Q9;->d(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p0

    const/16 v1, 0x10

    .line 10
    new-array v1, v1, [B

    const/4 v3, 0x0

    .line 11
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 12
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 14
    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 16
    const-string v1, "AES/CBC/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v3, 0x2

    .line 17
    invoke-virtual {v1, v3, p0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 18
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_37} :catch_3b
    .catchall {:try_start_14 .. :try_end_37} :catchall_39

    monitor-exit v0

    return-object p0

    :catchall_39
    move-exception p0

    goto :goto_5f

    :catch_3b
    move-exception p0

    .line 23
    :try_start_3c
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 24
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception on decryption error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_3c .. :try_end_5d} :catchall_39

    monitor-exit v0

    return-object v2

    :goto_5f
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_39

    throw p0
.end method

.method public static declared-synchronized d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-class v0, Lcom/ironsource/Q9;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string p0, ""
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    goto :goto_30

    .line 4
    :cond_f
    :try_start_f
    invoke-static {p0, p1}, Lcom/ironsource/Q9;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_2c

    .line 6
    invoke-static {p0}, Lcom/ironsource/Y9;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_19} :catch_1b
    .catchall {:try_start_f .. :try_end_19} :catchall_d

    monitor-exit v0

    return-object p0

    :catch_1b
    move-exception p0

    .line 10
    :try_start_1c
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 11
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 13
    :cond_2c
    const-string p0, ""
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_d

    monitor-exit v0

    return-object p0

    :goto_30
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_d

    throw p0
.end method

.method private static d(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 14
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 16
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 19
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 20
    array-length v3, p0

    if-ge v3, v0, :cond_12

    array-length v0, p0

    .line 21
    :cond_12
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p0, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p0
.end method

.method public static declared-synchronized e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-class v0, Lcom/ironsource/Q9;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string p0, ""
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    goto :goto_3a

    .line 3
    :cond_f
    :try_start_f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string p0, ""
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_d

    monitor-exit v0

    return-object p0

    .line 6
    :cond_19
    :try_start_19
    const-string v1, "UTF8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Lcom/ironsource/Q9;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_23} :catch_25
    .catchall {:try_start_19 .. :try_end_23} :catchall_d

    monitor-exit v0

    return-object p0

    :catch_25
    move-exception p0

    .line 10
    :try_start_26
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 11
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 14
    const-string p0, ""
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_d

    monitor-exit v0

    return-object p0

    :goto_3a
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_d

    throw p0
.end method

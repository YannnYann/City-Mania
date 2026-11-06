###### Class info.flowersoft.theotown.backend.Session (info.flowersoft.theotown.backend.Session)
.class public Linfo/flowersoft/theotown/backend/Session;
.super Ljava/lang/Object;
.source "Session.java"


# instance fields
.field public decCipher:Ljavax/crypto/Cipher;

.field public encCipher:Ljavax/crypto/Cipher;

.field public enc_key:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public final keys:Linfo/flowersoft/theotown/util/json/JSONObject;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/Session;->keys:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .registers 3

    .line 151
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Session;->decCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_6} :catch_9
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    goto :goto_b

    :catch_9
    move-exception p1

    goto :goto_f

    .line 155
    :goto_b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_12

    .line 153
    :goto_f
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_12
    const/4 p1, 0x0

    return-object p1
.end method

.method public encrypt([B)[B
    .registers 3

    .line 140
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Session;->encCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_6} :catch_9
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    goto :goto_b

    :catch_9
    move-exception p1

    goto :goto_f

    .line 144
    :goto_b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_12

    .line 142
    :goto_f
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_12
    const/4 p1, 0x0

    return-object p1
.end method

.method public fromJson(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4

    .line 38
    const-string v0, "id"

    iget-object v1, p0, Linfo/flowersoft/theotown/backend/Session;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/backend/Session;->id:Ljava/lang/String;

    .line 39
    const-string v0, "enc_key"

    iget-object v1, p0, Linfo/flowersoft/theotown/backend/Session;->enc_key:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/backend/Session;->enc_key:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Linfo/flowersoft/theotown/backend/Session;->updateInternalKey()V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Session;->id:Ljava/lang/String;

    return-object v0
.end method

.method public invalidate()V
    .registers 2

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Linfo/flowersoft/theotown/backend/Session;->enc_key:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Linfo/flowersoft/theotown/backend/Session;->encCipher:Ljavax/crypto/Cipher;

    .line 74
    iput-object v0, p0, Linfo/flowersoft/theotown/backend/Session;->decCipher:Ljavax/crypto/Cipher;

    return-void
.end method

.method public isValid()Z
    .registers 2

    .line 115
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Session;->id:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Session;->encCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_14

    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Session;->decCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public final updateInternalKey()V
    .registers 6

    .line 78
    const-string v0, "AES"

    iget-object v1, p0, Linfo/flowersoft/theotown/backend/Session;->enc_key:Ljava/lang/String;

    if-eqz v1, :cond_b2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b2

    iget-object v1, p0, Linfo/flowersoft/theotown/backend/Session;->enc_key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_18

    goto/16 :goto_b2

    .line 83
    :cond_18
    iget-object v1, p0, Linfo/flowersoft/theotown/backend/Session;->enc_key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v2, :cond_24

    .line 84
    invoke-virtual {p0}, Linfo/flowersoft/theotown/backend/Session;->invalidate()V

    return-void

    .line 89
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Linfo/flowersoft/theotown/backend/Session;->keys:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "session server"

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/backend/Session;->enc_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Linfo/flowersoft/theotown/backend/Session;->keys:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "session client"

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Linfo/flowersoft/theotown/backend/Session;->enc_key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    :try_start_56
    iget-object v3, p0, Linfo/flowersoft/theotown/backend/Session;->keys:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "session scheme"

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    iput-object v4, p0, Linfo/flowersoft/theotown/backend/Session;->encCipher:Ljavax/crypto/Cipher;

    .line 94
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    iput-object v3, p0, Linfo/flowersoft/theotown/backend/Session;->decCipher:Ljavax/crypto/Cipher;

    .line 95
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v1}, Linfo/flowersoft/theotown/util/Hex;->hex2bin(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 96
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v2}, Linfo/flowersoft/theotown/util/Hex;->hex2bin(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 98
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Session;->keys:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "session iv"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/util/Hex;->hex2bin(Ljava/lang/String;)[B

    move-result-object v0

    .line 99
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 101
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Session;->encCipher:Ljavax/crypto/Cipher;

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 102
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Session;->decCipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_99
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_56 .. :try_end_99} :catch_a0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_56 .. :try_end_99} :catch_9e
    .catch Ljava/security/InvalidKeyException; {:try_start_56 .. :try_end_99} :catch_9c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_56 .. :try_end_99} :catch_9a

    return-void

    :catch_9a
    move-exception v0

    goto :goto_a2

    :catch_9c
    move-exception v0

    goto :goto_a6

    :catch_9e
    move-exception v0

    goto :goto_aa

    :catch_a0
    move-exception v0

    goto :goto_ae

    .line 110
    :goto_a2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b1

    .line 108
    :goto_a6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b1

    .line 106
    :goto_aa
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b1

    .line 104
    :goto_ae
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b1
    return-void

    .line 79
    :cond_b2
    :goto_b2
    invoke-virtual {p0}, Linfo/flowersoft/theotown/backend/Session;->invalidate()V

    return-void
.end method

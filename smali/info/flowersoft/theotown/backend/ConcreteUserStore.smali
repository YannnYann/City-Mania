###### Class info.flowersoft.theotown.backend.ConcreteUserStore (info.flowersoft.theotown.backend.ConcreteUserStore)
.class public Linfo/flowersoft/theotown/backend/ConcreteUserStore;
.super Ljava/lang/Object;
.source "ConcreteUserStore.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/UserStore;


# instance fields
.field public decCipher:Ljavax/crypto/Cipher;

.field public encCipher:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "user scheme"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    :try_start_9
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->encCipher:Ljavax/crypto/Cipher;

    .line 35
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->decCipher:Ljavax/crypto/Cipher;

    .line 36
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "user key"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Linfo/flowersoft/theotown/util/Hex;->hex2bin(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 37
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    const-string v2, "user iv"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Linfo/flowersoft/theotown/util/Hex;->hex2bin(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 38
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->encCipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 39
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->decCipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_41
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_41} :catch_48
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_9 .. :try_end_41} :catch_46
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_41} :catch_44
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_9 .. :try_end_41} :catch_42

    return-void

    :catch_42
    move-exception p1

    goto :goto_4a

    :catch_44
    move-exception p1

    goto :goto_4e

    :catch_46
    move-exception p1

    goto :goto_52

    :catch_48
    move-exception p1

    goto :goto_56

    .line 47
    :goto_4a
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_59

    .line 45
    :goto_4e
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_59

    .line 43
    :goto_52
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_59

    .line 41
    :goto_56
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_59
    return-void
.end method


# virtual methods
.method public final dec(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_3b

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3b

    .line 75
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->decCipher:Ljavax/crypto/Cipher;

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_22
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_9 .. :try_end_22} :catch_29
    .catch Ljavax/crypto/BadPaddingException; {:try_start_9 .. :try_end_22} :catch_27
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_22} :catch_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_22} :catch_23

    return-object v0

    :catch_23
    move-exception p1

    goto :goto_2b

    :catch_25
    move-exception p1

    goto :goto_2f

    :catch_27
    move-exception p1

    goto :goto_33

    :catch_29
    move-exception p1

    goto :goto_37

    .line 83
    :goto_2b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3a

    .line 81
    :goto_2f
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3a

    .line 79
    :goto_33
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3a

    .line 77
    :goto_37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3a
    const/4 p1, 0x0

    :cond_3b
    :goto_3b
    return-object p1
.end method

.method public final enc(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_37

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_37

    .line 56
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->encCipher:Ljavax/crypto/Cipher;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([B)[C

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V
    :try_end_1e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_1e} :catch_25
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_9 .. :try_end_1e} :catch_23
    .catch Ljavax/crypto/BadPaddingException; {:try_start_9 .. :try_end_1e} :catch_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    move-exception p1

    goto :goto_27

    :catch_21
    move-exception p1

    goto :goto_2b

    :catch_23
    move-exception p1

    goto :goto_2f

    :catch_25
    move-exception p1

    goto :goto_33

    .line 64
    :goto_27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_36

    .line 62
    :goto_2b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_36

    .line 60
    :goto_2f
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_36

    .line 58
    :goto_33
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_36
    const/4 p1, 0x0

    :cond_37
    :goto_37
    return-object p1
.end method

.method public declared-synchronized restore(Linfo/flowersoft/theotown/backend/User;)V
    .registers 6

    monitor-enter p0

    .line 109
    :try_start_1
    new-instance v0, Linfo/flowersoft/theotown/util/SSP;

    const-string v1, "user_store"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->load()Linfo/flowersoft/theotown/util/SSP$Reader;

    move-result-object v0

    .line 110
    const-string v1, "id"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/SSP$Reader;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/backend/User;->setId(J)V

    .line 111
    const-string v1, "name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->dec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/backend/User;->setName(Ljava/lang/String;)V

    .line 112
    const-string v1, "email"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->dec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/backend/User;->setEmail(Ljava/lang/String;)V

    .line 113
    const-string v1, "fb_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->dec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/backend/User;->setSocial_id(Ljava/lang/String;)V

    .line 114
    const-string v1, "social_type"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->dec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/backend/User;->setSocial_type(Ljava/lang/String;)V

    .line 115
    const-string v1, "steam_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->dec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/backend/User;->setSteamName(Ljava/lang/String;)V

    .line 116
    const-string v1, "forum_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->dec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/backend/User;->setForumName(Ljava/lang/String;)V

    .line 117
    const-string v1, "forum_pw"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->dec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/backend/User;->setForumPw(Ljava/lang/String;)V

    .line 118
    const-string v1, "forum_color"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->dec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/backend/User;->setForumColor(Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_1 .. :try_end_8f} :catchall_be

    .line 120
    :try_start_8f
    const-string v1, "steam_id"

    const-string v2, "0"

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->dec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/backend/User;->setSteamId(J)V

    .line 121
    const-string v1, "forum_id"

    const-string v2, "0"

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->dec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/backend/User;->setForumId(J)V
    :try_end_bd
    .catch Ljava/lang/NumberFormatException; {:try_start_8f .. :try_end_bd} :catch_c0
    .catchall {:try_start_8f .. :try_end_bd} :catchall_be

    goto :goto_c4

    :catchall_be
    move-exception p1

    goto :goto_c6

    :catch_c0
    move-exception p1

    .line 123
    :try_start_c1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_be

    .line 125
    :goto_c4
    monitor-exit p0

    return-void

    :goto_c6
    :try_start_c6
    monitor-exit p0
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_be

    throw p1
.end method

.method public declared-synchronized store(Linfo/flowersoft/theotown/backend/User;)V
    .registers 7

    monitor-enter p0

    .line 91
    :try_start_1
    new-instance v0, Linfo/flowersoft/theotown/util/SSP;

    const-string v1, "user_store"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->edit()Linfo/flowersoft/theotown/util/SSP$Writer;

    move-result-object v0

    .line 92
    const-string v1, "id"

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/SSP$Writer;->putLong(Ljava/lang/String;J)V

    .line 93
    const-string v1, "name"

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "email"

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/User;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "fb_id"

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/User;->getSocial_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "social_type"

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/User;->getSocial_type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "steam_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/User;->getSteamId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "steam_name"

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/User;->getSteamName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "forum_name"

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/User;->getForumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "forum_pw"

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/User;->getForumPw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "forum_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/User;->getForumId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "forum_color"

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/User;->getForumColor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/backend/ConcreteUserStore;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-interface {v0}, Linfo/flowersoft/theotown/util/SSP$Writer;->apply()V
    :try_end_bc
    .catchall {:try_start_1 .. :try_end_bc} :catchall_be

    .line 105
    monitor-exit p0

    return-void

    :catchall_be
    move-exception p1

    :try_start_bf
    monitor-exit p0
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw p1
.end method

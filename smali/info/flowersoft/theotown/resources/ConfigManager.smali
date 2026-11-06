###### Class info.flowersoft.theotown.resources.ConfigManager (info.flowersoft.theotown.resources.ConfigManager)
.class public Linfo/flowersoft/theotown/resources/ConfigManager;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# static fields
.field public static instance:Linfo/flowersoft/theotown/resources/ConfigManager;


# instance fields
.field public final DEFAULT_URL:Ljava/lang/String;

.field public final PREF_NAME:Ljava/lang/String;

.field public config:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public lastOnflineFetchMS:J

.field public upToDate:Z


# direct methods
.method public static synthetic $r8$lambda$Bav-DNhyjCfleHqLlKt1bBVWSlk(Linfo/flowersoft/theotown/resources/ConfigManager;)V
    .registers 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "config url"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    const-string v0, "https://api.theotown.com/magic/get_config?"

    .line 94
    :cond_16
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "version="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&vi="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSIONI:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&config="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "version"

    .line 97
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&p="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 98
    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p0, v0, v3}, Linfo/flowersoft/theotown/resources/ConfigManager;->download(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d8

    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d8

    const/16 v1, 0x7d

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/2addr v1, v3

    .line 104
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v1, Linfo/flowersoft/theotown/util/LegacySignatureVerifier;

    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->KEYS:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v6, "static files private key2"

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v1, v5}, Linfo/flowersoft/theotown/util/LegacySignatureVerifier;-><init>([B)V

    .line 109
    :try_start_93
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-static {v5}, Linfo/flowersoft/theotown/util/Hashing;->md5([B)[B

    move-result-object v5

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Linfo/flowersoft/theotown/util/LegacySignatureVerifier;->verifySign([B[B)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 110
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/resources/ConfigManager;->resolveConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_d5

    .line 111
    const-string v1, "min compat version"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    sget v5, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    if-gt v1, v5, :cond_d5

    const-string v1, "version"

    .line 112
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 113
    monitor-enter p0
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_c0} :catch_cd

    .line 114
    :try_start_c0
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/resources/ConfigManager;->setConfig(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/ConfigManager;->saveConfig()V

    .line 116
    iput-boolean v3, p0, Linfo/flowersoft/theotown/resources/ConfigManager;->upToDate:Z

    .line 117
    monitor-exit p0

    return-void

    :catchall_ca
    move-exception v0

    .line 118
    monitor-exit p0
    :try_end_cc
    .catchall {:try_start_c0 .. :try_end_cc} :catchall_ca

    :try_start_cc
    throw v0
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_cd} :catch_cd

    :catch_cd
    move-exception v0

    .line 122
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v3, "Verify"

    invoke-interface {v1, v3, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 124
    :cond_d5
    iput-boolean v2, p0, Linfo/flowersoft/theotown/resources/ConfigManager;->upToDate:Z

    goto :goto_ee

    :cond_d8
    if-eqz v0, :cond_db

    move v2, v3

    .line 126
    :cond_db
    iput-boolean v2, p0, Linfo/flowersoft/theotown/resources/ConfigManager;->upToDate:Z

    .line 128
    :try_start_dd
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "config url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 129
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/ConfigManager;->saveConfig()V
    :try_end_e9
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_dd .. :try_end_e9} :catch_ea

    return-void

    :catch_ea
    move-exception p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_ee
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "dynamic_config_file"

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/ConfigManager;->PREF_NAME:Ljava/lang/String;

    .line 34
    const-string v0, "https://api.theotown.com/magic/get_config?"

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/ConfigManager;->DEFAULT_URL:Ljava/lang/String;

    .line 38
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/ConfigManager;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 45
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-void
.end method

.method public static getInstance()Linfo/flowersoft/theotown/resources/ConfigManager;
    .registers 1

    .line 213
    sget-object v0, Linfo/flowersoft/theotown/resources/ConfigManager;->instance:Linfo/flowersoft/theotown/resources/ConfigManager;

    if-nez v0, :cond_b

    .line 214
    new-instance v0, Linfo/flowersoft/theotown/resources/ConfigManager;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/ConfigManager;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/ConfigManager;->instance:Linfo/flowersoft/theotown/resources/ConfigManager;

    .line 216
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/resources/ConfigManager;->instance:Linfo/flowersoft/theotown/resources/ConfigManager;

    return-object v0
.end method


# virtual methods
.method public download(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    .line 161
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_c
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_c} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_9c
    .catchall {:try_start_1 .. :try_end_c} :catchall_98

    const/4 v1, 0x0

    .line 163
    :try_start_d
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 164
    const-string v2, "GET"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 165
    invoke-static {p1}, Linfo/flowersoft/theotown/backend/BackendConnector;->applyHeaders(Ljava/net/URLConnection;)V

    .line 166
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 172
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_4f

    .line 173
    sget-object p2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "ConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_3f} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3f} :catch_47
    .catchall {:try_start_d .. :try_end_3f} :catchall_43

    .line 208
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_43
    move-exception p2

    move-object v2, v0

    goto/16 :goto_cf

    :catch_47
    move-exception p2

    move-object v1, v0

    :goto_49
    move-object v2, v1

    goto/16 :goto_a3

    :catch_4c
    move-object v2, v0

    goto/16 :goto_bd

    .line 178
    :cond_4f
    :try_start_4f
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_53
    .catch Ljava/io/EOFException; {:try_start_4f .. :try_end_53} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_53} :catch_47
    .catchall {:try_start_4f .. :try_end_53} :catchall_43

    if-eqz p2, :cond_62

    .line 179
    :try_start_55
    new-instance p2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p2, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, p2

    goto :goto_62

    :catchall_5c
    move-exception p2

    goto/16 :goto_cf

    :catch_5f
    move-exception p2

    move-object v1, v0

    goto :goto_a3

    .line 180
    :cond_62
    :goto_62
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_67
    .catch Ljava/io/EOFException; {:try_start_55 .. :try_end_67} :catch_bd
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_67} :catch_5f
    .catchall {:try_start_55 .. :try_end_67} :catchall_5c

    .line 182
    :try_start_67
    invoke-static {}, Lio/blueflower/stapel2d/util/StreamCopyUtil;->getBuffer()[B

    move-result-object v3

    move v4, v1

    .line 185
    :goto_6c
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_88

    const/high16 v6, 0x1400000

    if-ge v4, v6, :cond_88

    add-int/2addr v4, v5

    .line 187
    invoke-virtual {p2, v3, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_6c

    :catchall_7c
    move-exception v0

    move-object v7, v0

    move-object v0, p2

    move-object p2, v7

    goto :goto_cf

    :catch_81
    move-exception v1

    move-object v7, v1

    move-object v1, p2

    move-object p2, v7

    goto :goto_a3

    :catch_86
    move-object v0, p2

    goto :goto_bd

    .line 192
    :cond_88
    const-string v1, "UTF8"

    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8e
    .catch Ljava/io/EOFException; {:try_start_67 .. :try_end_8e} :catch_86
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_8e} :catch_81
    .catchall {:try_start_67 .. :try_end_8e} :catchall_7c

    .line 201
    :try_start_8e
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 203
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_94} :catch_94

    .line 208
    :catch_94
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_98
    move-exception p2

    move-object p1, v0

    move-object v2, p1

    goto :goto_cf

    :catch_9c
    move-exception p2

    move-object p1, v0

    move-object v1, p1

    goto :goto_49

    :catch_a0
    move-object p1, v0

    move-object v2, p1

    goto :goto_bd

    .line 196
    :goto_a3
    :try_start_a3
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v4, "Download"

    invoke-interface {v3, v4, p2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_aa
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_ba

    if-eqz v1, :cond_af

    .line 201
    :try_start_ac
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_af
    if-eqz v2, :cond_b4

    .line 203
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b4} :catch_b4

    :catch_b4
    :cond_b4
    if-eqz p1, :cond_b9

    .line 208
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b9
    return-object v0

    :catchall_ba
    move-exception p2

    move-object v0, v1

    goto :goto_cf

    .line 194
    :catch_bd
    :goto_bd
    :try_start_bd
    const-string p2, ""
    :try_end_bf
    .catchall {:try_start_bd .. :try_end_bf} :catchall_5c

    if-eqz v0, :cond_c4

    .line 201
    :try_start_c1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_c4
    if-eqz v2, :cond_c9

    .line 203
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c9} :catch_c9

    :catch_c9
    :cond_c9
    if-eqz p1, :cond_ce

    .line 208
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ce
    return-object p2

    :goto_cf
    if-eqz v0, :cond_d4

    .line 201
    :try_start_d1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_d4
    if-eqz v2, :cond_d9

    .line 203
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d9} :catch_d9

    :catch_d9
    :cond_d9
    if-eqz p1, :cond_de

    .line 208
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 209
    :cond_de
    throw p2
.end method

.method public declared-synchronized fetchLocal()V
    .registers 6

    monitor-enter p0

    .line 49
    :try_start_1
    new-instance v0, Linfo/flowersoft/theotown/util/SSP;

    const-string v1, "dynamic_config_file"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->load()Linfo/flowersoft/theotown/util/SSP$Reader;

    move-result-object v0

    .line 50
    const-string v1, "config.json"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/resources/ConfigManager;->resolveConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    .line 53
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/ConfigManager;->getResConfig()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/resources/ConfigManager;->resolveConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3b

    if-eqz v1, :cond_34

    .line 57
    const-string v4, "version"

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "version"

    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-le v3, v4, :cond_3b

    goto :goto_34

    :catchall_32
    move-exception v0

    goto :goto_42

    .line 58
    :cond_34
    :goto_34
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/resources/ConfigManager;->setConfig(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/ConfigManager;->saveConfig()V

    goto :goto_40

    :cond_3b
    if-eqz v1, :cond_40

    .line 61
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/resources/ConfigManager;->setConfig(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_32

    .line 63
    :cond_40
    :goto_40
    monitor-exit p0

    return-void

    :goto_42
    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_32

    throw v0
.end method

.method public fetchOnline()V
    .registers 7

    .line 88
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/resources/ConfigManager;->lastOnflineFetchMS:J

    sub-long/2addr v0, v2

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "refresh seconds"

    const/16 v4, 0x3c

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1a

    return-void

    .line 89
    :cond_1a
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/resources/ConfigManager;->lastOnflineFetchMS:J

    .line 91
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Linfo/flowersoft/theotown/resources/ConfigManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/resources/ConfigManager$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/resources/ConfigManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final getResConfig()Ljava/lang/String;
    .registers 3

    .line 81
    :try_start_0
    sget-object v0, Linfo/flowersoft/theotown/util/PackedUtils;->INSTANCE:Linfo/flowersoft/theotown/util/PackedUtils;

    const-string v1, "config.lby"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/PackedUtils;->readInternalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 83
    :catch_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Missing config file, did you forget to execute `:download` ?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isUpToDate()Z
    .registers 2

    .line 66
    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/ConfigManager;->upToDate:Z

    return v0
.end method

.method public final resolveConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_18

    .line 72
    :cond_a
    :try_start_a
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception p1

    .line 74
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v2, "Resolve"

    invoke-interface {v1, v2, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_18
    :goto_18
    return-object v0
.end method

.method public final declared-synchronized saveConfig()V
    .registers 4

    monitor-enter p0

    .line 138
    :try_start_1
    new-instance v0, Linfo/flowersoft/theotown/util/SSP;

    const-string v1, "dynamic_config_file"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->edit()Linfo/flowersoft/theotown/util/SSP$Writer;

    move-result-object v0

    .line 139
    const-string v1, "config.json"

    iget-object v2, p0, Linfo/flowersoft/theotown/resources/ConfigManager;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-interface {v0}, Linfo/flowersoft/theotown/util/SSP$Writer;->apply()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 141
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public final declared-synchronized setConfig(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 145
    :try_start_1
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/ConfigManager;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 146
    sput-object v0, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_d
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    goto :goto_15

    :catchall_b
    move-exception p1

    goto :goto_17

    :catch_d
    move-exception p1

    .line 148
    :try_start_e
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "Set"

    invoke-interface {v0, v1, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_b

    .line 150
    :goto_15
    monitor-exit p0

    return-void

    :goto_17
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_b

    throw p1
.end method

###### Class info.flowersoft.theotown.resources.ConfigManager$$ExternalSyntheticLambda0 (info.flowersoft.theotown.resources.ConfigManager$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/resources/ConfigManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/resources/ConfigManager;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/resources/ConfigManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ConfigManager$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/resources/ConfigManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ConfigManager$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/resources/ConfigManager;

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/ConfigManager;->$r8$lambda$Bav-DNhyjCfleHqLlKt1bBVWSlk(Linfo/flowersoft/theotown/resources/ConfigManager;)V

    return-void
.end method

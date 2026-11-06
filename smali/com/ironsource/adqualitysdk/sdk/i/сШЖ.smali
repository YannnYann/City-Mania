###### Class com.ironsource.adqualitysdk.sdk.i.C0616 (com.ironsource.adqualitysdk.sdk.i.ᘆ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᘆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ᴮ;


# static fields
.field public static final ｋ:[Ljava/lang/String;

.field public static final ﾇ:[Ljava/lang/String;


# instance fields
.field public final ﾒ:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const-string v0, "ZFqK\n"

    const-string v1, "Fz7hgf3BWJA=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tJ5Pt5Fhfau3mg==\n"

    const-string v2, "0/Eg0P0EItg=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KFUw7OkhMI81VA==\n"

    const-string v3, "WzFbs45RWOA=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘆ;->ﾇ:[Ljava/lang/String;

    .line 4
    const-string v0, "vf7p8XG0V2o=\n"

    const-string v1, "+JOcnRDAOBg=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "o2u58kC1rPWxQZY=\n"

    const-string v2, "4gXdgC/cyNU=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘆ;->ｋ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᘆ;->ﾒ:Landroid/content/Context;

    return-void
.end method

.method public static ﾇ()Z
    .registers 8

    .line 1
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 4
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ᘆ;->ﾇ:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_d
    const/4 v6, 0x1

    if-ge v5, v3, :cond_20

    aget-object v7, v2, v5

    .line 5
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1d

    return v6

    :cond_1d
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 7
    :cond_20
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘆ;->ｋ:[Ljava/lang/String;

    array-length v2, v0

    move v3, v4

    :goto_24
    if-ge v3, v2, :cond_3a

    aget-object v5, v0, v3

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_37

    return v6

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_3a
    return v4
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "8LAPcmg0/YXZpAl+ejv7ifu4CW8=\n"

    const-string v1, "mNF9Fh9Vj+A=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;
    .registers 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_1d

    const/16 v6, 0x32

    .line 5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1d
    :try_start_1d
    iget-object v8, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘆ;->ﾒ:Landroid/content/Context;

    const-string v9, "XSZj3qYEaQo=\n"

    const-string v10, "PEUXt9BtHXM=\n"

    invoke-static {v9, v10}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 7
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    if-nez v8, :cond_30

    goto :goto_3f

    .line 9
    :cond_30
    new-instance v9, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v9}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 10
    invoke-virtual {v8, v9}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 11
    iget-wide v8, v9, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v10, 0x100000

    div-long/2addr v8, v10
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3e} :catch_3f

    goto :goto_41

    :catch_3f
    :goto_3f
    const-wide/16 v8, 0x0

    :goto_41
    const-wide/16 v10, 0x400

    cmp-long v10, v8, v10

    if-gez v10, :cond_50

    const/16 v10, 0x33

    .line 12
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    const/4 v10, 0x5

    .line 13
    :try_start_51
    new-array v11, v10, [J

    move v12, v1

    :goto_54
    if-ge v12, v10, :cond_91

    .line 15
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5a} :catch_8c

    move v15, v1

    const-wide/16 v16, 0x0

    const/16 v18, 0x1

    :goto_5f
    const/16 v3, 0x2710

    if-ge v15, v3, :cond_6c

    const-wide/16 v19, 0x0

    int-to-long v6, v15

    mul-long/2addr v6, v6

    add-long v16, v6, v16

    add-int/lit8 v15, v15, 0x1

    goto :goto_5f

    :cond_6c
    const-wide/16 v19, 0x0

    .line 20
    :try_start_6e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v13

    aput-wide v6, v11, v12

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v3, v16, v6

    if-eqz v3, :cond_7e

    add-int/lit8 v12, v12, 0x1

    goto :goto_54

    .line 23
    :cond_7e
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v6, "qPUZlbEZele/9w4=\n"

    const-string v7, "3Ztr8NB6EjY=\n"

    invoke-static {v6, v7}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_8c
    const/16 v18, 0x1

    const-wide/16 v19, 0x0

    goto :goto_c9

    :cond_91
    const/16 v18, 0x1

    const-wide/16 v19, 0x0

    const-wide/16 v6, 0x0

    move v3, v1

    move-wide v12, v6

    :goto_99
    if-ge v3, v10, :cond_a2

    .line 28
    aget-wide v14, v11, v3

    long-to-double v14, v14

    add-double/2addr v12, v14

    add-int/lit8 v3, v3, 0x1

    goto :goto_99

    :cond_a2
    int-to-double v14, v10

    div-double/2addr v12, v14

    cmpl-double v3, v12, v6

    if-nez v3, :cond_ae

    .line 32
    new-array v3, v2, [J

    fill-array-data v3, :array_230

    goto :goto_d1

    :cond_ae
    move v3, v1

    :goto_af
    if-ge v3, v10, :cond_bf

    move-object/from16 v17, v11

    .line 35
    aget-wide v10, v17, v3

    long-to-double v10, v10

    sub-double/2addr v10, v12

    mul-double/2addr v10, v10

    add-double/2addr v6, v10

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v11, v17

    const/4 v10, 0x5

    goto :goto_af

    :cond_bf
    div-double/2addr v6, v14

    double-to-long v10, v12

    double-to-long v6, v6

    .line 40
    new-array v3, v2, [J

    aput-wide v10, v3, v1

    aput-wide v6, v3, v18
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_c8} :catch_c9

    goto :goto_d1

    .line 42
    :catch_c9
    :goto_c9
    new-array v3, v2, [J

    aput-wide v19, v3, v1

    const-wide/16 v6, -0x1

    aput-wide v6, v3, v18

    .line 43
    :goto_d1
    aget-wide v6, v3, v1

    .line 44
    aget-wide v2, v3, v18

    cmp-long v10, v2, v19

    if-lez v10, :cond_f4

    cmp-long v10, v6, v19

    if-gtz v10, :cond_de

    goto :goto_f4

    :cond_de
    long-to-double v10, v2

    .line 45
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    long-to-double v6, v6

    div-double/2addr v10, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v6, v10, v6

    if-lez v6, :cond_f4

    const/16 v6, 0x34

    .line 46
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_f4
    :goto_f4
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ᘆ;->ﾇ()Z

    move-result v6

    if-eqz v6, :cond_103

    const/16 v6, 0x35

    .line 50
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_103
    sget-object v6, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 52
    const-string v7, "ofHhDSvOMQ==\n"

    const-string v10, "xpSPaFmnUkk=\n"

    invoke-static {v7, v10}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v12, "SIq+NXP02dA=\n"

    const-string v13, "PO/NQV6fvKk7\n"

    if-nez v11, :cond_125

    invoke-static {v13, v12}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12e

    :cond_125
    const/16 v6, 0x36

    .line 53
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12e
    const/4 v6, -0x1

    .line 54
    :try_start_12f
    iget-object v11, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘆ;->ﾒ:Landroid/content/Context;

    const-string v14, "Im1ByqHG\n"

    const-string v15, "UQgvuc60PK0=\n"

    invoke-static {v14, v15}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 55
    invoke-virtual {v11, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/SensorManager;

    if-nez v11, :cond_142

    goto :goto_14c

    .line 57
    :cond_142
    invoke-virtual {v11, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_14a} :catch_14c

    :goto_14a
    const/4 v14, 0x5

    goto :goto_14e

    :catch_14c
    :goto_14c
    move v11, v1

    goto :goto_14a

    :goto_14e
    if-ge v11, v14, :cond_159

    const/16 v14, 0x37

    .line 58
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_159
    const/4 v14, 0x0

    .line 59
    :try_start_15a
    new-instance v15, Landroid/content/IntentFilter;

    const-string v1, "EEXPXgUKWsMYRd9JBBcQjBJfwkMETXysJX/ufjM8faUwZexpLg==\n"
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_15e} :catch_17f

    :try_start_15e
    const-string v6, "cSurLGpjPu0=\n"

    invoke-static {v1, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 60
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘆ;->ﾒ:Landroid/content/Context;

    invoke-virtual {v1, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_171

    :catch_16f
    const/4 v15, -0x1

    goto :goto_180

    .line 62
    :cond_171
    const-string v6, "Kci5wUSHJcEo37E=\n"

    const-string v15, "Xa3UsSH1RLU=\n"

    invoke-static {v6, v15}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_179} :catch_16f

    const/4 v15, -0x1

    :try_start_17a
    invoke-virtual {v1, v6, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_17e} :catch_180

    goto :goto_181

    :catch_17f
    move v15, v6

    :catch_180
    :goto_180
    move v6, v15

    :goto_181
    const/16 v1, 0xfa

    if-ne v6, v1, :cond_18e

    const/16 v1, 0x38

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_18e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 68
    :try_start_193
    const-string v15, "GTTac35TzuwfNQ==\n"

    const-string v14, "cEefHgs/r5g=\n"

    invoke-static {v15, v14}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ᘆ;->ﾇ()Z

    move-result v15

    if-nez v15, :cond_1be

    .line 69
    sget-object v15, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 70
    invoke-static {v7, v10}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1be

    invoke-static {v13, v12}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1bc

    goto :goto_1be

    :cond_1bc
    const/4 v7, 0x0

    goto :goto_1c0

    :cond_1be
    :goto_1be
    move/from16 v7, v18

    .line 71
    :goto_1c0
    invoke-virtual {v1, v14, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_193 .. :try_end_1c3} :catch_1c3

    .line 72
    :catch_1c3
    :try_start_1c3
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 73
    const-string v10, "x0Gvieh5wizFcK+f434=\n"

    const-string v12, "tzPA6o0KsUM=\n"

    invoke-static {v10, v12}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    const-string v5, "wKXH4+Qt/p7buMrPyg==\n"

    const-string v10, "tMqzgohgm/M=\n"

    invoke-static {v5, v10}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 75
    const-string v5, "XzwRA8w6BzJZPB0EwTgfIA==\n"

    const-string v8, "K1V8aqJdUVM=\n"

    invoke-static {v5, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 76
    const-string v2, "rbX5FZjF+HOrvuM=\n"

    const-string v3, "3tCXZve3uxw=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    const-string v2, "22xpVASYNtzcYG0=\n"

    const-string v3, "uQ0dIGHqT4g=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    const-string v2, "f5fVIJBXDGZjmdQ1j00QdA==\n"

    const-string v3, "F/amZf0iYAc=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "xO030Wcag13C7A==\n"

    const-string v5, "rZ5yvBJ24ik=\n"

    invoke-static {v3, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v7, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 79
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_21b
    .catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_21b} :catch_21c

    goto :goto_224

    .line 81
    :catch_21c
    const-string v1, "C20=\n"

    const-string v2, "cBAdHipgDIU=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    :goto_224
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v5, 0x0

    .line 83
    invoke-direct {v2, v3, v4, v1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;-><init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    nop

    :array_230
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.C0349 (com.ironsource.adqualitysdk.sdk.i.ڽ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ڽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ᴮ;


# instance fields
.field public final ﾒ:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ڽ;->ﾒ:Landroid/content/Context;

    return-void
.end method

.method public static ﾒ(Ljava/util/concurrent/CopyOnWriteArrayList;)D
    .registers 14

    .line 170
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_a

    return-wide v1

    :cond_a
    const/4 v0, 0x0

    move-wide v4, v1

    :goto_c
    if-gt v0, v3, :cond_4c

    .line 175
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v7, v1

    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_24

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    .line 176
    aget v9, v9, v0

    float-to-double v9, v9

    add-double/2addr v7, v9

    goto :goto_13

    .line 178
    :cond_24
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    int-to-double v9, v6

    div-double/2addr v7, v9

    .line 181
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v9, v1

    :goto_2f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_42

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [F

    .line 182
    aget v11, v11, v0

    float-to-double v11, v11

    sub-double/2addr v11, v7

    mul-double/2addr v11, v11

    add-double/2addr v9, v11

    goto :goto_2f

    .line 185
    :cond_42
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v9, v6

    add-double/2addr v4, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_4c
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v0

    return-wide v4
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "WOX7lnHK2atb7MCSadDZqw==\n"

    const-string v1, "OoCT9wejttk=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;
    .registers 20

    move-object/from16 v1, p0

    const/4 v0, 0x1

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/ڽ;->ﾒ:Landroid/content/Context;

    const-string v4, "bL0ZcLfq\n"

    const-string v5, "H9h3A9iY1Rc=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    const/16 v4, 0x3c

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v3, :cond_33

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;

    const-string v3, "i0hKU2ugaKW2TENFdvJQqrlbRUlos0eovQ==\n"

    const-string v4, "2C0kIATSJcQ=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v6, v2, v5, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;-><init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 11
    :cond_33
    invoke-virtual {v3, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v7

    const/4 v8, 0x4

    .line 12
    invoke-virtual {v3, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v8

    const/4 v9, 0x6

    .line 13
    invoke-virtual {v3, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    const/4 v10, 0x2

    .line 14
    invoke-virtual {v3, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v11

    if-nez v8, :cond_51

    const/16 v12, 0x3d

    .line 17
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51
    if-nez v9, :cond_5c

    const/16 v12, 0x3e

    .line 20
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_5c
    new-instance v12, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 25
    new-instance v13, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/high16 v14, 0x7fc00000    # Float.NaN

    .line 26
    new-array v15, v0, [F

    aput v14, v15, v6

    move/from16 v16, v10

    .line 27
    new-array v10, v0, [F

    aput v14, v10, v6

    .line 29
    new-instance v14, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v14, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 30
    new-instance v5, Landroid/os/HandlerThread;

    move/from16 v17, v0

    const-string v0, "tnpGuHgBKbiVc328YBspuKd+Q6liDTQ=\n"

    const-string v6, "9B8u2Q5oRso=\n"

    invoke-static {v0, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 34
    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/ܫ;

    invoke-direct {v6, v12, v13, v15, v10}, Lcom/ironsource/adqualitysdk/sdk/i/ܫ;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/CopyOnWriteArrayList;[F[F)V

    if-eqz v7, :cond_a4

    const/4 v15, 0x0

    .line 66
    :try_start_9a
    invoke-virtual {v3, v6, v7, v15, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_a5

    :catchall_9e
    move-exception v0

    goto/16 :goto_1f6

    :catch_a1
    move-object v11, v9

    move-object v15, v10

    goto :goto_cb

    :cond_a4
    const/4 v15, 0x0

    :goto_a5
    if-eqz v8, :cond_aa

    .line 70
    invoke-virtual {v3, v6, v8, v15, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :cond_aa
    if-eqz v9, :cond_af

    .line 74
    invoke-virtual {v3, v6, v9, v15, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :cond_af
    if-eqz v11, :cond_b4

    .line 78
    invoke-virtual {v3, v6, v11, v15, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 83
    :cond_b4
    new-instance v8, Lcom/ironsource/adqualitysdk/sdk/i/ܐ;

    invoke-direct {v8, v14}, Lcom/ironsource/adqualitysdk/sdk/i/ܐ;-><init>(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_b9
    .catch Ljava/lang/InterruptedException; {:try_start_9a .. :try_end_b9} :catch_a1
    .catchall {:try_start_9a .. :try_end_b9} :catchall_9e

    move-object v11, v9

    move-object v15, v10

    const-wide/16 v9, 0x1f4

    :try_start_bd
    invoke-virtual {v0, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x258

    invoke-virtual {v14, v8, v9, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_c7
    .catch Ljava/lang/InterruptedException; {:try_start_bd .. :try_end_c7} :catch_cb
    .catchall {:try_start_bd .. :try_end_c7} :catchall_9e

    .line 95
    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_d5

    .line 100
    :catch_cb
    :goto_cb
    :try_start_cb
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_d2
    .catchall {:try_start_cb .. :try_end_d2} :catchall_9e

    .line 102
    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 97
    :goto_d5
    invoke-virtual {v5}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 111
    invoke-static {v12}, Lcom/ironsource/adqualitysdk/sdk/i/ڽ;->ﾒ(Ljava/util/concurrent/CopyOnWriteArrayList;)D

    move-result-wide v5

    .line 112
    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_e5

    move v0, v3

    goto :goto_11d

    .line 115
    :cond_e5
    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v8, 0x0

    :cond_ea
    :goto_ea
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_116

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    const/16 v18, 0x0

    .line 116
    aget v10, v9, v18

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    aget v14, v9, v17

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    add-float/2addr v14, v10

    aget v9, v9, v16

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    add-float/2addr v9, v14

    const v10, 0x3d4ccccd    # 0.05f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_ea

    add-int/lit8 v8, v8, 0x1

    goto :goto_ea

    :cond_116
    int-to-float v0, v8

    .line 121
    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v0, v8

    .line 122
    :goto_11d
    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_128

    if-eqz v7, :cond_128

    .line 123
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_128
    const v4, 0x3f666666    # 0.9f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_138

    const/16 v4, 0x3f

    .line 127
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_138
    invoke-static {v13}, Lcom/ironsource/adqualitysdk/sdk/i/ڽ;->ﾒ(Ljava/util/concurrent/CopyOnWriteArrayList;)D

    move-result-wide v7

    .line 132
    :try_start_13c
    iget-object v4, v1, Lcom/ironsource/adqualitysdk/sdk/i/ڽ;->ﾒ:Landroid/content/Context;

    .line 133
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v9, "kWfIKc1yY5iQbd0k3HJZiZE=\n"

    const-string v10, "4gS6TKgcPPo=\n"

    invoke-static {v9, v10}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    .line 134
    invoke-static {v4, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-gez v4, :cond_152

    goto :goto_15b

    :cond_152
    int-to-float v4, v4

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v4, v9

    .line 139
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_15a} :catch_15b

    goto :goto_15c

    :catch_15b
    :goto_15b
    const/4 v4, 0x0

    :goto_15c
    if-eqz v4, :cond_16f

    .line 140
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v9

    cmpl-float v3, v9, v3

    if-nez v3, :cond_16f

    const/16 v3, 0x40

    .line 141
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16f
    if-eqz v11, :cond_176

    move/from16 v3, v17

    :goto_173
    const/16 v18, 0x0

    goto :goto_178

    :cond_176
    const/4 v3, 0x0

    goto :goto_173

    .line 146
    :goto_178
    aget v9, v15, v18

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_182

    const/4 v9, 0x0

    goto :goto_188

    :cond_182
    aget v9, v15, v18

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    .line 147
    :goto_188
    :try_start_188
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 148
    const-string v11, "UlSgDPZlQ6BeUrcM6FZQvVpWrQr/\n"

    const-string v12, "MzfDaZoAMc8=\n"

    invoke-static {v11, v12}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 149
    const-string v5, "khtIgdPawliQNFucydjDS5A=\n"

    const-string v6, "9WI67qC5rSg=\n"

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 150
    const-string v5, "p5tb4TBe/IeykHvvCVjn\n"

    const-string v6, "3f4pjn0xiO4=\n"

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    float-to-double v6, v0

    invoke-virtual {v10, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    if-eqz v4, :cond_1c1

    .line 152
    const-string v0, "+7Fsd6gz9WPqsA==\n"

    const-string v5, "mcMFEMBHmwY=\n"

    invoke-static {v0, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v10, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 154
    :cond_1c1
    const-string v0, "dLDLkRAE+Ddpo90=\n"

    const-string v4, "HNG4wWJhi0Q=\n"

    invoke-static {v0, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz v9, :cond_1de

    .line 156
    const-string v0, "EtOm2HoZTBI526Taez5RAxrcpsJ3\n"

    const-string v3, "f7LBth9tJXE=\n"

    invoke-static {v0, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v10, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 158
    :cond_1de
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1e2
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_1e2} :catch_1e3

    goto :goto_1eb

    .line 160
    :catch_1e3
    const-string v0, "XLA=\n"

    const-string v3, "J81SF71mXCU=\n"

    invoke-static {v0, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    :goto_1eb
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    .line 162
    invoke-direct {v3, v4, v2, v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;-><init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 163
    :goto_1f6
    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 165
    invoke-virtual {v5}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 169
    throw v0
.end method

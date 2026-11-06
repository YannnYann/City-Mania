###### Class com.badlogic.gdx.backends.android.AndroidTouchHandler (com.badlogic.gdx.backends.android.AndroidTouchHandler)
.class public Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;
.super Ljava/lang/Object;
.source "AndroidTouchHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V
    .registers 18

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 34
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v10, v1, 0xff

    .line 35
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const v3, 0xff00

    and-int/2addr v1, v3

    shr-int/lit8 v11, v1, 0x8

    .line 36
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 42
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 43
    monitor-enter p2

    const/16 v12, 0x14

    const/4 v13, -0x1

    const/4 v14, 0x0

    packed-switch v10, :pswitch_data_146

    goto/16 :goto_139

    .line 94
    :pswitch_26
    :try_start_26
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    :goto_2a
    if-ge v14, v10, :cond_139

    .line 97
    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 98
    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v4, v3

    .line 99
    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v5, v3

    .line 100
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->lookUpPointerIndex(I)I

    move-result v6

    if-ne v6, v13, :cond_41

    goto :goto_80

    :cond_41
    if-lt v6, v12, :cond_45

    goto/16 :goto_139

    .line 103
    :cond_45
    iget-object v1, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->button:[I

    aget v7, v1, v6
    :try_end_49
    .catchall {:try_start_26 .. :try_end_49} :catchall_83

    if-eq v7, v13, :cond_58

    const/4 v3, 0x2

    move-object v1, p0

    .line 105
    :try_start_4d
    invoke-virtual/range {v1 .. v9}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_53

    move-object/from16 v2, p2

    goto :goto_60

    :catchall_53
    move-exception v0

    move-object/from16 v2, p2

    goto/16 :goto_144

    :cond_58
    const/4 v3, 0x4

    const/4 v7, 0x0

    move-object v1, p0

    move-object/from16 v2, p2

    .line 107
    :try_start_5d
    invoke-virtual/range {v1 .. v9}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V

    .line 108
    :goto_60
    iget-object v1, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaX:[I

    iget-object v3, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchX:[I

    aget v7, v3, v6

    sub-int v7, v4, v7

    aput v7, v1, v6

    .line 109
    iget-object v1, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaY:[I

    iget-object v7, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchY:[I

    aget v11, v7, v6

    sub-int v11, v5, v11

    aput v11, v1, v6

    .line 110
    aput v4, v3, v6

    .line 111
    aput v5, v7, v6

    .line 112
    iget-object v1, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressure:[F

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v3

    aput v3, v1, v6
    :try_end_80
    .catchall {:try_start_5d .. :try_end_80} :catchall_83

    :goto_80
    add-int/lit8 v14, v14, 0x1

    goto :goto_2a

    :catchall_83
    move-exception v0

    goto/16 :goto_144

    .line 67
    :pswitch_86
    :try_start_86
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->lookUpPointerIndex(I)I

    move-result v6

    if-ne v6, v13, :cond_8e

    goto/16 :goto_139

    :cond_8e
    if-lt v6, v12, :cond_92

    goto/16 :goto_139

    .line 70
    :cond_92
    iget-object v1, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    aput v13, v1, v6

    .line 71
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v4, v1

    .line 72
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v5, v0

    .line 73
    iget-object v0, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->button:[I

    aget v7, v0, v6
    :try_end_a4
    .catchall {:try_start_86 .. :try_end_a4} :catchall_ba

    const/4 v0, 0x3

    if-eq v7, v13, :cond_be

    if-ne v10, v0, :cond_b1

    const/4 v3, 0x5

    move-object v1, p0

    .line 76
    :try_start_ab
    invoke-virtual/range {v1 .. v9}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_53

    move-object/from16 v3, p2

    goto :goto_bf

    :cond_b1
    const/4 v3, 0x1

    move-object v1, p0

    move-object/from16 v2, p2

    .line 78
    :try_start_b5
    invoke-virtual/range {v1 .. v9}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_ba

    move-object v3, v2

    goto :goto_bf

    :catchall_ba
    move-exception v0

    move-object v3, v2

    goto/16 :goto_144

    :cond_be
    move-object v3, v2

    .line 80
    :goto_bf
    :try_start_bf
    iget-object v1, v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchX:[I

    aput v4, v1, v6

    .line 81
    iget-object v1, v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchY:[I

    aput v5, v1, v6

    .line 82
    iget-object v1, v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaX:[I

    aput v14, v1, v6

    .line 83
    iget-object v1, v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaY:[I

    aput v14, v1, v6

    .line 84
    iget-object v1, v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z

    aput-boolean v14, v1, v6

    .line 85
    iget-object v1, v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->button:[I

    aput v14, v1, v6

    .line 86
    iget-object v1, v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressure:[F

    const/4 v4, 0x0

    aput v4, v1, v6

    if-ne v10, v0, :cond_e8

    .line 88
    iget-object v0, v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    invoke-static {v0, v13}, Ljava/util/Arrays;->fill([II)V

    .line 89
    iget-object v0, v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z

    invoke-static {v0, v14}, Ljava/util/Arrays;->fill([ZZ)V

    :cond_e8
    :goto_e8
    move-object v2, v3

    goto :goto_139

    :catchall_ea
    move-exception v0

    move-object v2, v3

    goto :goto_144

    :pswitch_ed
    move-object v3, v2

    .line 47
    invoke-virtual {v3}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getFreePointerIndex()I

    move-result v6

    if-lt v6, v12, :cond_f5

    goto :goto_e8

    .line 49
    :cond_f5
    iget-object v4, v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    aput v1, v4, v6

    .line 50
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v4, v1

    .line 51
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v5, v1

    .line 52
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->toGdxButton(I)I

    move-result v7
    :try_end_10b
    .catchall {:try_start_bf .. :try_end_10b} :catchall_ea

    if-eq v7, v13, :cond_115

    const/4 v3, 0x0

    move-object v1, p0

    move-object/from16 v2, p2

    .line 53
    :try_start_111
    invoke-virtual/range {v1 .. v9}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V

    goto :goto_116

    :cond_115
    move-object v2, v3

    .line 54
    :goto_116
    iget-object v1, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchX:[I

    aput v4, v1, v6

    .line 55
    iget-object v1, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchY:[I

    aput v5, v1, v6

    .line 56
    iget-object v1, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaX:[I

    aput v14, v1, v6

    .line 57
    iget-object v1, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaY:[I

    aput v14, v1, v6

    .line 58
    iget-object v1, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z

    if-eq v7, v13, :cond_12b

    const/4 v14, 0x1

    :cond_12b
    aput-boolean v14, v1, v6

    .line 59
    iget-object v1, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->button:[I

    aput v7, v1, v6

    .line 60
    iget-object v1, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressure:[F

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    aput v0, v1, v6

    .line 116
    :cond_139
    :goto_139
    monitor-exit p2
    :try_end_13a
    .catchall {:try_start_111 .. :try_end_13a} :catchall_83

    .line 117
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    return-void

    .line 116
    :goto_144
    :try_start_144
    monitor-exit p2
    :try_end_145
    .catchall {:try_start_144 .. :try_end_145} :catchall_83

    throw v0

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_ed
        :pswitch_86
        :pswitch_26
        :pswitch_86
        :pswitch_86
        :pswitch_ed
        :pswitch_86
    .end packed-switch
.end method

.method public final postTouchEvent(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V
    .registers 10

    .line 151
    iget-object v0, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;

    .line 152
    iput-wide p7, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->timeStamp:J

    .line 153
    iput p5, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->pointer:I

    .line 154
    iput p3, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->x:I

    .line 155
    iput p4, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->y:I

    .line 156
    iput p2, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->type:I

    .line 157
    iput p6, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->button:I

    .line 158
    iget-object p1, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public supportsMultitouch(Landroid/content/Context;)Z
    .registers 3

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.touchscreen.multitouch"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final toGdxButton(I)I
    .registers 4

    .line 0
    if-eqz p1, :cond_1b

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_1b

    :cond_6
    const/4 v1, 0x2

    if-ne p1, v1, :cond_a

    return v0

    :cond_a
    const/4 v0, 0x4

    if-ne p1, v0, :cond_e

    return v1

    :cond_e
    const/16 v1, 0x8

    if-ne p1, v1, :cond_14

    const/4 p1, 0x3

    return p1

    :cond_14
    const/16 v1, 0x10

    if-ne p1, v1, :cond_19

    return v0

    :cond_19
    const/4 p1, -0x1

    return p1

    :cond_1b
    :goto_1b
    const/4 p1, 0x0

    return p1
.end method

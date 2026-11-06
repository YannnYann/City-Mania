###### Class com.badlogic.gdx.backends.android.AndroidMouseHandler (com.badlogic.gdx.backends.android.AndroidMouseHandler)
.class public Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;
.super Ljava/lang/Object;
.source "AndroidMouseHandler.java"


# instance fields
.field public deltaX:I

.field public deltaY:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->deltaX:I

    .line 30
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->deltaY:I

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/MotionEvent;Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)Z
    .registers 13

    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 35
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 41
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 42
    monitor-enter p2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_47

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1f

    move-object v1, p0

    move-object v2, p2

    goto :goto_65

    :cond_1f
    const/16 v0, 0x9

    .line 55
    :try_start_21
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    neg-float v0, v0

    float-to-int v7, v0

    const/16 v0, 0xa

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1
    :try_end_35
    .catchall {:try_start_21 .. :try_end_35} :catchall_43

    neg-float p1, p1

    float-to-int v6, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x3

    move-object v1, p0

    move-object v2, p2

    .line 57
    :try_start_3c
    invoke-virtual/range {v1 .. v9}, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V

    goto :goto_65

    :catchall_40
    move-exception v0

    :goto_41
    move-object p1, v0

    goto :goto_71

    :catchall_43
    move-exception v0

    move-object v1, p0

    move-object v2, p2

    goto :goto_41

    :cond_47
    move-object v1, p0

    move-object v2, p2

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int v4, p2

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int v5, p1

    .line 47
    iget p1, v1, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->deltaX:I

    if-ne v4, p1, :cond_5b

    iget p1, v1, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->deltaY:I

    if-eq v5, p1, :cond_65

    :cond_5b
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x4

    .line 48
    invoke-virtual/range {v1 .. v9}, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V

    .line 49
    iput v4, v1, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->deltaX:I

    .line 50
    iput v5, v1, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->deltaY:I

    .line 60
    :cond_65
    :goto_65
    monitor-exit v2
    :try_end_66
    .catchall {:try_start_3c .. :try_end_66} :catchall_40

    .line 61
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    const/4 p1, 0x1

    return p1

    .line 60
    :goto_71
    :try_start_71
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_40

    throw p1
.end method

.method public final postTouchEvent(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;IIIIIJ)V
    .registers 10

    .line 82
    iget-object v0, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;

    .line 83
    iput-wide p7, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->timeStamp:J

    .line 84
    iput p3, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->x:I

    .line 85
    iput p4, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->y:I

    .line 86
    iput p2, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->type:I

    .line 87
    iput p5, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->scrollAmountX:I

    .line 88
    iput p6, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->scrollAmountY:I

    .line 89
    iget-object p1, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

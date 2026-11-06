###### Class com.badlogic.gdx.backends.android.AndroidSound (com.badlogic.gdx.backends.android.AndroidSound)
.class public final Lcom/badlogic/gdx/backends/android/AndroidSound;
.super Ljava/lang/Object;
.source "AndroidSound.java"

# interfaces
.implements Lcom/badlogic/gdx/audio/Sound;


# instance fields
.field public final manager:Landroid/media/AudioManager;

.field public final soundId:I

.field public final soundPool:Landroid/media/SoundPool;

.field public final streamIds:Lcom/badlogic/gdx/utils/IntArray;


# direct methods
.method public constructor <init>(Landroid/media/SoundPool;Landroid/media/AudioManager;I)V
    .registers 6

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    .line 33
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    .line 34
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->manager:Landroid/media/AudioManager;

    .line 35
    iput p3, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundId:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    return-void
.end method

.method public loop(FFF)J
    .registers 14

    .line 158
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_b

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    :cond_b
    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_1b

    .line 162
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    sub-float/2addr v2, p3

    mul-float/2addr v2, p1

    move v5, p1

    move v6, v2

    goto :goto_2a

    :cond_1b
    cmpl-float v0, p3, v0

    if-lez v0, :cond_28

    .line 164
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    sub-float/2addr v2, p3

    mul-float/2addr v2, p1

    move v6, p1

    move v5, v2

    goto :goto_2a

    :cond_28
    move v5, p1

    move v6, v5

    .line 166
    :goto_2a
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    iget v4, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundId:I

    const/4 v7, 0x2

    const/4 v8, -0x1

    move v9, p2

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p1

    if-nez p1, :cond_3a

    const-wide/16 p1, -0x1

    return-wide p1

    .line 169
    :cond_3a
    iget-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Lcom/badlogic/gdx/utils/IntArray;->insert(II)V

    int-to-long p1, p1

    return-wide p1
.end method

.method public pause()V
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V

    return-void
.end method

.method public play(FFF)J
    .registers 14

    .line 141
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_b

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    :cond_b
    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_1b

    .line 145
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    sub-float/2addr v2, p3

    mul-float/2addr v2, p1

    move v5, p1

    move v6, v2

    goto :goto_2a

    :cond_1b
    cmpl-float v0, p3, v0

    if-lez v0, :cond_28

    .line 147
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    sub-float/2addr v2, p3

    mul-float/2addr v2, p1

    move v6, p1

    move v5, v2

    goto :goto_2a

    :cond_28
    move v5, p1

    move v6, v5

    .line 149
    :goto_2a
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    iget v4, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundId:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v9, p2

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p1

    if-nez p1, :cond_3a

    const-wide/16 p1, -0x1

    return-wide p1

    .line 152
    :cond_3a
    iget-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Lcom/badlogic/gdx/utils/IntArray;->insert(II)V

    int-to-long p1, p1

    return-wide p1
.end method

.method public setPan(JFF)V
    .registers 9

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_e

    .line 131
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    sub-float/2addr v2, p3

    mul-float/2addr v2, p4

    goto :goto_1d

    :cond_e
    cmpl-float v0, p3, v0

    if-lez v0, :cond_1c

    .line 133
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    sub-float/2addr v2, p3

    mul-float/2addr v2, p4

    move v3, v2

    move v2, p4

    move p4, v3

    goto :goto_1d

    :cond_1c
    move v2, p4

    .line 136
    :goto_1d
    iget-object p3, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    long-to-int p1, p1

    invoke-virtual {p3, p1, p4, v2}, Landroid/media/SoundPool;->setVolume(IFF)V

    return-void
.end method

.method public setPitch(JF)V
    .registers 5

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    long-to-int p1, p1

    invoke-virtual {v0, p1, p3}, Landroid/media/SoundPool;->setRate(IF)V

    return-void
.end method

.method public stop()V
    .registers 5

    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    .line 60
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->stop(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    return-void
.end method

.method public stop(J)V
    .registers 4

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->stop(I)V

    return-void
.end method

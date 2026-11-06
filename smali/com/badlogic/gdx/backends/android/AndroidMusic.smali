###### Class com.badlogic.gdx.backends.android.AndroidMusic (com.badlogic.gdx.backends.android.AndroidMusic)
.class public Lcom/badlogic/gdx/backends/android/AndroidMusic;
.super Ljava/lang/Object;
.source "AndroidMusic.java"

# interfaces
.implements Lcom/badlogic/gdx/audio/Music;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

.field public isPrepared:Z

.field public onCompletionListener:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

.field public player:Landroid/media/MediaPlayer;

.field public volume:F

.field public wasPlaying:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidAudio;Landroid/media/MediaPlayer;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->wasPlaying:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->volume:F

    .line 35
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    .line 36
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->onCompletionListener:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    .line 38
    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 5

    .line 43
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    goto :goto_25

    :cond_5
    const/4 v1, 0x0

    .line 45
    :try_start_6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_13

    .line 49
    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    .line 50
    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->onCompletionListener:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->notifyMusicDisposed(Lcom/badlogic/gdx/backends/android/AndroidMusic;)V

    return-void

    .line 47
    :catchall_13
    :try_start_13
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidMusic"

    const-string v3, "Error while disposing AndroidMusic instance, non-fatal"

    invoke-interface {v0, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_26

    .line 49
    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    .line 50
    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->onCompletionListener:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->notifyMusicDisposed(Lcom/badlogic/gdx/backends/android/AndroidMusic;)V

    :goto_25
    return-void

    :catchall_26
    move-exception v0

    .line 49
    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    .line 50
    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->onCompletionListener:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    .line 51
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-interface {v1, p0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->notifyMusicDisposed(Lcom/badlogic/gdx/backends/android/AndroidMusic;)V

    .line 52
    throw v0
.end method

.method public isPlaying()Z
    .registers 6

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 70
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    .line 72
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidMusic"

    const-string v4, "Error while checking isPlaying"

    invoke-interface {v2, v3, v4, v0}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 176
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->onCompletionListener:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    if-eqz p1, :cond_e

    .line 177
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidMusic$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/backends/android/AndroidMusic$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidMusic;)V

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method public pause()V
    .registers 5

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    return-void

    .line 81
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_10} :catch_11

    goto :goto_1b

    :catch_11
    move-exception v0

    .line 85
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidMusic"

    const-string v3, "Error trying to pause music"

    invoke-interface {v1, v2, v3, v0}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->wasPlaying:Z

    return-void
.end method

.method public play()V
    .registers 5

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    goto :goto_23

    .line 94
    :cond_5
    :try_start_5
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    if-nez v1, :cond_14

    .line 95
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    goto :goto_14

    :catch_10
    move-exception v0

    goto :goto_1a

    :catch_12
    move-exception v0

    goto :goto_1a

    .line 98
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_19
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_19} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_19} :catch_10

    return-void

    .line 100
    :goto_1a
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidMusic"

    const-string v3, "Error trying to play music"

    invoke-interface {v1, v2, v3, v0}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_23
    return-void
.end method

.method public setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->onCompletionListener:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    return-void
.end method

.method public setVolume(F)V
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    return-void

    .line 113
    :cond_5
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 114
    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->volume:F

    return-void
.end method

.method public stop()V
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    return-void

    .line 141
    :cond_5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    return-void
.end method

###### Class com.badlogic.gdx.backends.android.AndroidMusic.AnonymousClass1 (com.badlogic.gdx.backends.android.AndroidMusic$1)
.class public Lcom/badlogic/gdx/backends/android/AndroidMusic$1;
.super Ljava/lang/Object;
.source "AndroidMusic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidMusic;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidMusic;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidMusic;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidMusic;

    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->onCompletionListener:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    if-eqz v1, :cond_9

    .line 181
    invoke-interface {v1, v0}, Lcom/badlogic/gdx/audio/Music$OnCompletionListener;->onCompletion(Lcom/badlogic/gdx/audio/Music;)V

    :cond_9
    return-void
.end method

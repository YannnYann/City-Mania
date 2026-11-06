###### Class com.badlogic.gdx.backends.android.DisabledAndroidAudio (com.badlogic.gdx.backends.android.DisabledAndroidAudio)
.class public Lcom/badlogic/gdx/backends/android/DisabledAndroidAudio;
.super Ljava/lang/Object;
.source "DisabledAndroidAudio.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidAudio;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .line 0
    return-void
.end method

.method public newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;
    .registers 3

    .line 42
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Android audio is not enabled by the application config"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;
    .registers 3

    .line 37
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Android audio is not enabled by the application config"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifyMusicDisposed(Lcom/badlogic/gdx/backends/android/AndroidMusic;)V
    .registers 2

    .line 0
    return-void
.end method

.method public pause()V
    .registers 1

    .line 0
    return-void
.end method

.method public resume()V
    .registers 1

    .line 0
    return-void
.end method

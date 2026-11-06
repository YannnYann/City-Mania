###### Class com.badlogic.gdx.audio.Music (com.badlogic.gdx.audio.Music)
.class public interface abstract Lcom/badlogic/gdx/audio/Music;
.super Ljava/lang/Object;
.source "Music.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/audio/Music$OnCompletionListener;
    }
.end annotation


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract play()V
.end method

.method public abstract setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract stop()V
.end method

###### Class com.badlogic.gdx.audio.Music.OnCompletionListener (com.badlogic.gdx.audio.Music$OnCompletionListener)
.class public interface abstract Lcom/badlogic/gdx/audio/Music$OnCompletionListener;
.super Ljava/lang/Object;
.source "Music.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/audio/Music;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCompletionListener"
.end annotation


# virtual methods
.method public abstract onCompletion(Lcom/badlogic/gdx/audio/Music;)V
.end method

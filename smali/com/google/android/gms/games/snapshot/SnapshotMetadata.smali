###### Class com.google.android.gms.games.snapshot.SnapshotMetadata (com.google.android.gms.games.snapshot.SnapshotMetadata)
.class public interface abstract Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable<",
        "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# virtual methods
.method public abstract getCoverImageAspectRatio()F
.end method

.method public abstract getCoverImageUri()Landroid/net/Uri;
.end method

.method public abstract getCoverImageUrl()Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDeviceName()Ljava/lang/String;
.end method

.method public abstract getGame()Lcom/google/android/gms/games/Game;
.end method

.method public abstract getLastModifiedTimestamp()J
.end method

.method public abstract getOwner()Lcom/google/android/gms/games/Player;
.end method

.method public abstract getPlayedTime()J
.end method

.method public abstract getProgressValue()J
.end method

.method public abstract getSnapshotId()Ljava/lang/String;
.end method

.method public abstract getUniqueName()Ljava/lang/String;
.end method

.method public abstract hasChangePending()Z
.end method

.method public abstract zza()Ljava/lang/String;
.end method

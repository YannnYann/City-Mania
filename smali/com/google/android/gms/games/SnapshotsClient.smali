###### Class com.google.android.gms.games.SnapshotsClient (com.google.android.gms.games.SnapshotsClient)
.class public interface abstract Lcom/google/android/gms/games/SnapshotsClient;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/SnapshotsClient$SnapshotContentUnavailableApiException;,
        Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;,
        Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;,
        Lcom/google/android/gms/games/SnapshotsClient$ResolutionPolicy;
    }
.end annotation

###### Class com.google.android.gms.games.SnapshotsClient.DataOrConflict (com.google.android.gms.games.SnapshotsClient$DataOrConflict)
.class public final Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/SnapshotsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataOrConflict"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final zza:Ljava/lang/Object;

.field public final zzb:Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->zzb:Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;

    return-void
.end method

###### Class com.google.android.gms.games.SnapshotsClient.ResolutionPolicy (com.google.android.gms.games.SnapshotsClient$ResolutionPolicy)
.class public interface abstract annotation Lcom/google/android/gms/games/SnapshotsClient$ResolutionPolicy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/SnapshotsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ResolutionPolicy"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.gms.games.SnapshotsClient.SnapshotConflict (com.google.android.gms.games.SnapshotsClient$SnapshotConflict)
.class public final Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/SnapshotsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SnapshotConflict"
.end annotation


# instance fields
.field public final zza:Lcom/google/android/gms/games/snapshot/Snapshot;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Lcom/google/android/gms/games/snapshot/Snapshot;

.field public final zzd:Lcom/google/android/gms/games/snapshot/SnapshotContents;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/snapshot/Snapshot;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;->zza:Lcom/google/android/gms/games/snapshot/Snapshot;

    iput-object p2, p0, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;->zzc:Lcom/google/android/gms/games/snapshot/Snapshot;

    iput-object p4, p0, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;->zzd:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    return-void
.end method

###### Class com.google.android.gms.games.SnapshotsClient.SnapshotContentUnavailableApiException (com.google.android.gms.games.SnapshotsClient$SnapshotContentUnavailableApiException)
.class public final Lcom/google/android/gms/games/SnapshotsClient$SnapshotContentUnavailableApiException;
.super Lcom/google/android/gms/common/api/ApiException;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/SnapshotsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SnapshotContentUnavailableApiException"
.end annotation


# instance fields
.field public final metadata:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    iput-object p2, p0, Lcom/google/android/gms/games/SnapshotsClient$SnapshotContentUnavailableApiException;->metadata:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    return-void
.end method

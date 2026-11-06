###### Class com.google.android.gms.games.EventsClient (com.google.android.gms.games.EventsClient)
.class public interface abstract Lcom/google/android/gms/games/EventsClient;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# virtual methods
.method public abstract increment(Ljava/lang/String;I)V
.end method

.method public abstract load(Z)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/event/EventBuffer;",
            ">;>;"
        }
    .end annotation
.end method

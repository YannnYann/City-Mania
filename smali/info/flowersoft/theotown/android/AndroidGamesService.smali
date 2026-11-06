###### Class info.flowersoft.theotown.android.AndroidGamesService (info.flowersoft.theotown.android.AndroidGamesService)
.class public Linfo/flowersoft/theotown/android/AndroidGamesService;
.super Ljava/lang/Object;
.source "AndroidGamesService.java"

# interfaces
.implements Linfo/flowersoft/theotown/crossplatform/GamesService;
.implements Lcom/google/android/gms/tasks/OnCompleteListener;
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lcom/badlogic/gdx/backends/android/AndroidEventListener;
.implements Lcom/badlogic/gdx/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/crossplatform/GamesService;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/gms/games/AuthenticationResult;",
        ">;",
        "Lcom/google/android/gms/tasks/OnFailureListener;",
        "Lcom/badlogic/gdx/backends/android/AndroidEventListener;",
        "Lcom/badlogic/gdx/LifecycleListener;"
    }
.end annotation


# instance fields
.field public final application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

.field public client:Lcom/google/android/gms/games/GamesSignInClient;

.field public final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/crossplatform/GamesService$StatusListener;",
            ">;"
        }
    .end annotation
.end field

.field public steamIdMapping:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final unlockedAchievements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8ErLwP9hi650KKRaQUqWY2jRSYQ(Linfo/flowersoft/theotown/android/AndroidGamesService;Landroid/content/Intent;)V
    .registers 3

    .line 223
    iget-object p0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    const/16 v0, 0x232b

    .line 223
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dW6kNQCdkv5uj5wDljNAn-1DY5g(Linfo/flowersoft/theotown/android/AndroidGamesService;Lcom/google/android/gms/tasks/Task;)V
    .registers 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 134
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {p1}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/event/EventBuffer;

    .line 135
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 136
    :goto_1c
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_48

    .line 137
    invoke-virtual {p1, v2}, Lcom/google/android/gms/games/event/EventBuffer;->get(I)Lcom/google/android/gms/games/event/Event;

    move-result-object v3

    .line 138
    new-instance v4, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v4}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 140
    :try_start_2b
    const-string v5, "id"

    invoke-interface {v3}, Lcom/google/android/gms/games/event/Event;->getEventId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 141
    const-string v5, "value"

    invoke-interface {v3}, Lcom/google/android/gms/games/event/Event;->getValue()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_3d
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_2b .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception v3

    .line 143
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    :goto_42
    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 147
    :cond_48
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->release()V

    .line 148
    iget-object p1, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->listeners:Ljava/util/List;

    monitor-enter p1

    .line 149
    :goto_4e
    :try_start_4e
    iget-object v2, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_66

    .line 150
    iget-object v2, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->listeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/crossplatform/GamesService$StatusListener;

    invoke-interface {v2, v0}, Linfo/flowersoft/theotown/crossplatform/GamesService$StatusListener;->handleEvents(Linfo/flowersoft/theotown/util/json/JSONArray;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    :catchall_64
    move-exception p0

    goto :goto_68

    .line 152
    :cond_66
    monitor-exit p1

    goto :goto_6a

    :goto_68
    monitor-exit p1
    :try_end_69
    .catchall {:try_start_4e .. :try_end_69} :catchall_64

    throw p0

    :cond_6a
    :goto_6a
    return-void
.end method

.method public static synthetic $r8$lambda$h-ZvEiCG4ufOJn45OKWnCt3yVGc(Linfo/flowersoft/theotown/android/AndroidGamesService;Landroid/content/Intent;)V
    .registers 3

    .line 212
    iget-object p0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    const/16 v0, 0x232a

    .line 212
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->listeners:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->unlockedAchievements:Ljava/util/Map;

    .line 53
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    .line 54
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGamesSdk;->initialize(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->addAndroidEventListener(Lcom/badlogic/gdx/backends/android/AndroidEventListener;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/android/AndroidGamesService;)Lcom/badlogic/gdx/backends/android/AndroidApplication;
    .registers 1

    .line 36
    iget-object p0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .line 168
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 169
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 170
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public enforceCake()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public fetchEvents()V
    .registers 3

    .line 131
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidGamesService;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 132
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGames;->getEventsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/EventsClient;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/EventsClient;->load(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/android/AndroidGamesService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/android/AndroidGamesService$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/android/AndroidGamesService;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :cond_19
    return-void
.end method

.method public incrementEvent(Ljava/lang/String;I)Z
    .registers 4

    .line 292
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidGamesService;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 293
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGames;->getEventsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/EventsClient;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/EventsClient;->increment(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public isAvailable()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isOfflineMode()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isSignedIn()Z
    .registers 2

    .line 126
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->client:Lcom/google/android/gms/games/GamesSignInClient;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/google/android/gms/games/GamesSignInClient;->isAuthenticated()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 0
    return-void
.end method

.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AuthenticationResult;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/AuthenticationResult;

    invoke-virtual {p1}, Lcom/google/android/gms/games/AuthenticationResult;->isAuthenticated()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 76
    iget-object p1, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->listeners:Ljava/util/List;

    monitor-enter p1

    .line 77
    :goto_16
    :try_start_16
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2f

    .line 78
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->listeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/crossplatform/GamesService$StatusListener;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Linfo/flowersoft/theotown/crossplatform/GamesService$StatusListener;->handle(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :catchall_2d
    move-exception v0

    goto :goto_34

    .line 80
    :cond_2f
    monitor-exit p1
    :try_end_30
    .catchall {:try_start_16 .. :try_end_30} :catchall_2d

    .line 82
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidGamesService;->fetchEvents()V

    return-void

    .line 80
    :goto_34
    :try_start_34
    monitor-exit p1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_2d

    throw v0

    .line 84
    :cond_36
    iget-object p1, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->listeners:Ljava/util/List;

    monitor-enter p1

    move v0, v1

    .line 85
    :goto_3a
    :try_start_3a
    iget-object v2, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_52

    .line 86
    iget-object v2, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->listeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/crossplatform/GamesService$StatusListener;

    invoke-interface {v2, v1}, Linfo/flowersoft/theotown/crossplatform/GamesService$StatusListener;->handle(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :catchall_50
    move-exception v0

    goto :goto_54

    .line 88
    :cond_52
    monitor-exit p1

    return-void

    :goto_54
    monitor-exit p1
    :try_end_55
    .catchall {:try_start_3a .. :try_end_55} :catchall_50

    throw v0
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .registers 2

    .line 94
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public pause()V
    .registers 1

    .line 0
    return-void
.end method

.method public registerStatusListener(Linfo/flowersoft/theotown/crossplatform/GamesService$StatusListener;)V
    .registers 3

    .line 306
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetAchievements()V
    .registers 1

    .line 0
    return-void
.end method

.method public final resolveSteamId(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 228
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->steamIdMapping:Linfo/flowersoft/theotown/util/json/JSONObject;

    if-nez v0, :cond_45

    .line 229
    const-string v0, "$data_android_achievementmapping00"

    const-class v1, Linfo/flowersoft/theotown/draft/DataDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/DataDraft;

    .line 230
    const-string v1, "Achievements"

    if-eqz v0, :cond_3e

    .line 231
    iget-object v0, v0, Linfo/flowersoft/theotown/draft/DataDraft;->content:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "mapping"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->steamIdMapping:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 232
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->steamIdMapping:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " achievement id mappings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    .line 234
    :cond_3e
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "Could not load mapping"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_45
    :goto_45
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->steamIdMapping:Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v0, :cond_4d

    .line 238
    invoke-virtual {v0, p1, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4d
    return-object p1
.end method

.method public resume()V
    .registers 1

    .line 0
    return-void
.end method

.method public runCallbacks()V
    .registers 1

    .line 0
    return-void
.end method

.method public setup(Z)V
    .registers 5

    if-eqz p1, :cond_11

    .line 61
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGames;->getGamesSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->client:Lcom/google/android/gms/games/GamesSignInClient;

    .line 62
    invoke-interface {v0}, Lcom/google/android/gms/games/GamesSignInClient;->isAuthenticated()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 65
    :cond_11
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->client:Lcom/google/android/gms/games/GamesSignInClient;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Lcom/google/android/gms/games/GamesSignInClient;->signIn()Lcom/google/android/gms/tasks/Task;

    .line 66
    :cond_18
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->listeners:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 67
    :goto_1c
    :try_start_1c
    iget-object v2, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 68
    iget-object v2, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->listeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/crossplatform/GamesService$StatusListener;

    invoke-interface {v2, p1}, Linfo/flowersoft/theotown/crossplatform/GamesService$StatusListener;->handle(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :catchall_32
    move-exception p1

    goto :goto_36

    .line 70
    :cond_34
    monitor-exit v0

    return-void

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1c .. :try_end_37} :catchall_32

    throw p1
.end method

.method public showAchievements()V
    .registers 3

    .line 218
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidGamesService;->signIn()V

    .line 219
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidGamesService;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 220
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    .line 221
    invoke-static {v0}, Lcom/google/android/gms/games/PlayGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Lcom/google/android/gms/games/AchievementsClient;->getAchievementsIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/android/AndroidGamesService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/android/AndroidGamesService$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/android/AndroidGamesService;)V

    .line 223
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    :cond_1b
    return-void
.end method

.method public showLeaderboards()V
    .registers 3

    .line 207
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidGamesService;->signIn()V

    .line 208
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidGamesService;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 209
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    .line 210
    invoke-static {v0}, Lcom/google/android/gms/games/PlayGames;->getLeaderboardsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Lcom/google/android/gms/games/LeaderboardsClient;->getAllLeaderboardsIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/android/AndroidGamesService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/android/AndroidGamesService$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/android/AndroidGamesService;)V

    .line 212
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    :cond_1b
    return-void
.end method

.method public signIn()V
    .registers 2

    .line 118
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->client:Lcom/google/android/gms/games/GamesSignInClient;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/android/AndroidGamesService;->setup(Z)V

    .line 121
    :cond_8
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->client:Lcom/google/android/gms/games/GamesSignInClient;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lcom/google/android/gms/games/GamesSignInClient;->isAuthenticated()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->client:Lcom/google/android/gms/games/GamesSignInClient;

    invoke-interface {v0}, Lcom/google/android/gms/games/GamesSignInClient;->signIn()Lcom/google/android/gms/tasks/Task;

    :cond_1b
    return-void
.end method

.method public submitScore(Ljava/lang/String;J)Z
    .registers 5

    .line 274
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidGamesService;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 275
    new-instance v0, Linfo/flowersoft/theotown/android/AndroidGamesService$1;

    invoke-direct {v0, p0, p1, p2, p3}, Linfo/flowersoft/theotown/android/AndroidGamesService$1;-><init>(Linfo/flowersoft/theotown/android/AndroidGamesService;Ljava/lang/String;J)V

    .line 284
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public unlockAchievement(Ljava/lang/String;)Z
    .registers 5

    .line 245
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidGamesService;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 247
    const-string v0, "region_upload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    const/16 v0, 0xa

    .line 248
    invoke-virtual {p0, p1, v0, v0}, Linfo/flowersoft/theotown/android/AndroidGamesService;->unlockAchievement(Ljava/lang/String;II)Z

    return v1

    .line 252
    :cond_15
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->unlockedAchievements:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 253
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->unlockedAchievements:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 255
    :cond_2a
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->unlockedAchievements:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v0

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/android/AndroidGamesService;->resolveSteamId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/AchievementsClient;->unlock(Ljava/lang/String;)V

    return v1

    :cond_3f
    const/4 p1, 0x0

    return p1
.end method

.method public unlockAchievement(Ljava/lang/String;II)Z
    .registers 4

    .line 265
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidGamesService;->isSignedIn()Z

    move-result p3

    if-eqz p3, :cond_15

    .line 266
    iget-object p3, p0, Linfo/flowersoft/theotown/android/AndroidGamesService;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-static {p3}, Lcom/google/android/gms/games/PlayGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object p3

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/android/AndroidGamesService;->resolveSteamId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/games/AchievementsClient;->setSteps(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public visitStage(Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 2

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidGamesService.AnonymousClass1 (info.flowersoft.theotown.android.AndroidGamesService$1)
.class public Linfo/flowersoft/theotown/android/AndroidGamesService$1;
.super Ljava/lang/Thread;
.source "AndroidGamesService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidGamesService;->submitScore(Ljava/lang/String;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/android/AndroidGamesService;

.field public final synthetic val$id:Ljava/lang/String;

.field public final synthetic val$score:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidGamesService;Ljava/lang/String;J)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 275
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidGamesService$1;->this$0:Linfo/flowersoft/theotown/android/AndroidGamesService;

    iput-object p2, p0, Linfo/flowersoft/theotown/android/AndroidGamesService$1;->val$id:Ljava/lang/String;

    iput-wide p3, p0, Linfo/flowersoft/theotown/android/AndroidGamesService$1;->val$score:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 279
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService$1;->this$0:Linfo/flowersoft/theotown/android/AndroidGamesService;

    invoke-static {v0}, Linfo/flowersoft/theotown/android/AndroidGamesService;->access$000(Linfo/flowersoft/theotown/android/AndroidGamesService;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGames;->getLeaderboardsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidGamesService$1;->val$id:Ljava/lang/String;

    iget-wide v2, p0, Linfo/flowersoft/theotown/android/AndroidGamesService$1;->val$score:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/LeaderboardsClient;->submitScore(Ljava/lang/String;J)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception v0

    .line 281
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidGamesService$$ExternalSyntheticLambda0 (info.flowersoft.theotown.android.AndroidGamesService$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/android/AndroidGamesService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/android/AndroidGamesService;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/android/AndroidGamesService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidGamesService$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/android/AndroidGamesService;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/android/AndroidGamesService;

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/android/AndroidGamesService;->$r8$lambda$8ErLwP9hi650KKRaQUqWY2jRSYQ(Linfo/flowersoft/theotown/android/AndroidGamesService;Landroid/content/Intent;)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidGamesService$$ExternalSyntheticLambda1 (info.flowersoft.theotown.android.AndroidGamesService$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/android/AndroidGamesService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/android/AndroidGamesService;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/android/AndroidGamesService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidGamesService$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/android/AndroidGamesService;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/android/AndroidGamesService;

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/android/AndroidGamesService;->$r8$lambda$h-ZvEiCG4ufOJn45OKWnCt3yVGc(Linfo/flowersoft/theotown/android/AndroidGamesService;Landroid/content/Intent;)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidGamesService$$ExternalSyntheticLambda2 (info.flowersoft.theotown.android.AndroidGamesService$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/android/AndroidGamesService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/android/AndroidGamesService;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/android/AndroidGamesService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidGamesService$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/android/AndroidGamesService;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidGamesService$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/android/AndroidGamesService;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/android/AndroidGamesService;->$r8$lambda$dW6kNQCdkv5uj5wDljNAn-1DY5g(Linfo/flowersoft/theotown/android/AndroidGamesService;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidAnalytics (info.flowersoft.theotown.android.AndroidAnalytics)
.class public Linfo/flowersoft/theotown/android/AndroidAnalytics;
.super Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;
.source "AndroidAnalytics.java"


# instance fields
.field public firebase:Lcom/google/firebase/analytics/FirebaseAnalytics;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;Ljava/io/File;Ljava/io/File;)V
    .registers 4

    .line 21
    invoke-direct {p0, p2, p3}, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 23
    sget-boolean p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    if-nez p2, :cond_d

    .line 24
    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidAnalytics;->firebase:Lcom/google/firebase/analytics/FirebaseAnalytics;

    :cond_d
    return-void
.end method


# virtual methods
.method public lateInit()V
    .registers 1

    .line 0
    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 0
    return-void
.end method

.method public logEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method

.method public logLoadCity(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 0
    return-void
.end method

.method public logNewCity(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 0
    return-void
.end method

.method public logPurchase(Linfo/flowersoft/theotown/draft/FeatureDraft;)V
    .registers 2

    .line 0
    return-void
.end method

.method public logRankUpgrade(Linfo/flowersoft/theotown/draft/RankDraft;)V
    .registers 2

    .line 0
    return-void
.end method

.method public logSaveCity(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 0
    return-void
.end method

.method public logSettings()V
    .registers 1

    .line 0
    return-void
.end method

.method public logStage(Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setConnectedUser(Linfo/flowersoft/theotown/backend/User;)V
    .registers 2

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.crossplatform.TheoTown (info.flowersoft.theotown.crossplatform.TheoTown)
.class public final Linfo/flowersoft/theotown/crossplatform/TheoTown;
.super Ljava/lang/Object;
.source "TheoTown.java"


# static fields
.field public static APPLICATION_ID:Ljava/lang/String; = null

.field public static APP_CACHE_DIR:Ljava/io/File; = null

.field public static APP_DIR:Ljava/io/File; = null

.field public static APP_PREFS_DIR:Ljava/io/File; = null

.field public static APP_PRIVATE_DIR:Ljava/io/File; = null

.field public static APP_SCREENSHOTS_DIR:Ljava/io/File; = null

.field public static CHECK_TIME_ONLINE:Z = false

.field public static DEBUG:Z = false

.field public static DEVICE_MANUFACTURER:Ljava/lang/String; = null

.field public static DEVICE_MODEL:Ljava/lang/String; = null

.field public static NOT_CHILD_DIRECTED:Z = false

.field public static PREMIUM:Z = false

.field public static SHOW_FILES_EXPLORER:Z = false

.field public static STORE_NAME:Ljava/lang/String; = null

.field public static VERSIONH:Ljava/lang/String; = null

.field public static VERSIONI:Ljava/lang/String; = null

.field public static VERSION_CODE:I = 0x0

.field public static VERSION_NAME:Ljava/lang/String; = null

.field public static analytics:Linfo/flowersoft/theotown/crossplatform/Analytics; = null

.field public static checkedJaBirthday:Z = false

.field public static gameSetup:Linfo/flowersoft/theotown/crossplatform/GameSetup; = null

.field public static gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService; = null

.field public static jaHasBirthday:Z = false

.field public static notifications:Linfo/flowersoft/theotown/crossplatform/Notifications;

.field public static purchaseManager:Lcom/badlogic/gdx/pay/PurchaseManager;

.field public static runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

.field public static socialManager:Linfo/flowersoft/theotown/crossplatform/SocialManager;

.field public static videoAdStageFactory:Linfo/flowersoft/theotown/crossplatform/VideoAdStage$VideoAdStageFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static isPickleBirthday()Z
    .registers 4

    .line 68
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->checkedJaBirthday:Z

    if-nez v0, :cond_22

    const/4 v0, 0x1

    .line 69
    sput-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->checkedJaBirthday:Z

    .line 71
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v2, 0x2

    .line 73
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1f

    const/4 v2, 0x5

    .line 74
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    sput-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->jaHasBirthday:Z

    .line 77
    :cond_22
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->jaHasBirthday:Z

    return v0
.end method

.method public static isPickleMode()Z
    .registers 5

    .line 57
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    return v2

    .line 62
    :cond_10
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v0

    const-wide/16 v3, 0x46

    cmp-long v0, v0, v3

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    return v2
.end method

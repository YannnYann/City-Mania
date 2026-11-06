###### Class io.bidmachine.UserAgentManager (io.bidmachine.UserAgentManager)
.class public final Lio/bidmachine/UserAgentManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/UserAgentManager$UserAgentSource;,
        Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;,
        Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;,
        Lio/bidmachine/UserAgentManager$ApplovinUserAgentSource;,
        Lio/bidmachine/UserAgentManager$IronSourceUserAgentSource;,
        Lio/bidmachine/UserAgentManager$FacebookUserAgentSource;,
        Lio/bidmachine/UserAgentManager$GeneratedUserAgentSource;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXPIRATION_MS:J

.field public static final INSTANCE:Lio/bidmachine/UserAgentManager;

.field private static final SYSTEM_HTTP_AGENT:Ljava/lang/String;

.field private static final SYSTEM_PROPERTY_HTTP_AGENT:Ljava/lang/String; = "http.agent"

.field private static final WEB_USER_AGENT_PROCESSED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final WEB_USER_AGENT_UPDATED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static applicationContext:Landroid/content/Context;

.field private static generatedUserAgent:Ljava/lang/String;

.field public static webUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lio/bidmachine/UserAgentManager;

    invoke-direct {v0}, Lio/bidmachine/UserAgentManager;-><init>()V

    sput-object v0, Lio/bidmachine/UserAgentManager;->INSTANCE:Lio/bidmachine/UserAgentManager;

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/bidmachine/UserAgentManager;->DEFAULT_EXPIRATION_MS:J

    .line 4
    :try_start_11
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_18

    goto :goto_19

    :catchall_18
    const/4 v0, 0x0

    .line 5
    :goto_19
    sput-object v0, Lio/bidmachine/UserAgentManager;->SYSTEM_HTTP_AGENT:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/bidmachine/UserAgentManager;->WEB_USER_AGENT_PROCESSED:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/bidmachine/UserAgentManager;->WEB_USER_AGENT_UPDATED:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final clear()V
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/UserAgentManager;->WEB_USER_AGENT_PROCESSED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lio/bidmachine/UserAgentManager;->webUserAgent:Ljava/lang/String;

    .line 3
    sput-object v0, Lio/bidmachine/UserAgentManager;->generatedUserAgent:Ljava/lang/String;

    return-void
.end method

.method public static final getUserAgent()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/UserAgentManager;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/UserAgentManager;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    .line 2
    sget-object p0, Lio/bidmachine/UserAgentManager;->applicationContext:Landroid/content/Context;

    .line 3
    :cond_4
    sget-object v0, Lio/bidmachine/UserAgentManager;->webUserAgent:Ljava/lang/String;

    if-nez v0, :cond_12

    if-eqz p0, :cond_12

    .line 4
    sget-object v0, Lio/bidmachine/UserAgentManager;->INSTANCE:Lio/bidmachine/UserAgentManager;

    invoke-virtual {v0, p0}, Lio/bidmachine/UserAgentManager;->findWebUserAgent$bidmachine_android_sdk_ba_3_8_0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/UserAgentManager;->webUserAgent:Ljava/lang/String;

    .line 6
    :cond_12
    sget-object v0, Lio/bidmachine/UserAgentManager;->webUserAgent:Ljava/lang/String;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1f

    .line 7
    sget-object p0, Lio/bidmachine/UserAgentManager;->webUserAgent:Ljava/lang/String;

    return-object p0

    .line 9
    :cond_1f
    sget-object v0, Lio/bidmachine/UserAgentManager;->generatedUserAgent:Ljava/lang/String;

    if-nez v0, :cond_30

    if-eqz p0, :cond_30

    .line 10
    new-instance v0, Lio/bidmachine/UserAgentManager$GeneratedUserAgentSource;

    invoke-direct {v0, p0}, Lio/bidmachine/UserAgentManager$GeneratedUserAgentSource;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lio/bidmachine/UserAgentManager$GeneratedUserAgentSource;->get()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/bidmachine/UserAgentManager;->generatedUserAgent:Ljava/lang/String;

    .line 12
    :cond_30
    sget-object p0, Lio/bidmachine/UserAgentManager;->generatedUserAgent:Ljava/lang/String;

    if-eqz p0, :cond_3d

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_3d

    .line 13
    sget-object p0, Lio/bidmachine/UserAgentManager;->generatedUserAgent:Ljava/lang/String;

    return-object p0

    .line 15
    :cond_3d
    sget-object p0, Lio/bidmachine/UserAgentManager;->SYSTEM_HTTP_AGENT:Ljava/lang/String;

    return-object p0
.end method

.method public static final initialize(Landroid/content/Context;)V
    .registers 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lio/bidmachine/UserAgentManager;->applicationContext:Landroid/content/Context;

    .line 2
    sget-object v0, Lio/bidmachine/UserAgentManager;->INSTANCE:Lio/bidmachine/UserAgentManager;

    invoke-virtual {v0, p0}, Lio/bidmachine/UserAgentManager;->findWebUserAgent$bidmachine_android_sdk_ba_3_8_0(Landroid/content/Context;)Ljava/lang/String;

    return-void
.end method

.method public static final updateWebViewUserAgent()V
    .registers 4

    .line 1
    sget-object v0, Lio/bidmachine/UserAgentManager;->WEB_USER_AGENT_UPDATED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1c

    .line 4
    :cond_b
    sget-object v0, Lio/bidmachine/UserAgentManager;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_10

    goto :goto_1c

    .line 6
    :cond_10
    :try_start_10
    new-instance v1, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;

    sget-wide v2, Lio/bidmachine/UserAgentManager;->DEFAULT_EXPIRATION_MS:J

    invoke-direct {v1, v0, v2, v3}, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v1}, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;->checkAndUpdate()V

    .line 7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1c

    :catchall_1c
    :goto_1c
    return-void
.end method


# virtual methods
.method public final findWebUserAgent$bidmachine_android_sdk_ba_3_8_0(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lio/bidmachine/UserAgentManager;->WEB_USER_AGENT_PROCESSED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2
    sget-object p1, Lio/bidmachine/UserAgentManager;->webUserAgent:Ljava/lang/String;

    return-object p1

    .line 5
    :cond_12
    new-instance v0, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;

    sget-wide v1, Lio/bidmachine/UserAgentManager;->DEFAULT_EXPIRATION_MS:J

    invoke-direct {v0, p1, v1, v2}, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v0}, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;->get()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 6
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_26

    return-object v0

    .line 9
    :cond_26
    new-instance v0, Lio/bidmachine/UserAgentManager$ApplovinUserAgentSource;

    invoke-direct {v0, p1}, Lio/bidmachine/UserAgentManager$ApplovinUserAgentSource;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;->get()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 10
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_38

    return-object v0

    .line 13
    :cond_38
    new-instance v0, Lio/bidmachine/UserAgentManager$IronSourceUserAgentSource;

    invoke-direct {v0, p1}, Lio/bidmachine/UserAgentManager$IronSourceUserAgentSource;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;->get()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 14
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_4a

    return-object v0

    .line 17
    :cond_4a
    new-instance v0, Lio/bidmachine/UserAgentManager$FacebookUserAgentSource;

    invoke-direct {v0, p1}, Lio/bidmachine/UserAgentManager$FacebookUserAgentSource;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;->get()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5c

    .line 18
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_5c

    return-object p1

    .line 22
    :cond_5c
    invoke-static {}, Lio/bidmachine/UserAgentManager;->updateWebViewUserAgent()V

    .line 23
    sget-object p1, Lio/bidmachine/UserAgentManager;->webUserAgent:Ljava/lang/String;

    return-object p1
.end method

###### Class io.bidmachine.UserAgentManager.ApplovinUserAgentSource (io.bidmachine.UserAgentManager$ApplovinUserAgentSource)
.class public final Lio/bidmachine/UserAgentManager$ApplovinUserAgentSource;
.super Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/UserAgentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApplovinUserAgentSource"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "com.applovin.sdk.shared"

    const-string v1, "com.applovin.sdk.user_agent"

    invoke-direct {p0, p1, v0, v1}, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.UserAgentManager.BidMachineUserAgentSource (io.bidmachine.UserAgentManager$BidMachineUserAgentSource)
.class public final Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/UserAgentManager$UserAgentSource;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/UserAgentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BidMachineUserAgentSource"
.end annotation


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final expirationMs:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;->expirationMs:J

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context.applicationContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;->applicationContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final calculateExpirationMs()J
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;->expirationMs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final checkAndUpdate()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;->get()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 2
    :cond_e
    :goto_e
    invoke-static {p0}, Lio/bidmachine/util/UiUtils;->onUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public get()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/n;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getExpirationMs()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;->expirationMs:J

    return-wide v0
.end method

.method public run()V
    .registers 5

    .line 1
    :try_start_0
    sget-object v0, Lio/bidmachine/UserAgentManager;->INSTANCE:Lio/bidmachine/UserAgentManager;

    iget-object v0, p0, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    const-string v1, "getDefaultUserAgent(applicationContext)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;->calculateExpirationMs()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lio/bidmachine/n;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 3
    :goto_1a
    sput-object v0, Lio/bidmachine/UserAgentManager;->webUserAgent:Ljava/lang/String;

    .line 6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1e

    :catchall_1e
    return-void
.end method

###### Class io.bidmachine.UserAgentManager.FacebookUserAgentSource (io.bidmachine.UserAgentManager$FacebookUserAgentSource)
.class public final Lio/bidmachine/UserAgentManager$FacebookUserAgentSource;
.super Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/UserAgentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FacebookUserAgentSource"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "com.facebook.ads.internal.ua"

    const-string v1, "user_agent"

    invoke-direct {p0, p1, v0, v1}, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.UserAgentManager.GeneratedUserAgentSource (io.bidmachine.UserAgentManager$GeneratedUserAgentSource)
.class public final Lio/bidmachine/UserAgentManager$GeneratedUserAgentSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/UserAgentManager$UserAgentSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/UserAgentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeneratedUserAgentSource"
.end annotation


# instance fields
.field private final applicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/UserAgentManager$GeneratedUserAgentSource;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method private final appendChromeToUserAgent(Landroid/content/pm/PackageManager;Ljava/lang/StringBuilder;)V
    .registers 8

    .line 1
    const-string v0, "com.google.android.webview"

    const-string v1, "com.android.webview"

    const-string v2, "com.android.chrome"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    const/4 v3, 0x3

    if-ge v2, v3, :cond_23

    .line 3
    aget-object v3, v0, v2

    .line 5
    :try_start_11
    invoke-virtual {p1, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 7
    const-string v4, " Chrome/"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_20

    goto :goto_23

    :catchall_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_23
    :goto_23
    return-void
.end method

.method private final appendMobileToUserAgent(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/StringBuilder;)V
    .registers 7

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 4
    const-string v1, " Mobile"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v1, :cond_22

    .line 8
    iget-object p1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2b

    .line 10
    :cond_22
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 11
    const-string v0, "{\n                      \u2026                        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :goto_2b
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string p1, "/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_38

    :catchall_38
    return-void
.end method

.method private final create(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mozilla/5.0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v1, " (Linux; Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Lio/bidmachine/util/DeviceUtils;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Lio/bidmachine/util/DeviceUtils;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    const-string v1, " Build/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {}, Lio/bidmachine/util/DeviceUtils;->getBuildId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "; wv)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " AppleWebKit/537.36 (KHTML, like Gecko)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " Version/4.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 16
    const-string v1, "packageManager"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "userAgentBuilder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lio/bidmachine/UserAgentManager$GeneratedUserAgentSource;->appendChromeToUserAgent(Landroid/content/pm/PackageManager;Ljava/lang/StringBuilder;)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "userAgentBuilder.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_0 .. :try_end_54} :catchall_55

    return-object p1

    .line 19
    :catchall_55
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/UserAgentManager$GeneratedUserAgentSource;->applicationContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lio/bidmachine/UserAgentManager$GeneratedUserAgentSource;->create(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.UserAgentManager.IronSourceUserAgentSource (io.bidmachine.UserAgentManager$IronSourceUserAgentSource)
.class public final Lio/bidmachine/UserAgentManager$IronSourceUserAgentSource;
.super Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/UserAgentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IronSourceUserAgentSource"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "Mediation_Shared_Preferences"

    const-string v1, "browser_user_agent"

    invoke-direct {p0, p1, v0, v1}, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.UserAgentManager.SharedPreferenceUserAgentSource (io.bidmachine.UserAgentManager$SharedPreferenceUserAgentSource)
.class public Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/UserAgentManager$UserAgentSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/UserAgentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedPreferenceUserAgentSource"
.end annotation


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final field:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "field"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;->name:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;->field:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context.applicationContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;->applicationContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_10

    .line 2
    iget-object v1, p0, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;->name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 4
    :cond_10
    iget-object v1, p0, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1a

    iget-object v2, p0, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;->field:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1a

    :catchall_1a
    :cond_1a
    return-object v0
.end method

###### Class io.bidmachine.UserAgentManager.UserAgentSource (io.bidmachine.UserAgentManager$UserAgentSource)
.class public interface abstract Lio/bidmachine/UserAgentManager$UserAgentSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/UserAgentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserAgentSource"
.end annotation


# virtual methods
.method public abstract get()Ljava/lang/String;
.end method

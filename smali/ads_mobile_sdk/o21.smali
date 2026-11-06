###### Class ads_mobile_sdk.o21 (ads_mobile_sdk.o21)
.class public final Lads_mobile_sdk/o21;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lads_mobile_sdk/m21;

.field public static final g:Ljava/util/concurrent/atomic/AtomicReference;

.field public static final h:Lkotlin/text/Regex;

.field public static final i:Lkotlin/text/Regex;

.field public static final j:Lkotlin/text/Regex;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/f0;

.field public final c:Lads_mobile_sdk/ex0;

.field public final d:Lads_mobile_sdk/k0;

.field public final e:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/m21;

    .line 2
    invoke-direct {v0}, Lads_mobile_sdk/m21;-><init>()V

    .line 3
    sput-object v0, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 246
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lads_mobile_sdk/o21;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 254
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^(ca-app-pub-[0-9]{16})~([0-9]{10})$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lads_mobile_sdk/o21;->h:Lkotlin/text/Regex;

    .line 256
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^(ca-app-pub-[a-zA-Z0-9\\-]+)/([a-zA-Z0-9_\\-]+)(/.*)?$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lads_mobile_sdk/o21;->i:Lkotlin/text/Regex;

    .line 279
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^/([0-9]+(?:,[0-9]+)*)(?:/.*)?$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lads_mobile_sdk/o21;->j:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/f0;Lads_mobile_sdk/ex0;Lads_mobile_sdk/k0;Ljava/lang/Class;)V
    .registers 7

    .line 1
    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adActivityDelegateMap"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adActivityClass"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lads_mobile_sdk/o21;->a:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lads_mobile_sdk/o21;->b:Lads_mobile_sdk/f0;

    .line 63
    iput-object p3, p0, Lads_mobile_sdk/o21;->c:Lads_mobile_sdk/ex0;

    .line 64
    iput-object p4, p0, Lads_mobile_sdk/o21;->d:Lads_mobile_sdk/k0;

    .line 65
    iput-object p5, p0, Lads_mobile_sdk/o21;->e:Ljava/lang/Class;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lads_mobile_sdk/n21;
    .registers 4

    .line 415
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    new-instance v0, Lads_mobile_sdk/n21;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/n21;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_33

    .line 420
    invoke-static {}, Lads_mobile_sdk/o21$$ExternalSyntheticApiModelOutline1;->m()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lads_mobile_sdk/o21$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/app/LocaleManager;

    move-result-object p0

    if-eqz p0, :cond_44

    invoke-static {p0}, Lads_mobile_sdk/o21$$ExternalSyntheticApiModelOutline3;->m(Landroid/app/LocaleManager;)Landroid/os/LocaleList;

    move-result-object p0

    goto :goto_45

    .line 423
    :cond_33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_44

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    if-eqz p0, :cond_44

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    goto :goto_45

    :cond_44
    const/4 p0, 0x0

    :goto_45
    if-eqz p0, :cond_5f

    .line 426
    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5f

    const/4 v0, 0x0

    .line 427
    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    .line 428
    new-instance v0, Lads_mobile_sdk/n21;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lads_mobile_sdk/n21;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    return-object v0
.end method

.method public static b()Landroid/webkit/CookieManager;
    .registers 2

    .line 124
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eqz v0, :cond_1c

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x403

    if-ne v0, v1, :cond_17

    goto :goto_1c

    .line 125
    :cond_17
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    return-object v0

    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()J
    .registers 5

    .line 683
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_28

    .line 684
    iget-object v0, p0, Lads_mobile_sdk/o21;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 686
    iget-object v1, p0, Lads_mobile_sdk/o21;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x80

    .line 687
    invoke-static {v2, v3}, Lads_mobile_sdk/o21$$ExternalSyntheticApiModelOutline4;->m(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    .line 688
    invoke-static {v0, v1, v2}, Lads_mobile_sdk/o21$$ExternalSyntheticApiModelOutline5;->m(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 692
    invoke-static {v0}, Lads_mobile_sdk/im2$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    return-wide v0

    :cond_25
    const-wide/16 v0, 0x0

    return-wide v0

    .line 693
    :cond_28
    iget-object v0, p0, Lads_mobile_sdk/o21;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 694
    iget-object v1, p0, Lads_mobile_sdk/o21;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_41

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    int-to-long v0, v0

    return-wide v0
.end method

.method public final a(Landroid/content/Context;Lads_mobile_sdk/h0;)Landroid/content/Intent;
    .registers 14

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adActivityDelegate"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lads_mobile_sdk/o21;->e:Ljava/lang/Class;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 103
    iget-object v3, p0, Lads_mobile_sdk/o21;->d:Lads_mobile_sdk/k0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    const-string v4, "delegate"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v4, v3, Lads_mobile_sdk/k0;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    .line 144
    iget-object v5, v3, Lads_mobile_sdk/k0;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v6, Lads_mobile_sdk/j0;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v4, v7}, Lads_mobile_sdk/j0;-><init>(Lads_mobile_sdk/k0;ILkotlin/coroutines/Continuation;)V

    move-object v8, v6

    .line 145
    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 146
    const-string v9, "<this>"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v8

    .line 404
    new-instance v8, Lads_mobile_sdk/ws3;

    invoke-direct {v8, v0, v7}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 405
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 409
    iget-object v3, v3, Lads_mobile_sdk/k0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v6, Lads_mobile_sdk/i0;

    invoke-direct {v6, p2, v0}, Lads_mobile_sdk/i0;-><init>(Lads_mobile_sdk/h0;Lkotlinx/coroutines/Job;)V

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string p2, "ad_activity_delegate"

    invoke-virtual {v2, p2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 411
    const-string p2, "ad_activity_delegate_bundle"

    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 413
    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_6b

    const/high16 p1, 0x10000000

    .line 414
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_6b
    return-object v1
.end method

.method public final a(Landroid/content/Intent;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 673
    :cond_4
    iget-object v1, p0, Lads_mobile_sdk/o21;->b:Lads_mobile_sdk/f0;

    invoke-virtual {v1}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_d

    goto :goto_f

    :cond_d
    iget-object v1, p0, Lads_mobile_sdk/o21;->a:Landroid/content/Context;

    .line 674
    :goto_f
    instance-of v2, v1, Landroid/app/Activity;

    if-nez v2, :cond_18

    const/high16 v2, 0x10000000

    .line 675
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 679
    :cond_18
    :try_start_18
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1d

    const/4 p1, 0x1

    return p1

    :catchall_1d
    move-exception p1

    .line 682
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception starting Activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, p1, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return v0
.end method

.method public final a(Landroid/net/Uri;)Z
    .registers 6

    .line 429
    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0, p1}, Lads_mobile_sdk/o21;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 504
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 505
    iget-object v0, p0, Lads_mobile_sdk/o21;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 506
    const-string v1, "^[^?]*(/aclk|/pcs/click|/dbm/clk).*"

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 507
    const-string v2, "key"

    const-string v3, "gads:click_url_pattern_match"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "defaultValue"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    sget-object v2, Lads_mobile_sdk/yr;->g:Lads_mobile_sdk/qr;

    invoke-virtual {v0, v3, v1, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 553
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_39

    goto :goto_59

    .line 554
    :cond_39
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lkotlin/text/Regex;

    .line 555
    invoke-direct {v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const/4 p1, 0x1

    return p1

    :cond_59
    :goto_59
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Landroid/net/Uri;)Z
    .registers 7

    .line 1
    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_58

    iget-object v1, p0, Lads_mobile_sdk/o21;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    const-string v2, ".googleadservices.com"

    const-string v3, ".googlesyndication.com"

    const-string v4, ".doubleclick.net"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 75
    const-string v3, "key"

    const-string v4, "gads:google_ad_domain_suffixes"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "defaultValue"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    sget-object v3, Lads_mobile_sdk/yr;->g:Lads_mobile_sdk/qr;

    invoke-virtual {v1, v4, v2, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 121
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_58

    .line 122
    :cond_3e
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 123
    invoke-static {p1, v2, v0, v3, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    const/4 p1, 0x1

    return p1

    :cond_58
    :goto_58
    return v0
.end method

.method public final c()Z
    .registers 3

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    .line 135
    iget-object v0, p0, Lads_mobile_sdk/o21;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-static {v0}, Lads_mobile_sdk/o21$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageManager;)Z

    move-result v0

    return v0

    .line 138
    :cond_13
    :try_start_13
    iget-object v0, p0, Lads_mobile_sdk/o21;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.google.android.instantapps.supervisor.InstantAppsRuntime"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_1e} :catch_20

    const/4 v0, 0x1

    return v0

    :catch_20
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Landroid/net/Uri;)Z
    .registers 6

    .line 1
    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p1}, Lads_mobile_sdk/o21;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 82
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lads_mobile_sdk/o21;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    const-string v1, "^[^?]*(/adview|/pcs/view).*"

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 85
    const-string v2, "key"

    const-string v3, "gads:impression_url_pattern_match"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "defaultValue"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    sget-object v2, Lads_mobile_sdk/yr;->g:Lads_mobile_sdk/qr;

    invoke-virtual {v0, v3, v1, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 131
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_39

    goto :goto_59

    .line 132
    :cond_39
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lkotlin/text/Regex;

    .line 133
    invoke-direct {v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const/4 p1, 0x1

    return p1

    :cond_59
    :goto_59
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Landroid/net/Uri;)Ljava/util/Map;
    .registers 12

    .line 161
    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lads_mobile_sdk/o21;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    const-string v2, "key"

    const-string v3, "gads:uri_query_to_map:enabled"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v3, v2, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 405
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 839
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 844
    invoke-virtual {p1}, Landroid/net/Uri;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_87

    .line 848
    :cond_30
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_37

    goto :goto_87

    .line 849
    :cond_37
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x0

    move v4, v1

    :goto_3d
    const/4 v6, 0x4

    const/4 v7, 0x0

    const/16 v3, 0x26

    const/4 v5, 0x0

    .line 853
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_4b

    move v9, v1

    goto :goto_4c

    :cond_4b
    move v9, p1

    :goto_4c
    const/4 v6, 0x4

    const/4 v7, 0x0

    const/16 v3, 0x3d

    const/4 v5, 0x0

    .line 856
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v3

    if-gt v3, v9, :cond_59

    if-ne v3, v8, :cond_5a

    :cond_59
    move v3, v9

    .line 861
    :cond_5a
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "substring(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-ne v3, v9, :cond_6c

    .line 864
    const-string v3, ""

    goto :goto_79

    :cond_6c
    add-int/lit8 v3, v3, 0x1

    .line 866
    invoke-virtual {v2, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 867
    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 870
    :goto_79
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v1, v8, :cond_87

    add-int/lit8 v4, v1, 0x1

    goto :goto_3d

    :cond_87
    :goto_87
    return-object v0

    .line 871
    :cond_88
    invoke-static {p1}, Lads_mobile_sdk/m21;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final d()Z
    .registers 3

    .line 158
    iget-object v0, p0, Lads_mobile_sdk/o21;->a:Landroid/content/Context;

    invoke-static {v0}, Lads_mobile_sdk/o21;->a(Landroid/content/Context;)Lads_mobile_sdk/n21;

    move-result-object v0

    .line 159
    iget-object v0, v0, Lads_mobile_sdk/n21;->b:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 160
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1e

    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

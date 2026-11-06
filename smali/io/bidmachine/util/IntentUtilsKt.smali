###### Class io.bidmachine.util.IntentUtilsKt (io.bidmachine.util.IntentUtilsKt)
.class public final Lio/bidmachine/util/IntentUtilsKt;
.super Ljava/lang/Object;
.source "IntentUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntentUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntentUtils.kt\nio/bidmachine/util/IntentUtilsKt\n+ 2 Utils.kt\nio/bidmachine/util/UtilsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,163:1\n846#2,4:164\n766#3:168\n857#3,2:169\n*S KotlinDebug\n*F\n+ 1 IntentUtils.kt\nio/bidmachine/util/IntentUtilsKt\n*L\n79#1:164,4\n157#1:168\n157#1:169,2\n*E\n"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$i5-gbdBa6rvHNZyuqswhy5K8pIQ(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lio/bidmachine/util/IntentUtilsKt;->findEndpointAndOpenUrl$lambda$0(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method public static final extractBmCustomParams(Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "urlString"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-static {p0}, Lio/bidmachine/util/UrlUtilsKt;->parseUriSafely(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_10

    invoke-static {}, Lkotlin/collections/SetsKt__SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 156
    :cond_10
    const-string v0, "bmcp"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1a

    const-string p0, ""

    :cond_1a
    move-object v0, p0

    .line 157
    const-string p0, "_"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_34
    :goto_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 157
    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 169
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 157
    :cond_4b
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final findAndSetIntentComponent(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-static {p0, p1}, Lio/bidmachine/util/IntentUtilsKt;->findComponentName(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 116
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public static final findComponentName(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-static {p0, p1}, Lio/bidmachine/util/IntentUtilsKt;->findResolveInfoList(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    .line 125
    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_38

    .line 126
    invoke-static {p0}, Lio/bidmachine/util/IntentUtils;->findStoreComponentName(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_37

    new-instance p1, Landroid/content/ComponentName;

    const/4 v0, 0x0

    .line 127
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 128
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 126
    invoke-direct {p1, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    return-object p1

    :cond_38
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final findEndpointAndOpenUrl(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lio/bidmachine/util/Executable<",
            "Lio/bidmachine/util/ProcessUrlResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_63

    .line 38
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_63

    .line 42
    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {p1}, Lio/bidmachine/util/Utils;->getValidUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 44
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_24

    goto :goto_57

    .line 48
    :cond_24
    invoke-static {v1}, Lio/bidmachine/util/IntentUtilsKt;->extractBmCustomParams(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 49
    const-string v3, "lraw"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 50
    const-string v0, "rcp"

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 51
    invoke-static {p1}, Lio/bidmachine/util/IntentUtilsKt;->removeBmCustomParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    :cond_3c
    invoke-static {p0, p1, p2}, Lio/bidmachine/util/IntentUtilsKt;->openRawUrl(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V

    return-void

    .line 58
    :cond_40
    invoke-static {v1}, Lio/bidmachine/util/Utils;->isHttpUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_53

    .line 59
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance p1, Lio/bidmachine/util/IntentUtilsKt$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/util/IntentUtilsKt$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 66
    :cond_53
    invoke-static {v0, v1, p2}, Lio/bidmachine/util/IntentUtilsKt;->openUrlWithPostback(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V

    return-void

    :cond_57
    :goto_57
    if-eqz p2, :cond_6e

    .line 45
    sget-object p0, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {p0}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getFAIL()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/bidmachine/util/Executable;->execute(Ljava/lang/Object;)V

    return-void

    :cond_63
    :goto_63
    if-eqz p2, :cond_6e

    .line 39
    sget-object p0, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {p0}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getFAIL()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/bidmachine/util/Executable;->execute(Ljava/lang/Object;)V

    :cond_6e
    return-void
.end method

.method public static final findEndpointAndOpenUrl$lambda$0(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V
    .registers 6

    const-string v0, "$applicationContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 61
    invoke-static {p1, v2, v0, v1}, Lio/bidmachine/util/network/NetworkUtils;->findEndpoint$default(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-static {p0, p1, p2}, Lio/bidmachine/util/IntentUtilsKt;->openUrlWithPostback(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method public static final findResolveInfoList(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const-string p1, "packageManager.queryIntentActivities(intent, 0)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final openRawUrl(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lio/bidmachine/util/Executable<",
            "Lio/bidmachine/util/ProcessUrlResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-static {p1}, Lio/bidmachine/util/UrlUtilsKt;->parseUriSafely(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1c

    if-eqz p2, :cond_58

    .line 142
    sget-object p0, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {p0}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getFAIL()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/bidmachine/util/Executable;->execute(Ljava/lang/Object;)V

    return-void

    .line 146
    :cond_1c
    :try_start_1c
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    invoke-static {p1, v0, v1, v2}, Lio/bidmachine/util/IntentUtilsKt;->toIntent$default(Landroid/net/Uri;ZILjava/lang/Object;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz p2, :cond_38

    .line 148
    sget-object p0, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {p0}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getSUCCESS()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/bidmachine/util/Executable;->execute(Ljava/lang/Object;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_38

    :catchall_36
    move-exception p0

    goto :goto_3d

    .line 146
    :cond_38
    :goto_38
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_36

    goto :goto_47

    :goto_3d
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 149
    :goto_47
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_58

    if-eqz p2, :cond_58

    .line 150
    sget-object p0, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {p0}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getFAIL()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/bidmachine/util/Executable;->execute(Ljava/lang/Object;)V

    :cond_58
    return-void
.end method

.method public static final openUri(Landroid/content/Context;Landroid/net/Uri;)Lio/bidmachine/util/ProcessUrlResult;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/bidmachine/util/IntentUtilsKt;->openUrl(Landroid/content/Context;Ljava/lang/String;)Lio/bidmachine/util/ProcessUrlResult;

    move-result-object p0

    return-object p0
.end method

.method public static final openUrl(Landroid/content/Context;Ljava/lang/String;)Lio/bidmachine/util/ProcessUrlResult;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_42

    .line 76
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_42

    .line 80
    :cond_e
    :try_start_e
    invoke-static {p1}, Lio/bidmachine/util/IntentUtils;->urlToIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 81
    invoke-static {p0, v0}, Lio/bidmachine/util/IntentUtilsKt;->findAndSetIntentComponent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 82
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "decode(url, Charsets.UTF_8.name())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-static {p1}, Lio/bidmachine/util/IntentUtils;->urlToIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 84
    invoke-static {p0, v0}, Lio/bidmachine/util/IntentUtilsKt;->findAndSetIntentComponent(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 86
    :cond_2e
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    sget-object p0, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {p0}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getSUCCESS()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object p0
    :try_end_37
    .catchall {:try_start_e .. :try_end_37} :catchall_38

    goto :goto_39

    :catchall_38
    const/4 p0, 0x0

    :goto_39
    if-nez p0, :cond_41

    .line 88
    sget-object p0, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {p0}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getFAIL()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object p0

    :cond_41
    return-object p0

    .line 77
    :cond_42
    :goto_42
    sget-object p0, Lio/bidmachine/util/ProcessUrlResult;->Companion:Lio/bidmachine/util/ProcessUrlResult$Companion;

    invoke-virtual {p0}, Lio/bidmachine/util/ProcessUrlResult$Companion;->getFAIL()Lio/bidmachine/util/ProcessUrlResult;

    move-result-object p0

    return-object p0
.end method

.method public static final openUrlWithPostback(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lio/bidmachine/util/Executable<",
            "Lio/bidmachine/util/ProcessUrlResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lio/bidmachine/util/UiUtils;->INSTANCE:Lio/bidmachine/util/UiUtils;

    .line 93
    invoke-static {p0, p1}, Lio/bidmachine/util/IntentUtilsKt;->openUrl(Landroid/content/Context;Ljava/lang/String;)Lio/bidmachine/util/ProcessUrlResult;

    move-result-object p0

    .line 92
    invoke-virtual {v0, p0, p2}, Lio/bidmachine/util/UiUtils;->onUiThreadWithArgSafely(Ljava/lang/Object;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method public static final removeBmCustomParams(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "urlString"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-static {p0}, Lio/bidmachine/util/UrlUtilsKt;->parseUriSafely(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_c

    return-object p0

    .line 162
    :cond_c
    const-string p0, "bmcp"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/bidmachine/util/UrlUtilsKt;->removeQueryParameters(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "uri.removeQueryParameter\u2026CUSTOM_PARAMS).toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toChooserIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    const-string v0, ""

    invoke-static {p0, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    const/high16 v0, 0x10000000

    .line 110
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "createChooser(this, \"\")\n\u2026t.FLAG_ACTIVITY_NEW_TASK)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toIntent(Landroid/net/Uri;Z)Landroid/content/Intent;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p1, :cond_13

    const/high16 p0, 0x10000000

    .line 101
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_13
    return-object v0
.end method

.method public static synthetic toIntent$default(Landroid/net/Uri;ZILjava/lang/Object;)Landroid/content/Intent;
    .registers 4

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    move p1, p3

    .line 98
    :cond_5
    invoke-static {p0, p1}, Lio/bidmachine/util/IntentUtilsKt;->toIntent(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

###### Class io.bidmachine.util.IntentUtilsKt$$ExternalSyntheticLambda0 (io.bidmachine.util.IntentUtilsKt$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/util/IntentUtilsKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lio/bidmachine/util/Executable;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/util/IntentUtilsKt$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lio/bidmachine/util/IntentUtilsKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/bidmachine/util/IntentUtilsKt$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/util/Executable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/util/IntentUtilsKt$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lio/bidmachine/util/IntentUtilsKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/bidmachine/util/IntentUtilsKt$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/util/Executable;

    invoke-static {v0, v1, v2}, Lio/bidmachine/util/IntentUtilsKt;->$r8$lambda$i5-gbdBa6rvHNZyuqswhy5K8pIQ(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V

    return-void
.end method

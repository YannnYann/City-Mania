###### Class ads_mobile_sdk.av (ads_mobile_sdk.av)
.class public final Lads_mobile_sdk/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/ur3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/ur3;)V
    .registers 4

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lads_mobile_sdk/av;->a:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lads_mobile_sdk/av;->b:Lads_mobile_sdk/ur3;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16

    .line 37
    const-string v0, "data"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const-string v3, "openableIntents"

    if-nez v0, :cond_26

    .line 39
    const-string p2, "Missing data argument for canOpenIntents gmsg"

    invoke-static {p2, v2, v1}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 40
    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {p1, p2, v3, p3}, Lads_mobile_sdk/r31;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_23

    return-object p1

    .line 41
    :cond_23
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 46
    :cond_26
    :try_start_26
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    const-class v5, Lcom/google/gson/JsonObject;

    invoke-virtual {v4, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_33} :catch_126

    .line 54
    const-string v4, "intents"

    invoke-static {v0, v4}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    if-nez v0, :cond_53

    .line 56
    const-string p2, "Missing intents parameter for canOpenIntents gmsg"

    invoke-static {p2, v2, v1}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 57
    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {p1, p2, v3, p3}, Lads_mobile_sdk/r31;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_50

    return-object p1

    .line 58
    :cond_50
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 61
    :cond_53
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 62
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    const/4 v4, 0x0

    move v5, v4

    :goto_5e
    if-ge v5, v2, :cond_104

    .line 63
    invoke-static {v0, v5}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonObject;

    move-result-object v6

    if-nez v6, :cond_68

    goto/16 :goto_100

    .line 64
    :cond_68
    const-string v7, "id"

    invoke-static {v6, v7}, Lads_mobile_sdk/ds1;->h(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 67
    const-string v8, "intent_url"

    invoke-static {v6, v8}, Lads_mobile_sdk/ds1;->h(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lads_mobile_sdk/zu;

    invoke-direct {v9, p0}, Lads_mobile_sdk/zu;-><init>(Lads_mobile_sdk/av;)V

    invoke-static {v8, v9}, Lads_mobile_sdk/tu;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    if-nez v8, :cond_cc

    .line 78
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 79
    const-string v9, "u"

    invoke-static {v6, v9}, Lads_mobile_sdk/ds1;->h(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lads_mobile_sdk/uu;

    invoke-direct {v10, v8}, Lads_mobile_sdk/uu;-><init>(Landroid/content/Intent;)V

    invoke-static {v9, v10}, Lads_mobile_sdk/tu;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 80
    const-string v9, "i"

    invoke-static {v6, v9}, Lads_mobile_sdk/ds1;->h(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lads_mobile_sdk/vu;

    invoke-direct {v10, v8}, Lads_mobile_sdk/vu;-><init>(Landroid/content/Intent;)V

    invoke-static {v9, v10}, Lads_mobile_sdk/tu;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 81
    const-string v9, "m"

    invoke-static {v6, v9}, Lads_mobile_sdk/ds1;->h(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lads_mobile_sdk/wu;

    invoke-direct {v10, v8}, Lads_mobile_sdk/wu;-><init>(Landroid/content/Intent;)V

    invoke-static {v9, v10}, Lads_mobile_sdk/tu;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 82
    const-string v9, "p"

    invoke-static {v6, v9}, Lads_mobile_sdk/ds1;->h(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lads_mobile_sdk/xu;

    invoke-direct {v10, v8}, Lads_mobile_sdk/xu;-><init>(Landroid/content/Intent;)V

    invoke-static {v9, v10}, Lads_mobile_sdk/tu;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 83
    const-string v9, "c"

    invoke-static {v6, v9}, Lads_mobile_sdk/ds1;->h(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lads_mobile_sdk/yu;

    invoke-direct {v9, v8}, Lads_mobile_sdk/yu;-><init>(Landroid/content/Intent;)V

    invoke-static {v6, v9}, Lads_mobile_sdk/tu;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 93
    :cond_cc
    :try_start_cc
    iget-object v6, p0, Lads_mobile_sdk/av;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/high16 v9, 0x10000

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_d8} :catch_d9

    goto :goto_f4

    :catch_d9
    move-exception v6

    .line 96
    iget-object v9, p0, Lads_mobile_sdk/av;->b:Lads_mobile_sdk/ur3;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed resolving intent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    check-cast v9, Lads_mobile_sdk/as3;

    invoke-virtual {v9, v8, v6}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_f4
    if-eqz v6, :cond_f8

    const/4 v6, 0x1

    goto :goto_f9

    :cond_f8
    move v6, v4

    .line 100
    :goto_f9
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v7, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    :goto_100
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5e

    .line 103
    :cond_104
    const-string v0, "ad_mid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_118

    .line 104
    invoke-static {p2}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_115

    goto :goto_118

    .line 105
    :cond_115
    invoke-virtual {v1, v0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_118
    :goto_118
    invoke-virtual {p1, v1, v3, p3}, Lads_mobile_sdk/r31;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_123

    return-object p1

    :cond_123
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catch_126
    move-exception p2

    const/4 v0, 0x4

    .line 108
    const-string v1, "Invalid JSON data for canOpenIntents gmsg"

    invoke-static {v1, p2, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 109
    iget-object v0, p0, Lads_mobile_sdk/av;->b:Lads_mobile_sdk/ur3;

    check-cast v0, Lads_mobile_sdk/as3;

    invoke-virtual {v0, v1, p2}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {p1, p2, v3, p3}, Lads_mobile_sdk/r31;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_144

    return-object p1

    .line 111
    :cond_144
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->F:Lads_mobile_sdk/u11;

    return-object v0
.end method

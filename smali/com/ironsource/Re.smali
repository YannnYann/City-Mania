###### Class com.ironsource.Re (com.ironsource.Re)
.class public final Lcom/ironsource/Re;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Se;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;Lcom/ironsource/Ke;Lcom/ironsource/ze;)Lcom/ironsource/Ee;
    .registers 14

    const/16 v1, 0x820

    .line 17
    :try_start_2
    invoke-interface {p2, p1}, Lcom/ironsource/Ke;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 19
    invoke-interface {p2, p1}, Lcom/ironsource/Ke;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    .line 22
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 23
    const-string v4, "using custom identifier"

    const/4 v5, 0x1

    .line 24
    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_1c
    move-object v5, v0

    goto :goto_22

    :catch_1e
    move-exception v0

    move-object p1, v0

    goto/16 :goto_128

    .line 30
    :goto_22
    invoke-interface {p2}, Lcom/ironsource/Ke;->c()Lcom/ironsource/ia;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/ironsource/ia;->f()Ljava/util/ArrayList;

    move-result-object v0

    :goto_2c
    move-object v8, v0

    goto :goto_30

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2c

    .line 33
    :goto_30
    invoke-virtual {p3}, Lcom/ironsource/ze;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/ironsource/ze;->f()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p1

    .line 34
    invoke-static/range {v2 .. v9}, Lcom/ironsource/We;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Z)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {}, Lcom/ironsource/m9;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "toString(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {p1, v0}, Lcom/ironsource/h7;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/j7;

    move-result-object p1

    .line 41
    instance-of v0, p1, Lcom/ironsource/j7$a;

    if-eqz v0, :cond_7e

    .line 42
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    move-object p3, p1

    check-cast p3, Lcom/ironsource/j7$a;

    invoke-interface {p3}, Lcom/ironsource/j7$a;->a()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP init request failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    .line 43
    check-cast p1, Lcom/ironsource/j7$a;

    invoke-direct {p0, p1}, Lcom/ironsource/Re;->a(Lcom/ironsource/j7$a;)Lcom/ironsource/se;

    move-result-object p1

    .line 44
    new-instance p2, Lcom/ironsource/Ee$a;

    invoke-direct {p2, p1}, Lcom/ironsource/Ee$a;-><init>(Lcom/ironsource/se;)V

    return-object p2

    .line 46
    :cond_7e
    instance-of v0, p1, Lcom/ironsource/j7$b;

    if-eqz v0, :cond_122

    .line 47
    check-cast p1, Lcom/ironsource/j7$b;

    invoke-virtual {p1}, Lcom/ironsource/j7$b;->d()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-interface {p2}, Lcom/ironsource/Ke;->d()Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 53
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v3, "encrypt"

    invoke-virtual {v0, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 54
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    const-string p1, "response"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 57
    const-string p1, "encryptedResponse is empty - return null"

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    .line 59
    new-instance p1, Lcom/ironsource/se;

    .line 61
    const-string p2, "noResponseKey"

    const/16 p3, 0x834

    .line 62
    invoke-direct {p1, p3, p2}, Lcom/ironsource/se;-><init>(ILjava/lang/String;)V

    .line 65
    new-instance p2, Lcom/ironsource/Ee$a;

    invoke-direct {p2, p1}, Lcom/ironsource/Ee$a;-><init>(Lcom/ironsource/se;)V

    return-object p2

    .line 68
    :cond_ba
    const-string v4, "compression"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 69
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v3}, Lcom/ironsource/Re;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 72
    const-string p1, "encoded response invalid - return null"

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    .line 73
    invoke-interface {p2}, Lcom/ironsource/Ke;->g()V

    .line 75
    new-instance p1, Lcom/ironsource/se;

    .line 77
    const-string p2, "decryptionFailed"

    const/16 p3, 0x82a

    .line 78
    invoke-direct {p1, p3, p2}, Lcom/ironsource/se;-><init>(ILjava/lang/String;)V

    .line 81
    new-instance p2, Lcom/ironsource/Ee$a;

    invoke-direct {p2, p1}, Lcom/ironsource/Ee$a;-><init>(Lcom/ironsource/se;)V

    return-object p2

    .line 86
    :cond_e5
    new-instance p2, Lcom/ironsource/Ue;

    invoke-virtual {p3}, Lcom/ironsource/ze;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/ironsource/ze;->f()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v2, v0, p3, p1}, Lcom/ironsource/Ue;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object p1, Lcom/ironsource/Ue$a;->d:Lcom/ironsource/Ue$a;

    invoke-virtual {p2, p1}, Lcom/ironsource/Ue;->a(Lcom/ironsource/Ue$a;)V

    .line 89
    invoke-virtual {p2}, Lcom/ironsource/Ue;->q()Z

    move-result p1

    if-nez p1, :cond_117

    .line 90
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p3, "response invalid - return null"

    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    .line 92
    new-instance p1, Lcom/ironsource/se;

    invoke-virtual {p2}, Lcom/ironsource/Ue;->e()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_10e

    const-string p2, "Unknown"

    :cond_10e
    invoke-direct {p1, v1, p2}, Lcom/ironsource/se;-><init>(ILjava/lang/String;)V

    .line 93
    new-instance p2, Lcom/ironsource/Ee$a;

    invoke-direct {p2, p1}, Lcom/ironsource/Ee$a;-><init>(Lcom/ironsource/se;)V

    return-object p2

    .line 96
    :cond_117
    new-instance p1, Lcom/ironsource/Ae;

    invoke-direct {p1, p2}, Lcom/ironsource/Ae;-><init>(Lcom/ironsource/Ue;)V

    .line 98
    new-instance p2, Lcom/ironsource/Ee$b;

    invoke-direct {p2, p1}, Lcom/ironsource/Ee$b;-><init>(Lcom/ironsource/Ae;)V

    return-object p2

    .line 99
    :cond_122
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_128} :catch_1e

    .line 153
    :goto_128
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 154
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    .line 158
    instance-of p1, p1, Lorg/json/JSONException;

    if-eqz p1, :cond_151

    .line 159
    new-instance p1, Lcom/ironsource/se;

    const-string p2, "serverResponseIsNotValid"

    invoke-direct {p1, v1, p2}, Lcom/ironsource/se;-><init>(ILjava/lang/String;)V

    goto :goto_15a

    .line 162
    :cond_151
    new-instance p1, Lcom/ironsource/se;

    const/16 p2, 0x1fe

    const-string p3, "internal error"

    invoke-direct {p1, p2, p3}, Lcom/ironsource/se;-><init>(ILjava/lang/String;)V

    .line 164
    :goto_15a
    new-instance p2, Lcom/ironsource/Ee$a;

    invoke-direct {p2, p1}, Lcom/ironsource/Ee$a;-><init>(Lcom/ironsource/se;)V

    return-object p2
.end method

.method private final a(Lcom/ironsource/j7$a;)Lcom/ironsource/se;
    .registers 4

    .line 173
    invoke-interface {p1}, Lcom/ironsource/j7$a;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x816

    goto :goto_b

    :cond_9
    const/16 v0, 0x83e

    .line 175
    :goto_b
    new-instance v1, Lcom/ironsource/se;

    invoke-interface {p1}, Lcom/ironsource/j7$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/ironsource/se;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private final a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    if-eqz p2, :cond_12

    .line 165
    invoke-static {}, Lcom/ironsource/p5;->b()Lcom/ironsource/p5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/p5;->c()Ljava/lang/String;

    move-result-object p2

    .line 166
    invoke-static {p2, p1}, Lcom/ironsource/Q9;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    .line 171
    :cond_12
    invoke-static {}, Lcom/ironsource/p5;->b()Lcom/ironsource/p5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/p5;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/ironsource/Q9;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method private final b(Landroid/content/Context;Lcom/ironsource/Ke;Lcom/ironsource/ze;)Lcom/ironsource/Ee;
    .registers 9

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/Re;->a(Landroid/content/Context;Lcom/ironsource/Ke;Lcom/ironsource/ze;)Lcom/ironsource/Ee;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/ironsource/Ee$a;

    if-eqz v1, :cond_5e

    .line 5
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    .line 7
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 8
    const-string v3, "Null or invalid response. Trying to get cached response"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 13
    invoke-virtual {p3}, Lcom/ironsource/ze;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Lcom/ironsource/Ke;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ironsource/Ue;

    move-result-object p1

    if-eqz p1, :cond_5e

    .line 15
    invoke-virtual {p1}, Lcom/ironsource/Ue;->q()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 16
    new-instance v0, Lcom/ironsource/Ae;

    invoke-direct {v0, p1}, Lcom/ironsource/Ae;-><init>(Lcom/ironsource/Ue;)V

    .line 17
    new-instance p1, Lcom/ironsource/Ee$b;

    invoke-direct {p1, v0}, Lcom/ironsource/Ee$b;-><init>(Lcom/ironsource/Ae;)V

    .line 19
    invoke-virtual {p3}, Lcom/ironsource/ze;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/ironsource/ze;->f()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildUsingCachedConfigurationError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p3

    .line 21
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lcom/ironsource/Ee$b;->b()Lcom/ironsource/Ae;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v2, p3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 30
    invoke-interface {p2}, Lcom/ironsource/Ke;->b()V

    return-object p1

    :cond_5e
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/ironsource/ze;Lcom/ironsource/Ke;Lcom/ironsource/xe;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tools"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/ironsource/ze;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    const-string v0, ""

    :cond_1c
    const-string v1, "userId"

    invoke-interface {p3, v1, v0}, Lcom/ironsource/Ke;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/ironsource/ze;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appKey"

    invoke-interface {p3, v1, v0}, Lcom/ironsource/Ke;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {p3}, Lcom/ironsource/Ke;->i()Lcom/ironsource/ba;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ironsource/ze;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/ba;->i(Ljava/lang/String;)V

    .line 4
    invoke-interface {p3}, Lcom/ironsource/Ke;->h()V

    .line 6
    invoke-direct {p0, p1, p3, p2}, Lcom/ironsource/Re;->b(Landroid/content/Context;Lcom/ironsource/Ke;Lcom/ironsource/ze;)Lcom/ironsource/Ee;

    move-result-object p1

    .line 9
    instance-of p2, p1, Lcom/ironsource/Ee$b;

    if-eqz p2, :cond_4f

    .line 10
    new-instance p2, Lcom/ironsource/qe;

    check-cast p1, Lcom/ironsource/Ee$b;

    invoke-virtual {p1}, Lcom/ironsource/Ee$b;->b()Lcom/ironsource/Ae;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/ironsource/qe;-><init>(Lcom/ironsource/Ae;)V

    .line 12
    invoke-interface {p4, p2}, Lcom/ironsource/xe;->a(Lcom/ironsource/qe;)V

    return-void

    .line 14
    :cond_4f
    instance-of p2, p1, Lcom/ironsource/Ee$a;

    if-eqz p2, :cond_5d

    .line 15
    check-cast p1, Lcom/ironsource/Ee$a;

    invoke-virtual {p1}, Lcom/ironsource/Ee$a;->b()Lcom/ironsource/se;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ironsource/xe;->a(Lcom/ironsource/se;)V

    return-void

    .line 16
    :cond_5d
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

###### Class ads_mobile_sdk.ry1 (ads_mobile_sdk.ry1)
.class public final Lads_mobile_sdk/ry1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/oy1;


# static fields
.field public static final d:J

.field public static final e:J


# instance fields
.field public final a:Lads_mobile_sdk/ex0;

.field public final b:Lads_mobile_sdk/zw3;

.field public final c:Lads_mobile_sdk/e01;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/16 v1, 0x3c

    invoke-static {v1, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sput-wide v0, Lads_mobile_sdk/ry1;->d:J

    .line 2
    sget-object v0, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v0

    sput-wide v0, Lads_mobile_sdk/ry1;->e:J

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/ex0;Lads_mobile_sdk/zw3;Lads_mobile_sdk/e01;)V
    .registers 5

    .line 1
    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgentProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lads_mobile_sdk/ry1;->a:Lads_mobile_sdk/ex0;

    .line 26
    iput-object p2, p0, Lads_mobile_sdk/ry1;->b:Lads_mobile_sdk/zw3;

    .line 27
    iput-object p3, p0, Lads_mobile_sdk/ry1;->c:Lads_mobile_sdk/e01;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Landroid/webkit/WebResourceRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 1
    const-string v0, "UTF-8"

    instance-of v1, p3, Lads_mobile_sdk/py1;

    if-eqz v1, :cond_15

    move-object v1, p3

    check-cast v1, Lads_mobile_sdk/py1;

    iget v2, v1, Lads_mobile_sdk/py1;->f:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_15

    sub-int/2addr v2, v3

    iput v2, v1, Lads_mobile_sdk/py1;->f:I

    goto :goto_1a

    :cond_15
    new-instance v1, Lads_mobile_sdk/py1;

    invoke-direct {v1, p0, p3}, Lads_mobile_sdk/py1;-><init>(Lads_mobile_sdk/ry1;Lkotlin/coroutines/Continuation;)V

    :goto_1a
    iget-object p3, v1, Lads_mobile_sdk/py1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 46
    iget v3, v1, Lads_mobile_sdk/py1;->f:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_42

    if-eq v3, v5, :cond_38

    if-ne v3, v4, :cond_30

    :try_start_2b
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_d7

    goto/16 :goto_ad

    .line 47
    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    iget-object p1, v1, Lads_mobile_sdk/py1;->c:Ljava/lang/String;

    iget-object p2, v1, Lads_mobile_sdk/py1;->b:Lads_mobile_sdk/e81;

    iget-object v3, v1, Lads_mobile_sdk/py1;->a:Lads_mobile_sdk/ry1;

    :try_start_3e
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_d7

    goto :goto_89

    .line 48
    :cond_42
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    :try_start_45
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_4c

    return-object v6

    .line 54
    :cond_4c
    invoke-virtual {p0, p2, p1}, Lads_mobile_sdk/ry1;->a(Landroid/net/Uri;Lads_mobile_sdk/r31;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_53

    return-object v6

    .line 56
    :cond_53
    new-instance p2, Lads_mobile_sdk/e81;

    invoke-direct {p2}, Lads_mobile_sdk/e81;-><init>()V

    .line 57
    invoke-virtual {p2, p1}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;)Lads_mobile_sdk/e81;

    move-result-object p1

    .line 58
    const-string p2, "Cache-Control"

    sget-wide v7, Lads_mobile_sdk/ry1;->e:J

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "max-stale="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lads_mobile_sdk/e81;->a(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    move-result-object p2

    .line 59
    const-string p1, "User-Agent"

    iget-object p3, p0, Lads_mobile_sdk/ry1;->b:Lads_mobile_sdk/zw3;

    iput-object p0, v1, Lads_mobile_sdk/py1;->a:Lads_mobile_sdk/ry1;

    iput-object p2, v1, Lads_mobile_sdk/py1;->b:Lads_mobile_sdk/e81;

    iput-object p1, v1, Lads_mobile_sdk/py1;->c:Ljava/lang/String;

    iput v5, v1, Lads_mobile_sdk/py1;->f:I

    invoke-interface {p3, v1}, Lads_mobile_sdk/zw3;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v2, :cond_88

    goto :goto_ac

    :cond_88
    move-object v3, p0

    .line 60
    :goto_89
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lads_mobile_sdk/e81;->a(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lads_mobile_sdk/e81;->b()Lads_mobile_sdk/e81;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lads_mobile_sdk/e81;->a()Lads_mobile_sdk/f81;

    move-result-object p1

    .line 64
    sget-wide p2, Lads_mobile_sdk/ry1;->d:J

    new-instance v5, Lads_mobile_sdk/qy1;

    invoke-direct {v5, v3, p1, v6}, Lads_mobile_sdk/qy1;-><init>(Lads_mobile_sdk/ry1;Lads_mobile_sdk/f81;Lkotlin/coroutines/Continuation;)V

    iput-object v6, v1, Lads_mobile_sdk/py1;->a:Lads_mobile_sdk/ry1;

    iput-object v6, v1, Lads_mobile_sdk/py1;->b:Lads_mobile_sdk/e81;

    iput-object v6, v1, Lads_mobile_sdk/py1;->c:Ljava/lang/String;

    iput v4, v1, Lads_mobile_sdk/py1;->f:I

    invoke-static {p2, p3, v5, v1}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v2, :cond_ad

    :goto_ac
    return-object v2

    .line 65
    :cond_ad
    :goto_ad
    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_d7

    .line 87
    invoke-static {p3}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b8

    goto :goto_d7

    .line 88
    :cond_b8
    new-instance p1, Landroid/webkit/WebResourceResponse;

    .line 89
    const-string p2, "application/javascript"

    .line 91
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    const-string v3, "forName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    const-string v2, "getBytes(...)"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 92
    invoke-direct {p1, p2, v0, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_d6} :catch_d7

    return-object p1

    :catch_d7
    :cond_d7
    :goto_d7
    return-object v6
.end method

.method public final a(Landroid/net/Uri;Lads_mobile_sdk/r31;)Ljava/lang/String;
    .registers 6

    .line 126
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 127
    :cond_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mraid.js"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1b

    return-object v0

    .line 128
    :cond_1b
    iget-object p1, p2, Lads_mobile_sdk/r31;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 129
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const-string v0, "defaultValue"

    const-string v1, "key"

    if-eqz p1, :cond_3f

    .line 130
    iget-object p1, p0, Lads_mobile_sdk/ry1;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    const-string p2, "gad:mraid:url_expanded_banner"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_expanded_banner.js"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    sget-object v0, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {p1, p2, v1, v0}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 176
    :cond_3f
    invoke-virtual {p2}, Lads_mobile_sdk/r31;->e()Lads_mobile_sdk/v14;

    move-result-object p1

    iget-object p1, p1, Lads_mobile_sdk/v14;->a:Lads_mobile_sdk/u14;

    sget-object p2, Lads_mobile_sdk/u14;->d:Lads_mobile_sdk/u14;

    if-ne p1, p2, :cond_61

    .line 177
    iget-object p1, p0, Lads_mobile_sdk/ry1;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    const-string p2, "gad:mraid:url_interstitial"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_interstitial.js"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {p1, p2, v1, v0}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 223
    :cond_61
    iget-object p1, p0, Lads_mobile_sdk/ry1;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    const-string p2, "gad:mraid:url_banner"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_banner.js"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    sget-object v0, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {p1, p2, v1, v0}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

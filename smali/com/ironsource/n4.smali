###### Class com.ironsource.C3738n4 (com.ironsource.n4)
.class public final Lcom/ironsource/n4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/x7;


# instance fields
.field private final a:Lcom/ironsource/k4;

.field private final b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/ironsource/D8;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/ironsource/C7;

.field private final d:Lcom/ironsource/t4;

.field private final e:Ljava/lang/String;

.field private f:Lcom/ironsource/D8;

.field private g:J

.field private final h:Lcom/ironsource/id;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/k4;Lkotlin/jvm/functions/Function1;Lcom/ironsource/C7;Lcom/ironsource/t4;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/k4;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/ironsource/D8;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ironsource/C7;",
            "Lcom/ironsource/t4;",
            ")V"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFinish"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentTimeProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/n4;->a:Lcom/ironsource/k4;

    .line 3
    iput-object p2, p0, Lcom/ironsource/n4;->b:Lkotlin/jvm/functions/Function1;

    .line 4
    iput-object p3, p0, Lcom/ironsource/n4;->c:Lcom/ironsource/C7;

    .line 5
    iput-object p4, p0, Lcom/ironsource/n4;->d:Lcom/ironsource/t4;

    .line 7
    const-class p2, Lcom/ironsource/n4;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/n4;->e:Ljava/lang/String;

    .line 9
    new-instance p2, Lcom/ironsource/D8;

    invoke-virtual {p1}, Lcom/ironsource/k4;->d()Ljava/lang/String;

    move-result-object p3

    const-string v0, "mobileController_0.html"

    invoke-direct {p2, p3, v0}, Lcom/ironsource/D8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/ironsource/n4;->f:Lcom/ironsource/D8;

    .line 10
    invoke-interface {p4}, Lcom/ironsource/t4;->a()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/ironsource/n4;->g:J

    .line 11
    new-instance p2, Lcom/ironsource/id;

    invoke-virtual {p1}, Lcom/ironsource/k4;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/ironsource/id;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/ironsource/n4;->h:Lcom/ironsource/id;

    .line 12
    const-string p1, ""

    iput-object p1, p0, Lcom/ironsource/n4;->i:Ljava/lang/String;

    return-void
.end method

.method private final a(Ljava/lang/String;)Lcom/ironsource/m4;
    .registers 6

    .line 18
    iget-object v0, p0, Lcom/ironsource/n4;->a:Lcom/ironsource/k4;

    invoke-virtual {v0}, Lcom/ironsource/k4;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/mobileController_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".html"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    new-instance v1, Lcom/ironsource/m4;

    .line 20
    new-instance v2, Lcom/ironsource/zg;

    iget-object v3, p0, Lcom/ironsource/n4;->h:Lcom/ironsource/id;

    invoke-direct {v2, v3, p1}, Lcom/ironsource/zg;-><init>(Lcom/ironsource/id;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/ironsource/n4;->c:Lcom/ironsource/C7;

    .line 23
    new-instance v3, Lcom/ironsource/n4$a;

    invoke-direct {v3, p0}, Lcom/ironsource/n4$a;-><init>(Ljava/lang/Object;)V

    .line 24
    invoke-direct {v1, v2, v0, p1, v3}, Lcom/ironsource/m4;-><init>(Lcom/ironsource/c6;Ljava/lang/String;Lcom/ironsource/C7;Lkotlin/jvm/functions/Function1;)V

    return-object v1
.end method

.method public static final synthetic a(Lcom/ironsource/n4;Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/n4;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private final a(Ljava/lang/Object;)V
    .registers 5

    .line 4
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x0

    :cond_7
    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_44

    .line 5
    const-string v0, "htmlBuildNumber"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_44

    .line 8
    :cond_1a
    const-string v1, "abTestMap"

    invoke-static {v1, p1}, Lcom/ironsource/sdk/utils/SDKUtils;->updateControllerConfig(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/n4;->i:Ljava/lang/String;

    .line 11
    invoke-direct {p0, p1}, Lcom/ironsource/n4;->a(Ljava/lang/String;)Lcom/ironsource/m4;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Lcom/ironsource/k5;->j()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 13
    invoke-virtual {p1}, Lcom/ironsource/m4;->k()Lcom/ironsource/D8;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/n4;->f:Lcom/ironsource/D8;

    .line 14
    iget-object v0, p0, Lcom/ironsource/n4;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 16
    :cond_40
    invoke-interface {p1}, Lcom/ironsource/k5;->m()V

    return-void

    .line 17
    :cond_44
    :goto_44
    const-string p1, "0"

    invoke-direct {p0, p1}, Lcom/ironsource/n4;->a(Ljava/lang/String;)Lcom/ironsource/m4;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/k5;->m()V

    return-void
.end method

.method public static final synthetic b(Lcom/ironsource/n4;Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/n4;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private final b(Ljava/lang/Object;)V
    .registers 10

    .line 15
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_73

    .line 16
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, v1

    goto :goto_10

    :cond_f
    move-object v0, p1

    :goto_10
    move-object v2, v0

    check-cast v2, Lcom/ironsource/D8;

    if-eqz v2, :cond_1a

    .line 17
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    move-object v0, v1

    :goto_1b
    iget-object v3, p0, Lcom/ironsource/n4;->f:Lcom/ironsource/D8;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 19
    :try_start_27
    iget-object v0, p0, Lcom/ironsource/n4;->f:Lcom/ironsource/D8;

    invoke-static {v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFile(Lcom/ironsource/D8;)Z

    .line 20
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/ironsource/n4;->f:Lcom/ironsource/D8;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/io/FilesKt__UtilsKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_38} :catch_39

    goto :goto_5b

    :catch_39
    move-exception v0

    .line 22
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 24
    iget-object v3, p0, Lcom/ironsource/n4;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to copy downloaded mobileController.html to cache folder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :goto_5b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/ironsource/n4;->f:Lcom/ironsource/D8;

    .line 32
    :cond_60
    new-instance v0, Lcom/ironsource/l4$b;

    .line 33
    iget-object v2, p0, Lcom/ironsource/n4;->a:Lcom/ironsource/k4;

    invoke-virtual {v2}, Lcom/ironsource/k4;->b()Z

    move-result v2

    iget-wide v3, p0, Lcom/ironsource/n4;->g:J

    iget-object v5, p0, Lcom/ironsource/n4;->d:Lcom/ironsource/t4;

    .line 34
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/ironsource/l4$b;-><init>(ZJLcom/ironsource/t4;)V

    .line 36
    invoke-virtual {v0}, Lcom/ironsource/l4$b;->a()V

    goto :goto_81

    .line 38
    :cond_73
    new-instance v0, Lcom/ironsource/l4$a;

    iget-object v2, p0, Lcom/ironsource/n4;->a:Lcom/ironsource/k4;

    invoke-virtual {v2}, Lcom/ironsource/k4;->b()Z

    move-result v2

    invoke-direct {v0, v2}, Lcom/ironsource/l4$a;-><init>(Z)V

    invoke-virtual {v0}, Lcom/ironsource/l4$a;->a()V

    .line 40
    :goto_81
    iget-object v0, p0, Lcom/ironsource/n4;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    move-object p1, v1

    :cond_8a
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/t4;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/ironsource/n4;->d:Lcom/ironsource/t4;

    return-object v0
.end method

.method public a(Lcom/ironsource/D8;)Z
    .registers 4

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getName(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "mobileController(_\\d+)?\\.html"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/ironsource/n4;->d:Lcom/ironsource/t4;

    invoke-interface {v0}, Lcom/ironsource/t4;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/n4;->g:J

    .line 4
    new-instance v0, Lcom/ironsource/c;

    .line 5
    new-instance v1, Lcom/ironsource/d;

    iget-object v2, p0, Lcom/ironsource/n4;->h:Lcom/ironsource/id;

    invoke-direct {v1, v2}, Lcom/ironsource/d;-><init>(Lcom/ironsource/id;)V

    .line 6
    iget-object v2, p0, Lcom/ironsource/n4;->a:Lcom/ironsource/k4;

    invoke-virtual {v2}, Lcom/ironsource/k4;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/temp"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/ironsource/n4;->c:Lcom/ironsource/C7;

    .line 8
    new-instance v4, Lcom/ironsource/n4$b;

    invoke-direct {v4, p0}, Lcom/ironsource/n4$b;-><init>(Ljava/lang/Object;)V

    .line 9
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ironsource/c;-><init>(Lcom/ironsource/c6;Ljava/lang/String;Lcom/ironsource/C7;Lkotlin/jvm/functions/Function1;)V

    .line 14
    invoke-interface {v0}, Lcom/ironsource/k5;->m()V

    return-void
.end method

.method public c()Lcom/ironsource/D8;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/n4;->f:Lcom/ironsource/D8;

    return-object v0
.end method

.method public final d()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/ironsource/D8;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/n4;->b:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

###### Class com.ironsource.C3738n4.a (com.ironsource.n4$a)
.class final synthetic Lcom/ironsource/n4$a;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/n4;->a(Ljava/lang/String;)Lcom/ironsource/m4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Result<",
        "+",
        "Lcom/ironsource/D8;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 1
    const-string v5, "onHtmlDownloadFinished(Ljava/lang/Object;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/ironsource/n4;

    const-string v4, "onHtmlDownloadFinished"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/ironsource/n4;

    invoke-static {v0, p1}, Lcom/ironsource/n4;->b(Lcom/ironsource/n4;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/n4$a;->a(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class com.ironsource.C3738n4.b (com.ironsource.n4$b)
.class final synthetic Lcom/ironsource/n4$b;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/n4;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Result<",
        "+",
        "Lorg/json/JSONObject;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 1
    const-string v5, "onAbTestDownloadFinished(Ljava/lang/Object;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/ironsource/n4;

    const-string v4, "onAbTestDownloadFinished"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/ironsource/n4;

    invoke-static {v0, p1}, Lcom/ironsource/n4;->a(Lcom/ironsource/n4;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/n4$b;->a(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class com.ironsource.O5 (com.ironsource.O5)
.class public Lcom/ironsource/O5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String; = "EventsTracker"


# instance fields
.field private a:Lcom/ironsource/q7;

.field private b:Lcom/ironsource/I5;

.field private c:Lcom/ironsource/J7;

.field private d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetb(Lcom/ironsource/O5;)Lcom/ironsource/I5;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/O5;->b:Lcom/ironsource/I5;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$ma(Lcom/ironsource/O5;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/ironsource/O5;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/I5;Lcom/ironsource/q7;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_24

    .line 5
    invoke-virtual {p1}, Lcom/ironsource/I5;->c()Lcom/ironsource/J7;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 9
    iput-object p1, p0, Lcom/ironsource/O5;->b:Lcom/ironsource/I5;

    .line 10
    iput-object p2, p0, Lcom/ironsource/O5;->a:Lcom/ironsource/q7;

    .line 12
    invoke-virtual {p1}, Lcom/ironsource/I5;->c()Lcom/ironsource/J7;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/O5;->c:Lcom/ironsource/J7;

    .line 13
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/O5;->d:Ljava/util/concurrent/ExecutorService;

    return-void

    .line 14
    :cond_1c
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "Null formatter not supported "

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_24
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "Null configuration not supported "

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    .line 19
    iget-object v0, p0, Lcom/ironsource/O5;->b:Lcom/ironsource/I5;

    invoke-virtual {v0}, Lcom/ironsource/I5;->f()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 20
    const-string v0, "EventsTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 16
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    .line 18
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/O5;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ironsource/O5$a;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/O5$a;-><init>(Lcom/ironsource/O5;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/O5;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/O5;->b:Lcom/ironsource/I5;

    invoke-virtual {v0}, Lcom/ironsource/I5;->a()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_22

    .line 7
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    :goto_22
    return-void

    .line 11
    :cond_23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    const-string v1, "eventname"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/ironsource/O5;->a:Lcom/ironsource/q7;

    invoke-interface {p1}, Lcom/ironsource/q7;->a()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ironsource/O5;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 14
    invoke-direct {p0, v0, p2}, Lcom/ironsource/O5;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 15
    iget-object p1, p0, Lcom/ironsource/O5;->c:Lcom/ironsource/J7;

    invoke-interface {p1, v0}, Lcom/ironsource/J7;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/O5;->b(Ljava/lang/String;)V

    return-void
.end method

###### Class com.ironsource.O5.a (com.ironsource.O5$a)
.class Lcom/ironsource/O5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/O5;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ironsource/O5;


# direct methods
.method public constructor <init>(Lcom/ironsource/O5;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/O5$a;->b:Lcom/ironsource/O5;

    iput-object p2, p0, Lcom/ironsource/O5$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Lcom/ironsource/Rd;

    invoke-direct {v0}, Lcom/ironsource/Rd;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/ironsource/O5$a;->b:Lcom/ironsource/O5;

    invoke-static {v1}, Lcom/ironsource/O5;->-$$Nest$fgetb(Lcom/ironsource/O5;)Lcom/ironsource/I5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/I5;->d()Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    const-string v2, "POST"

    iget-object v3, p0, Lcom/ironsource/O5$a;->b:Lcom/ironsource/O5;

    invoke-static {v3}, Lcom/ironsource/O5;->-$$Nest$fgetb(Lcom/ironsource/O5;)Lcom/ironsource/I5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/I5;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 4
    iget-object v0, p0, Lcom/ironsource/O5$a;->b:Lcom/ironsource/O5;

    invoke-static {v0}, Lcom/ironsource/O5;->-$$Nest$fgetb(Lcom/ironsource/O5;)Lcom/ironsource/I5;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ironsource/I5;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/O5$a;->a:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/ironsource/g8;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/Rd;

    move-result-object v0

    goto :goto_56

    :catch_32
    move-exception v0

    goto :goto_6f

    .line 7
    :cond_34
    const-string v2, "GET"

    iget-object v3, p0, Lcom/ironsource/O5$a;->b:Lcom/ironsource/O5;

    invoke-static {v3}, Lcom/ironsource/O5;->-$$Nest$fgetb(Lcom/ironsource/O5;)Lcom/ironsource/I5;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Lcom/ironsource/I5;->e()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 11
    iget-object v0, p0, Lcom/ironsource/O5$a;->b:Lcom/ironsource/O5;

    invoke-static {v0}, Lcom/ironsource/O5;->-$$Nest$fgetb(Lcom/ironsource/O5;)Lcom/ironsource/I5;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/ironsource/I5;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/O5$a;->a:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/ironsource/g8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/Rd;

    move-result-object v0

    .line 15
    :cond_56
    :goto_56
    iget-object v1, p0, Lcom/ironsource/O5$a;->b:Lcom/ironsource/O5;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response status code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/ironsource/Rd;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/O5;->-$$Nest$ma(Lcom/ironsource/O5;Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6e} :catch_32

    return-void

    .line 17
    :goto_6f
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    return-void
.end method

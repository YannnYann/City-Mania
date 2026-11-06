###### Class com.ironsource.A8 (com.ironsource.A8)
.class public Lcom/ironsource/A8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/ironsource/A8;


# instance fields
.field private a:Lcom/ironsource/O5;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/ironsource/A8;
    .registers 1

    .line 1
    sget-object v0, Lcom/ironsource/A8;->b:Lcom/ironsource/A8;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/ironsource/A8;

    invoke-direct {v0}, Lcom/ironsource/A8;-><init>()V

    sput-object v0, Lcom/ironsource/A8;->b:Lcom/ironsource/A8;

    .line 5
    :cond_b
    sget-object v0, Lcom/ironsource/A8;->b:Lcom/ironsource/A8;

    return-object v0
.end method

.method public static a(Lcom/ironsource/I5;Lcom/ironsource/y8;)V
    .registers 4

    if-eqz p0, :cond_1f

    .line 6
    :try_start_2
    invoke-static {}, Lcom/ironsource/A8;->a()Lcom/ironsource/A8;

    move-result-object v0

    new-instance v1, Lcom/ironsource/O5;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/O5;-><init>(Lcom/ironsource/I5;Lcom/ironsource/q7;)V

    iput-object v1, v0, Lcom/ironsource/A8;->a:Lcom/ironsource/O5;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 9
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 10
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public static a(Lcom/ironsource/le$a;)V
    .registers 2

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lcom/ironsource/A8;->a(Lcom/ironsource/le$a;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Lcom/ironsource/le$a;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/le$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-static {}, Lcom/ironsource/A8;->a()Lcom/ironsource/A8;

    move-result-object v0

    iget-object v0, v0, Lcom/ironsource/A8;->a:Lcom/ironsource/O5;

    if-nez v0, :cond_10

    .line 14
    const-string p0, "sdk5Events"

    const-string p1, "logEvent failed eventsTracker doesn\'t exist"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    if-eqz p1, :cond_1d

    .line 19
    iget v1, p0, Lcom/ironsource/le$a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "eventid"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_1d
    iget-object p0, p0, Lcom/ironsource/le$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/O5;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

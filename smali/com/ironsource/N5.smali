###### Class com.ironsource.N5 (com.ironsource.N5)
.class public Lcom/ironsource/N5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final e:Ljava/lang/String; = "Content-Type"

.field private static final f:Ljava/lang/String; = "application/json"


# instance fields
.field private a:Lcom/ironsource/G7;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/C5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ironsource/G7;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/G7;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/C5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/N5;->a:Lcom/ironsource/G7;

    .line 3
    iput-object p2, p0, Lcom/ironsource/N5;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/ironsource/N5;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/ironsource/N5;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    new-instance v0, Lcom/ironsource/G7$a;

    iget-object v1, p0, Lcom/ironsource/N5;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/ironsource/G7$a;-><init>(Ljava/util/ArrayList;)V

    .line 4
    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v2, Landroid/util/Pair;

    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v2, p0, Lcom/ironsource/N5;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/N5;->b:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/ironsource/g8;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/Rd;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/ironsource/Rd;->a()Z

    move-result v2

    .line 12
    invoke-virtual {v0, v2}, Lcom/ironsource/G7$a;->a(Z)Lcom/ironsource/G7$a;

    move-result-object v2

    iget v1, v1, Lcom/ironsource/Rd;->a:I

    invoke-virtual {v2, v1}, Lcom/ironsource/G7$a;->a(I)Lcom/ironsource/G7$a;

    move-result-object v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2e} :catch_2f

    goto :goto_5b

    :catch_2f
    move-exception v1

    .line 14
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 15
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EventsSender failed to send events - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 17
    instance-of v2, v1, Lcom/ironsource/Mc;

    .line 19
    invoke-virtual {v0, v2}, Lcom/ironsource/G7$a;->a(Z)Lcom/ironsource/G7$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/G7$a;->a(Ljava/lang/Exception;)Lcom/ironsource/G7$a;

    move-result-object v0

    .line 22
    :goto_5b
    iget-object v1, p0, Lcom/ironsource/N5;->a:Lcom/ironsource/G7;

    if-eqz v1, :cond_62

    .line 23
    invoke-interface {v1, v0}, Lcom/ironsource/G7;->a(Lcom/ironsource/G7$a;)V

    :cond_62
    return-void
.end method

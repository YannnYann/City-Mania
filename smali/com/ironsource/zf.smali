###### Class com.ironsource.RunnableC3970zf (com.ironsource.zf)
.class Lcom/ironsource/zf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/ironsource/g5;


# direct methods
.method public constructor <init>(Lcom/ironsource/g5;Landroid/os/Handler;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/zf;->b:Lcom/ironsource/g5;

    .line 3
    iput-object p2, p0, Lcom/ironsource/zf;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Message;
    .registers 2

    .line 2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    return-object v0
.end method

.method public a(Lcom/ironsource/g5;Ljava/lang/String;J)Lcom/ironsource/d6;
    .registers 6

    .line 1
    new-instance v0, Lcom/ironsource/d6;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ironsource/d6;-><init>(Lcom/ironsource/g5;Ljava/lang/String;J)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 3
    invoke-static {p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->makeDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public run()V
    .registers 10

    .line 1
    new-instance v1, Lcom/ironsource/D8;

    iget-object v0, p0, Lcom/ironsource/zf;->b:Lcom/ironsource/g5;

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/g5;->b()Lcom/ironsource/D8;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/zf;->b:Lcom/ironsource/g5;

    invoke-virtual {v2}, Lcom/ironsource/g5;->b()Lcom/ironsource/D8;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/ironsource/D8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/ironsource/zf;->a()Landroid/os/Message;

    move-result-object v7

    .line 6
    iput-object v1, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/zf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_33

    const/16 v0, 0x3fc

    .line 11
    iput v0, v7, Landroid/os/Message;->what:I

    .line 12
    iget-object v0, p0, Lcom/ironsource/zf;->a:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 17
    :cond_33
    new-instance v0, Lcom/ironsource/g5;

    iget-object v2, p0, Lcom/ironsource/zf;->b:Lcom/ironsource/g5;

    .line 20
    invoke-virtual {v2}, Lcom/ironsource/g5;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/zf;->b:Lcom/ironsource/g5;

    .line 21
    invoke-virtual {v3}, Lcom/ironsource/g5;->a()I

    move-result v3

    iget-object v4, p0, Lcom/ironsource/zf;->b:Lcom/ironsource/g5;

    .line 22
    invoke-virtual {v4}, Lcom/ironsource/g5;->c()I

    move-result v4

    iget-object v5, p0, Lcom/ironsource/zf;->b:Lcom/ironsource/g5;

    .line 23
    invoke-virtual {v5}, Lcom/ironsource/g5;->f()Z

    move-result v5

    iget-object v6, p0, Lcom/ironsource/zf;->b:Lcom/ironsource/g5;

    .line 24
    invoke-virtual {v6}, Lcom/ironsource/g5;->d()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/ironsource/g5;-><init>(Lcom/ironsource/D8;Ljava/lang/String;IIZLjava/lang/String;)V

    const-wide/16 v1, 0x3

    .line 27
    invoke-virtual {p0, v0, v8, v1, v2}, Lcom/ironsource/zf;->a(Lcom/ironsource/g5;Ljava/lang/String;J)Lcom/ironsource/d6;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/ironsource/d6;->a()Lcom/ironsource/h5;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/ironsource/h5;->b()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_6b

    const/16 v0, 0x3f8

    goto :goto_6f

    .line 33
    :cond_6b
    invoke-virtual {v0}, Lcom/ironsource/h5;->b()I

    move-result v0

    :goto_6f
    iput v0, v7, Landroid/os/Message;->what:I

    .line 35
    iget-object v0, p0, Lcom/ironsource/zf;->a:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

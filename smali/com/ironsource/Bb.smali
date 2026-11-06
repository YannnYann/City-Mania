###### Class com.ironsource.Bb (com.ironsource.Bb)
.class public Lcom/ironsource/Bb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Bb$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/Bb$a;

.field protected b:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/ironsource/Bb$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ironsource/Bb$a;-><init>(Lcom/ironsource/Bb;Lcom/ironsource/Bb-IA;)V

    iput-object v0, p0, Lcom/ironsource/Bb;->a:Lcom/ironsource/Bb$a;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/Bb;->b:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/ironsource/Bb;->a:Lcom/ironsource/Bb$a;

    if-nez v0, :cond_5

    goto :goto_e

    .line 4
    :cond_5
    invoke-virtual {v0}, Lcom/ironsource/Bb$a;->a()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 6
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    :goto_e
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 2

    if-eqz p1, :cond_8

    .line 1
    iget-object p1, p0, Lcom/ironsource/Bb;->a:Lcom/ironsource/Bb$a;

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

###### Class com.ironsource.Bb.a (com.ironsource.Bb$a)
.class Lcom/ironsource/Bb$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field final synthetic b:Lcom/ironsource/Bb;


# direct methods
.method private constructor <init>(Lcom/ironsource/Bb;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/Bb$a;->b:Lcom/ironsource/Bb;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/Bb;Lcom/ironsource/Bb-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/ironsource/Bb$a;-><init>(Lcom/ironsource/Bb;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Bb$a;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public run()V
    .registers 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ironsource/Bb$a;->a:Landroid/os/Handler;

    .line 12
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

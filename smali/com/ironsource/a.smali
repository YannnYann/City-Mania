###### Class com.ironsource.C3456a (com.ironsource.a)
.class public Lcom/ironsource/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final l:I = 0x1

.field private static final m:Lcom/ironsource/b;

.field private static final n:Lcom/ironsource/A9;


# instance fields
.field private a:Lcom/ironsource/b;

.field private b:Lcom/ironsource/A9;

.field private final c:Landroid/os/Handler;

.field private final d:I

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private volatile h:I

.field private i:I

.field private j:I

.field private final k:Ljava/lang/Runnable;


# direct methods
.method public static bridge synthetic -$$Nest$fgeth(Lcom/ironsource/a;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/ironsource/a;->h:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputh(Lcom/ironsource/a;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/ironsource/a;->h:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/a$a;

    invoke-direct {v0}, Lcom/ironsource/a$a;-><init>()V

    sput-object v0, Lcom/ironsource/a;->m:Lcom/ironsource/b;

    .line 12
    new-instance v0, Lcom/ironsource/a$b;

    invoke-direct {v0}, Lcom/ironsource/a$b;-><init>()V

    sput-object v0, Lcom/ironsource/a;->n:Lcom/ironsource/A9;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    sget-object v0, Lcom/ironsource/a;->m:Lcom/ironsource/b;

    iput-object v0, p0, Lcom/ironsource/a;->a:Lcom/ironsource/b;

    .line 3
    sget-object v0, Lcom/ironsource/a;->n:Lcom/ironsource/A9;

    iput-object v0, p0, Lcom/ironsource/a;->b:Lcom/ironsource/A9;

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ironsource/a;->c:Landroid/os/Handler;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/a;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/ironsource/a;->f:Z

    .line 10
    iput-boolean v0, p0, Lcom/ironsource/a;->g:Z

    .line 12
    iput v0, p0, Lcom/ironsource/a;->h:I

    const/4 v1, 0x1

    .line 14
    iput v1, p0, Lcom/ironsource/a;->i:I

    .line 15
    iput v0, p0, Lcom/ironsource/a;->j:I

    .line 29
    new-instance v0, Lcom/ironsource/a$c;

    invoke-direct {v0, p0}, Lcom/ironsource/a$c;-><init>(Lcom/ironsource/a;)V

    iput-object v0, p0, Lcom/ironsource/a;->k:Ljava/lang/Runnable;

    .line 45
    iput p1, p0, Lcom/ironsource/a;->d:I

    return-void
.end method

.method private a([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 7

    .line 12
    const-string v0, ""

    if-eqz p1, :cond_2a

    .line 13
    array-length v1, p1

    if-lez v1, :cond_2a

    .line 14
    array-length v1, p1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_2a

    aget-object v3, p1, v2

    if-eqz v3, :cond_27

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_2a
    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 2
    iget v0, p0, Lcom/ironsource/a;->j:I

    return v0
.end method

.method public a(Lcom/ironsource/A9;)Lcom/ironsource/a;
    .registers 2

    if-nez p1, :cond_7

    .line 6
    sget-object p1, Lcom/ironsource/a;->n:Lcom/ironsource/A9;

    iput-object p1, p0, Lcom/ironsource/a;->b:Lcom/ironsource/A9;

    return-object p0

    .line 8
    :cond_7
    iput-object p1, p0, Lcom/ironsource/a;->b:Lcom/ironsource/A9;

    return-object p0
.end method

.method public a(Lcom/ironsource/b;)Lcom/ironsource/a;
    .registers 2

    if-nez p1, :cond_7

    .line 3
    sget-object p1, Lcom/ironsource/a;->m:Lcom/ironsource/b;

    iput-object p1, p0, Lcom/ironsource/a;->a:Lcom/ironsource/b;

    return-object p0

    .line 5
    :cond_7
    iput-object p1, p0, Lcom/ironsource/a;->a:Lcom/ironsource/b;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ironsource/a;
    .registers 2

    if-nez p1, :cond_4

    .line 9
    const-string p1, ""

    .line 10
    :cond_4
    iput-object p1, p0, Lcom/ironsource/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/ironsource/a;
    .registers 2

    .line 11
    iput-boolean p1, p0, Lcom/ironsource/a;->g:Z

    return-object p0
.end method

.method public a(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/ironsource/a;->i:I

    return-void
.end method

.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/a;->i:I

    return v0
.end method

.method public b(Z)Lcom/ironsource/a;
    .registers 2

    .line 2
    iput-boolean p1, p0, Lcom/ironsource/a;->f:Z

    return-object p0
.end method

.method public c()Lcom/ironsource/a;
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/ironsource/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public run()V
    .registers 6

    .line 1
    const-string v0, "|ANR-ANRHandler|"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 6
    :cond_6
    :goto_6
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_76

    iget v1, p0, Lcom/ironsource/a;->j:I

    iget v2, p0, Lcom/ironsource/a;->i:I

    if-ge v1, v2, :cond_76

    .line 7
    iget v1, p0, Lcom/ironsource/a;->h:I

    .line 8
    iget-object v2, p0, Lcom/ironsource/a;->c:Landroid/os/Handler;

    iget-object v3, p0, Lcom/ironsource/a;->k:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    :try_start_1b
    iget v2, p0, Lcom/ironsource/a;->d:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_21} :catch_6f

    .line 18
    iget v2, p0, Lcom/ironsource/a;->h:I

    if-ne v2, v1, :cond_6b

    .line 19
    iget-boolean v1, p0, Lcom/ironsource/a;->g:Z

    if-nez v1, :cond_3d

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 20
    iget v1, p0, Lcom/ironsource/a;->h:I

    if-eq v1, v0, :cond_3a

    .line 21
    const-string v0, "ANRHandler"

    const-string v1, "An ANR was detected but ignored because the debugger is connected (you can prevent this with setIgnoreDebugger(true))"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_3a
    iget v0, p0, Lcom/ironsource/a;->h:I

    goto :goto_6

    .line 29
    :cond_3d
    iget v1, p0, Lcom/ironsource/a;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ironsource/a;->j:I

    .line 31
    iget-object v1, p0, Lcom/ironsource/a;->a:Lcom/ironsource/b;

    invoke-interface {v1}, Lcom/ironsource/b;->a()V

    .line 34
    sget-object v1, Lcom/ironsource/r4;->l:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 35
    new-instance v1, Lcom/ironsource/P5;

    sget-object v2, Lcom/ironsource/r4;->l:Ljava/lang/String;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ANR"

    invoke-direct {v1, v2, v3, v4}, Lcom/ironsource/P5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1}, Lcom/ironsource/P5;->a()V

    goto :goto_6

    :cond_6b
    const/4 v1, 0x0

    .line 45
    iput v1, p0, Lcom/ironsource/a;->j:I

    goto :goto_6

    :catch_6f
    move-exception v0

    .line 46
    iget-object v1, p0, Lcom/ironsource/a;->b:Lcom/ironsource/A9;

    invoke-interface {v1, v0}, Lcom/ironsource/A9;->a(Ljava/lang/InterruptedException;)V

    return-void

    .line 83
    :cond_76
    iget v0, p0, Lcom/ironsource/a;->j:I

    iget v1, p0, Lcom/ironsource/a;->i:I

    if-lt v0, v1, :cond_81

    .line 84
    iget-object v0, p0, Lcom/ironsource/a;->a:Lcom/ironsource/b;

    invoke-interface {v0}, Lcom/ironsource/b;->b()V

    :cond_81
    return-void
.end method

###### Class com.ironsource.C3456a.C0035a (com.ironsource.a$a)
.class Lcom/ironsource/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .line 0
    return-void
.end method

.method public b()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ANRHandler has given up"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.ironsource.C3456a.b (com.ironsource.a$b)
.class Lcom/ironsource/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/A9;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/InterruptedException;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interrupted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ANRHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

###### Class com.ironsource.C3456a.c (com.ironsource.a$c)
.class Lcom/ironsource/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/a;


# direct methods
.method public constructor <init>(Lcom/ironsource/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/a$c;->a:Lcom/ironsource/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/a$c;->a:Lcom/ironsource/a;

    invoke-static {v0}, Lcom/ironsource/a;->-$$Nest$fgeth(Lcom/ironsource/a;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const v2, 0x7fffffff

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/ironsource/a;->-$$Nest$fputh(Lcom/ironsource/a;I)V

    return-void
.end method

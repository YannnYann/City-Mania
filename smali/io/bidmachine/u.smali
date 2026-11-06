###### Class io.bidmachine.u (io.bidmachine.u)
.class public final Lio/bidmachine/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/u$d;,
        Lio/bidmachine/u$e;,
        Lio/bidmachine/u$c;,
        Lio/bidmachine/u$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lio/bidmachine/u$d;

.field public final d:Lio/bidmachine/SessionManager$Observer;

.field public e:Lio/bidmachine/t;

.field public final f:Ljava/lang/Object;

.field public g:Lio/bidmachine/t$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/u$d;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/bidmachine/u$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/u$e;-><init>(Lio/bidmachine/u;Lio/bidmachine/u$a;)V

    iput-object v0, p0, Lio/bidmachine/u;->d:Lio/bidmachine/SessionManager$Observer;

    .line 6
    iput-object v1, p0, Lio/bidmachine/u;->e:Lio/bidmachine/t;

    .line 10
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lio/bidmachine/u;->f:Ljava/lang/Object;

    .line 20
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    move-result-object v1

    .line 22
    iput-object p1, p0, Lio/bidmachine/u;->a:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lio/bidmachine/u;->b:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lio/bidmachine/u;->c:Lio/bidmachine/u$d;

    .line 25
    new-instance p1, Lio/bidmachine/u$c;

    invoke-virtual {v1}, Lio/bidmachine/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lio/bidmachine/u$c;-><init>(Lio/bidmachine/u;Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/u;->g:Lio/bidmachine/t$c;

    .line 27
    invoke-virtual {v1, v0}, Lio/bidmachine/SessionManager;->addObserver(Lio/bidmachine/SessionManager$Observer;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/u;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/u;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic b(Lio/bidmachine/u;)Lio/bidmachine/u$d;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/u;->c:Lio/bidmachine/u$d;

    return-object p0
.end method


# virtual methods
.method public a()Lio/bidmachine/t;
    .registers 5

    .line 6
    new-instance v0, Lio/bidmachine/t;

    iget-object v1, p0, Lio/bidmachine/u;->a:Landroid/content/Context;

    iget-object v2, p0, Lio/bidmachine/u;->b:Ljava/lang/String;

    invoke-static {}, Lio/bidmachine/UrlProvider;->getInitUrlQueue()Ljava/util/Queue;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/t;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Queue;)V

    return-object v0
.end method

.method public a(Lio/bidmachine/Executable;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lio/bidmachine/u;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/n;->j(Landroid/content/Context;)Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/bidmachine/u;->a:Landroid/content/Context;

    invoke-static {v1}, Lio/bidmachine/n;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_16

    .line 5
    new-instance v2, Lio/bidmachine/u$b;

    invoke-direct {v2, v0, v1}, Lio/bidmachine/u$b;-><init>(Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lio/bidmachine/Executable;->execute(Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method public b()V
    .registers 3

    .line 2
    iget-object v0, p0, Lio/bidmachine/u;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/u;->e:Lio/bidmachine/t;

    if-nez v1, :cond_b

    .line 4
    monitor-exit v0

    return-void

    :catchall_9
    move-exception v1

    goto :goto_13

    .line 6
    :cond_b
    invoke-virtual {v1}, Lio/bidmachine/t;->c()V

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lio/bidmachine/u;->e:Lio/bidmachine/t;

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_9

    throw v1
.end method

.method public c()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_3
    invoke-virtual {p0}, Lio/bidmachine/u;->b()V

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/u;->a()Lio/bidmachine/t;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/u;->e:Lio/bidmachine/t;

    .line 5
    iget-object v2, p0, Lio/bidmachine/u;->g:Lio/bidmachine/t$c;

    invoke-virtual {v1, v2}, Lio/bidmachine/t;->a(Lio/bidmachine/t$c;)V

    .line 6
    iget-object v1, p0, Lio/bidmachine/u;->e:Lio/bidmachine/t;

    invoke-virtual {v1}, Lio/bidmachine/t;->e()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_18
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public d()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->c:Lio/bidmachine/u$d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/bidmachine/u$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lio/bidmachine/u$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/u$d;)V

    invoke-virtual {p0, v1}, Lio/bidmachine/u;->a(Lio/bidmachine/Executable;)V

    return-void
.end method

###### Class io.bidmachine.u.a (io.bidmachine.u$a)
.class public abstract synthetic Lio/bidmachine/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.u.b (io.bidmachine.u$b)
.class public Lio/bidmachine/u$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/protobuf/InitResponse;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/u$b;->a:Lio/bidmachine/protobuf/InitResponse;

    .line 3
    iput-object p2, p0, Lio/bidmachine/u$b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lio/bidmachine/protobuf/InitResponse;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/u$b;->a:Lio/bidmachine/protobuf/InitResponse;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/u$b;->b:Ljava/lang/String;

    return-object v0
.end method

###### Class io.bidmachine.u.c (io.bidmachine.u$c)
.class public Lio/bidmachine/u$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/t$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final synthetic b:Lio/bidmachine/u;


# direct methods
.method public constructor <init>(Lio/bidmachine/u;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/u$c;->b:Lio/bidmachine/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/bidmachine/u$c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFail(Lio/bidmachine/utils/BMError;)V
    .registers 4

    .line 2
    iget-object p1, p0, Lio/bidmachine/u$c;->b:Lio/bidmachine/u;

    invoke-static {p1}, Lio/bidmachine/u;->b(Lio/bidmachine/u;)Lio/bidmachine/u$d;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/bidmachine/u$c$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lio/bidmachine/u$c$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/u$d;)V

    invoke-virtual {p1, v1}, Lio/bidmachine/u;->a(Lio/bidmachine/Executable;)V

    return-void
.end method

.method public bridge synthetic onFail(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/utils/BMError;

    invoke-virtual {p0, p1}, Lio/bidmachine/u$c;->onFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onSuccess(Lio/bidmachine/protobuf/InitResponse;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lio/bidmachine/u$c;->b:Lio/bidmachine/u;

    invoke-virtual {v0}, Lio/bidmachine/u;->b()V

    if-nez p1, :cond_8

    return-void

    .line 7
    :cond_8
    iget-object v0, p0, Lio/bidmachine/u$c;->b:Lio/bidmachine/u;

    invoke-static {v0}, Lio/bidmachine/u;->a(Lio/bidmachine/u;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/u$c;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lio/bidmachine/n;->a(Landroid/content/Context;Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lio/bidmachine/u$c;->b:Lio/bidmachine/u;

    invoke-static {v0}, Lio/bidmachine/u;->b(Lio/bidmachine/u;)Lio/bidmachine/u$d;

    move-result-object v0

    new-instance v1, Lio/bidmachine/u$b;

    iget-object v2, p0, Lio/bidmachine/u$c;->a:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lio/bidmachine/u$b;-><init>(Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/bidmachine/u$d;->a(Lio/bidmachine/u$b;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/protobuf/InitResponse;

    invoke-virtual {p0, p1}, Lio/bidmachine/u$c;->onSuccess(Lio/bidmachine/protobuf/InitResponse;)V

    return-void
.end method

###### Class io.bidmachine.u$c$$ExternalSyntheticLambda0 (io.bidmachine.u$c$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/u$c$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/u$d;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/u$d;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/u$c$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/u$d;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/u$c$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/u$d;

    check-cast p1, Lio/bidmachine/u$b;

    invoke-interface {v0, p1}, Lio/bidmachine/u$d;->b(Lio/bidmachine/u$b;)V

    return-void
.end method

###### Class io.bidmachine.u.d (io.bidmachine.u$d)
.class public interface abstract Lio/bidmachine/u$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# virtual methods
.method public abstract a(Lio/bidmachine/u$b;)V
.end method

.method public abstract b(Lio/bidmachine/u$b;)V
.end method

.method public abstract c(Lio/bidmachine/u$b;)V
.end method

###### Class io.bidmachine.u.e (io.bidmachine.u$e)
.class public Lio/bidmachine/u$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/SessionManager$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/u;


# direct methods
.method public constructor <init>(Lio/bidmachine/u;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/u$e;->a:Lio/bidmachine/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/u;Lio/bidmachine/u$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/u$e;-><init>(Lio/bidmachine/u;)V

    return-void
.end method


# virtual methods
.method public onSessionEvent(Lio/bidmachine/SessionManager$Status;)V
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/SessionManager$Status;->START:Lio/bidmachine/SessionManager$Status;

    if-eq p1, v0, :cond_5

    return-void

    .line 4
    :cond_5
    iget-object p1, p0, Lio/bidmachine/u$e;->a:Lio/bidmachine/u;

    invoke-virtual {p1}, Lio/bidmachine/u;->c()V

    return-void
.end method

###### Class io.bidmachine.u$$ExternalSyntheticLambda0 (io.bidmachine.u$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/u$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/u$d;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/u$d;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/u$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/u$d;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/u$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/u$d;

    check-cast p1, Lio/bidmachine/u$b;

    invoke-interface {v0, p1}, Lio/bidmachine/u$d;->c(Lio/bidmachine/u$b;)V

    return-void
.end method

###### Class com.ironsource.InterfaceC3666j4 (com.ironsource.j4)
.class public interface abstract Lcom/ironsource/j4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/j4$a;,
        Lcom/ironsource/j4$b;,
        Lcom/ironsource/j4$c;,
        Lcom/ironsource/j4$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/ironsource/j4$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/ironsource/j4$c;->a:Lcom/ironsource/j4$c;

    sput-object v0, Lcom/ironsource/j4;->a:Lcom/ironsource/j4$c;

    return-void
.end method

.method public static a(Lcom/ironsource/b7;)Lcom/ironsource/j4;
    .registers 2

    .line 1
    sget-object v0, Lcom/ironsource/j4;->a:Lcom/ironsource/j4$c;

    invoke-virtual {v0, p0}, Lcom/ironsource/j4$c;->a(Lcom/ironsource/b7;)Lcom/ironsource/j4;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/ironsource/j4$d;)V
.end method

###### Class com.ironsource.InterfaceC3666j4.a (com.ironsource.j4$a)
.class public final Lcom/ironsource/j4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/j4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/j4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final b:Lcom/ironsource/Z6;

.field private final c:Lcom/ironsource/ig;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/ironsource/Z6;Lcom/ironsource/ig;)V
    .registers 4

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/j4$a;->b:Lcom/ironsource/Z6;

    iput-object p2, p0, Lcom/ironsource/j4$a;->c:Lcom/ironsource/ig;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/ironsource/j4$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/j4$a;)Lcom/ironsource/Z6;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/ironsource/j4$a;->b:Lcom/ironsource/Z6;

    return-object p0
.end method

.method public static final synthetic b(Lcom/ironsource/j4$a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/ironsource/j4$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 3

    monitor-enter p0

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/j4$a;->c:Lcom/ironsource/ig;

    invoke-interface {v0}, Lcom/ironsource/ig;->cancel()V

    .line 7
    iget-object v0, p0, Lcom/ironsource/j4$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public declared-synchronized a(Lcom/ironsource/j4$d;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/j4$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3
    iget-object v0, p0, Lcom/ironsource/j4$a;->c:Lcom/ironsource/ig;

    .line 4
    new-instance v1, Lcom/ironsource/j4$a$a;

    invoke-direct {v1, p1, p0}, Lcom/ironsource/j4$a$a;-><init>(Lcom/ironsource/j4$d;Lcom/ironsource/j4$a;)V

    .line 5
    invoke-interface {v0, v1}, Lcom/ironsource/ig;->a(Lcom/ironsource/ig$a;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_1d

    :catchall_1b
    move-exception p1

    goto :goto_1f

    :cond_1d
    :goto_1d
    monitor-exit p0

    return-void

    :goto_1f
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1b

    throw p1
.end method

###### Class com.ironsource.InterfaceC3666j4.a.C1040a (com.ironsource.j4$a$a)
.class public final Lcom/ironsource/j4$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/ig$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/j4$a;->a(Lcom/ironsource/j4$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/j4$d;

.field final synthetic b:Lcom/ironsource/j4$a;


# direct methods
.method public constructor <init>(Lcom/ironsource/j4$d;Lcom/ironsource/j4$a;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/j4$a$a;->a:Lcom/ironsource/j4$d;

    iput-object p2, p0, Lcom/ironsource/j4$a$a;->b:Lcom/ironsource/j4$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/j4$a$a;->a:Lcom/ironsource/j4$d;

    .line 2
    new-instance v1, Lcom/ironsource/d7$a;

    .line 3
    new-instance v2, Lcom/ironsource/a7$a;

    iget-object v3, p0, Lcom/ironsource/j4$a$a;->b:Lcom/ironsource/j4$a;

    invoke-static {v3}, Lcom/ironsource/j4$a;->a(Lcom/ironsource/j4$a;)Lcom/ironsource/Z6;

    move-result-object v3

    invoke-interface {v3}, Lcom/ironsource/Z6;->b()Lcom/ironsource/c7;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ironsource/a7$a;-><init>(Lcom/ironsource/c7;)V

    .line 4
    invoke-direct {v1, v2}, Lcom/ironsource/d7$a;-><init>(Lcom/ironsource/a7;)V

    .line 5
    invoke-interface {v0, v1}, Lcom/ironsource/j4$d;->a(Lcom/ironsource/d7;)V

    .line 8
    iget-object v0, p0, Lcom/ironsource/j4$a$a;->b:Lcom/ironsource/j4$a;

    invoke-static {v0}, Lcom/ironsource/j4$a;->b(Lcom/ironsource/j4$a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

###### Class com.ironsource.InterfaceC3666j4.b (com.ironsource.j4$b)
.class public final Lcom/ironsource/j4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/j4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/j4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final b:Lcom/ironsource/j4$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/j4$b;

    invoke-direct {v0}, Lcom/ironsource/j4$b;-><init>()V

    sput-object v0, Lcom/ironsource/j4$b;->b:Lcom/ironsource/j4$b;

    return-void
.end method

.method private constructor <init>()V
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

.method public a(Lcom/ironsource/j4$d;)V
    .registers 3

    .line 1
    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

###### Class com.ironsource.InterfaceC3666j4.c (com.ironsource.j4$c)
.class public final Lcom/ironsource/j4$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/j4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field static final synthetic a:Lcom/ironsource/j4$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/j4$c;

    invoke-direct {v0}, Lcom/ironsource/j4$c;-><init>()V

    sput-object v0, Lcom/ironsource/j4$c;->a:Lcom/ironsource/j4$c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/j4;
    .registers 2

    .line 13
    sget-object v0, Lcom/ironsource/j4$b;->b:Lcom/ironsource/j4$b;

    return-object v0
.end method

.method public final a(Lcom/ironsource/b7;)Lcom/ironsource/j4;
    .registers 5

    const-string v0, "featureFlag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/ironsource/b7;->b()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2
    new-instance v0, Lcom/ironsource/Y6;

    invoke-direct {v0, p1}, Lcom/ironsource/Y6;-><init>(Lcom/ironsource/b7;)V

    .line 4
    new-instance p1, Lcom/ironsource/ig$b;

    invoke-direct {p1}, Lcom/ironsource/ig$b;-><init>()V

    .line 5
    invoke-virtual {v0}, Lcom/ironsource/Y6;->a()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/ironsource/ig$b;->b(J)V

    .line 6
    invoke-virtual {v0}, Lcom/ironsource/Y6;->a()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/ironsource/ig$b;->a(J)V

    .line 9
    new-instance v1, Lcom/ironsource/ig$d;

    invoke-direct {v1}, Lcom/ironsource/ig$d;-><init>()V

    invoke-virtual {v1, p1}, Lcom/ironsource/ig$d;->a(Lcom/ironsource/ig$b;)Lcom/ironsource/ig;

    move-result-object p1

    .line 10
    new-instance v1, Lcom/ironsource/j4$a;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/j4$a;-><init>(Lcom/ironsource/Z6;Lcom/ironsource/ig;)V

    return-object v1

    .line 12
    :cond_32
    sget-object p1, Lcom/ironsource/j4$b;->b:Lcom/ironsource/j4$b;

    return-object p1
.end method

###### Class com.ironsource.InterfaceC3666j4.d (com.ironsource.j4$d)
.class public interface abstract Lcom/ironsource/j4$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/j4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# virtual methods
.method public abstract a(Lcom/ironsource/d7;)V
.end method

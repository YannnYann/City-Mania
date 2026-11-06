###### Class io.bidmachine.rendering.internal.j (io.bidmachine.rendering.internal.j)
.class public final Lio/bidmachine/rendering/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/j$e;
    }
.end annotation


# static fields
.field public static final i:Lio/bidmachine/rendering/internal/j$e;

.field public static final j:Lio/bidmachine/rendering/internal/j;


# instance fields
.field public final a:Lkotlin/jvm/functions/Function0;

.field public final b:Lkotlin/jvm/functions/Function0;

.field public final c:Lkotlin/jvm/functions/Function0;

.field public final d:Lkotlin/jvm/functions/Function0;

.field public final e:Lkotlin/Lazy;

.field public final f:Lkotlin/Lazy;

.field public final g:Lkotlin/Lazy;

.field public final h:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lio/bidmachine/rendering/internal/j$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/internal/j$e;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/internal/j;->i:Lio/bidmachine/rendering/internal/j$e;

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/j;

    .line 2
    sget-object v1, Lio/bidmachine/rendering/internal/j$a;->a:Lio/bidmachine/rendering/internal/j$a;

    .line 3
    sget-object v2, Lio/bidmachine/rendering/internal/j$b;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 4
    sget-object v3, Lio/bidmachine/rendering/internal/j$c;->a:Lio/bidmachine/rendering/internal/j$c;

    .line 5
    sget-object v4, Lio/bidmachine/rendering/internal/j$d;->a:Lio/bidmachine/rendering/internal/j$d;

    .line 6
    invoke-direct {v0, v1, v2, v3, v4}, Lio/bidmachine/rendering/internal/j;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    sput-object v0, Lio/bidmachine/rendering/internal/j;->j:Lio/bidmachine/rendering/internal/j;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .registers 6

    const-string v0, "mainProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainImmediateProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/internal/j;->a:Lkotlin/jvm/functions/Function0;

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/j;->b:Lkotlin/jvm/functions/Function0;

    .line 4
    iput-object p3, p0, Lio/bidmachine/rendering/internal/j;->c:Lkotlin/jvm/functions/Function0;

    .line 5
    iput-object p4, p0, Lio/bidmachine/rendering/internal/j;->d:Lkotlin/jvm/functions/Function0;

    .line 8
    new-instance p1, Lio/bidmachine/rendering/internal/j$h;

    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/j$h;-><init>(Lio/bidmachine/rendering/internal/j;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/internal/j;->e:Lkotlin/Lazy;

    .line 9
    new-instance p1, Lio/bidmachine/rendering/internal/j$i;

    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/j$i;-><init>(Lio/bidmachine/rendering/internal/j;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/internal/j;->f:Lkotlin/Lazy;

    .line 10
    new-instance p1, Lio/bidmachine/rendering/internal/j$g;

    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/j$g;-><init>(Lio/bidmachine/rendering/internal/j;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/internal/j;->g:Lkotlin/Lazy;

    .line 11
    new-instance p1, Lio/bidmachine/rendering/internal/j$f;

    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/j$f;-><init>(Lio/bidmachine/rendering/internal/j;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/internal/j;->h:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a()Lio/bidmachine/rendering/internal/j;
    .registers 1

    .line 2
    sget-object v0, Lio/bidmachine/rendering/internal/j;->j:Lio/bidmachine/rendering/internal/j;

    return-object v0
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/j;)Lkotlin/jvm/functions/Function0;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/j;->d:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic b(Lio/bidmachine/rendering/internal/j;)Lkotlin/jvm/functions/Function0;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/j;->c:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic c(Lio/bidmachine/rendering/internal/j;)Lkotlin/jvm/functions/Function0;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/j;->b:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic d(Lio/bidmachine/rendering/internal/j;)Lkotlin/jvm/functions/Function0;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/j;->a:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method


# virtual methods
.method public final b()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public final c()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public final d()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public final e()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.j.a (io.bidmachine.rendering.internal.j$a)
.class public final Lio/bidmachine/rendering/internal/j$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/rendering/internal/j$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/j$a;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/j$a;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/internal/j$a;->a:Lio/bidmachine/rendering/internal/j$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/j$a;->a()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.j.b (io.bidmachine.rendering.internal.j$b)
.class public final Lio/bidmachine/rendering/internal/j$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/rendering/internal/j$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/j$b;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/j$b;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/internal/j$b;->a:Lio/bidmachine/rendering/internal/j$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/j$b;->a()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.j.c (io.bidmachine.rendering.internal.j$c)
.class public final Lio/bidmachine/rendering/internal/j$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/rendering/internal/j$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/j$c;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/j$c;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/internal/j$c;->a:Lio/bidmachine/rendering/internal/j$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/j$c;->a()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.j.d (io.bidmachine.rendering.internal.j$d)
.class public final Lio/bidmachine/rendering/internal/j$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/rendering/internal/j$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/j$d;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/j$d;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/internal/j$d;->a:Lio/bidmachine/rendering/internal/j$d;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/j$d;->a()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.j.e (io.bidmachine.rendering.internal.j$e)
.class public final Lio/bidmachine/rendering/internal/j$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/j$e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/rendering/internal/j;
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/rendering/internal/j;->a()Lio/bidmachine/rendering/internal/j;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.j.f (io.bidmachine.rendering.internal.j$f)
.class public final Lio/bidmachine/rendering/internal/j$f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/j;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/j;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/j;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/j$f;->a:Lio/bidmachine/rendering/internal/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j$f;->a:Lio/bidmachine/rendering/internal/j;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/j;->a(Lio/bidmachine/rendering/internal/j;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/j$f;->a()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.j.g (io.bidmachine.rendering.internal.j$g)
.class public final Lio/bidmachine/rendering/internal/j$g;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/j;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/j;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/j;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/j$g;->a:Lio/bidmachine/rendering/internal/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j$g;->a:Lio/bidmachine/rendering/internal/j;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/j;->b(Lio/bidmachine/rendering/internal/j;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/j$g;->a()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.j.h (io.bidmachine.rendering.internal.j$h)
.class public final Lio/bidmachine/rendering/internal/j$h;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/j;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/j;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/j;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/j$h;->a:Lio/bidmachine/rendering/internal/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j$h;->a:Lio/bidmachine/rendering/internal/j;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/j;->d(Lio/bidmachine/rendering/internal/j;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/j$h;->a()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.j.i (io.bidmachine.rendering.internal.j$i)
.class public final Lio/bidmachine/rendering/internal/j$i;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/j;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/j;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/j;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/j$i;->a:Lio/bidmachine/rendering/internal/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j$i;->a:Lio/bidmachine/rendering/internal/j;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/j;->c(Lio/bidmachine/rendering/internal/j;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/j$i;->a()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

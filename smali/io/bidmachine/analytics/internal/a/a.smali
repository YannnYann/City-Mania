###### Class io.bidmachine.analytics.internal.a.C4105a (io.bidmachine.analytics.internal.a.a)
.class public final Lio/bidmachine/analytics/internal/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/a/a;->a:Landroid/content/Context;

    .line 5
    new-instance p1, Lio/bidmachine/analytics/internal/a/a$b;

    invoke-direct {p1, p0}, Lio/bidmachine/analytics/internal/a/a$b;-><init>(Lio/bidmachine/analytics/internal/a/a;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/a/a;->b:Lkotlin/Lazy;

    .line 9
    new-instance p1, Lio/bidmachine/analytics/internal/a/a$c;

    invoke-direct {p1, p0}, Lio/bidmachine/analytics/internal/a/a$c;-><init>(Lio/bidmachine/analytics/internal/a/a;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/a/a;->c:Lkotlin/Lazy;

    .line 13
    new-instance p1, Lio/bidmachine/analytics/internal/a/a$a;

    invoke-direct {p1, p0}, Lio/bidmachine/analytics/internal/a/a$a;-><init>(Lio/bidmachine/analytics/internal/a/a;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/a/a;->d:Lkotlin/Lazy;

    .line 17
    sget-object p1, Lio/bidmachine/analytics/internal/a/a$d;->a:Lio/bidmachine/analytics/internal/a/a$d;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/a/a;->e:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/a/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final b()Lio/bidmachine/analytics/internal/a/b;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/a/a;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/internal/a/b;

    return-object v0
.end method

.method public final c()Lio/bidmachine/analytics/internal/a/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/a/a;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/internal/a/c;

    return-object v0
.end method

.method public final d()Lio/bidmachine/analytics/internal/a/d;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/a/a;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/internal/a/d;

    return-object v0
.end method

.method public final e()Lio/bidmachine/util/time/TimeManagerInstance;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/a/a;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/util/time/TimeManagerInstance;

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.a.C4105a.C1118a (io.bidmachine.analytics.internal.a.a$a)
.class final Lio/bidmachine/analytics/internal/a/a$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/a/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/analytics/internal/a/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/a/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/a/a$a;->a:Lio/bidmachine/analytics/internal/a/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/analytics/internal/a/b;
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/a/b;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/a/a$a;->a:Lio/bidmachine/analytics/internal/a/a;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/a/a;->c()Lio/bidmachine/analytics/internal/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/a/c;->f()Lio/bidmachine/analytics/internal/J/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/a/b;-><init>(Lio/bidmachine/analytics/internal/J/b;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/a/a$a;->a()Lio/bidmachine/analytics/internal/a/b;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.a.C4105a.b (io.bidmachine.analytics.internal.a.a$b)
.class final Lio/bidmachine/analytics/internal/a/a$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/a/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/analytics/internal/a/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/a/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/a/a$b;->a:Lio/bidmachine/analytics/internal/a/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/analytics/internal/a/c;
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/a/c;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/a/a$b;->a:Lio/bidmachine/analytics/internal/a/a;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/a/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/a/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/a/a$b;->a()Lio/bidmachine/analytics/internal/a/c;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.a.C4105a.c (io.bidmachine.analytics.internal.a.a$c)
.class final Lio/bidmachine/analytics/internal/a/a$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/a/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/analytics/internal/a/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/a/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/a/a$c;->a:Lio/bidmachine/analytics/internal/a/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/analytics/internal/a/d;
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/a/d;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/a/a$c;->a:Lio/bidmachine/analytics/internal/a/a;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/a/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/a/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/a/a$c;->a()Lio/bidmachine/analytics/internal/a/d;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.a.C4105a.d (io.bidmachine.analytics.internal.a.a$d)
.class final Lio/bidmachine/analytics/internal/a/a$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/a/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/a/a$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/a/a$d;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/a/a$d;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/a/a$d;->a:Lio/bidmachine/analytics/internal/a/a$d;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/util/time/SystemTimeManagerInstance;
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/util/time/SystemTimeManagerInstance;

    invoke-direct {v0}, Lio/bidmachine/util/time/SystemTimeManagerInstance;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/a/a$d;->a()Lio/bidmachine/util/time/SystemTimeManagerInstance;

    move-result-object v0

    return-object v0
.end method

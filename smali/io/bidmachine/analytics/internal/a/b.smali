###### Class io.bidmachine.analytics.internal.a.C4106b (io.bidmachine.analytics.internal.a.b)
.class public final Lio/bidmachine/analytics/internal/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/J/b;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lio/bidmachine/analytics/internal/a/b$b;

    invoke-direct {v0, p1}, Lio/bidmachine/analytics/internal/a/b$b;-><init>(Lio/bidmachine/analytics/internal/J/b;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/a/b;->a:Lkotlin/Lazy;

    .line 5
    sget-object p1, Lio/bidmachine/analytics/internal/a/b$a;->a:Lio/bidmachine/analytics/internal/a/b$a;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/a/b;->b:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/analytics/internal/q/a;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/a/b;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/internal/q/a;

    return-object v0
.end method

.method public final b()Lio/bidmachine/analytics/internal/q/b;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/a/b;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/internal/q/b;

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.a.C4106b.a (io.bidmachine.analytics.internal.a.b$a)
.class final Lio/bidmachine/analytics/internal/a/b$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/a/b;-><init>(Lio/bidmachine/analytics/internal/J/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/a/b$a;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/a/b$a;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/a/b$a;->a:Lio/bidmachine/analytics/internal/a/b$a;

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
.method public final a()Lio/bidmachine/analytics/internal/q/a;
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/q/a;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/q/a;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/a/b$a;->a()Lio/bidmachine/analytics/internal/q/a;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.a.C4106b.C1119b (io.bidmachine.analytics.internal.a.b$b)
.class final Lio/bidmachine/analytics/internal/a/b$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/a/b;-><init>(Lio/bidmachine/analytics/internal/J/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/analytics/internal/J/b;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/J/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/a/b$b;->a:Lio/bidmachine/analytics/internal/J/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/analytics/internal/q/b;
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/q/b;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/a/b$b;->a:Lio/bidmachine/analytics/internal/J/b;

    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/q/b;-><init>(Lio/bidmachine/analytics/internal/J/b;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/a/b$b;->a()Lio/bidmachine/analytics/internal/q/b;

    move-result-object v0

    return-object v0
.end method

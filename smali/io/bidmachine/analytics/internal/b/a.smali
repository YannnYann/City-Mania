###### Class io.bidmachine.analytics.internal.b.C4108a (io.bidmachine.analytics.internal.b.a)
.class public final Lio/bidmachine/analytics/internal/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/bidmachine/analytics/internal/c/b;

.field private final b:Lio/bidmachine/analytics/internal/d/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/c/b;Lio/bidmachine/analytics/internal/d/a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/b/a;->a:Lio/bidmachine/analytics/internal/c/b;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/b/a;->b:Lio/bidmachine/analytics/internal/d/a;

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/analytics/internal/d/a;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/b/a;->b:Lio/bidmachine/analytics/internal/d/a;

    return-object v0
.end method

.method public final a([B)[B
    .registers 4

    .line 2
    iget-object v0, p0, Lio/bidmachine/analytics/internal/b/a;->a:Lio/bidmachine/analytics/internal/c/b;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/b/a;->b:Lio/bidmachine/analytics/internal/d/a;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/d/a;->a()Ljava/security/Key;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lio/bidmachine/analytics/internal/c/b;->a(Ljava/security/Key;[B)[B

    move-result-object p1

    return-object p1
.end method

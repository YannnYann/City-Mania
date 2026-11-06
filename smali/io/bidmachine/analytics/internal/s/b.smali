###### Class io.bidmachine.analytics.internal.s.b (io.bidmachine.analytics.internal.s.b)
.class public final Lio/bidmachine/analytics/internal/s/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile a:Ljava/util/List;

.field private volatile b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 2
    iget v0, p0, Lio/bidmachine/analytics/internal/s/b;->b:I

    return v0
.end method

.method public final a(I)V
    .registers 2

    .line 3
    iput p1, p0, Lio/bidmachine/analytics/internal/s/b;->b:I

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/s/b;->a:Ljava/util/List;

    return-void
.end method

.method public final b()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/s/b;->a:Ljava/util/List;

    return-object v0
.end method

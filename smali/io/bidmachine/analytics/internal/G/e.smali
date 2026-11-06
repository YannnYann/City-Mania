###### Class io.bidmachine.analytics.internal.G.e (io.bidmachine.analytics.internal.G.e)
.class public final Lio/bidmachine/analytics/internal/G/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:[B

.field private final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[BZ)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lio/bidmachine/analytics/internal/G/e;->a:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lio/bidmachine/analytics/internal/G/e;->b:Ljava/lang/String;

    .line 13
    iput-wide p3, p0, Lio/bidmachine/analytics/internal/G/e;->c:J

    .line 17
    iput-object p5, p0, Lio/bidmachine/analytics/internal/G/e;->d:Ljava/lang/String;

    .line 21
    iput-object p6, p0, Lio/bidmachine/analytics/internal/G/e;->e:Ljava/lang/String;

    .line 25
    iput-object p7, p0, Lio/bidmachine/analytics/internal/G/e;->f:[B

    .line 29
    iput-boolean p8, p0, Lio/bidmachine/analytics/internal/G/e;->g:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/G/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/G/e;->f:[B

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/G/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/G/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/G/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/analytics/internal/G/e;->c:J

    return-wide v0
.end method

.method public final g()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/analytics/internal/G/e;->g:Z

    return v0
.end method

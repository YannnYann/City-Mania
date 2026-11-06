###### Class io.bidmachine.analytics.internal.G.c (io.bidmachine.analytics.internal.G.c)
.class public final Lio/bidmachine/analytics/internal/G/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:[B

.field private final f:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[B[B)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/G/c;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/G/c;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/bidmachine/analytics/internal/G/c;->c:Ljava/lang/String;

    .line 5
    iput-wide p4, p0, Lio/bidmachine/analytics/internal/G/c;->d:J

    .line 6
    iput-object p6, p0, Lio/bidmachine/analytics/internal/G/c;->e:[B

    .line 7
    iput-object p7, p0, Lio/bidmachine/analytics/internal/G/c;->f:[B

    return-void
.end method


# virtual methods
.method public final a()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/G/c;->e:[B

    return-object v0
.end method

.method public final b()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/G/c;->f:[B

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/G/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/G/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/G/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final f()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/analytics/internal/G/c;->d:J

    return-wide v0
.end method

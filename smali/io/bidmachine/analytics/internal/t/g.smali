###### Class io.bidmachine.analytics.internal.t.g (io.bidmachine.analytics.internal.t.g)
.class public final Lio/bidmachine/analytics/internal/t/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/StringBuffer;

.field private c:Ljava/lang/Long;


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lio/bidmachine/analytics/internal/t/g;->a:I

    .line 3
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object p2, p0, Lio/bidmachine/analytics/internal/t/g;->b:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/t/g;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lio/bidmachine/analytics/internal/t/g;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lio/bidmachine/analytics/internal/t/g;->a:I

    if-ge v0, v1, :cond_24

    .line 3
    iget-object v0, p0, Lio/bidmachine/analytics/internal/t/g;->b:Ljava/lang/StringBuffer;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/t/g;->c:Ljava/lang/Long;

    :cond_24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/t/g;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

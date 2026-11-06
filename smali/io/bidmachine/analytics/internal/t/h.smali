###### Class io.bidmachine.analytics.internal.t.h (io.bidmachine.analytics.internal.t.h)
.class public abstract Lio/bidmachine/analytics/internal/t/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lio/bidmachine/analytics/internal/t/g;)[B
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/t/g;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

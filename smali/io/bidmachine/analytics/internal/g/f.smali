###### Class io.bidmachine.analytics.internal.g.AbstractC4119f (io.bidmachine.analytics.internal.g.f)
.class public abstract Lio/bidmachine/analytics/internal/g/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lio/bidmachine/analytics/ReaderConfig$Rule;)Lio/bidmachine/analytics/internal/g/e$a;
    .registers 5

    .line 1
    instance-of v0, p0, Lio/bidmachine/analytics/ReaderConfig$Rule$GeneralRule;

    if-eqz v0, :cond_14

    new-instance v0, Lio/bidmachine/analytics/internal/g/e$a$a;

    check-cast p0, Lio/bidmachine/analytics/ReaderConfig$Rule$GeneralRule;

    invoke-virtual {p0}, Lio/bidmachine/analytics/ReaderConfig$Rule$GeneralRule;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/bidmachine/analytics/ReaderConfig$Rule$GeneralRule;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lio/bidmachine/analytics/internal/g/e$a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 2
    :cond_14
    instance-of v0, p0, Lio/bidmachine/analytics/ReaderConfig$Rule$PurRule;

    if-eqz v0, :cond_30

    new-instance v0, Lio/bidmachine/analytics/internal/g/e$a$b;

    .line 3
    check-cast p0, Lio/bidmachine/analytics/ReaderConfig$Rule$PurRule;

    invoke-virtual {p0}, Lio/bidmachine/analytics/ReaderConfig$Rule$PurRule;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/analytics/ReaderConfig$Rule$PurRule;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/analytics/ReaderConfig$Rule$PurRule;->getQuery()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/analytics/ReaderConfig$Rule$PurRule;->getShouldReport()Z

    move-result p0

    .line 7
    invoke-direct {v0, v1, v2, v3, p0}, Lio/bidmachine/analytics/internal/g/e$a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :cond_30
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

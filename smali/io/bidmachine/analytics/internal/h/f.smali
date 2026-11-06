###### Class io.bidmachine.analytics.internal.h.C4126f (io.bidmachine.analytics.internal.h.f)
.class public final Lio/bidmachine/analytics/internal/h/f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic a:Lio/bidmachine/analytics/internal/a/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/h/f;->a:Lio/bidmachine/analytics/internal/a/a;

    iput-object p2, p0, Lio/bidmachine/analytics/internal/h/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/bidmachine/analytics/internal/h/f;->c:Ljava/lang/Throwable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/h/f;->b:Ljava/lang/String;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/h/f;->c:Ljava/lang/Throwable;

    .line 2
    sget-object v2, Lio/bidmachine/analytics/internal/h/e;->a:Lio/bidmachine/analytics/internal/h/e;

    .line 3
    iget-object v3, p0, Lio/bidmachine/analytics/internal/h/f;->a:Lio/bidmachine/analytics/internal/a/a;

    .line 4
    const-string v4, ""

    invoke-static {v2, v3, v0, v4, v1}, Lio/bidmachine/analytics/internal/h/e;->a(Lio/bidmachine/analytics/internal/h/e;Lio/bidmachine/analytics/internal/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/h/f;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

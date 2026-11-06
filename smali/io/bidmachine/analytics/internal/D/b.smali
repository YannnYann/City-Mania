###### Class io.bidmachine.analytics.internal.D.b (io.bidmachine.analytics.internal.D.b)
.class public final Lio/bidmachine/analytics/internal/D/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/internal/C/a$a;


# instance fields
.field private final a:Lio/bidmachine/analytics/internal/s/b;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/s/b;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/analytics/internal/D/b;->a:Lio/bidmachine/analytics/internal/s/b;

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/analytics/internal/g/e$a;)Lcom/explorestack/protobuf/BytesValue;
    .registers 4

    .line 1
    iget-object p1, p0, Lio/bidmachine/analytics/internal/D/b;->a:Lio/bidmachine/analytics/internal/s/b;

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/s/b;->b()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lio/bidmachine/analytics/internal/D/b;->a:Lio/bidmachine/analytics/internal/s/b;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/s/b;->a()I

    move-result v1

    if-lt v0, v1, :cond_27

    .line 9
    invoke-static {p1}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/analytics/internal/I/d;->b(Ljava/lang/String;)Lcom/explorestack/protobuf/BytesValue;

    move-result-object p1

    return-object p1

    .line 10
    :cond_27
    new-instance p1, Lio/bidmachine/analytics/internal/g/b;

    const-string v0, "List size less then limit for send"

    invoke-direct {p1, v0}, Lio/bidmachine/analytics/internal/g/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2f
    new-instance p1, Lio/bidmachine/analytics/internal/g/b;

    const-string v0, "List is empty"

    invoke-direct {p1, v0}, Lio/bidmachine/analytics/internal/g/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_37
    new-instance p1, Lio/bidmachine/analytics/internal/g/b;

    const-string v0, "List is null"

    invoke-direct {p1, v0}, Lio/bidmachine/analytics/internal/g/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

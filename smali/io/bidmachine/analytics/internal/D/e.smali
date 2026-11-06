###### Class io.bidmachine.analytics.internal.D.e (io.bidmachine.analytics.internal.D.e)
.class public final Lio/bidmachine/analytics/internal/D/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/internal/C/a$a;


# instance fields
.field private final a:Lio/bidmachine/analytics/internal/u/g;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/u/g;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/analytics/internal/D/e;->a:Lio/bidmachine/analytics/internal/u/g;

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/analytics/internal/g/e$a;)Lcom/explorestack/protobuf/BytesValue;
    .registers 5

    .line 1
    iget-object p1, p0, Lio/bidmachine/analytics/internal/D/e;->a:Lio/bidmachine/analytics/internal/u/g;

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/u/g;->a()Lio/bidmachine/analytics/internal/u/a;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 4
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/u/a;->f()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 7
    invoke-static {}, Lcom/explorestack/protobuf/BytesValue;->newBuilder()Lcom/explorestack/protobuf/BytesValue$Builder;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/u/a;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Lcom/explorestack/protobuf/ByteString;->readFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/BytesValue$Builder;->setValue(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/BytesValue$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BytesValue$Builder;->build()Lcom/explorestack/protobuf/BytesValue;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2e
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string v0, "Empty data"

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_36
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string v0, "No data received yet"

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

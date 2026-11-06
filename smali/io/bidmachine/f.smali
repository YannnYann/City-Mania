###### Class io.bidmachine.f (io.bidmachine.f)
.class public final Lio/bidmachine/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/explorestack/protobuf/adcom/Context$App$Release;
    .registers 6

    .line 3
    invoke-static {p1}, Lio/bidmachine/BuildInfo;->obtain(Landroid/content/Context;)Lio/bidmachine/BuildInfo;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Release;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Release$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v0}, Lio/bidmachine/f;->a(Lio/bidmachine/BuildInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Context$App$Release$Builder;->setType(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Release$Builder;

    .line 6
    invoke-virtual {v0, p1}, Lio/bidmachine/BuildInfo;->getSha1Signature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 8
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Context$App$Release$Builder;->setSignatureSHA1(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Release$Builder;

    .line 10
    :cond_1c
    invoke-virtual {v0, p1}, Lio/bidmachine/BuildInfo;->getSha256Signature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 12
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Release$Builder;->setSignatureSHA256(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Release$Builder;

    .line 14
    :cond_29
    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Context$App$Release$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$App$Release;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lio/bidmachine/BuildInfo;)Ljava/lang/String;
    .registers 2

    .line 15
    invoke-virtual {p1}, Lio/bidmachine/BuildInfo;->isDebuggable()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 16
    const-string p1, "debug"

    return-object p1

    .line 18
    :cond_9
    const-string p1, "release"

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$App$Builder;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/f;->a(Landroid/content/Context;)Lcom/explorestack/protobuf/adcom/Context$App$Release;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setRelease(Lcom/explorestack/protobuf/adcom/Context$App$Release;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    return-void
.end method

.method public a(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/App$Builder;)V
    .registers 3

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/f;->a(Landroid/content/Context;)Lcom/explorestack/protobuf/adcom/Context$App$Release;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->setRelease(Lcom/explorestack/protobuf/adcom/Context$App$Release;)Lio/bidmachine/protobuf/sdk/App$Builder;

    return-void
.end method

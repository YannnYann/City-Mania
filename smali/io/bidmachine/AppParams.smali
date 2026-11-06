###### Class io.bidmachine.AppParams (io.bidmachine.AppParams)
.class public final Lio/bidmachine/AppParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final appReleaseParams:Lio/bidmachine/f;


# direct methods
.method public constructor <init>(Lio/bidmachine/f;)V
    .registers 3

    const-string v0, "appReleaseParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AppParams;->appReleaseParams:Lio/bidmachine/f;

    return-void
.end method


# virtual methods
.method public final build(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$App$Builder;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextAppBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_17

    goto :goto_1a

    .line 4
    :cond_17
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setBundle(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 6
    :cond_1a
    :goto_1a
    invoke-static {p1}, Lio/bidmachine/core/Utils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_27

    goto :goto_2a

    .line 9
    :cond_27
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setVer(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 11
    :cond_2a
    :goto_2a
    invoke-static {p1}, Lio/bidmachine/core/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 12
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_37

    goto :goto_3a

    .line 14
    :cond_37
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setName(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 17
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lio/bidmachine/AppParams;->appReleaseParams:Lio/bidmachine/f;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/f;->a(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$App$Builder;)V

    return-void
.end method

.method public final build(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/App$Builder;)V
    .registers 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    const-string v1, "get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Lio/bidmachine/core/Utils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 20
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_20

    goto :goto_23

    .line 22
    :cond_20
    invoke-virtual {p2, v1}, Lio/bidmachine/protobuf/sdk/App$Builder;->setAppVer(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 24
    :cond_23
    :goto_23
    invoke-static {p1}, Lio/bidmachine/core/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 25
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_30

    goto :goto_33

    .line 27
    :cond_30
    invoke-virtual {p2, v1}, Lio/bidmachine/protobuf/sdk/App$Builder;->setAppName(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 29
    :cond_33
    :goto_33
    invoke-virtual {v0}, Lio/bidmachine/k;->h()Lio/bidmachine/InstallInfoProvider;

    move-result-object v1

    invoke-virtual {v1, p2}, Lio/bidmachine/InstallInfoProvider;->fill(Lio/bidmachine/protobuf/sdk/App$Builder;)V

    .line 30
    invoke-virtual {v0, p1}, Lio/bidmachine/k;->h(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_4b

    .line 32
    invoke-static {v1, v2}, Lio/bidmachine/utils/ProtoUtils;->msToTimestamp(J)Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/bidmachine/protobuf/sdk/App$Builder;->setFirstLaunchTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 34
    :cond_4b
    invoke-virtual {v0, p1}, Lio/bidmachine/k;->c(Landroid/content/Context;)J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-lez v2, :cond_5a

    .line 36
    invoke-static {v0, v1}, Lio/bidmachine/utils/ProtoUtils;->msToTimestamp(J)Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/bidmachine/protobuf/sdk/App$Builder;->setSdkInstallTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 39
    :cond_5a
    iget-object v0, p0, Lio/bidmachine/AppParams;->appReleaseParams:Lio/bidmachine/f;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/f;->a(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/App$Builder;)V

    return-void
.end method

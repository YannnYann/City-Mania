###### Class io.bidmachine.C4213b (io.bidmachine.b)
.class public Lio/bidmachine/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/b$b;,
        Lio/bidmachine/b$a;
    }
.end annotation


# instance fields
.field public final a:Lio/bidmachine/utils/Tag;

.field public final b:Ljava/lang/String;

.field public c:Lio/bidmachine/b$a;

.field public d:Lio/bidmachine/b$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/bidmachine/utils/Tag;

    const-string v1, "AdResponseLoader"

    invoke-direct {v0, v1}, Lio/bidmachine/utils/Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/bidmachine/b;->a:Lio/bidmachine/utils/Tag;

    .line 17
    iput-object p1, p0, Lio/bidmachine/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 18
    iget-object v0, p0, Lio/bidmachine/b;->a:Lio/bidmachine/utils/Tag;

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lio/bidmachine/b;->c:Lio/bidmachine/b$a;

    .line 21
    iget-object v1, p0, Lio/bidmachine/b;->d:Lio/bidmachine/b$b;

    if-eqz v1, :cond_13

    .line 22
    invoke-virtual {v1}, Lio/bidmachine/b$b;->b()V

    .line 23
    iput-object v0, p0, Lio/bidmachine/b;->d:Lio/bidmachine/b$b;

    :cond_13
    return-void
.end method

.method public a(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/NetworkAdUnitManager;Lio/bidmachine/ApiRequest$Builder;Lio/bidmachine/b$a;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lio/bidmachine/b;->a:Lio/bidmachine/utils/Tag;

    const-string v1, "load"

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/b;->d:Lio/bidmachine/b$b;

    if-eqz v0, :cond_e

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/b$b;->b()V

    .line 7
    :cond_e
    iput-object p4, p0, Lio/bidmachine/b;->c:Lio/bidmachine/b$a;

    .line 8
    new-instance v1, Lio/bidmachine/b$b;

    iget-object v2, p0, Lio/bidmachine/b;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {p3}, Lio/bidmachine/ApiRequest$Builder;->getUrl()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/b$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/AdRequestParameters;Lio/bidmachine/NetworkAdUnitManager;Lio/bidmachine/b$a;)V

    iput-object v1, p0, Lio/bidmachine/b;->d:Lio/bidmachine/b$b;

    .line 14
    invoke-virtual {p3, v1}, Lio/bidmachine/ApiRequest$Builder;->setCallback(Lio/bidmachine/core/NetworkRequest$Callback;)Lio/bidmachine/ApiRequest$Builder;

    .line 15
    iget-object p1, p0, Lio/bidmachine/b;->d:Lio/bidmachine/b$b;

    invoke-virtual {p3, p1}, Lio/bidmachine/ApiRequest$Builder;->setCancelCallback(Lio/bidmachine/core/NetworkRequest$CancelCallback;)Lio/bidmachine/ApiRequest$Builder;

    .line 17
    invoke-static {}, Lio/bidmachine/z;->a()Lio/bidmachine/z;

    move-result-object p1

    iget-object p2, p0, Lio/bidmachine/b;->b:Ljava/lang/String;

    invoke-virtual {p3}, Lio/bidmachine/ApiRequest$Builder;->request()Lio/bidmachine/ApiRequest;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lio/bidmachine/z;->a(Ljava/lang/String;Lio/bidmachine/core/NetworkRequest;)V

    return-void
.end method

###### Class io.bidmachine.C4213b.a (io.bidmachine.b$a)
.class public interface abstract Lio/bidmachine/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lio/bidmachine/AdResponse;)V
.end method

.method public abstract a(Lio/bidmachine/utils/BMError;)V
.end method

###### Class io.bidmachine.C4213b.C1161b (io.bidmachine.b$b)
.class public Lio/bidmachine/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/core/NetworkRequest$Callback;
.implements Lio/bidmachine/core/NetworkRequest$CancelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lio/bidmachine/AdRequestParameters;

.field public final d:Lio/bidmachine/NetworkAdUnitManager;

.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/AdRequestParameters;Lio/bidmachine/NetworkAdUnitManager;Lio/bidmachine/b$a;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/b$b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/bidmachine/b$b;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/bidmachine/b$b;->c:Lio/bidmachine/AdRequestParameters;

    .line 5
    iput-object p4, p0, Lio/bidmachine/b$b;->d:Lio/bidmachine/NetworkAdUnitManager;

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/bidmachine/b$b;->e:Ljava/lang/ref/WeakReference;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/b$b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/b$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/b$b;Lio/bidmachine/AdResponse;)V
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/b$b;->a(Lio/bidmachine/AdResponse;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/b$b;Lio/bidmachine/utils/BMError;)V
    .registers 2

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/b$b;->a(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/b$b;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/b$b;->a()Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lio/bidmachine/b$b;)Lio/bidmachine/NetworkAdUnitManager;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/b$b;->d:Lio/bidmachine/NetworkAdUnitManager;

    return-object p0
.end method


# virtual methods
.method public final a(Lio/bidmachine/AdResponse;)V
    .registers 3

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/b$b;->c()Lio/bidmachine/b$a;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 7
    invoke-interface {v0, p1}, Lio/bidmachine/b$a;->a(Lio/bidmachine/AdResponse;)V

    goto :goto_f

    .line 9
    :cond_a
    sget-object v0, Lio/bidmachine/d;->a:Lio/bidmachine/d;

    invoke-virtual {p1, v0}, Lio/bidmachine/AdResponse;->setStatus(Lio/bidmachine/d;)V

    .line 11
    :goto_f
    invoke-virtual {p0}, Lio/bidmachine/b$b;->b()V

    return-void
.end method

.method public final a(Lio/bidmachine/utils/BMError;)V
    .registers 3

    .line 12
    invoke-virtual {p0}, Lio/bidmachine/b$b;->c()Lio/bidmachine/b$a;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 14
    invoke-interface {v0, p1}, Lio/bidmachine/b$a;->a(Lio/bidmachine/utils/BMError;)V

    .line 16
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/b$b;->b()V

    return-void
.end method

.method public final a()Z
    .registers 2

    .line 4
    iget-object v0, p0, Lio/bidmachine/b$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lio/bidmachine/b$b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lio/bidmachine/b$b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    return v0

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .registers 3

    .line 2
    iget-object v0, p0, Lio/bidmachine/b$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/b$b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    return-void
.end method

.method public final c()Lio/bidmachine/b$a;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/b$b;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_8
    iget-object v0, p0, Lio/bidmachine/b$b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/b$b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/b$a;

    return-object v0
.end method

.method public final d()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/b$b;->c()Lio/bidmachine/b$a;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3
    invoke-interface {v0}, Lio/bidmachine/b$a;->a()V

    .line 5
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/b$b;->b()V

    return-void
.end method

.method public onCanceled()V
    .registers 3

    .line 1
    invoke-static {}, Lio/bidmachine/z;->a()Lio/bidmachine/z;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/b$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/bidmachine/z;->a(Ljava/lang/String;)Lio/bidmachine/core/NetworkRequest;

    .line 2
    iget-object v0, p0, Lio/bidmachine/b$b;->d:Lio/bidmachine/NetworkAdUnitManager;

    invoke-virtual {v0}, Lio/bidmachine/NetworkAdUnitManager;->notifyNetworkClearAuction()V

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/b$b;->d()V

    return-void
.end method

.method public onFail(Lio/bidmachine/utils/BMError;)V
    .registers 4

    .line 2
    invoke-static {}, Lio/bidmachine/z;->a()Lio/bidmachine/z;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/b$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/bidmachine/z;->a(Ljava/lang/String;)Lio/bidmachine/core/NetworkRequest;

    .line 3
    iget-object v0, p0, Lio/bidmachine/b$b;->d:Lio/bidmachine/NetworkAdUnitManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/bidmachine/NetworkAdUnitManager;->notifyNetworkAuctionResult(Lio/bidmachine/NetworkAdUnit;)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/b$b;->d:Lio/bidmachine/NetworkAdUnitManager;

    invoke-virtual {v0}, Lio/bidmachine/NetworkAdUnitManager;->notifyNetworkClearAuction()V

    .line 6
    invoke-static {}, Lio/bidmachine/c;->a()Lio/bidmachine/c;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/b$b;->c:Lio/bidmachine/AdRequestParameters;

    invoke-virtual {v0, v1}, Lio/bidmachine/c;->f(Lio/bidmachine/AdRequestParameters;)Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 8
    invoke-virtual {p0, v0}, Lio/bidmachine/b$b;->a(Lio/bidmachine/AdResponse;)V

    return-void

    .line 11
    :cond_24
    invoke-virtual {p0, p1}, Lio/bidmachine/b$b;->a(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public bridge synthetic onFail(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/utils/BMError;

    invoke-virtual {p0, p1}, Lio/bidmachine/b$b;->onFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onSuccess(Lcom/explorestack/protobuf/openrtb/Response;)V
    .registers 5

    .line 2
    invoke-static {}, Lio/bidmachine/z;->a()Lio/bidmachine/z;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/b$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/bidmachine/z;->a(Ljava/lang/String;)Lio/bidmachine/core/NetworkRequest;

    .line 3
    iget-object v0, p0, Lio/bidmachine/b$b;->b:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/UrlProvider;->setAuctionUrlFromSuccessRequest(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/b$b;->c:Lio/bidmachine/AdRequestParameters;

    iget-object v1, p0, Lio/bidmachine/b$b;->d:Lio/bidmachine/NetworkAdUnitManager;

    new-instance v2, Lio/bidmachine/b$b$a;

    invoke-direct {v2, p0}, Lio/bidmachine/b$b$a;-><init>(Lio/bidmachine/b$b;)V

    invoke-static {v0, v1, p1, v2}, Lio/bidmachine/B;->a(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/NetworkAdUnitManager;Lcom/explorestack/protobuf/openrtb/Response;Lio/bidmachine/B$a;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response;

    invoke-virtual {p0, p1}, Lio/bidmachine/b$b;->onSuccess(Lcom/explorestack/protobuf/openrtb/Response;)V

    return-void
.end method

###### Class io.bidmachine.C4213b.C1161b.a (io.bidmachine.b$b$a)
.class public Lio/bidmachine/b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/B$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/b$b;->onSuccess(Lcom/explorestack/protobuf/openrtb/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/b$b;


# direct methods
.method public constructor <init>(Lio/bidmachine/b$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/b$b$a;->a:Lio/bidmachine/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/AdResponse;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/b$b$a;->a:Lio/bidmachine/b$b;

    invoke-static {v0}, Lio/bidmachine/b$b;->a(Lio/bidmachine/b$b;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3
    sget-object v1, Lio/bidmachine/d;->a:Lio/bidmachine/d;

    goto :goto_d

    .line 4
    :cond_b
    sget-object v1, Lio/bidmachine/d;->b:Lio/bidmachine/d;

    .line 5
    :goto_d
    invoke-virtual {p1, v1}, Lio/bidmachine/AdResponse;->setStatus(Lio/bidmachine/d;)V

    .line 8
    invoke-static {}, Lio/bidmachine/c;->a()Lio/bidmachine/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/bidmachine/c;->f(Lio/bidmachine/AdResponse;)V

    if-eqz v0, :cond_1d

    .line 10
    invoke-virtual {p1}, Lio/bidmachine/AdResponse;->release()V

    return-void

    .line 12
    :cond_1d
    iget-object v0, p0, Lio/bidmachine/b$b$a;->a:Lio/bidmachine/b$b;

    invoke-static {v0}, Lio/bidmachine/b$b;->b(Lio/bidmachine/b$b;)Lio/bidmachine/NetworkAdUnitManager;

    move-result-object v0

    invoke-virtual {p1}, Lio/bidmachine/AdResponse;->getWinnerNetworkAdUnit()Lio/bidmachine/NetworkAdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/NetworkAdUnitManager;->notifyNetworkAuctionResult(Lio/bidmachine/NetworkAdUnit;)V

    .line 14
    iget-object v0, p0, Lio/bidmachine/b$b$a;->a:Lio/bidmachine/b$b;

    invoke-static {v0, p1}, Lio/bidmachine/b$b;->a(Lio/bidmachine/b$b;Lio/bidmachine/AdResponse;)V

    return-void
.end method

.method public a(Lio/bidmachine/utils/BMError;)V
    .registers 4

    .line 15
    iget-object v0, p0, Lio/bidmachine/b$b$a;->a:Lio/bidmachine/b$b;

    invoke-static {v0}, Lio/bidmachine/b$b;->b(Lio/bidmachine/b$b;)Lio/bidmachine/NetworkAdUnitManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/bidmachine/NetworkAdUnitManager;->notifyNetworkAuctionResult(Lio/bidmachine/NetworkAdUnit;)V

    .line 16
    iget-object v0, p0, Lio/bidmachine/b$b$a;->a:Lio/bidmachine/b$b;

    invoke-static {v0}, Lio/bidmachine/b$b;->b(Lio/bidmachine/b$b;)Lio/bidmachine/NetworkAdUnitManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/NetworkAdUnitManager;->notifyNetworkClearAuction()V

    .line 18
    iget-object v0, p0, Lio/bidmachine/b$b$a;->a:Lio/bidmachine/b$b;

    invoke-static {v0, p1}, Lio/bidmachine/b$b;->a(Lio/bidmachine/b$b;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/AdResponse;

    invoke-virtual {p0, p1}, Lio/bidmachine/b$b$a;->a(Lio/bidmachine/AdResponse;)V

    return-void
.end method

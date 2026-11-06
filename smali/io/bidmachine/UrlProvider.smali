###### Class io.bidmachine.UrlProvider (io.bidmachine.UrlProvider)
.class public Lio/bidmachine/UrlProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUCTION_URL_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEF_BASE_URL:Ljava/lang/String; = "https://api.bidmachine.io"

.field private static final DEF_BASE_URLS:[Ljava/lang/String;

.field private static final INIT_URL_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PATH_AUCTION:Ljava/lang/String; = "auction"

.field private static final PATH_INIT:Ljava/lang/String; = "init"

.field private static final PATH_RTB:Ljava/lang/String; = "rtb"

.field private static final PATH_V3:Ljava/lang/String; = "v3"

.field private static auctionUrlFromInit:Ljava/lang/String;

.field private static auctionUrlFromSuccessRequest:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$1uTBytiVRxW3BapH5EkAfuAqM0w(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Endpoint has an invalid format - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 1
    const-string v0, "https://x.blueduckredapple.com"

    const-string v1, "https://x.thecatmachine.com"

    const-string v2, "https://api.bidmachine.io"

    const-string v3, "https://x.everestop.io"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/UrlProvider;->DEF_BASE_URLS:[Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lio/bidmachine/UrlProvider;->INIT_URL_QUEUE:Ljava/util/Queue;

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lio/bidmachine/UrlProvider;->AUCTION_URL_QUEUE:Ljava/util/Queue;

    .line 26
    invoke-static {}, Lio/bidmachine/UrlProvider;->setupUrls()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/UrlProvider;->auctionUrlFromInit:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/UrlProvider;->auctionUrlFromSuccessRequest:Ljava/lang/String;

    return-object v0
.end method

.method private static createAuctionUrl(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 2
    const-string v0, "auction"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 3
    const-string v0, "rtb"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 4
    const-string v0, "v3"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createInitUrl(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 2
    const-string v0, "auction"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 3
    const-string v0, "init"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAuctionUrlQueue()Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/UrlProvider;->auctionUrlFromInit:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2
    new-instance v0, Lio/bidmachine/UrlProvider$a;

    invoke-direct {v0}, Lio/bidmachine/UrlProvider$a;-><init>()V

    return-object v0

    .line 5
    :cond_e
    sget-object v0, Lio/bidmachine/UrlProvider;->auctionUrlFromSuccessRequest:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 6
    new-instance v0, Lio/bidmachine/UrlProvider$b;

    invoke-direct {v0}, Lio/bidmachine/UrlProvider$b;-><init>()V

    return-object v0

    .line 10
    :cond_1c
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    sget-object v1, Lio/bidmachine/UrlProvider;->AUCTION_URL_QUEUE:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getInitUrlQueue()Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    sget-object v1, Lio/bidmachine/UrlProvider;->INIT_URL_QUEUE:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static reset()V
    .registers 1

    .line 1
    invoke-static {}, Lio/bidmachine/UrlProvider;->setupUrls()V

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lio/bidmachine/UrlProvider;->auctionUrlFromInit:Ljava/lang/String;

    .line 3
    sput-object v0, Lio/bidmachine/UrlProvider;->auctionUrlFromSuccessRequest:Ljava/lang/String;

    return-void
.end method

.method public static setAuctionUrl(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 4
    :cond_7
    sget-object v0, Lio/bidmachine/UrlProvider;->AUCTION_URL_QUEUE:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 5
    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static declared-synchronized setAuctionUrlFromInit(Ljava/lang/String;)V
    .registers 3

    const-class v0, Lio/bidmachine/UrlProvider;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_f

    if-eqz v1, :cond_b

    monitor-exit v0

    return-void

    .line 4
    :cond_b
    :try_start_b
    sput-object p0, Lio/bidmachine/UrlProvider;->auctionUrlFromInit:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_f

    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public static setAuctionUrlFromSuccessRequest(Ljava/lang/String;)V
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/UrlProvider;->auctionUrlFromSuccessRequest:Ljava/lang/String;

    if-nez v0, :cond_d

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    .line 4
    :cond_b
    sput-object p0, Lio/bidmachine/UrlProvider;->auctionUrlFromSuccessRequest:Ljava/lang/String;

    :cond_d
    :goto_d
    return-void
.end method

.method public static setEndpoint(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p0}, Lio/bidmachine/core/Utils;->isUrlValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2
    new-instance v0, Lio/bidmachine/UrlProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/bidmachine/UrlProvider$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/bidmachine/core/Logger;->e(Lio/bidmachine/utils/lazy/LazyValue;)V

    return-void

    .line 5
    :cond_f
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/k;->r()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 6
    const-string p0, "Can\'t change endpoint url after initialization"

    invoke-static {p0}, Lio/bidmachine/core/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1f
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 11
    invoke-static {p0}, Lio/bidmachine/UrlProvider;->createInitUrl(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/UrlProvider;->setInitUrl(Ljava/lang/String;)V

    .line 12
    invoke-static {p0}, Lio/bidmachine/UrlProvider;->createAuctionUrl(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/UrlProvider;->setAuctionUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static setInitUrl(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 4
    :cond_7
    sget-object v0, Lio/bidmachine/UrlProvider;->INIT_URL_QUEUE:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 5
    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static setupAuctionUrls(Ljava/util/Collection;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_17

    aget-object v2, p1, v1

    .line 4
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 5
    invoke-static {v2}, Lio/bidmachine/UrlProvider;->createAuctionUrl(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_17
    return-void
.end method

.method private static setupInitUrls(Ljava/util/Collection;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_17

    aget-object v2, p1, v1

    .line 4
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 5
    invoke-static {v2}, Lio/bidmachine/UrlProvider;->createInitUrl(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_17
    return-void
.end method

.method public static setupUrls()V
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/UrlProvider;->INIT_URL_QUEUE:Ljava/util/Queue;

    sget-object v1, Lio/bidmachine/UrlProvider;->DEF_BASE_URLS:[Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/UrlProvider;->setupInitUrls(Ljava/util/Collection;[Ljava/lang/String;)V

    .line 2
    sget-object v0, Lio/bidmachine/UrlProvider;->AUCTION_URL_QUEUE:Ljava/util/Queue;

    invoke-static {v0, v1}, Lio/bidmachine/UrlProvider;->setupAuctionUrls(Ljava/util/Collection;[Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.UrlProvider.a (io.bidmachine.UrlProvider$a)
.class public Lio/bidmachine/UrlProvider$a;
.super Ljava/util/concurrent/ConcurrentLinkedQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/UrlProvider;->getAuctionUrlQueue()Ljava/util/Queue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 2
    invoke-static {}, Lio/bidmachine/UrlProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class io.bidmachine.UrlProvider.b (io.bidmachine.UrlProvider$b)
.class public Lio/bidmachine/UrlProvider$b;
.super Ljava/util/concurrent/ConcurrentLinkedQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/UrlProvider;->getAuctionUrlQueue()Ljava/util/Queue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 2
    invoke-static {}, Lio/bidmachine/UrlProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class io.bidmachine.UrlProvider$$ExternalSyntheticLambda0 (io.bidmachine.UrlProvider$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/UrlProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/UrlProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/UrlProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/UrlProvider;->$r8$lambda$1uTBytiVRxW3BapH5EkAfuAqM0w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

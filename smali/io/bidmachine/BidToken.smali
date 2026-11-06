###### Class io.bidmachine.BidToken (io.bidmachine.BidToken)
.class public Lio/bidmachine/BidToken;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/ExpirationHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/BidToken$b;
    }
.end annotation


# instance fields
.field private final adRequest:Lio/bidmachine/AdRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/AdRequest<",
            "***>;"
        }
    .end annotation
.end field

.field private final expirationHandler:Lio/bidmachine/ExpirationHandler;

.field private final expirationListener:Lio/bidmachine/ExpirationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/ExpirationListener<",
            "Lio/bidmachine/BidToken;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdRequest;ILio/bidmachine/ExpirationListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest<",
            "***>;I",
            "Lio/bidmachine/ExpirationListener<",
            "Lio/bidmachine/BidToken;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/BidToken;->id:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lio/bidmachine/BidToken;->adRequest:Lio/bidmachine/AdRequest;

    .line 4
    new-instance p1, Lio/bidmachine/ExpirationHandler;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    new-instance p2, Lio/bidmachine/BidToken$b;

    const/4 v2, 0x0

    invoke-direct {p2, v2}, Lio/bidmachine/BidToken$b;-><init>(Lio/bidmachine/BidToken$a;)V

    invoke-direct {p1, v0, v1, p0, p2}, Lio/bidmachine/ExpirationHandler;-><init>(JLio/bidmachine/ExpirationHandler$Listener;Lio/bidmachine/ExpirationHandler$TaskScheduler;)V

    iput-object p1, p0, Lio/bidmachine/BidToken;->expirationHandler:Lio/bidmachine/ExpirationHandler;

    .line 7
    iput-object p3, p0, Lio/bidmachine/BidToken;->expirationListener:Lio/bidmachine/ExpirationListener;

    return-void
.end method


# virtual methods
.method public destroyAdRequest()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidToken;->adRequest:Lio/bidmachine/AdRequest;

    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->clearNetworkAdUnits()V

    .line 2
    iget-object v0, p0, Lio/bidmachine/BidToken;->adRequest:Lio/bidmachine/AdRequest;

    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->destroy()V

    return-void
.end method

.method public getAdRequest()Lio/bidmachine/AdRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/bidmachine/AdRequest<",
            "***>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidToken;->adRequest:Lio/bidmachine/AdRequest;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidToken;->id:Ljava/lang/String;

    return-object v0
.end method

.method public onExpired()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidToken;->expirationListener:Lio/bidmachine/ExpirationListener;

    invoke-interface {v0, p0}, Lio/bidmachine/ExpirationListener;->onExpired(Ljava/lang/Object;)V

    return-void
.end method

.method public startExpiration()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidToken;->expirationHandler:Lio/bidmachine/ExpirationHandler;

    invoke-virtual {v0}, Lio/bidmachine/ExpirationHandler;->start()V

    return-void
.end method

.method public stopExpiration()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidToken;->expirationHandler:Lio/bidmachine/ExpirationHandler;

    invoke-virtual {v0}, Lio/bidmachine/ExpirationHandler;->stop()V

    return-void
.end method

###### Class io.bidmachine.BidToken.a (io.bidmachine.BidToken$a)
.class public abstract synthetic Lio/bidmachine/BidToken$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/BidToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.BidToken.b (io.bidmachine.BidToken$b)
.class public Lio/bidmachine/BidToken$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/ExpirationHandler$TaskScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/BidToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/BidToken$a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lio/bidmachine/BidToken$b;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelTask(Lio/bidmachine/utils/task/CancelableTask;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lio/bidmachine/BidTokenTaskManager;->cancel(Lio/bidmachine/utils/task/CancelableTask;)V

    return-void
.end method

.method public scheduleTask(Lio/bidmachine/utils/task/CancelableTask;J)V
    .registers 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, p3, v0}, Lio/bidmachine/BidTokenTaskManager;->schedule(Lio/bidmachine/utils/task/CancelableTask;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

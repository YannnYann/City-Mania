###### Class io.bidmachine.SessionManagerKtWrapper (io.bidmachine.SessionManagerKtWrapper)
.class public final Lio/bidmachine/SessionManagerKtWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final sessionManager:Lio/bidmachine/SessionManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/SessionManager;)V
    .registers 3

    const-string v0, "sessionManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/SessionManagerKtWrapper;->sessionManager:Lio/bidmachine/SessionManager;

    return-void
.end method


# virtual methods
.method public final synthetic getSessionDurationMs()J
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/SessionManagerKtWrapper;->sessionManager:Lio/bidmachine/SessionManager;

    invoke-virtual {v0}, Lio/bidmachine/SessionManager;->getSessionDurationMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic getSessionStartTime()J
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/SessionManagerKtWrapper;->sessionManager:Lio/bidmachine/SessionManager;

    invoke-virtual {v0}, Lio/bidmachine/SessionManager;->getSessionStartTime()J

    move-result-wide v0

    return-wide v0
.end method

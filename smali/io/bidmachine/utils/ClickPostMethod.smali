###### Class io.bidmachine.utils.ClickPostMethod (io.bidmachine.utils.ClickPostMethod)
.class public final Lio/bidmachine/utils/ClickPostMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/SafeExecutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/util/SafeExecutable<",
        "Lio/bidmachine/util/ProcessUrlResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final callback:Lio/bidmachine/unified/UnifiedAdCallback;

.field public final iabClickCallback:Lio/bidmachine/iab/utils/IabClickCallback;


# direct methods
.method public constructor <init>(Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/iab/utils/IabClickCallback;)V
    .registers 4

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iabClickCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/utils/ClickPostMethod;->callback:Lio/bidmachine/unified/UnifiedAdCallback;

    .line 3
    iput-object p2, p0, Lio/bidmachine/utils/ClickPostMethod;->iabClickCallback:Lio/bidmachine/iab/utils/IabClickCallback;

    return-void
.end method


# virtual methods
.method public onExecute(Lio/bidmachine/util/ProcessUrlResult;)V
    .registers 5

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/util/ProcessUrlResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3
    iget-object v0, p0, Lio/bidmachine/utils/ClickPostMethod;->iabClickCallback:Lio/bidmachine/iab/utils/IabClickCallback;

    invoke-interface {v0}, Lio/bidmachine/iab/utils/IabClickCallback;->clickVerified()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/utils/ClickPostMethod;->callback:Lio/bidmachine/unified/UnifiedAdCallback;

    invoke-virtual {p1}, Lio/bidmachine/util/ProcessUrlResult;->getSystemComponent()Lio/bidmachine/util/SystemComponent;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdClicked$default(Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;ILjava/lang/Object;)V

    .line 6
    :cond_1b
    iget-object p1, p0, Lio/bidmachine/utils/ClickPostMethod;->iabClickCallback:Lio/bidmachine/iab/utils/IabClickCallback;

    invoke-interface {p1}, Lio/bidmachine/iab/utils/IabClickCallback;->clickHandled()V

    return-void
.end method

.method public bridge synthetic onExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/util/ProcessUrlResult;

    invoke-virtual {p0, p1}, Lio/bidmachine/utils/ClickPostMethod;->onExecute(Lio/bidmachine/util/ProcessUrlResult;)V

    return-void
.end method

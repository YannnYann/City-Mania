###### Class io.bidmachine.AdResponseAdProcessCallback (io.bidmachine.AdResponseAdProcessCallback)
.class public final Lio/bidmachine/AdResponseAdProcessCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/AdProcessCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/AdResponseAdProcessCallback$WhenMappings;
    }
.end annotation


# instance fields
.field private final adProcessCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/AdProcessCallback;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile isFinished:Z

.field private final isLoadTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isResultShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isVisibilityTrackerShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mutexCallback:Ljava/lang/Object;

.field private final trackedEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/bidmachine/TrackEventType;",
            ">;"
        }
    .end annotation
.end field

.field public volatile visibilitySource:Lio/bidmachine/core/VisibilitySource;

.field private final weakAdResponse:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/bidmachine/AdResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2Ykoa0Zjd06lm7Q74eEhSFoecOI(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->processFillAd$lambda$5$lambda$4(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4aCPM4fTjNJ_q8FVF_WvoJE7bhg(Lio/bidmachine/utils/BMError;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->processShowFail$lambda$7$lambda$6(Lio/bidmachine/utils/BMError;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$C7gLG4K_I9A3zF8LBQuZRVwy4Gk(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->processClickVerified$lambda$12$lambda$11(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$G1OAVdURwbO7RmaPq0VUmfBlQ1c(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->processFinished$lambda$14$lambda$13(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GaKgVARkrcsLZcKCbUbAEoNUtDw(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->processResultShown$lambda$9$lambda$8(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$O5e9e5f0Bwp7fZWLWtOi6xZFQOQ(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/utils/BMError;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/AdResponseAdProcessCallback;->processViewabilityEvent$lambda$26(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/utils/BMError;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PR0RO4OOtP3TDAnAO33iytHr1tA(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->processExpired$lambda$18$lambda$17(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QLEf-mO-TuLV4c0S0ffcVIC4pZE(ILio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/AdResponseAdProcessCallback;->processViewabilityEvent$lambda$25(ILio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TfRq5W9qMehvh4bt6FgbofCkiR8(Lio/bidmachine/AdResponseAdProcessCallback;Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/AdResponseAdProcessCallback;->processClosed$lambda$16$lambda$15(Lio/bidmachine/AdResponseAdProcessCallback;Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dVHTIcamkLsWO1CpntWKtRxKUPw(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->onBrokenCreativeEvent$lambda$22$lambda$21(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lTli09icPfE7l-F7xKur5W8EKdA(Lio/bidmachine/utils/BMError;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->processLoadFail$lambda$3$lambda$2(Lio/bidmachine/utils/BMError;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vdiHVXODw63YWVpA9KFk21gatqI(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->onEngagedClick$lambda$24$lambda$23(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wJkD8fJZ_1vYsJtwEQcDDUTXh64(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/AdResponseAdProcessCallback;->processViewabilityEvent$lambda$27(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zELRAz7qpnejkMESHoOwifgAX6Q(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->processDestroy$lambda$20$lambda$19(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zIXQLcbE9GPk70bP7r-8NI-294E(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->processLoadSuccess$lambda$1$lambda$0(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/bidmachine/AdResponse;)V
    .registers 3

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->weakAdResponse:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback;->adProcessCallbackMap:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback;->mutexCallback:Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isLoadTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isVisibilityTrackerShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isResultShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback;->trackedEvents:Ljava/util/Set;

    .line 17
    sget-object p1, Lio/bidmachine/core/VisibilitySource;->Network:Lio/bidmachine/core/VisibilitySource;

    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback;->visibilitySource:Lio/bidmachine/core/VisibilitySource;

    return-void
.end method

.method public static final synthetic access$getTrackedEvents$p(Lio/bidmachine/AdResponseAdProcessCallback;)Ljava/util/Set;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->trackedEvents:Ljava/util/Set;

    return-object p0
.end method

.method private static final onBrokenCreativeEvent$lambda$22$lambda$21(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 3

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBrokenCreativeEvent - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final onEngagedClick$lambda$24$lambda$23(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 3

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEngagedClick - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final processClickVerified$lambda$12$lambda$11(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 3

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processClickVerified - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final processClosed$lambda$16$lambda$15(Lio/bidmachine/AdResponseAdProcessCallback;Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processClosed ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isFinished:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ") - "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final processDestroy$lambda$20$lambda$19(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 3

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processDestroy - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final processExpired$lambda$18$lambda$17(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 3

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processExpired - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final processFillAd$lambda$5$lambda$4(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 3

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processFillAd - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final processFinished$lambda$14$lambda$13(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 3

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processFinished - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final processLoadFail$lambda$3$lambda$2(Lio/bidmachine/utils/BMError;)Ljava/lang/String;
    .registers 3

    const-string v0, "$bmError"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processLoadFail - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final processLoadSuccess$lambda$1$lambda$0(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 3

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processLoadSuccess - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic processResultShown$default(Lio/bidmachine/AdResponseAdProcessCallback;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 1
    :cond_5
    invoke-virtual {p0, p1}, Lio/bidmachine/AdResponseAdProcessCallback;->processResultShown(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final processResultShown$lambda$9$lambda$8(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 3

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processShown - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final processShowFail$lambda$7$lambda$6(Lio/bidmachine/utils/BMError;)Ljava/lang/String;
    .registers 3

    const-string v0, "$bmError"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processShowFail - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final processViewabilityEvent$lambda$25(ILio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 4

    const-string v0, "$adResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processViewabilityEvent (Unknown action code - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") - "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final processViewabilityEvent$lambda$26(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/utils/BMError;)Ljava/lang/String;
    .registers 4

    const-string v0, "$actionEvent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processViewabilityEvent ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "), error - "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final processViewabilityEvent$lambda$27(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 4

    const-string v0, "$actionEvent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processViewabilityEvent ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") - "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final appendCallback(Lio/bidmachine/AdProcessCallback;)V
    .registers 5

    const-string v0, "adProcessCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->mutexCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_8
    iget-object v1, p0, Lio/bidmachine/AdResponseAdProcessCallback;->adProcessCallbackMap:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_14

    .line 3
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    .line 4
    monitor-exit v0

    throw p1
.end method

.method public final canSendShownCallback()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->visibilitySource:Lio/bidmachine/core/VisibilitySource;

    sget-object v1, Lio/bidmachine/AdResponseAdProcessCallback$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_28

    const/4 v2, 0x3

    if-ne v0, v2, :cond_22

    .line 11
    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->isBidMachineShowTracked()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->isNetworkShowTracked()Z

    move-result v0

    if-eqz v0, :cond_20

    return v1

    :cond_20
    const/4 v0, 0x0

    return v0

    :cond_22
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 12
    :cond_28
    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->isNetworkShowTracked()Z

    move-result v0

    return v0

    .line 13
    :cond_2d
    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->isBidMachineShowTracked()Z

    move-result v0

    return v0
.end method

.method public final destroy()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->weakAdResponse:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 2
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->mutexCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_8
    iget-object v1, p0, Lio/bidmachine/AdResponseAdProcessCallback;->adProcessCallbackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_11

    .line 5
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    .line 6
    monitor-exit v0

    throw v1
.end method

.method public final executeOnCallback(Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/bidmachine/AdProcessCallback;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->mutexCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_8
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/bidmachine/AdResponseAdProcessCallback;->adProcessCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/AdProcessCallback;

    .line 40
    const-string v3, "adProcessCallback"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :catchall_2c
    move-exception p1

    goto :goto_32

    .line 42
    :cond_2e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_2c

    .line 43
    monitor-exit v0

    return-void

    .line 44
    :goto_32
    monitor-exit v0

    throw p1
.end method

.method public final getAdProcessCallbackMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/bidmachine/AdProcessCallback;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->adProcessCallbackMap:Ljava/util/Map;

    return-object v0
.end method

.method public final getAdResponse()Lio/bidmachine/AdResponse;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->weakAdResponse:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/AdResponse;

    return-object v0
.end method

.method public final isBidMachineShowTracked()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isVisibilityTrackerShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final isLoaded()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final isLoading()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final isNetworkShowTracked()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final isShownTracked()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isResultShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onBrokenCreativeEvent(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2
    iget-object v1, v0, Lio/bidmachine/AdResponse;->tag:Lio/bidmachine/utils/Tag;

    new-instance v2, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda12;

    invoke-direct {v2, v0}, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda12;-><init>(Lio/bidmachine/AdResponse;)V

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 6
    sget-object v1, Lio/bidmachine/TrackEventType;->BrokenCreativeDetector:Lio/bidmachine/TrackEventType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lio/bidmachine/AdResponse;->eventFinish(Lio/bidmachine/TrackEventType;ZLjava/util/Map;)V

    :cond_16
    return-void
.end method

.method public onEngagedClick(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2
    iget-object v1, v0, Lio/bidmachine/AdResponse;->tag:Lio/bidmachine/utils/Tag;

    new-instance v2, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/AdResponse;)V

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 6
    sget-object v1, Lio/bidmachine/TrackEventType;->EngagedClick:Lio/bidmachine/TrackEventType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lio/bidmachine/AdResponse;->eventFinish(Lio/bidmachine/TrackEventType;ZLjava/util/Map;)V

    :cond_1b
    return-void
.end method

.method public final onLoading()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method public onNetworkViewabilityEvent(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/utils/BMError;)V
    .registers 4

    const-string v0, "actionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/AdResponseAdProcessCallback;->processViewabilityEvent(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/utils/BMError;)V

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;->isBillable()Z

    move-result p1

    if-eqz p1, :cond_13

    if-nez p2, :cond_13

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->processNetworkVisibilityEventShown()V

    :cond_13
    return-void
.end method

.method public onVisibilityTrackerViewabilityEvent(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/utils/BMError;)V
    .registers 4

    const-string v0, "actionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/AdResponseAdProcessCallback;->processViewabilityEvent(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/utils/BMError;)V

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;->isBillable()Z

    move-result p1

    if-eqz p1, :cond_13

    if-nez p2, :cond_13

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->processVisibilityTrackerShown()V

    :cond_13
    return-void
.end method

.method public processClickVerified(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    iget-object v1, v0, Lio/bidmachine/AdResponse;->tag:Lio/bidmachine/utils/Tag;

    new-instance v2, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda14;

    invoke-direct {v2, v0}, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda14;-><init>(Lio/bidmachine/AdResponse;)V

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 6
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/AdResponse;->processClickVerified(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V

    .line 9
    :cond_13
    new-instance v0, Lio/bidmachine/AdResponseAdProcessCallback$a;

    invoke-direct {v0, p1, p2}, Lio/bidmachine/AdResponseAdProcessCallback$a;-><init>(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V

    invoke-virtual {p0, v0}, Lio/bidmachine/AdResponseAdProcessCallback;->executeOnCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public processClicked(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->processClicked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/AdResponseAdProcessCallback;->processClickVerified(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V

    :cond_f
    return-void

    .line 8
    :cond_10
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/AdResponseAdProcessCallback;->processClickVerified(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V

    return-void
.end method

.method public processClosed()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2
    iget-object v1, v0, Lio/bidmachine/AdResponse;->tag:Lio/bidmachine/utils/Tag;

    new-instance v2, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/AdResponseAdProcessCallback;Lio/bidmachine/AdResponse;)V

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 6
    iget-boolean v1, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isFinished:Z

    invoke-virtual {v0, v1}, Lio/bidmachine/AdResponse;->processClosed(Z)V

    .line 9
    :cond_15
    sget-object v0, Lio/bidmachine/AdResponseAdProcessCallback$b;->a:Lio/bidmachine/AdResponseAdProcessCallback$b;

    invoke-virtual {p0, v0}, Lio/bidmachine/AdResponseAdProcessCallback;->executeOnCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public processDestroy()V
    .registers 4

    .line 1
    sget-object v0, Lio/bidmachine/AdResponseAdProcessCallback$c;->a:Lio/bidmachine/AdResponseAdProcessCallback$c;

    invoke-virtual {p0, v0}, Lio/bidmachine/AdResponseAdProcessCallback;->executeOnCallback(Lkotlin/jvm/functions/Function1;)V

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 6
    iget-object v1, v0, Lio/bidmachine/AdResponse;->tag:Lio/bidmachine/utils/Tag;

    new-instance v2, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda5;-><init>(Lio/bidmachine/AdResponse;)V

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 10
    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->destroy()V

    :cond_18
    return-void
.end method

.method public processExpired()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2
    iget-object v1, v0, Lio/bidmachine/AdResponse;->tag:Lio/bidmachine/utils/Tag;

    new-instance v2, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/AdResponse;)V

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 6
    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->processExpired()V

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 9
    :goto_15
    sget-object v1, Lio/bidmachine/AdResponseAdProcessCallback$d;->a:Lio/bidmachine/AdResponseAdProcessCallback$d;

    invoke-virtual {p0, v1}, Lio/bidmachine/AdResponseAdProcessCallback;->executeOnCallback(Lkotlin/jvm/functions/Function1;)V

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lio/bidmachine/AdResponse;->notifyExpired(Z)V

    .line 14
    :cond_20
    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->processDestroy()V

    return-void
.end method

.method public processFillAd()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    iget-object v1, v0, Lio/bidmachine/AdResponse;->tag:Lio/bidmachine/utils/Tag;

    new-instance v2, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/AdResponse;)V

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 6
    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->processFillAd()V

    .line 9
    :cond_13
    sget-object v0, Lio/bidmachine/AdResponseAdProcessCallback$e;->a:Lio/bidmachine/AdResponseAdProcessCallback$e;

    invoke-virtual {p0, v0}, Lio/bidmachine/AdResponseAdProcessCallback;->executeOnCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public processFinished()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2
    iget-object v1, v0, Lio/bidmachine/AdResponse;->tag:Lio/bidmachine/utils/Tag;

    new-instance v2, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/AdResponse;)V

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 6
    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->processFinished()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isFinished:Z

    .line 10
    :cond_16
    sget-object v0, Lio/bidmachine/AdResponseAdProcessCallback$f;->a:Lio/bidmachine/AdResponseAdProcessCallback$f;

    invoke-virtual {p0, v0}, Lio/bidmachine/AdResponseAdProcessCallback;->executeOnCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public processLoadFail(Lio/bidmachine/utils/BMError;)V
    .registers 5

    const-string v0, "bmError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isLoadTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 4
    :cond_10
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 8
    iget-object v1, v0, Lio/bidmachine/AdResponse;->tag:Lio/bidmachine/utils/Tag;

    new-instance v2, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda8;

    invoke-direct {v2, p1}, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda8;-><init>(Lio/bidmachine/utils/BMError;)V

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 12
    invoke-virtual {v0, p1}, Lio/bidmachine/AdResponse;->processLoadFail(Lio/bidmachine/utils/BMError;)V

    .line 15
    :cond_2d
    new-instance v0, Lio/bidmachine/AdResponseAdProcessCallback$g;

    invoke-direct {v0, p1}, Lio/bidmachine/AdResponseAdProcessCallback$g;-><init>(Lio/bidmachine/utils/BMError;)V

    invoke-virtual {p0, v0}, Lio/bidmachine/AdResponseAdProcessCallback;->executeOnCallback(Lkotlin/jvm/functions/Function1;)V

    .line 19
    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->processDestroy()V

    return-void
.end method

.method public processLoadSuccess()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isLoadTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 4
    :cond_b
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 8
    iget-object v1, v0, Lio/bidmachine/AdResponse;->tag:Lio/bidmachine/utils/Tag;

    new-instance v2, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda7;-><init>(Lio/bidmachine/AdResponse;)V

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 12
    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->processLoadSuccess()V

    .line 14
    :cond_28
    invoke-static {}, Lio/bidmachine/UserAgentManager;->updateWebViewUserAgent()V

    .line 16
    sget-object v0, Lio/bidmachine/AdResponseAdProcessCallback$h;->a:Lio/bidmachine/AdResponseAdProcessCallback$h;

    invoke-virtual {p0, v0}, Lio/bidmachine/AdResponseAdProcessCallback;->executeOnCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final processNetworkVisibilityEventShown()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_15

    .line 4
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->canSendShownCallback()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0, v2, v0}, Lio/bidmachine/AdResponseAdProcessCallback;->processResultShown$default(Lio/bidmachine/AdResponseAdProcessCallback;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public final processResultShown(Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/bidmachine/AdResponse;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isResultShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 5
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 6
    iget-object v1, v0, Lio/bidmachine/AdResponse;->tag:Lio/bidmachine/utils/Tag;

    new-instance v2, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda6;-><init>(Lio/bidmachine/AdResponse;)V

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 10
    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->processShown()V

    if-eqz p1, :cond_23

    .line 11
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_23
    sget-object p1, Lio/bidmachine/AdResponseAdProcessCallback$i;->a:Lio/bidmachine/AdResponseAdProcessCallback$i;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdResponseAdProcessCallback;->executeOnCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public processShowFail(Lio/bidmachine/utils/BMError;)V
    .registers 5

    const-string v0, "bmError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2
    iget-object v1, v0, Lio/bidmachine/AdResponse;->tag:Lio/bidmachine/utils/Tag;

    new-instance v2, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda13;

    invoke-direct {v2, p1}, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda13;-><init>(Lio/bidmachine/utils/BMError;)V

    invoke-static {v1, v2}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 6
    invoke-virtual {v0, p1}, Lio/bidmachine/AdResponse;->processShowFail(Lio/bidmachine/utils/BMError;)V

    .line 9
    :cond_18
    new-instance v0, Lio/bidmachine/AdResponseAdProcessCallback$j;

    invoke-direct {v0, p1}, Lio/bidmachine/AdResponseAdProcessCallback$j;-><init>(Lio/bidmachine/utils/BMError;)V

    invoke-virtual {p0, v0}, Lio/bidmachine/AdResponseAdProcessCallback;->executeOnCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public processShown()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_19

    .line 4
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->canSendShownCallback()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5
    new-instance v0, Lio/bidmachine/AdResponseAdProcessCallback$k;

    invoke-direct {v0, p0}, Lio/bidmachine/AdResponseAdProcessCallback$k;-><init>(Lio/bidmachine/AdResponseAdProcessCallback;)V

    invoke-virtual {p0, v0}, Lio/bidmachine/AdResponseAdProcessCallback;->processResultShown(Lkotlin/jvm/functions/Function1;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public final processViewabilityEvent(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/utils/BMError;)V
    .registers 7

    const-string v0, "actionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_29

    .line 2
    :cond_c
    invoke-virtual {p1}, Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;->getActionCode()I

    move-result v1

    .line 3
    invoke-static {v1}, Lio/bidmachine/TrackEventType;->fromNumber(I)Lio/bidmachine/TrackEventType;

    move-result-object v2

    if-nez v2, :cond_21

    .line 5
    iget-object p1, v0, Lio/bidmachine/AdResponse;->tag:Lio/bidmachine/utils/Tag;

    new-instance p2, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda9;

    invoke-direct {p2, v1, v0}, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda9;-><init>(ILio/bidmachine/AdResponse;)V

    invoke-static {p1, p2}, Lio/bidmachine/core/Logger;->e(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    return-void

    .line 10
    :cond_21
    iget-object v1, p0, Lio/bidmachine/AdResponseAdProcessCallback;->trackedEvents:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    :goto_29
    return-void

    :cond_2a
    if-eqz p2, :cond_37

    .line 14
    iget-object v1, v0, Lio/bidmachine/AdResponse;->tag:Lio/bidmachine/utils/Tag;

    new-instance v3, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda10;

    invoke-direct {v3, p1, p2}, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda10;-><init>(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/utils/BMError;)V

    invoke-static {v1, v3}, Lio/bidmachine/core/Logger;->e(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    goto :goto_41

    .line 18
    :cond_37
    iget-object v1, v0, Lio/bidmachine/AdResponse;->tag:Lio/bidmachine/utils/Tag;

    new-instance v3, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda11;

    invoke-direct {v3, p1, v0}, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda11;-><init>(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/AdResponse;)V

    invoke-static {v1, v3}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 23
    :goto_41
    invoke-virtual {p1}, Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;->isBillable()Z

    move-result p1

    invoke-virtual {v0, v2, p1, p2}, Lio/bidmachine/AdResponse;->eventFinish(Lio/bidmachine/TrackEventType;ZLio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public processVisibilityTrackerShown()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->isVisibilityTrackerShownTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_15

    .line 4
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/AdResponseAdProcessCallback;->canSendShownCallback()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0, v2, v0}, Lio/bidmachine/AdResponseAdProcessCallback;->processResultShown$default(Lio/bidmachine/AdResponseAdProcessCallback;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public final removeCallback(Lio/bidmachine/AdProcessCallback;)V
    .registers 4

    const-string v0, "adProcessCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback;->mutexCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_8
    iget-object v1, p0, Lio/bidmachine/AdResponseAdProcessCallback;->adProcessCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_12

    .line 3
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p1

    .line 4
    monitor-exit v0

    throw p1
.end method

.method public setVisibilitySource(Lio/bidmachine/core/VisibilitySource;)V
    .registers 3

    const-string v0, "visibilitySource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback;->visibilitySource:Lio/bidmachine/core/VisibilitySource;

    return-void
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback.WhenMappings (io.bidmachine.AdResponseAdProcessCallback$WhenMappings)
.class public final synthetic Lio/bidmachine/AdResponseAdProcessCallback$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdResponseAdProcessCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lio/bidmachine/core/VisibilitySource;->values()[Lio/bidmachine/core/VisibilitySource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/bidmachine/core/VisibilitySource;->BidMachine:Lio/bidmachine/core/VisibilitySource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/bidmachine/core/VisibilitySource;->Network:Lio/bidmachine/core/VisibilitySource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/bidmachine/core/VisibilitySource;->All:Lio/bidmachine/core/VisibilitySource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lio/bidmachine/AdResponseAdProcessCallback$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback.a (io.bidmachine.AdResponseAdProcessCallback$a)
.class public final Lio/bidmachine/AdResponseAdProcessCallback$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdResponseAdProcessCallback;->processClickVerified(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/util/SystemComponent;

.field public final synthetic b:Lio/bidmachine/rendering/model/ClickData;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback$a;->a:Lio/bidmachine/util/SystemComponent;

    iput-object p2, p0, Lio/bidmachine/AdResponseAdProcessCallback$a;->b:Lio/bidmachine/rendering/model/ClickData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/AdProcessCallback;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback$a;->a:Lio/bidmachine/util/SystemComponent;

    .line 2
    iget-object v1, p0, Lio/bidmachine/AdResponseAdProcessCallback$a;->b:Lio/bidmachine/rendering/model/ClickData;

    .line 3
    invoke-interface {p1, v0, v1}, Lio/bidmachine/AdProcessCallback;->processClickVerified(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/AdProcessCallback;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdResponseAdProcessCallback$a;->a(Lio/bidmachine/AdProcessCallback;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback.b (io.bidmachine.AdResponseAdProcessCallback$b)
.class public final Lio/bidmachine/AdResponseAdProcessCallback$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdResponseAdProcessCallback;->processClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/AdResponseAdProcessCallback$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/AdResponseAdProcessCallback$b;

    invoke-direct {v0}, Lio/bidmachine/AdResponseAdProcessCallback$b;-><init>()V

    sput-object v0, Lio/bidmachine/AdResponseAdProcessCallback$b;->a:Lio/bidmachine/AdResponseAdProcessCallback$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/AdProcessCallback;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lio/bidmachine/AdProcessCallback;->processClosed()V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/AdProcessCallback;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdResponseAdProcessCallback$b;->a(Lio/bidmachine/AdProcessCallback;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback.c (io.bidmachine.AdResponseAdProcessCallback$c)
.class public final Lio/bidmachine/AdResponseAdProcessCallback$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdResponseAdProcessCallback;->processDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/AdResponseAdProcessCallback$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/AdResponseAdProcessCallback$c;

    invoke-direct {v0}, Lio/bidmachine/AdResponseAdProcessCallback$c;-><init>()V

    sput-object v0, Lio/bidmachine/AdResponseAdProcessCallback$c;->a:Lio/bidmachine/AdResponseAdProcessCallback$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/AdProcessCallback;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lio/bidmachine/AdProcessCallback;->processDestroy()V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/AdProcessCallback;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdResponseAdProcessCallback$c;->a(Lio/bidmachine/AdProcessCallback;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback.d (io.bidmachine.AdResponseAdProcessCallback$d)
.class public final Lio/bidmachine/AdResponseAdProcessCallback$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdResponseAdProcessCallback;->processExpired()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/AdResponseAdProcessCallback$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/AdResponseAdProcessCallback$d;

    invoke-direct {v0}, Lio/bidmachine/AdResponseAdProcessCallback$d;-><init>()V

    sput-object v0, Lio/bidmachine/AdResponseAdProcessCallback$d;->a:Lio/bidmachine/AdResponseAdProcessCallback$d;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/AdProcessCallback;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lio/bidmachine/AdProcessCallback;->processExpired()V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/AdProcessCallback;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdResponseAdProcessCallback$d;->a(Lio/bidmachine/AdProcessCallback;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback.e (io.bidmachine.AdResponseAdProcessCallback$e)
.class public final Lio/bidmachine/AdResponseAdProcessCallback$e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdResponseAdProcessCallback;->processFillAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/AdResponseAdProcessCallback$e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/AdResponseAdProcessCallback$e;

    invoke-direct {v0}, Lio/bidmachine/AdResponseAdProcessCallback$e;-><init>()V

    sput-object v0, Lio/bidmachine/AdResponseAdProcessCallback$e;->a:Lio/bidmachine/AdResponseAdProcessCallback$e;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/AdProcessCallback;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lio/bidmachine/AdProcessCallback;->processFillAd()V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/AdProcessCallback;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdResponseAdProcessCallback$e;->a(Lio/bidmachine/AdProcessCallback;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback.f (io.bidmachine.AdResponseAdProcessCallback$f)
.class public final Lio/bidmachine/AdResponseAdProcessCallback$f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdResponseAdProcessCallback;->processFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/AdResponseAdProcessCallback$f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/AdResponseAdProcessCallback$f;

    invoke-direct {v0}, Lio/bidmachine/AdResponseAdProcessCallback$f;-><init>()V

    sput-object v0, Lio/bidmachine/AdResponseAdProcessCallback$f;->a:Lio/bidmachine/AdResponseAdProcessCallback$f;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/AdProcessCallback;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lio/bidmachine/AdProcessCallback;->processFinished()V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/AdProcessCallback;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdResponseAdProcessCallback$f;->a(Lio/bidmachine/AdProcessCallback;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback.g (io.bidmachine.AdResponseAdProcessCallback$g)
.class public final Lio/bidmachine/AdResponseAdProcessCallback$g;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdResponseAdProcessCallback;->processLoadFail(Lio/bidmachine/utils/BMError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/utils/BMError;


# direct methods
.method public constructor <init>(Lio/bidmachine/utils/BMError;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback$g;->a:Lio/bidmachine/utils/BMError;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/AdProcessCallback;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback$g;->a:Lio/bidmachine/utils/BMError;

    invoke-interface {p1, v0}, Lio/bidmachine/AdProcessCallback;->processLoadFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/AdProcessCallback;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdResponseAdProcessCallback$g;->a(Lio/bidmachine/AdProcessCallback;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback.h (io.bidmachine.AdResponseAdProcessCallback$h)
.class public final Lio/bidmachine/AdResponseAdProcessCallback$h;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdResponseAdProcessCallback;->processLoadSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/AdResponseAdProcessCallback$h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/AdResponseAdProcessCallback$h;

    invoke-direct {v0}, Lio/bidmachine/AdResponseAdProcessCallback$h;-><init>()V

    sput-object v0, Lio/bidmachine/AdResponseAdProcessCallback$h;->a:Lio/bidmachine/AdResponseAdProcessCallback$h;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/AdProcessCallback;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lio/bidmachine/AdProcessCallback;->processLoadSuccess()V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/AdProcessCallback;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdResponseAdProcessCallback$h;->a(Lio/bidmachine/AdProcessCallback;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback.i (io.bidmachine.AdResponseAdProcessCallback$i)
.class public final Lio/bidmachine/AdResponseAdProcessCallback$i;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdResponseAdProcessCallback;->processResultShown(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/AdResponseAdProcessCallback$i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/AdResponseAdProcessCallback$i;

    invoke-direct {v0}, Lio/bidmachine/AdResponseAdProcessCallback$i;-><init>()V

    sput-object v0, Lio/bidmachine/AdResponseAdProcessCallback$i;->a:Lio/bidmachine/AdResponseAdProcessCallback$i;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/AdProcessCallback;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lio/bidmachine/AdProcessCallback;->processShown()V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/AdProcessCallback;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdResponseAdProcessCallback$i;->a(Lio/bidmachine/AdProcessCallback;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback.j (io.bidmachine.AdResponseAdProcessCallback$j)
.class public final Lio/bidmachine/AdResponseAdProcessCallback$j;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdResponseAdProcessCallback;->processShowFail(Lio/bidmachine/utils/BMError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/utils/BMError;


# direct methods
.method public constructor <init>(Lio/bidmachine/utils/BMError;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback$j;->a:Lio/bidmachine/utils/BMError;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/AdProcessCallback;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback$j;->a:Lio/bidmachine/utils/BMError;

    invoke-interface {p1, v0}, Lio/bidmachine/AdProcessCallback;->processShowFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/AdProcessCallback;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdResponseAdProcessCallback$j;->a(Lio/bidmachine/AdProcessCallback;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback.k (io.bidmachine.AdResponseAdProcessCallback$k)
.class public final Lio/bidmachine/AdResponseAdProcessCallback$k;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdResponseAdProcessCallback;->processShown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/AdResponseAdProcessCallback;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdResponseAdProcessCallback;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback$k;->a:Lio/bidmachine/AdResponseAdProcessCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/AdResponse;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback$k;->a:Lio/bidmachine/AdResponseAdProcessCallback;

    invoke-static {v0}, Lio/bidmachine/AdResponseAdProcessCallback;->access$getTrackedEvents$p(Lio/bidmachine/AdResponseAdProcessCallback;)Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lio/bidmachine/TrackEventType;->Show:Lio/bidmachine/TrackEventType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lio/bidmachine/AdResponse;->eventFinish(Lio/bidmachine/TrackEventType;Z)V

    :cond_17
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/AdResponse;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdResponseAdProcessCallback$k;->a(Lio/bidmachine/AdResponse;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda0 (io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/AdResponse;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/AdResponse;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/AdResponse;

    invoke-static {v0}, Lio/bidmachine/AdResponseAdProcessCallback;->$r8$lambda$PR0RO4OOtP3TDAnAO33iytHr1tA(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda1 (io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/AdResponse;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/AdResponse;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/AdResponse;

    invoke-static {v0}, Lio/bidmachine/AdResponseAdProcessCallback;->$r8$lambda$2Ykoa0Zjd06lm7Q74eEhSFoecOI(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda10 (io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda10)
.class public final synthetic Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;

.field public final synthetic f$1:Lio/bidmachine/utils/BMError;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/utils/BMError;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda10;->f$0:Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;

    iput-object p2, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda10;->f$1:Lio/bidmachine/utils/BMError;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda10;->f$0:Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;

    iget-object v1, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda10;->f$1:Lio/bidmachine/utils/BMError;

    invoke-static {v0, v1}, Lio/bidmachine/AdResponseAdProcessCallback;->$r8$lambda$O5e9e5f0Bwp7fZWLWtOi6xZFQOQ(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/utils/BMError;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda11 (io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda11)
.class public final synthetic Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;

.field public final synthetic f$1:Lio/bidmachine/AdResponse;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/AdResponse;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda11;->f$0:Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;

    iput-object p2, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda11;->f$1:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda11;->f$0:Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;

    iget-object v1, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda11;->f$1:Lio/bidmachine/AdResponse;

    invoke-static {v0, v1}, Lio/bidmachine/AdResponseAdProcessCallback;->$r8$lambda$wJkD8fJZ_1vYsJtwEQcDDUTXh64(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda12 (io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda12)
.class public final synthetic Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/AdResponse;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/AdResponse;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda12;->f$0:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda12;->f$0:Lio/bidmachine/AdResponse;

    invoke-static {v0}, Lio/bidmachine/AdResponseAdProcessCallback;->$r8$lambda$dVHTIcamkLsWO1CpntWKtRxKUPw(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda13 (io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda13)
.class public final synthetic Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/utils/BMError;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/utils/BMError;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda13;->f$0:Lio/bidmachine/utils/BMError;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda13;->f$0:Lio/bidmachine/utils/BMError;

    invoke-static {v0}, Lio/bidmachine/AdResponseAdProcessCallback;->$r8$lambda$4aCPM4fTjNJ_q8FVF_WvoJE7bhg(Lio/bidmachine/utils/BMError;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda14 (io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda14)
.class public final synthetic Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/AdResponse;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/AdResponse;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda14;->f$0:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda14;->f$0:Lio/bidmachine/AdResponse;

    invoke-static {v0}, Lio/bidmachine/AdResponseAdProcessCallback;->$r8$lambda$C7gLG4K_I9A3zF8LBQuZRVwy4Gk(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda2 (io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/AdResponseAdProcessCallback;

.field public final synthetic f$1:Lio/bidmachine/AdResponse;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/AdResponseAdProcessCallback;Lio/bidmachine/AdResponse;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/AdResponseAdProcessCallback;

    iput-object p2, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda2;->f$1:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/AdResponseAdProcessCallback;

    iget-object v1, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda2;->f$1:Lio/bidmachine/AdResponse;

    invoke-static {v0, v1}, Lio/bidmachine/AdResponseAdProcessCallback;->$r8$lambda$TfRq5W9qMehvh4bt6FgbofCkiR8(Lio/bidmachine/AdResponseAdProcessCallback;Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda3 (io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/AdResponse;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/AdResponse;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/AdResponse;

    invoke-static {v0}, Lio/bidmachine/AdResponseAdProcessCallback;->$r8$lambda$G1OAVdURwbO7RmaPq0VUmfBlQ1c(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda4 (io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/AdResponse;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/AdResponse;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/AdResponse;

    invoke-static {v0}, Lio/bidmachine/AdResponseAdProcessCallback;->$r8$lambda$vdiHVXODw63YWVpA9KFk21gatqI(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda5 (io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/AdResponse;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/AdResponse;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/AdResponse;

    invoke-static {v0}, Lio/bidmachine/AdResponseAdProcessCallback;->$r8$lambda$zELRAz7qpnejkMESHoOwifgAX6Q(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda6 (io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda6)
.class public final synthetic Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/AdResponse;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/AdResponse;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/AdResponse;

    invoke-static {v0}, Lio/bidmachine/AdResponseAdProcessCallback;->$r8$lambda$GaKgVARkrcsLZcKCbUbAEoNUtDw(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda7 (io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda7)
.class public final synthetic Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/AdResponse;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/AdResponse;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda7;->f$0:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda7;->f$0:Lio/bidmachine/AdResponse;

    invoke-static {v0}, Lio/bidmachine/AdResponseAdProcessCallback;->$r8$lambda$zIXQLcbE9GPk70bP7r-8NI-294E(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda8 (io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda8)
.class public final synthetic Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/utils/BMError;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/utils/BMError;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda8;->f$0:Lio/bidmachine/utils/BMError;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda8;->f$0:Lio/bidmachine/utils/BMError;

    invoke-static {v0}, Lio/bidmachine/AdResponseAdProcessCallback;->$r8$lambda$lTli09icPfE7l-F7xKur5W8EKdA(Lio/bidmachine/utils/BMError;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda9 (io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda9)
.class public final synthetic Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lio/bidmachine/AdResponse;


# direct methods
.method public synthetic constructor <init>(ILio/bidmachine/AdResponse;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda9;->f$0:I

    iput-object p2, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda9;->f$1:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget v0, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda9;->f$0:I

    iget-object v1, p0, Lio/bidmachine/AdResponseAdProcessCallback$$ExternalSyntheticLambda9;->f$1:Lio/bidmachine/AdResponse;

    invoke-static {v0, v1}, Lio/bidmachine/AdResponseAdProcessCallback;->$r8$lambda$QLEf-mO-TuLV4c0S0ffcVIC4pZE(ILio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

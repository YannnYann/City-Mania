###### Class io.bidmachine.util.log.TagLogger (io.bidmachine.util.log.TagLogger)
.class public final Lio/bidmachine/util/log/TagLogger;
.super Ljava/lang/Object;
.source "TagLogger.kt"

# interfaces
.implements Lio/bidmachine/util/log/LoggerInstance;


# instance fields
.field public final logger:Lio/bidmachine/util/log/LoggerInstance;

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/util/log/LoggerInstance;)V
    .registers 4

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lio/bidmachine/util/log/TagLogger;->tag:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lio/bidmachine/util/log/TagLogger;->logger:Lio/bidmachine/util/log/LoggerInstance;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lio/bidmachine/util/log/LoggerInstance;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_a

    .line 5
    sget-object p2, Lio/bidmachine/util/log/LoggerSettings;->INSTANCE:Lio/bidmachine/util/log/LoggerSettings;

    invoke-virtual {p2}, Lio/bidmachine/util/log/LoggerSettings;->getLogger$bidmachine_android_sdk_bd_3_8_0()Lio/bidmachine/util/log/DefaultLoggerInstance;

    move-result-object p2

    .line 3
    :cond_a
    invoke-direct {p0, p1, p2}, Lio/bidmachine/util/log/TagLogger;-><init>(Ljava/lang/String;Lio/bidmachine/util/log/LoggerInstance;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "messageBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lio/bidmachine/util/log/TagLogger;->logger:Lio/bidmachine/util/log/LoggerInstance;

    if-nez p1, :cond_b

    .line 10
    iget-object p1, p0, Lio/bidmachine/util/log/TagLogger;->tag:Ljava/lang/String;

    .line 9
    :cond_b
    invoke-interface {v0, p1, p2}, Lio/bidmachine/util/log/LoggerInstance;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public e(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "messageBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lio/bidmachine/util/log/TagLogger;->logger:Lio/bidmachine/util/log/LoggerInstance;

    if-nez p1, :cond_b

    .line 31
    iget-object p1, p0, Lio/bidmachine/util/log/TagLogger;->tag:Ljava/lang/String;

    .line 30
    :cond_b
    invoke-interface {v0, p1, p2}, Lio/bidmachine/util/log/LoggerInstance;->e(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public w(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "messageBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lio/bidmachine/util/log/TagLogger;->logger:Lio/bidmachine/util/log/LoggerInstance;

    if-nez p1, :cond_b

    .line 17
    iget-object p1, p0, Lio/bidmachine/util/log/TagLogger;->tag:Ljava/lang/String;

    .line 16
    :cond_b
    invoke-interface {v0, p1, p2}, Lio/bidmachine/util/log/LoggerInstance;->w(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

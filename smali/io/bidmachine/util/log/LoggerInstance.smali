###### Class io.bidmachine.util.log.LoggerInstance (io.bidmachine.util.log.LoggerInstance)
.class public interface abstract Lio/bidmachine/util/log/LoggerInstance;
.super Ljava/lang/Object;
.source "LoggerInstance.kt"


# direct methods
.method public static synthetic d$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_7

    const/4 p1, 0x0

    .line 7
    :cond_7
    invoke-interface {p0, p1, p2}, Lio/bidmachine/util/log/LoggerInstance;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: d"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic e$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lio/bidmachine/util/Error;ILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_7

    const/4 p1, 0x0

    .line 15
    :cond_7
    invoke-interface {p0, p1, p2}, Lio/bidmachine/util/log/LoggerInstance;->e(Ljava/lang/Object;Lio/bidmachine/util/Error;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: e"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic e$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_7

    const/4 p1, 0x0

    .line 13
    :cond_7
    invoke-interface {p0, p1, p2}, Lio/bidmachine/util/log/LoggerInstance;->e(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: e"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public e(Ljava/lang/Object;Lio/bidmachine/util/Error;)V
    .registers 4

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lio/bidmachine/util/log/LoggerInstance$e$1;

    invoke-direct {v0, p2}, Lio/bidmachine/util/log/LoggerInstance$e$1;-><init>(Lio/bidmachine/util/Error;)V

    invoke-interface {p0, p1, v0}, Lio/bidmachine/util/log/LoggerInstance;->e(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public abstract e(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract w(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

###### Class io.bidmachine.util.log.LoggerInstance.AnonymousClass1 (io.bidmachine.util.log.LoggerInstance$e$1)
.class public final Lio/bidmachine/util/log/LoggerInstance$e$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LoggerInstance.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/log/LoggerInstance;->e(Ljava/lang/Object;Lio/bidmachine/util/Error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $error:Lio/bidmachine/util/Error;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/Error;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/log/LoggerInstance$e$1;->$error:Lio/bidmachine/util/Error;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 16
    invoke-virtual {p0}, Lio/bidmachine/util/log/LoggerInstance$e$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lio/bidmachine/util/log/LoggerInstance$e$1;->$error:Lio/bidmachine/util/Error;

    invoke-virtual {v0}, Lio/bidmachine/util/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

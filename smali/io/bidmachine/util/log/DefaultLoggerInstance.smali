###### Class io.bidmachine.util.log.DefaultLoggerInstance (io.bidmachine.util.log.DefaultLoggerInstance)
.class public Lio/bidmachine/util/log/DefaultLoggerInstance;
.super Ljava/lang/Object;
.source "DefaultLoggerInstance.kt"

# interfaces
.implements Lio/bidmachine/util/log/LoggerInstance;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/util/log/DefaultLoggerInstance$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultLoggerInstance.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultLoggerInstance.kt\nio/bidmachine/util/log/DefaultLoggerInstance\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,105:1\n1#2:106\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/util/log/DefaultLoggerInstance$Companion;


# instance fields
.field public isEnabled:Z

.field public final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/util/log/DefaultLoggerInstance$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/util/log/DefaultLoggerInstance$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/util/log/DefaultLoggerInstance;->Companion:Lio/bidmachine/util/log/DefaultLoggerInstance$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/util/log/DefaultLoggerInstance;->tag:Ljava/lang/String;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lio/bidmachine/util/log/DefaultLoggerInstance;->isEnabled:Z

    return-void
.end method

.method public static synthetic prepareAndLog$default(Lio/bidmachine/util/log/DefaultLoggerInstance;ILjava/lang/Object;Lkotlin/jvm/functions/Function0;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .registers 8

    if-nez p6, :cond_11

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_8

    move-object p3, v0

    :cond_8
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_d

    move-object p4, v0

    .line 37
    :cond_d
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/util/log/DefaultLoggerInstance;->prepareAndLog(ILjava/lang/Object;Lkotlin/jvm/functions/Function0;Ljava/lang/Throwable;)V

    return-void

    :cond_11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: prepareAndLog"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final buildMessage(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_20

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    if-eqz p2, :cond_2b

    .line 82
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    if-eqz p3, :cond_3f

    .line 84
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_38

    .line 85
    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_38
    invoke-virtual {p0, p3}, Lio/bidmachine/util/log/DefaultLoggerInstance;->buildStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sb.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final buildStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5

    .line 93
    new-instance v0, Ljava/io/StringWriter;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 94
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 95
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 96
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 97
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sw.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    .registers 11
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

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v2, 0x3

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 13
    invoke-static/range {v1 .. v7}, Lio/bidmachine/util/log/DefaultLoggerInstance;->prepareAndLog$default(Lio/bidmachine/util/log/DefaultLoggerInstance;ILjava/lang/Object;Lkotlin/jvm/functions/Function0;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 11

    const-string v0, "throwable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v2, 0x6

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    .line 29
    invoke-static/range {v1 .. v7}, Lio/bidmachine/util/log/DefaultLoggerInstance;->prepareAndLog$default(Lio/bidmachine/util/log/DefaultLoggerInstance;ILjava/lang/Object;Lkotlin/jvm/functions/Function0;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    .registers 11
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

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v2, 0x6

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 25
    invoke-static/range {v1 .. v7}, Lio/bidmachine/util/log/DefaultLoggerInstance;->prepareAndLog$default(Lio/bidmachine/util/log/DefaultLoggerInstance;ILjava/lang/Object;Lkotlin/jvm/functions/Function0;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public isLoggable(I)Z
    .registers 2

    .line 34
    iget-boolean p1, p0, Lio/bidmachine/util/log/DefaultLoggerInstance;->isEnabled:Z

    return p1
.end method

.method public final log(ILjava/lang/String;)V
    .registers 9

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_35

    .line 50
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit16 v0, v0, 0x3e7

    div-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_16
    if-ge v1, v0, :cond_34

    .line 56
    iget-object v3, p0, Lio/bidmachine/util/log/DefaultLoggerInstance;->tag:Ljava/lang/String;

    .line 58
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit16 v5, v2, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1, v3, v2}, Lio/bidmachine/util/log/DefaultLoggerInstance;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_16

    :cond_34
    return-void

    .line 65
    :cond_35
    iget-object v0, p0, Lio/bidmachine/util/log/DefaultLoggerInstance;->tag:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lio/bidmachine/util/log/DefaultLoggerInstance;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final prepareAndLog(ILjava/lang/Object;Lkotlin/jvm/functions/Function0;Ljava/lang/Throwable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lio/bidmachine/util/log/DefaultLoggerInstance;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 44
    invoke-virtual {p0, p2, p3, p4}, Lio/bidmachine/util/log/DefaultLoggerInstance;->buildMessage(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/log/DefaultLoggerInstance;->log(ILjava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final printLog(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setEnabled(Z)V
    .registers 2

    .line 10
    iput-boolean p1, p0, Lio/bidmachine/util/log/DefaultLoggerInstance;->isEnabled:Z

    return-void
.end method

.method public w(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    .registers 11
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

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v2, 0x5

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 17
    invoke-static/range {v1 .. v7}, Lio/bidmachine/util/log/DefaultLoggerInstance;->prepareAndLog$default(Lio/bidmachine/util/log/DefaultLoggerInstance;ILjava/lang/Object;Lkotlin/jvm/functions/Function0;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

###### Class io.bidmachine.util.log.DefaultLoggerInstance.Companion (io.bidmachine.util.log.DefaultLoggerInstance$Companion)
.class public final Lio/bidmachine/util/log/DefaultLoggerInstance$Companion;
.super Ljava/lang/Object;
.source "DefaultLoggerInstance.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/log/DefaultLoggerInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/bidmachine/util/log/DefaultLoggerInstance$Companion;-><init>()V

    return-void
.end method

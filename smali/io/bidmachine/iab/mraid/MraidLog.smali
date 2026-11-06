###### Class io.bidmachine.iab.mraid.MraidLog (io.bidmachine.iab.mraid.MraidLog)
.class public final Lio/bidmachine/iab/mraid/MraidLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/bidmachine/iab/mraid/MraidLog;

.field public static final a:Lio/bidmachine/util/log/DefaultLoggerInstance;

.field public static logLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/bidmachine/iab/mraid/MraidLog;

    invoke-direct {v0}, Lio/bidmachine/iab/mraid/MraidLog;-><init>()V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidLog;->INSTANCE:Lio/bidmachine/iab/mraid/MraidLog;

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/MraidLog$logger$1;

    invoke-direct {v0}, Lio/bidmachine/iab/mraid/MraidLog$logger$1;-><init>()V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidLog;->a:Lio/bidmachine/util/log/DefaultLoggerInstance;

    const/4 v0, 0x6

    .line 6
    sput v0, Lio/bidmachine/iab/mraid/MraidLog;->logLevel:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    .registers 3
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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidLog;->a:Lio/bidmachine/util/log/DefaultLoggerInstance;

    invoke-virtual {v0, p0, p1}, Lio/bidmachine/util/log/DefaultLoggerInstance;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const-string v0, "subTag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lio/bidmachine/iab/mraid/MraidLog$a;

    invoke-direct {v0, p1, p2}, Lio/bidmachine/iab/mraid/MraidLog$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lio/bidmachine/iab/mraid/MraidLog;->a:Lio/bidmachine/util/log/DefaultLoggerInstance;

    invoke-virtual {v0, p0, p1}, Lio/bidmachine/util/log/DefaultLoggerInstance;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final e(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    .registers 3
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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidLog;->a:Lio/bidmachine/util/log/DefaultLoggerInstance;

    invoke-virtual {v0, p0, p1}, Lio/bidmachine/util/log/DefaultLoggerInstance;->e(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const-string v0, "subTag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lio/bidmachine/iab/mraid/MraidLog$b;

    invoke-direct {v0, p1, p2}, Lio/bidmachine/iab/mraid/MraidLog$b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final setEnabled(Z)V
    .registers 1

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    goto :goto_7

    :cond_4
    const p0, 0x7fffffff

    .line 1
    :goto_7
    sput p0, Lio/bidmachine/iab/mraid/MraidLog;->logLevel:I

    return-void
.end method

.method public static final w(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    .registers 3
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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidLog;->a:Lio/bidmachine/util/log/DefaultLoggerInstance;

    invoke-virtual {v0, p0, p1}, Lio/bidmachine/util/log/DefaultLoggerInstance;->w(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const-string v0, "subTag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lio/bidmachine/iab/mraid/MraidLog$c;

    invoke-direct {v0, p1, p2}, Lio/bidmachine/iab/mraid/MraidLog$c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lio/bidmachine/iab/mraid/MraidLog;->w(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final canSendDLog()Z
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidLog;->a:Lio/bidmachine/util/log/DefaultLoggerInstance;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lio/bidmachine/util/log/DefaultLoggerInstance;->isLoggable(I)Z

    move-result v0

    return v0
.end method

.method public final canSendELog()Z
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidLog;->a:Lio/bidmachine/util/log/DefaultLoggerInstance;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lio/bidmachine/util/log/DefaultLoggerInstance;->isLoggable(I)Z

    move-result v0

    return v0
.end method

###### Class io.bidmachine.iab.mraid.MraidLog.a (io.bidmachine.iab.mraid.MraidLog$a)
.class public final Lio/bidmachine/iab/mraid/MraidLog$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidLog$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidLog$a;->b:[Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidLog$a;->a:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    :cond_8
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidLog$a;->b:[Ljava/lang/Object;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidLog$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidLog.b (io.bidmachine.iab.mraid.MraidLog$b)
.class public final Lio/bidmachine/iab/mraid/MraidLog$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidLog$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidLog$b;->b:[Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidLog$b;->a:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    :cond_8
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidLog$b;->b:[Ljava/lang/Object;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidLog$b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidLog.c (io.bidmachine.iab.mraid.MraidLog$c)
.class public final Lio/bidmachine/iab/mraid/MraidLog$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidLog$c;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidLog$c;->b:[Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidLog$c;->a:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    :cond_8
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidLog$c;->b:[Ljava/lang/Object;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidLog$c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidLog$logger$1 (io.bidmachine.iab.mraid.MraidLog$logger$1)
.class public final Lio/bidmachine/iab/mraid/MraidLog$logger$1;
.super Lio/bidmachine/util/log/DefaultLoggerInstance;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "MraidLog"

    invoke-direct {p0, v0}, Lio/bidmachine/util/log/DefaultLoggerInstance;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isLoggable(I)Z
    .registers 3

    .line 1
    sget v0, Lio/bidmachine/iab/mraid/MraidLog;->logLevel:I

    if-gt v0, p1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

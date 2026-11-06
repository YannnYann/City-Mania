###### Class io.bidmachine.iab.utils.Logger (io.bidmachine.iab.utils.Logger)
.class public Lio/bidmachine/iab/utils/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/utils/Logger$LogLevel;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
    since = "3.6.0"
.end annotation


# static fields
.field public static c:Lio/bidmachine/iab/utils/Logger$LogLevel;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/iab/utils/Logger$LogLevel;->error:Lio/bidmachine/iab/utils/Logger$LogLevel;

    sput-object v0, Lio/bidmachine/iab/utils/Logger;->c:Lio/bidmachine/iab/utils/Logger$LogLevel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/iab/utils/Logger;->a:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/iab/utils/Logger;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 36
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "[%s] %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 29
    invoke-static {p0, p1}, Lio/bidmachine/iab/utils/Logger;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_e

    .line 31
    array-length p1, p2

    if-nez p1, :cond_a

    goto :goto_e

    .line 35
    :cond_a
    :try_start_a
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_e

    :catchall_e
    :cond_e
    :goto_e
    return-object p0
.end method


# virtual methods
.method public final a(Lio/bidmachine/iab/utils/Logger$LogLevel;Ljava/lang/String;)V
    .registers 4

    .line 1
    sget-object v0, Lio/bidmachine/iab/utils/Logger$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_18

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    return-void

    .line 9
    :cond_12
    iget-object p1, p0, Lio/bidmachine/iab/utils/Logger;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_18
    iget-object p1, p0, Lio/bidmachine/iab/utils/Logger;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :cond_1e
    iget-object p1, p0, Lio/bidmachine/iab/utils/Logger;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final varargs a(Lio/bidmachine/iab/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .line 12
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_22

    .line 15
    :cond_7
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/Logger;->b(Lio/bidmachine/iab/utils/Logger$LogLevel;)Z

    move-result v0

    .line 16
    invoke-virtual {p0}, Lio/bidmachine/iab/utils/Logger;->a()Z

    move-result v1

    if-nez v0, :cond_14

    if-nez v1, :cond_14

    goto :goto_22

    .line 21
    :cond_14
    invoke-static {p2, p3, p4}, Lio/bidmachine/iab/utils/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_1d

    .line 23
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/utils/Logger;->a(Lio/bidmachine/iab/utils/Logger$LogLevel;Ljava/lang/String;)V

    :cond_1d
    if-eqz v1, :cond_22

    .line 26
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/utils/Logger;->b(Lio/bidmachine/iab/utils/Logger$LogLevel;Ljava/lang/String;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public final a()Z
    .registers 2

    .line 28
    iget-object v0, p0, Lio/bidmachine/iab/utils/Logger;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final b(Lio/bidmachine/iab/utils/Logger$LogLevel;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/Logger;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/iab/utils/LogListener;

    .line 2
    iget-object v2, p0, Lio/bidmachine/iab/utils/Logger;->a:Ljava/lang/String;

    invoke-interface {v1, p1, v2, p2}, Lio/bidmachine/iab/utils/LogListener;->onLog(Lio/bidmachine/iab/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_18
    return-void
.end method

.method public final b(Lio/bidmachine/iab/utils/Logger$LogLevel;)Z
    .registers 3

    .line 3
    sget-object v0, Lio/bidmachine/iab/utils/Logger;->c:Lio/bidmachine/iab/utils/Logger$LogLevel;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lio/bidmachine/iab/utils/Logger$LogLevel;->getValue()I

    move-result v0

    invoke-virtual {p1}, Lio/bidmachine/iab/utils/Logger$LogLevel;->getValue()I

    move-result p1

    if-gt v0, p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "subTag",
            "message",
            "args"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/iab/utils/Logger$LogLevel;->debug:Lio/bidmachine/iab/utils/Logger$LogLevel;

    invoke-virtual {p0, v0, p1, p2, p3}, Lio/bidmachine/iab/utils/Logger;->a(Lio/bidmachine/iab/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "subTag",
            "message",
            "args"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/iab/utils/Logger$LogLevel;->error:Lio/bidmachine/iab/utils/Logger$LogLevel;

    invoke-virtual {p0, v0, p1, p2, p3}, Lio/bidmachine/iab/utils/Logger;->a(Lio/bidmachine/iab/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "subTag",
            "throwable"
        }
    .end annotation

    .line 2
    sget-object v0, Lio/bidmachine/iab/utils/Logger$LogLevel;->error:Lio/bidmachine/iab/utils/Logger$LogLevel;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, p2, v1}, Lio/bidmachine/iab/utils/Logger;->a(Lio/bidmachine/iab/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setLoggingLevel(Lio/bidmachine/iab/utils/Logger$LogLevel;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logLevel"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/Logger;->a:Ljava/lang/String;

    sget-object v1, Lio/bidmachine/iab/utils/Logger;->c:Lio/bidmachine/iab/utils/Logger$LogLevel;

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Changing logging level. From: %s, To: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sput-object p1, Lio/bidmachine/iab/utils/Logger;->c:Lio/bidmachine/iab/utils/Logger$LogLevel;

    return-void
.end method

###### Class io.bidmachine.iab.utils.Logger.LogLevel (io.bidmachine.iab.utils.Logger$LogLevel)
.class public final enum Lio/bidmachine/iab/utils/Logger$LogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/utils/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/iab/utils/Logger$LogLevel;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
    since = "3.6.0"
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lio/bidmachine/iab/utils/Logger$LogLevel;

.field public static final enum debug:Lio/bidmachine/iab/utils/Logger$LogLevel;

.field public static final enum error:Lio/bidmachine/iab/utils/Logger$LogLevel;

.field public static final enum info:Lio/bidmachine/iab/utils/Logger$LogLevel;

.field public static final enum none:Lio/bidmachine/iab/utils/Logger$LogLevel;

.field public static final enum warning:Lio/bidmachine/iab/utils/Logger$LogLevel;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/iab/utils/Logger$LogLevel;

    const-string v1, "debug"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/iab/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/iab/utils/Logger$LogLevel;->debug:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 2
    new-instance v0, Lio/bidmachine/iab/utils/Logger$LogLevel;

    const-string v1, "info"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lio/bidmachine/iab/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/iab/utils/Logger$LogLevel;->info:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 3
    new-instance v0, Lio/bidmachine/iab/utils/Logger$LogLevel;

    const-string v1, "warning"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/iab/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/iab/utils/Logger$LogLevel;->warning:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 4
    new-instance v0, Lio/bidmachine/iab/utils/Logger$LogLevel;

    const-string v1, "error"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lio/bidmachine/iab/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/iab/utils/Logger$LogLevel;->error:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 5
    new-instance v0, Lio/bidmachine/iab/utils/Logger$LogLevel;

    const-string v1, "none"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/iab/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/bidmachine/iab/utils/Logger$LogLevel;->none:Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 6
    invoke-static {}, Lio/bidmachine/iab/utils/Logger$LogLevel;->a()[Lio/bidmachine/iab/utils/Logger$LogLevel;

    move-result-object v0

    sput-object v0, Lio/bidmachine/iab/utils/Logger$LogLevel;->$VALUES:[Lio/bidmachine/iab/utils/Logger$LogLevel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lio/bidmachine/iab/utils/Logger$LogLevel;->a:I

    return-void
.end method

.method public static synthetic a()[Lio/bidmachine/iab/utils/Logger$LogLevel;
    .registers 5

    .line 1
    sget-object v0, Lio/bidmachine/iab/utils/Logger$LogLevel;->debug:Lio/bidmachine/iab/utils/Logger$LogLevel;

    sget-object v1, Lio/bidmachine/iab/utils/Logger$LogLevel;->info:Lio/bidmachine/iab/utils/Logger$LogLevel;

    sget-object v2, Lio/bidmachine/iab/utils/Logger$LogLevel;->warning:Lio/bidmachine/iab/utils/Logger$LogLevel;

    sget-object v3, Lio/bidmachine/iab/utils/Logger$LogLevel;->error:Lio/bidmachine/iab/utils/Logger$LogLevel;

    sget-object v4, Lio/bidmachine/iab/utils/Logger$LogLevel;->none:Lio/bidmachine/iab/utils/Logger$LogLevel;

    filled-new-array {v0, v1, v2, v3, v4}, [Lio/bidmachine/iab/utils/Logger$LogLevel;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/iab/utils/Logger$LogLevel;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    const-class v0, Lio/bidmachine/iab/utils/Logger$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/iab/utils/Logger$LogLevel;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/iab/utils/Logger$LogLevel;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/iab/utils/Logger$LogLevel;->$VALUES:[Lio/bidmachine/iab/utils/Logger$LogLevel;

    invoke-virtual {v0}, [Lio/bidmachine/iab/utils/Logger$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/iab/utils/Logger$LogLevel;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/iab/utils/Logger$LogLevel;->a:I

    return v0
.end method

###### Class io.bidmachine.iab.utils.Logger.a (io.bidmachine.iab.utils.Logger$a)
.class public abstract synthetic Lio/bidmachine/iab/utils/Logger$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/utils/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lio/bidmachine/iab/utils/Logger$LogLevel;->values()[Lio/bidmachine/iab/utils/Logger$LogLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/bidmachine/iab/utils/Logger$a;->a:[I

    :try_start_9
    sget-object v1, Lio/bidmachine/iab/utils/Logger$LogLevel;->debug:Lio/bidmachine/iab/utils/Logger$LogLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/bidmachine/iab/utils/Logger$a;->a:[I

    sget-object v1, Lio/bidmachine/iab/utils/Logger$LogLevel;->error:Lio/bidmachine/iab/utils/Logger$LogLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/bidmachine/iab/utils/Logger$a;->a:[I

    sget-object v1, Lio/bidmachine/iab/utils/Logger$LogLevel;->warning:Lio/bidmachine/iab/utils/Logger$LogLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lio/bidmachine/iab/utils/Logger$a;->a:[I

    sget-object v1, Lio/bidmachine/iab/utils/Logger$LogLevel;->info:Lio/bidmachine/iab/utils/Logger$LogLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method

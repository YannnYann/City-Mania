###### Class io.bidmachine.iab.utils.CommonLog (io.bidmachine.iab.utils.CommonLog)
.class public Lio/bidmachine/iab/utils/CommonLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/bidmachine/iab/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/iab/utils/Logger;

    const-string v1, "CommonLog"

    invoke-direct {v0, v1}, Lio/bidmachine/iab/utils/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/iab/utils/CommonLog;->a:Lio/bidmachine/iab/utils/Logger;

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
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
    sget-object v0, Lio/bidmachine/iab/utils/CommonLog;->a:Lio/bidmachine/iab/utils/Logger;

    invoke-virtual {v0, p0, p1, p2}, Lio/bidmachine/iab/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
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
    sget-object v0, Lio/bidmachine/iab/utils/CommonLog;->a:Lio/bidmachine/iab/utils/Logger;

    invoke-virtual {v0, p0, p1, p2}, Lio/bidmachine/iab/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
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
    sget-object v0, Lio/bidmachine/iab/utils/CommonLog;->a:Lio/bidmachine/iab/utils/Logger;

    invoke-virtual {v0, p0, p1}, Lio/bidmachine/iab/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

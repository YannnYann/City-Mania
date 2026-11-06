###### Class io.bidmachine.iab.IabError (io.bidmachine.iab.IabError)
.class public Lio/bidmachine/iab/IabError;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_NETWORK:Lio/bidmachine/iab/IabError;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/iab/IabError;

    const/4 v1, 0x1

    const-string v2, "No internet connection"

    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/IabError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/iab/IabError;->NO_NETWORK:Lio/bidmachine/iab/IabError;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "message"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/bidmachine/iab/IabError;->a:I

    .line 3
    iput-object p2, p0, Lio/bidmachine/iab/IabError;->b:Ljava/lang/String;

    return-void
.end method

.method public static badContent(Ljava/lang/String;)Lio/bidmachine/iab/IabError;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/iab/IabError;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lio/bidmachine/iab/IabError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static expired(Ljava/lang/String;)Lio/bidmachine/iab/IabError;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/iab/IabError;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lio/bidmachine/iab/IabError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static incorrectState(Ljava/lang/String;)Lio/bidmachine/iab/IabError;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/iab/IabError;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lio/bidmachine/iab/IabError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static internal(Ljava/lang/String;)Lio/bidmachine/iab/IabError;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/iab/IabError;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/bidmachine/iab/IabError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static noFIll(Ljava/lang/String;)Lio/bidmachine/iab/IabError;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/iab/IabError;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lio/bidmachine/iab/IabError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static noRequiredArguments(Ljava/lang/String;)Lio/bidmachine/iab/IabError;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/iab/IabError;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lio/bidmachine/iab/IabError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static placeholder(Ljava/lang/String;)Lio/bidmachine/iab/IabError;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/iab/IabError;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lio/bidmachine/iab/IabError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/iab/IabError;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "internalMessage",
            "throwable"
        }
    .end annotation

    if-eqz p1, :cond_32

    .line 1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 6
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/iab/IabError;->internal(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object p0
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_32

    return-object p0

    .line 13
    :catchall_32
    :cond_32
    invoke-static {p0}, Lio/bidmachine/iab/IabError;->internal(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/iab/IabError;->a:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/IabError;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Lio/bidmachine/iab/IabError;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/iab/IabError;->b:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(%s) %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

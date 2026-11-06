###### Class io.bidmachine.utils.BMError (io.bidmachine.utils.BMError)
.class public Lio/bidmachine/utils/BMError;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AlreadyShown:Lio/bidmachine/utils/BMError;

.field public static final BMServerNoFill:Lio/bidmachine/utils/BMError;

.field public static final Destroyed:Lio/bidmachine/utils/BMError;

.field public static final Expired:Lio/bidmachine/utils/BMError;

.field public static final InternalUnknownError:Lio/bidmachine/utils/BMError;

.field public static final NoConnection:Lio/bidmachine/utils/BMError;

.field public static final NoFill:Lio/bidmachine/utils/BMError;

.field public static final PlaceholderTimeout:Lio/bidmachine/utils/BMError;

.field public static final Request:Lio/bidmachine/utils/BMError;

.field public static final RequestDestroyed:Lio/bidmachine/utils/BMError;

.field public static final RequestExpired:Lio/bidmachine/utils/BMError;

.field public static final ResponseDuplicated:Lio/bidmachine/utils/BMError;

.field public static final ResponseExpired:Lio/bidmachine/utils/BMError;

.field public static final Server:Lio/bidmachine/utils/BMError;

.field public static final TimeoutError:Lio/bidmachine/utils/BMError;


# instance fields
.field public final code:I

.field public final errorExtension:Lio/bidmachine/utils/BMError;

.field public final message:Ljava/lang/String;

.field public final trackError:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x64

    const-string v2, "Can\'t connect to server"

    invoke-direct {v0, v1, v2}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->NoConnection:Lio/bidmachine/utils/BMError;

    .line 5
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x66

    const-string v2, "Timeout reached"

    invoke-direct {v0, v1, v2}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->TimeoutError:Lio/bidmachine/utils/BMError;

    .line 9
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x6e

    const-string v2, "Request contains bad syntax or cannot be fulfilled"

    invoke-direct {v0, v1, v2}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->Request:Lio/bidmachine/utils/BMError;

    .line 13
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x6d

    const-string v2, "Server failed to fulfil an apparently valid request"

    invoke-direct {v0, v1, v2}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->Server:Lio/bidmachine/utils/BMError;

    .line 17
    new-instance v0, Lio/bidmachine/utils/BMError;

    const-string v1, "AdRequest expired, load new one please"

    const/16 v2, 0x6b

    invoke-direct {v0, v2, v1}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->RequestExpired:Lio/bidmachine/utils/BMError;

    .line 21
    new-instance v0, Lio/bidmachine/utils/BMError;

    const-string v1, "AdRequest destroyed, create new one please"

    const/16 v3, 0x6a

    invoke-direct {v0, v3, v1}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->RequestDestroyed:Lio/bidmachine/utils/BMError;

    .line 25
    new-instance v0, Lio/bidmachine/utils/BMError;

    const-string v1, "AdResponse expired, load new one please"

    invoke-direct {v0, v2, v1}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->ResponseExpired:Lio/bidmachine/utils/BMError;

    .line 29
    new-instance v0, Lio/bidmachine/utils/BMError;

    const-string v1, "AdResponse already was shown"

    const/16 v4, 0x6f

    invoke-direct {v0, v4, v1}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->ResponseDuplicated:Lio/bidmachine/utils/BMError;

    .line 33
    new-instance v0, Lio/bidmachine/utils/BMError;

    const-string v1, "Ads was already shown, load new one please"

    invoke-direct {v0, v4, v1}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->AlreadyShown:Lio/bidmachine/utils/BMError;

    .line 37
    new-instance v0, Lio/bidmachine/utils/BMError;

    const-string v1, "Ads was expired, load new one please"

    invoke-direct {v0, v2, v1}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->Expired:Lio/bidmachine/utils/BMError;

    .line 41
    new-instance v0, Lio/bidmachine/utils/BMError;

    const-string v1, "Ads destroyed, load new one please"

    invoke-direct {v0, v3, v1}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->Destroyed:Lio/bidmachine/utils/BMError;

    .line 45
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0xc9

    const-string v2, "Placeholder timeout error"

    invoke-direct {v0, v1, v2}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->PlaceholderTimeout:Lio/bidmachine/utils/BMError;

    .line 49
    new-instance v0, Lio/bidmachine/utils/BMError;

    const-string v1, "No ads fill"

    const/16 v2, 0x67

    invoke-direct {v0, v2, v1}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->NoFill:Lio/bidmachine/utils/BMError;

    .line 53
    const-string v0, "Unknown error"

    invoke-static {v0}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    sput-object v0, Lio/bidmachine/utils/BMError;->InternalUnknownError:Lio/bidmachine/utils/BMError;

    .line 126
    new-instance v0, Lio/bidmachine/utils/BMError;

    const-string v1, "No bid"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lio/bidmachine/utils/BMError;->BMServerNoFill:Lio/bidmachine/utils/BMError;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, p1, p2, v0}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, p2, p3, v0}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;ZLio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZLio/bidmachine/utils/BMError;)V
    .registers 5

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lio/bidmachine/utils/BMError;->code:I

    .line 17
    const-string p1, "Unknown error"

    invoke-static {p2, p1}, Lio/bidmachine/core/Utils;->checkIfEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/utils/BMError;->message:Ljava/lang/String;

    .line 18
    iput-boolean p3, p0, Lio/bidmachine/utils/BMError;->trackError:Z

    .line 19
    iput-object p4, p0, Lio/bidmachine/utils/BMError;->errorExtension:Lio/bidmachine/utils/BMError;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/utils/BMError;ILjava/lang/String;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/utils/BMError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lio/bidmachine/utils/BMError;->isTrackError()Z

    move-result p1

    new-instance v2, Lio/bidmachine/utils/BMError;

    invoke-direct {v2, p2, p3}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    .line 4
    invoke-direct {p0, v0, v1, p1, v2}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;ZLio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/utils/BMError;Lio/bidmachine/utils/BMError;)V
    .registers 5

    .line 9
    invoke-virtual {p1}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v0

    .line 10
    invoke-virtual {p1}, Lio/bidmachine/utils/BMError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/bidmachine/utils/BMError;->isTrackError()Z

    move-result p1

    .line 12
    invoke-direct {p0, v0, v1, p1, p2}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;ZLio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public static adapter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0xc8

    invoke-direct {v0, v1, p0}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static adapterGetsParameter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/utils/BMError;->adapter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    return-object p0
.end method

.method public static adapterInitialization(Ljava/lang/String;)Lio/bidmachine/utils/BMError;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adapter SDK initialization error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/utils/BMError;->adapter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    return-object p0
.end method

.method public static adapterNotInitialized()Lio/bidmachine/utils/BMError;
    .registers 1

    .line 1
    const-string v0, "Adapter SDK not initialized"

    invoke-static {v0}, Lio/bidmachine/utils/BMError;->adapter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    return-object v0
.end method

.method public static handledException(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/utils/BMError;
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 4
    :goto_e
    new-instance p1, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x68

    const/4 v2, 0x1

    invoke-direct {p1, v1, p0, v2, v0}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;ZLio/bidmachine/utils/BMError;)V

    return-object p1
.end method

.method public static incorrectContent(Ljava/lang/String;)Lio/bidmachine/utils/BMError;
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x65

    invoke-direct {v0, v1, p0}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x6c

    invoke-direct {v0, v1, p0}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/utils/BMError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x67

    invoke-direct {v0, v1, p0}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/utils/BMError;
    .registers 5

    if-eqz p1, :cond_2c

    .line 1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 4
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_21
    new-instance p1, Lio/bidmachine/utils/BMError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_2c

    goto :goto_2d

    :catchall_2c
    :cond_2c
    const/4 p1, 0x0

    .line 11
    :goto_2d
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x6c

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2, p1}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;ZLio/bidmachine/utils/BMError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_24

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_24

    .line 5
    :cond_12
    check-cast p1, Lio/bidmachine/utils/BMError;

    .line 6
    iget v1, p0, Lio/bidmachine/utils/BMError;->code:I

    iget v2, p1, Lio/bidmachine/utils/BMError;->code:I

    if-eq v1, v2, :cond_1b

    return v0

    .line 9
    :cond_1b
    iget-object v0, p0, Lio/bidmachine/utils/BMError;->message:Ljava/lang/String;

    iget-object p1, p1, Lio/bidmachine/utils/BMError;->message:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_24
    :goto_24
    return v0
.end method

.method public getCode()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/utils/BMError;->code:I

    return v0
.end method

.method public getErrorExtension()Lio/bidmachine/utils/BMError;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/utils/BMError;->errorExtension:Lio/bidmachine/utils/BMError;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/utils/BMError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lio/bidmachine/utils/BMError;->code:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lio/bidmachine/utils/BMError;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isTrackError()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/utils/BMError;->trackError:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/utils/BMError;->errorExtension:Lio/bidmachine/utils/BMError;

    const-string v1, ") "

    const-string v2, "("

    if-eqz v0, :cond_43

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/utils/BMError;->code:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/utils/BMError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/utils/BMError;->errorExtension:Lio/bidmachine/utils/BMError;

    invoke-virtual {v1}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/utils/BMError;->errorExtension:Lio/bidmachine/utils/BMError;

    invoke-virtual {v1}, Lio/bidmachine/utils/BMError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/utils/BMError;->code:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/utils/BMError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.resources.MissingDraftException (info.flowersoft.theotown.resources.MissingDraftException)
.class public Linfo/flowersoft/theotown/resources/MissingDraftException;
.super Ljava/lang/Exception;
.source "MissingDraftException.java"


# instance fields
.field public final id:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/MissingDraftException;->id:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Linfo/flowersoft/theotown/resources/MissingDraftException;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 29
    instance-of v0, p1, Linfo/flowersoft/theotown/resources/MissingDraftException;

    if-eqz v0, :cond_1e

    .line 30
    check-cast p1, Linfo/flowersoft/theotown/resources/MissingDraftException;

    .line 31
    iget-object v0, p1, Linfo/flowersoft/theotown/resources/MissingDraftException;->id:Ljava/lang/String;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/MissingDraftException;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p1, p1, Linfo/flowersoft/theotown/resources/MissingDraftException;->type:Ljava/lang/String;

    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MissingDraftException;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1

    .line 33
    :cond_1e
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 24
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/MissingDraftException;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

###### Class com.google.common.collect.NullnessCasts (com.google.common.collect.NullnessCasts)
.class public final Lcom/google/common/collect/NullnessCasts;
.super Ljava/lang/Object;
.source "NullnessCasts.java"


# direct methods
.method public static uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 0
    return-object p0
.end method

.method public static unsafeNull()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

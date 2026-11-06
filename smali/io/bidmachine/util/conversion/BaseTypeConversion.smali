###### Class io.bidmachine.util.conversion.BaseTypeConversion (io.bidmachine.util.conversion.BaseTypeConversion)
.class public abstract Lio/bidmachine/util/conversion/BaseTypeConversion;
.super Ljava/lang/Object;
.source "BaseTypeConversion.kt"

# interfaces
.implements Lio/bidmachine/util/conversion/TypeConversion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/util/conversion/TypeConversion<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract to(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract to(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public toOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    if-nez p1, :cond_3

    goto :goto_9

    .line 7
    :cond_3
    invoke-virtual {p0, p1}, Lio/bidmachine/util/conversion/BaseTypeConversion;->to(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_a

    :goto_9
    return-object p2

    :cond_a
    return-object p1
.end method

.method public toOrDefault(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    if-nez p1, :cond_3

    goto :goto_9

    .line 12
    :cond_3
    invoke-virtual {p0, p1}, Lio/bidmachine/util/conversion/BaseTypeConversion;->to(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_a

    :goto_9
    return-object p2

    :cond_a
    return-object p1
.end method

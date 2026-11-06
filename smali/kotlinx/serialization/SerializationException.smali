###### Class kotlinx.serialization.SerializationException (kotlinx.serialization.SerializationException)
.class public Lkotlinx/serialization/SerializationException;
.super Ljava/lang/IllegalArgumentException;
.source "SerializationExceptions.kt"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

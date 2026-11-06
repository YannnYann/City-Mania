###### Class ads_mobile_sdk.yv3 (ads_mobile_sdk.yv3)
.class abstract Lads_mobile_sdk/yv3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static volatile a:I = 0x64


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/Object;Lads_mobile_sdk/ny;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lads_mobile_sdk/ny;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    :cond_0
    invoke-virtual {p2}, Lads_mobile_sdk/ny;->a()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_f

    .line 117
    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/yv3;->b(Ljava/lang/Object;Lads_mobile_sdk/ny;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_f
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;II)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;ILads_mobile_sdk/du;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;I",
            "Lads_mobile_sdk/du;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;ITT;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;Lads_mobile_sdk/py;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lads_mobile_sdk/py;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Lads_mobile_sdk/ny;)Z
.end method

.method public abstract b(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;Lads_mobile_sdk/py;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lads_mobile_sdk/py;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TB;)V"
        }
    .end annotation
.end method

.method public final b(Ljava/lang/Object;Lads_mobile_sdk/ny;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lads_mobile_sdk/ny;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-virtual {p2}, Lads_mobile_sdk/ny;->c()I

    move-result v0

    .line 75
    invoke-static {v0}, Lads_mobile_sdk/u24;->a(I)I

    move-result v1

    .line 76
    invoke-static {v0}, Lads_mobile_sdk/u24;->b(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6b

    if-eq v0, v2, :cond_63

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5b

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq v0, v3, :cond_33

    if-eq v0, v4, :cond_2a

    const/4 p3, 0x5

    if-ne v0, p3, :cond_25

    .line 110
    invoke-virtual {p2}, Lads_mobile_sdk/ny;->h()I

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lads_mobile_sdk/yv3;->a(Ljava/lang/Object;II)V

    return v2

    .line 109
    :cond_25
    invoke-static {}, Lads_mobile_sdk/np1;->e()Lads_mobile_sdk/np1$a;

    move-result-object p1

    throw p1

    :cond_2a
    if-eqz p3, :cond_2e

    const/4 p1, 0x0

    return p1

    .line 134
    :cond_2e
    invoke-static {}, Lads_mobile_sdk/np1;->b()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 135
    :cond_33
    invoke-virtual {p0}, Lads_mobile_sdk/yv3;->a()Ljava/lang/Object;

    move-result-object v0

    .line 136
    invoke-static {v1, v4}, Lads_mobile_sdk/u24;->a(II)I

    move-result v3

    add-int/2addr p3, v2

    .line 138
    sget v4, Lads_mobile_sdk/yv3;->a:I

    if-ge p3, v4, :cond_56

    .line 141
    invoke-direct {p0, v0, p2, p3}, Lads_mobile_sdk/yv3;->a(Ljava/lang/Object;Lads_mobile_sdk/ny;I)V

    .line 143
    invoke-virtual {p2}, Lads_mobile_sdk/ny;->c()I

    move-result p2

    if-ne v3, p2, :cond_51

    .line 146
    invoke-virtual {p0, v0}, Lads_mobile_sdk/yv3;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lads_mobile_sdk/yv3;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    return v2

    .line 147
    :cond_51
    invoke-static {}, Lads_mobile_sdk/np1;->b()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 148
    :cond_56
    invoke-static {}, Lads_mobile_sdk/np1;->i()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 149
    :cond_5b
    invoke-virtual {p2}, Lads_mobile_sdk/ny;->e()Lads_mobile_sdk/du;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lads_mobile_sdk/yv3;->a(Ljava/lang/Object;ILads_mobile_sdk/du;)V

    return v2

    .line 150
    :cond_63
    invoke-virtual {p2}, Lads_mobile_sdk/ny;->i()J

    move-result-wide p2

    invoke-virtual {p0, p1, v1, p2, p3}, Lads_mobile_sdk/yv3;->a(Ljava/lang/Object;IJ)V

    return v2

    .line 151
    :cond_6b
    invoke-virtual {p2}, Lads_mobile_sdk/ny;->l()J

    move-result-wide p2

    invoke-virtual {p0, p1, v1, p2, p3}, Lads_mobile_sdk/yv3;->b(Ljava/lang/Object;IJ)V

    return v2
.end method

.method public abstract c(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract d(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract e(Ljava/lang/Object;)V
.end method

.method public abstract f(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TT;"
        }
    .end annotation
.end method

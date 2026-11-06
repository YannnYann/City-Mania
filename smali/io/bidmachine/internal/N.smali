###### Class io.bidmachine.internal.N (io.bidmachine.internal.N)
.class public final Lio/bidmachine/internal/N;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/internal/N$a;
    }
.end annotation


# static fields
.field public static final a:Lio/bidmachine/internal/N;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/internal/N;

    invoke-direct {v0}, Lio/bidmachine/internal/N;-><init>()V

    sput-object v0, Lio/bidmachine/internal/N;->a:Lio/bidmachine/internal/N;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_3e

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v8, 0x6

    const/4 v9, 0x0

    .line 26
    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_24

    const/4 p1, 0x0

    return-object p1

    :cond_24
    const/4 v5, 0x2

    .line 30
    invoke-static {v5}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "toString(this, checkRadix(radix))"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x30

    invoke-static {v4, v2, v5}, Lkotlin/text/StringsKt__StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 32
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lio/bidmachine/internal/N$a;I)Z
    .registers 9

    const/16 v0, 0x10

    .line 2
    invoke-virtual {p1, v0}, Lio/bidmachine/internal/N$a;->c(I)I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lio/bidmachine/internal/N$a;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2f

    const/16 v1, 0xc

    .line 5
    invoke-virtual {p1, v1}, Lio/bidmachine/internal/N$a;->c(I)I

    move-result v1

    move v2, v3

    :goto_14
    if-ge v3, v1, :cond_2e

    .line 8
    invoke-virtual {p1}, Lio/bidmachine/internal/N$a;->a()Z

    move-result v4

    .line 9
    invoke-virtual {p1, v0}, Lio/bidmachine/internal/N$a;->c(I)I

    move-result v5

    if-eqz v4, :cond_25

    .line 11
    invoke-virtual {p1, v0}, Lio/bidmachine/internal/N$a;->c(I)I

    move-result v4

    goto :goto_26

    :cond_25
    move v4, v5

    :goto_26
    if-gt v5, p2, :cond_2b

    if-gt p2, v4, :cond_2b

    const/4 v2, 0x1

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_2e
    return v2

    :cond_2f
    move v0, v3

    :cond_30
    :goto_30
    if-ge v3, v1, :cond_3c

    .line 23
    invoke-virtual {p1}, Lio/bidmachine/internal/N$a;->a()Z

    move-result v2

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p2, :cond_30

    move v0, v2

    goto :goto_30

    :cond_3c
    return v0
.end method

.method public final a([ZZ)Z
    .registers 4

    .line 1
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/String;)Lio/bidmachine/internal/O;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_13

    .line 5
    :cond_a
    :try_start_a
    invoke-virtual {p0, p1}, Lio/bidmachine/internal/N;->c(Ljava/lang/String;)Lio/bidmachine/internal/O;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_f

    return-object p1

    :catchall_f
    move-exception p1

    .line 7
    invoke-static {p1}, Lio/bidmachine/core/Logger;->e(Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lio/bidmachine/internal/O;
    .registers 6

    const/16 v0, 0x2e

    .line 1
    invoke-static {p1, v0, p1}, Lkotlin/text/StringsKt__StringsKt;->substringBefore(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/internal/N;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_e
    new-instance v0, Lio/bidmachine/internal/N$a;

    invoke-direct {v0, p1}, Lio/bidmachine/internal/N$a;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x6

    .line 5
    invoke-virtual {v0, p1}, Lio/bidmachine/internal/N$a;->c(I)I

    const/16 v1, 0x24

    .line 6
    invoke-virtual {v0, v1}, Lio/bidmachine/internal/N$a;->d(I)V

    .line 7
    invoke-virtual {v0, v1}, Lio/bidmachine/internal/N$a;->d(I)V

    const/16 v1, 0xc

    .line 8
    invoke-virtual {v0, v1}, Lio/bidmachine/internal/N$a;->d(I)V

    .line 9
    invoke-virtual {v0, v1}, Lio/bidmachine/internal/N$a;->d(I)V

    .line 10
    invoke-virtual {v0, p1}, Lio/bidmachine/internal/N$a;->d(I)V

    .line 11
    invoke-virtual {v0, v1}, Lio/bidmachine/internal/N$a;->d(I)V

    .line 12
    invoke-virtual {v0, v1}, Lio/bidmachine/internal/N$a;->d(I)V

    .line 13
    invoke-virtual {v0, p1}, Lio/bidmachine/internal/N$a;->d(I)V

    const/4 p1, 0x1

    .line 14
    invoke-virtual {v0, p1}, Lio/bidmachine/internal/N$a;->d(I)V

    .line 15
    invoke-virtual {v0, p1}, Lio/bidmachine/internal/N$a;->d(I)V

    .line 16
    invoke-virtual {v0, v1}, Lio/bidmachine/internal/N$a;->d(I)V

    const/16 v2, 0x18

    .line 18
    invoke-virtual {v0, v2}, Lio/bidmachine/internal/N$a;->b(I)[Z

    move-result-object v3

    .line 19
    invoke-virtual {v0, v2}, Lio/bidmachine/internal/N$a;->d(I)V

    .line 21
    invoke-virtual {v0, p1}, Lio/bidmachine/internal/N$a;->d(I)V

    .line 22
    invoke-virtual {v0, v1}, Lio/bidmachine/internal/N$a;->d(I)V

    const/16 p1, 0x2e0

    .line 24
    invoke-virtual {p0, v0, p1}, Lio/bidmachine/internal/N;->a(Lio/bidmachine/internal/N$a;I)Z

    move-result p1

    .line 26
    new-instance v0, Lio/bidmachine/internal/O;

    .line 27
    invoke-virtual {p0, v3, p1}, Lio/bidmachine/internal/N;->a([ZZ)Z

    move-result p1

    .line 28
    invoke-direct {v0, p1}, Lio/bidmachine/internal/O;-><init>(Z)V

    return-object v0
.end method

###### Class io.bidmachine.internal.N.a (io.bidmachine.internal.N$a)
.class public final Lio/bidmachine/internal/N$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/internal/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "bits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/internal/N$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    .line 3
    iget v0, p0, Lio/bidmachine/internal/N$a;->b:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lio/bidmachine/internal/N$a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gt v0, p1, :cond_c

    return-void

    .line 4
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not enough bits"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Z
    .registers 5

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lio/bidmachine/internal/N$a;->a(I)V

    .line 2
    iget-object v1, p0, Lio/bidmachine/internal/N$a;->a:Ljava/lang/String;

    iget v2, p0, Lio/bidmachine/internal/N$a;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lio/bidmachine/internal/N$a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_15

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public final b(I)[Z
    .registers 5

    .line 1
    new-array v0, p1, [Z

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_e

    invoke-virtual {p0}, Lio/bidmachine/internal/N$a;->a()Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    return-object v0
.end method

.method public final c(I)I
    .registers 8

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/internal/N$a;->a(I)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_6
    if-ge v1, p1, :cond_21

    shl-int/lit8 v2, v2, 0x1

    .line 4
    iget-object v3, p0, Lio/bidmachine/internal/N$a;->a:Ljava/lang/String;

    iget v4, p0, Lio/bidmachine/internal/N$a;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lio/bidmachine/internal/N$a;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_1c

    const/4 v3, 0x1

    goto :goto_1d

    :cond_1c
    move v3, v0

    :goto_1d
    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_21
    return v2
.end method

.method public final d(I)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/internal/N$a;->a(I)V

    .line 2
    iget v0, p0, Lio/bidmachine/internal/N$a;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/bidmachine/internal/N$a;->b:I

    return-void
.end method

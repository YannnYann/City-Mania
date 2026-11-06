###### Class io.bidmachine.internal.v (io.bidmachine.internal.v)
.class public final Lio/bidmachine/internal/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lio/bidmachine/internal/v$a;

    invoke-direct {v0, p1}, Lio/bidmachine/internal/v$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/internal/v;->a:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final a([B)Ljava/lang/String;
    .registers 10

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/internal/v;->a()[B

    move-result-object v0

    array-length v0, v0

    const-string v1, ""

    if-nez v0, :cond_f

    goto :goto_12

    :cond_f
    array-length v0, p1

    if-nez v0, :cond_13

    :goto_12
    return-object v1

    .line 5
    :cond_13
    array-length v0, p1

    new-array v0, v0, [B

    .line 6
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_19
    if-ge v4, v2, :cond_31

    .line 7
    aget-byte v5, p1, v4

    invoke-virtual {p0}, Lio/bidmachine/internal/v;->a()[B

    move-result-object v6

    invoke-virtual {p0}, Lio/bidmachine/internal/v;->a()[B

    move-result-object v7

    array-length v7, v7

    rem-int v7, v4, v7

    aget-byte v6, v6, v7

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_31
    const/4 p1, 0x0

    const/4 v2, 0x1

    .line 9
    invoke-static {v0, v3, v2, p1}, Lio/bidmachine/util/UtilsKt;->encodeToStringBase64$default([BIILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3a

    return-object v1

    :cond_3a
    return-object p1
.end method

.method public final a()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/v;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

###### Class io.bidmachine.internal.v.a (io.bidmachine.internal.v$a)
.class public final Lio/bidmachine/internal/v$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/v;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/v$a;->a:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()[B
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/v$a;->a:Ljava/lang/String;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/internal/v$a;->a()[B

    move-result-object v0

    return-object v0
.end method

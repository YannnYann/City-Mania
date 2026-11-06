###### Class io.bidmachine.analytics.internal.a.f (io.bidmachine.analytics.internal.a.f)
.class public final Lio/bidmachine/analytics/internal/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/a/f$a;
    }
.end annotation


# static fields
.field public static final d:Lio/bidmachine/analytics/internal/a/f$a;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/a/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/a/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/analytics/internal/a/f;->d:Lio/bidmachine/analytics/internal/a/f$a;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/analytics/internal/a/f;->a:I

    iput p2, p0, Lio/bidmachine/analytics/internal/a/f;->b:I

    iput p3, p0, Lio/bidmachine/analytics/internal/a/f;->c:I

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/analytics/internal/a/f;)I
    .registers 4

    .line 1
    iget v0, p0, Lio/bidmachine/analytics/internal/a/f;->a:I

    iget v1, p1, Lio/bidmachine/analytics/internal/a/f;->a:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 5
    :cond_b
    iget v0, p0, Lio/bidmachine/analytics/internal/a/f;->b:I

    iget v1, p1, Lio/bidmachine/analytics/internal/a/f;->b:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    .line 9
    :cond_16
    iget v0, p0, Lio/bidmachine/analytics/internal/a/f;->c:I

    iget p1, p1, Lio/bidmachine/analytics/internal/a/f;->c:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/analytics/internal/a/f;

    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/a/f;->a(Lio/bidmachine/analytics/internal/a/f;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lio/bidmachine/analytics/internal/a/f;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/analytics/internal/a/f;

    iget v1, p0, Lio/bidmachine/analytics/internal/a/f;->a:I

    iget v3, p1, Lio/bidmachine/analytics/internal/a/f;->a:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lio/bidmachine/analytics/internal/a/f;->b:I

    iget v3, p1, Lio/bidmachine/analytics/internal/a/f;->b:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lio/bidmachine/analytics/internal/a/f;->c:I

    iget p1, p1, Lio/bidmachine/analytics/internal/a/f;->c:I

    if-eq v1, p1, :cond_21

    return v2

    :cond_21
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lio/bidmachine/analytics/internal/a/f;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/analytics/internal/a/f;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/analytics/internal/a/f;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lio/bidmachine/analytics/internal/a/f;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/analytics/internal/a/f;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/analytics/internal/a/f;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.a.f.a (io.bidmachine.analytics.internal.a.f$a)
.class public final Lio/bidmachine/analytics/internal/a/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/a/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lio/bidmachine/analytics/internal/a/f;
    .registers 10

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    .line 4
    :cond_8
    const-string v1, "."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    return-object v0

    .line 12
    :cond_1e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_27
    if-ge v3, v1, :cond_66

    const/4 v7, 0x6

    if-le v3, v7, :cond_2d

    goto :goto_66

    :cond_2d
    if-eqz v3, :cond_59

    const/4 v7, 0x1

    if-eq v3, v7, :cond_4e

    const/4 v7, 0x2

    if-eq v3, v7, :cond_43

    mul-int/lit8 v6, v6, 0x64

    .line 21
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_63

    .line 22
    :cond_43
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_63

    .line 23
    :cond_4e
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_63

    .line 24
    :cond_59
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 30
    :cond_66
    :goto_66
    new-instance p1, Lio/bidmachine/analytics/internal/a/f;

    invoke-direct {p1, v4, v5, v6}, Lio/bidmachine/analytics/internal/a/f;-><init>(III)V
    :try_end_6b
    .catchall {:try_start_1 .. :try_end_6b} :catchall_6c

    return-object p1

    :catchall_6c
    return-object v0
.end method

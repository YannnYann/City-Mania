###### Class io.bidmachine.util.version.Version (io.bidmachine.util.version.Version)
.class public final Lio/bidmachine/util/version/Version;
.super Ljava/lang/Object;
.source "Version.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/util/version/Version$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/bidmachine/util/version/Version;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/util/version/Version$Companion;


# instance fields
.field public final major:I

.field public final minor:I

.field public final patch:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/util/version/Version$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/util/version/Version$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/util/version/Version;->Companion:Lio/bidmachine/util/version/Version$Companion;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/util/version/Version;->major:I

    iput p2, p0, Lio/bidmachine/util/version/Version;->minor:I

    iput p3, p0, Lio/bidmachine/util/version/Version;->patch:I

    return-void
.end method


# virtual methods
.method public compareTo(Lio/bidmachine/util/version/Version;)I
    .registers 4

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget v0, p0, Lio/bidmachine/util/version/Version;->major:I

    iget v1, p1, Lio/bidmachine/util/version/Version;->major:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    .line 12
    :cond_10
    iget v0, p0, Lio/bidmachine/util/version/Version;->minor:I

    iget v1, p1, Lio/bidmachine/util/version/Version;->minor:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    if-eqz v0, :cond_1b

    return v0

    .line 16
    :cond_1b
    iget v0, p0, Lio/bidmachine/util/version/Version;->patch:I

    iget p1, p1, Lio/bidmachine/util/version/Version;->patch:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 3
    check-cast p1, Lio/bidmachine/util/version/Version;

    invoke-virtual {p0, p1}, Lio/bidmachine/util/version/Version;->compareTo(Lio/bidmachine/util/version/Version;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/util/version/Version;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/util/version/Version;

    iget v1, p0, Lio/bidmachine/util/version/Version;->major:I

    iget v3, p1, Lio/bidmachine/util/version/Version;->major:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lio/bidmachine/util/version/Version;->minor:I

    iget v3, p1, Lio/bidmachine/util/version/Version;->minor:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lio/bidmachine/util/version/Version;->patch:I

    iget p1, p1, Lio/bidmachine/util/version/Version;->patch:I

    if-eq v1, p1, :cond_21

    return v2

    :cond_21
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget v0, p0, Lio/bidmachine/util/version/Version;->major:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/util/version/Version;->minor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/util/version/Version;->patch:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lio/bidmachine/util/version/Version;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/util/version/Version;->minor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/util/version/Version;->patch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.version.Version.Companion (io.bidmachine.util.version.Version$Companion)
.class public final Lio/bidmachine/util/version/Version$Companion;
.super Ljava/lang/Object;
.source "Version.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/version/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVersion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Version.kt\nio/bidmachine/util/version/Version$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,73:1\n731#2,9:74\n37#3,2:83\n*S KotlinDebug\n*F\n+ 1 Version.kt\nio/bidmachine/util/version/Version$Companion\n*L\n36#1:74,9\n38#1:83,2\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/bidmachine/util/version/Version$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseVersion(Ljava/lang/String;)Lio/bidmachine/util/version/Version;
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_8c

    .line 32
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_8c

    .line 36
    :cond_b
    :try_start_b
    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "\\."

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    .line 74
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_45

    .line 732
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 733
    :goto_26
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 77
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 37
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_39

    goto :goto_26

    .line 78
    :cond_39
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    goto :goto_49

    .line 82
    :cond_45
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_49
    check-cast p1, Ljava/util/Collection;

    .line 38
    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 38
    check-cast p1, [Ljava/lang/String;

    .line 39
    array-length v1, p1

    if-nez v1, :cond_57

    return-object v0

    .line 46
    :cond_57
    array-length v1, p1

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_5c
    if-ge v4, v1, :cond_86

    if-eqz v4, :cond_7d

    if-eq v4, v3, :cond_76

    const/4 v8, 0x2

    if-eq v4, v8, :cond_6f

    mul-int/lit8 v7, v7, 0x64

    .line 61
    aget-object v8, p1, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_83

    .line 57
    :cond_6f
    aget-object v7, p1, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_83

    .line 53
    :cond_76
    aget-object v6, p1, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_83

    .line 49
    :cond_7d
    aget-object v5, p1, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :goto_83
    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    .line 65
    :cond_86
    new-instance p1, Lio/bidmachine/util/version/Version;

    invoke-direct {p1, v5, v6, v7}, Lio/bidmachine/util/version/Version;-><init>(III)V
    :try_end_8b
    .catchall {:try_start_b .. :try_end_8b} :catchall_8c

    return-object p1

    :catchall_8c
    :cond_8c
    :goto_8c
    return-object v0
.end method

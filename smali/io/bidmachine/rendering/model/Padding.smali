###### Class io.bidmachine.rendering.model.Padding (io.bidmachine.rendering.model.Padding)
.class public final Lio/bidmachine/rendering/model/Padding;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/Padding$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/rendering/model/Padding$Companion;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/rendering/model/Padding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/Padding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/model/Padding;->Companion:Lio/bidmachine/rendering/model/Padding$Companion;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/rendering/model/Padding;->a:F

    iput p2, p0, Lio/bidmachine/rendering/model/Padding;->b:F

    iput p3, p0, Lio/bidmachine/rendering/model/Padding;->c:F

    iput p4, p0, Lio/bidmachine/rendering/model/Padding;->d:F

    return-void
.end method


# virtual methods
.method public final getBottomDp()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/Padding;->d:F

    return v0
.end method

.method public final getLeftDp()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/Padding;->a:F

    return v0
.end method

.method public final getRightDp()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/Padding;->c:F

    return v0
.end method

.method public final getTopDp()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/Padding;->b:F

    return v0
.end method

.method public final isZero()Z
    .registers 3

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/Padding;->a:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1b

    iget v0, p0, Lio/bidmachine/rendering/model/Padding;->b:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1b

    iget v0, p0, Lio/bidmachine/rendering/model/Padding;->c:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1b

    iget v0, p0, Lio/bidmachine/rendering/model/Padding;->d:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    return v0

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

###### Class io.bidmachine.rendering.model.Padding.Companion (io.bidmachine.rendering.model.Padding$Companion)
.class public final Lio/bidmachine/rendering/model/Padding$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/Padding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/model/Padding$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Ljava/lang/String;)Lio/bidmachine/rendering/model/Padding;
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 1
    const-string v1, ","

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_14

    :cond_13
    move-object p1, v0

    :goto_14
    if-eqz p1, :cond_70

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1e

    goto :goto_70

    .line 6
    :cond_1e
    :try_start_1e
    new-instance v1, Lio/bidmachine/rendering/model/Padding;

    const/4 v2, 0x0

    .line 7
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x1

    .line 8
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x2

    .line 9
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v5, 0x3

    .line 10
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 11
    invoke-direct {v1, v2, v3, v4, p1}, Lio/bidmachine/rendering/model/Padding;-><init>(FFFF)V
    :try_end_6f
    .catchall {:try_start_1e .. :try_end_6f} :catchall_70

    return-object v1

    :catchall_70
    :cond_70
    :goto_70
    return-object v0
.end method

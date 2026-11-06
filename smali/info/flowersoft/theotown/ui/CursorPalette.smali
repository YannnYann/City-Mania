###### Class info.flowersoft.theotown.ui.CursorPalette (info.flowersoft.theotown.ui.CursorPalette)
.class public final Linfo/flowersoft/theotown/ui/CursorPalette;
.super Ljava/lang/Object;
.source "CursorManager.kt"


# instance fields
.field public final area:Lio/blueflower/stapel2d/drawing/Color;

.field public final highlight:Lio/blueflower/stapel2d/drawing/Color;

.field public final outline:Lio/blueflower/stapel2d/drawing/Color;

.field public final shadow:Lio/blueflower/stapel2d/drawing/Color;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 6

    const-string v0, "outline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "area"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "highlight"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shadow"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->outline:Lio/blueflower/stapel2d/drawing/Color;

    .line 37
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->area:Lio/blueflower/stapel2d/drawing/Color;

    .line 38
    iput-object p3, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->highlight:Lio/blueflower/stapel2d/drawing/Color;

    .line 39
    iput-object p4, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->shadow:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method

.method public static synthetic copy$default(Linfo/flowersoft/theotown/ui/CursorPalette;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;ILjava/lang/Object;)Linfo/flowersoft/theotown/ui/CursorPalette;
    .registers 7

    .line 0
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->outline:Lio/blueflower/stapel2d/drawing/Color;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->area:Lio/blueflower/stapel2d/drawing/Color;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->highlight:Lio/blueflower/stapel2d/drawing/Color;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->shadow:Lio/blueflower/stapel2d/drawing/Color;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/ui/CursorPalette;->copy(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Linfo/flowersoft/theotown/ui/CursorPalette;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->outline:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component2()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->area:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component3()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->highlight:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final component4()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->shadow:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final copy(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Linfo/flowersoft/theotown/ui/CursorPalette;
    .registers 6

    .line 0
    const-string v0, "outline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "area"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "highlight"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shadow"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Linfo/flowersoft/theotown/ui/CursorPalette;

    invoke-direct {v0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/ui/CursorPalette;-><init>(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Linfo/flowersoft/theotown/ui/CursorPalette;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Linfo/flowersoft/theotown/ui/CursorPalette;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->outline:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Linfo/flowersoft/theotown/ui/CursorPalette;->outline:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->area:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Linfo/flowersoft/theotown/ui/CursorPalette;->area:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->highlight:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v3, p1, Linfo/flowersoft/theotown/ui/CursorPalette;->highlight:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->shadow:Lio/blueflower/stapel2d/drawing/Color;

    iget-object p1, p1, Linfo/flowersoft/theotown/ui/CursorPalette;->shadow:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getArea()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 37
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->area:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final getHighlight()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 38
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->highlight:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final getOutline()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 36
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->outline:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final getShadow()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 39
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->shadow:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->outline:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->area:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->highlight:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->shadow:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CursorPalette(outline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->outline:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", area="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->area:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", highlight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->highlight:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shadow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/CursorPalette;->shadow:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

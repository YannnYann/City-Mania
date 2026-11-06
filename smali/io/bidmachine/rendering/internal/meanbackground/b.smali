###### Class io.bidmachine.rendering.internal.meanbackground.b (io.bidmachine.rendering.internal.meanbackground.b)
.class public final Lio/bidmachine/rendering/internal/meanbackground/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/meanbackground/b$b;,
        Lio/bidmachine/rendering/internal/meanbackground/b$a;,
        Lio/bidmachine/rendering/internal/meanbackground/b$c;
    }
.end annotation


# instance fields
.field public final a:Lio/bidmachine/rendering/internal/meanbackground/b$a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/b$a;)V
    .registers 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/b;->a:Lio/bidmachine/rendering/internal/meanbackground/b$a;

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/rendering/internal/meanbackground/b$b;Landroid/graphics/Rect;II)Landroid/graphics/Rect;
    .registers 7

    .line 157
    sget-object v0, Lio/bidmachine/rendering/internal/meanbackground/b$c;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_48

    const/4 v0, 0x2

    if-eq p1, v0, :cond_39

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x4

    if-ne p1, v0, :cond_24

    .line 179
    new-instance p1, Landroid/graphics/Rect;

    .line 180
    iget v0, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p3

    sub-int v1, v0, p4

    .line 181
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p3

    sub-int p3, p2, p4

    .line 182
    invoke-direct {p1, v1, p3, v0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 179
    :cond_24
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 183
    :cond_2a
    new-instance p1, Landroid/graphics/Rect;

    .line 184
    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p3

    .line 185
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p3

    sub-int p3, p2, p4

    add-int/2addr p4, v0

    .line 186
    invoke-direct {p1, v0, p3, p4, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 187
    :cond_39
    new-instance p1, Landroid/graphics/Rect;

    .line 188
    iget v0, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p3

    sub-int v1, v0, p4

    .line 189
    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p3

    add-int/2addr p4, p2

    .line 190
    invoke-direct {p1, v1, p2, v0, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 191
    :cond_48
    new-instance p1, Landroid/graphics/Rect;

    .line 192
    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p3

    .line 193
    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p3

    add-int p3, v0, p4

    add-int/2addr p4, p2

    .line 194
    invoke-direct {p1, v0, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method public final a(Landroid/graphics/Rect;)Ljava/util/List;
    .registers 9

    const-string v0, "contentBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 4
    :cond_10
    invoke-static {}, Lio/bidmachine/rendering/internal/meanbackground/b$b;->values()[Lio/bidmachine/rendering/internal/meanbackground/b$b;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_36

    aget-object v4, v0, v3

    .line 80
    iget-object v5, p0, Lio/bidmachine/rendering/internal/meanbackground/b;->a:Lio/bidmachine/rendering/internal/meanbackground/b$a;

    invoke-virtual {v5, p1}, Lio/bidmachine/rendering/internal/meanbackground/b$a;->a(Landroid/graphics/Rect;)I

    move-result v5

    .line 81
    iget-object v6, p0, Lio/bidmachine/rendering/internal/meanbackground/b;->a:Lio/bidmachine/rendering/internal/meanbackground/b$a;

    invoke-virtual {v6, p1}, Lio/bidmachine/rendering/internal/meanbackground/b$a;->b(Landroid/graphics/Rect;)I

    move-result v6

    .line 82
    invoke-virtual {p0, v4, p1, v5, v6}, Lio/bidmachine/rendering/internal/meanbackground/b;->a(Lio/bidmachine/rendering/internal/meanbackground/b$b;Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v4

    .line 156
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_36
    return-object v1
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.b.a (io.bidmachine.rendering.internal.meanbackground.b$a)
.class public final Lio/bidmachine/rendering/internal/meanbackground/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/meanbackground/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lio/bidmachine/rendering/internal/meanbackground/d;


# direct methods
.method public constructor <init>(IILio/bidmachine/rendering/internal/meanbackground/d;)V
    .registers 5

    const-string v0, "samplingStrategy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/bidmachine/rendering/internal/meanbackground/b$a;->a:I

    .line 3
    iput p2, p0, Lio/bidmachine/rendering/internal/meanbackground/b$a;->b:I

    .line 4
    iput-object p3, p0, Lio/bidmachine/rendering/internal/meanbackground/b$a;->c:Lio/bidmachine/rendering/internal/meanbackground/d;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;)I
    .registers 5

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/b$a;->c:Lio/bidmachine/rendering/internal/meanbackground/d;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget v2, p0, Lio/bidmachine/rendering/internal/meanbackground/b$a;->a:I

    invoke-interface {v0, v1, p1, v2}, Lio/bidmachine/rendering/internal/meanbackground/d;->a(III)I

    move-result p1

    return p1
.end method

.method public final b(Landroid/graphics/Rect;)I
    .registers 5

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/b$a;->c:Lio/bidmachine/rendering/internal/meanbackground/d;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget v2, p0, Lio/bidmachine/rendering/internal/meanbackground/b$a;->b:I

    invoke-interface {v0, v1, p1, v2}, Lio/bidmachine/rendering/internal/meanbackground/d;->a(III)I

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
    instance-of v1, p1, Lio/bidmachine/rendering/internal/meanbackground/b$a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/b$a;

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/b$a;->a:I

    iget v3, p1, Lio/bidmachine/rendering/internal/meanbackground/b$a;->a:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/b$a;->b:I

    iget v3, p1, Lio/bidmachine/rendering/internal/meanbackground/b$a;->b:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/b$a;->c:Lio/bidmachine/rendering/internal/meanbackground/d;

    iget-object p1, p1, Lio/bidmachine/rendering/internal/meanbackground/b$a;->c:Lio/bidmachine/rendering/internal/meanbackground/d;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget v0, p0, Lio/bidmachine/rendering/internal/meanbackground/b$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/b$a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/b$a;->c:Lio/bidmachine/rendering/internal/meanbackground/d;

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

    const-string v1, "Config(maxOffsetPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/b$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxSampleSizePx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/b$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", samplingStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/b$a;->c:Lio/bidmachine/rendering/internal/meanbackground/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.b.EnumC1195b (io.bidmachine.rendering.internal.meanbackground.b$b)
.class public final enum Lio/bidmachine/rendering/internal/meanbackground/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/meanbackground/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum a:Lio/bidmachine/rendering/internal/meanbackground/b$b;

.field public static final enum b:Lio/bidmachine/rendering/internal/meanbackground/b$b;

.field public static final enum c:Lio/bidmachine/rendering/internal/meanbackground/b$b;

.field public static final enum d:Lio/bidmachine/rendering/internal/meanbackground/b$b;

.field public static final synthetic e:[Lio/bidmachine/rendering/internal/meanbackground/b$b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/b$b;

    const-string v1, "TopLeft"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/meanbackground/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/internal/meanbackground/b$b;->a:Lio/bidmachine/rendering/internal/meanbackground/b$b;

    .line 3
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/b$b;

    const-string v1, "TopRight"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/meanbackground/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/internal/meanbackground/b$b;->b:Lio/bidmachine/rendering/internal/meanbackground/b$b;

    .line 5
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/b$b;

    const-string v1, "BottomLeft"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/meanbackground/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/internal/meanbackground/b$b;->c:Lio/bidmachine/rendering/internal/meanbackground/b$b;

    .line 7
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/b$b;

    const-string v1, "BottomRight"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/meanbackground/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/internal/meanbackground/b$b;->d:Lio/bidmachine/rendering/internal/meanbackground/b$b;

    invoke-static {}, Lio/bidmachine/rendering/internal/meanbackground/b$b;->a()[Lio/bidmachine/rendering/internal/meanbackground/b$b;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/internal/meanbackground/b$b;->e:[Lio/bidmachine/rendering/internal/meanbackground/b$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/rendering/internal/meanbackground/b$b;
    .registers 4

    .line 0
    sget-object v0, Lio/bidmachine/rendering/internal/meanbackground/b$b;->a:Lio/bidmachine/rendering/internal/meanbackground/b$b;

    sget-object v1, Lio/bidmachine/rendering/internal/meanbackground/b$b;->b:Lio/bidmachine/rendering/internal/meanbackground/b$b;

    sget-object v2, Lio/bidmachine/rendering/internal/meanbackground/b$b;->c:Lio/bidmachine/rendering/internal/meanbackground/b$b;

    sget-object v3, Lio/bidmachine/rendering/internal/meanbackground/b$b;->d:Lio/bidmachine/rendering/internal/meanbackground/b$b;

    filled-new-array {v0, v1, v2, v3}, [Lio/bidmachine/rendering/internal/meanbackground/b$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/internal/meanbackground/b$b;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/internal/meanbackground/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/internal/meanbackground/b$b;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/internal/meanbackground/b$b;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/internal/meanbackground/b$b;->e:[Lio/bidmachine/rendering/internal/meanbackground/b$b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/internal/meanbackground/b$b;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.b.c (io.bidmachine.rendering.internal.meanbackground.b$c)
.class public abstract synthetic Lio/bidmachine/rendering/internal/meanbackground/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/meanbackground/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "c"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lio/bidmachine/rendering/internal/meanbackground/b$b;->values()[Lio/bidmachine/rendering/internal/meanbackground/b$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/bidmachine/rendering/internal/meanbackground/b$b;->a:Lio/bidmachine/rendering/internal/meanbackground/b$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/bidmachine/rendering/internal/meanbackground/b$b;->b:Lio/bidmachine/rendering/internal/meanbackground/b$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/bidmachine/rendering/internal/meanbackground/b$b;->c:Lio/bidmachine/rendering/internal/meanbackground/b$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lio/bidmachine/rendering/internal/meanbackground/b$b;->d:Lio/bidmachine/rendering/internal/meanbackground/b$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    sput-object v0, Lio/bidmachine/rendering/internal/meanbackground/b$c;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class io.bidmachine.iab.vast.processor.DefaultMediaPicker (io.bidmachine.iab.vast.processor.DefaultMediaPicker)
.class public Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;
.super Lio/bidmachine/iab/vast/processor/VastMediaPicker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/vast/processor/DefaultMediaPicker$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/iab/vast/processor/VastMediaPicker<",
        "Lio/bidmachine/iab/vast/tags/MediaFileTag;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/vast/processor/VastMediaPicker;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v1, v0}, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;->a(II)V

    .line 4
    invoke-static {p1}, Lio/bidmachine/iab/utils/Utils;->isLandscapeOrientation(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;->b:Z

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;->a:I

    return p0
.end method


# virtual methods
.method public final a(Ljava/util/List;)Landroid/util/Pair;
    .registers 5

    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DefaultMediaPicker"

    const-string v2, "getBestMatch"

    invoke-static {v1, v2, v0}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_f
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 9
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/iab/vast/tags/MediaFileTag;

    invoke-virtual {p0, v2}, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;->a(Lio/bidmachine/iab/vast/tags/MediaFileTag;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 10
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/iab/vast/tags/MediaFileTag;

    invoke-virtual {p0, v2}, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;->b(Lio/bidmachine/iab/vast/tags/MediaFileTag;)Z

    move-result v2

    if-eqz v2, :cond_30

    return-object v1

    :cond_30
    if-nez v0, :cond_f

    move-object v0, v1

    goto :goto_f

    :cond_34
    return-object v0
.end method

.method public final a(II)V
    .registers 3

    mul-int/2addr p1, p2

    .line 2
    iput p1, p0, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;->a:I

    return-void
.end method

.method public a(Lio/bidmachine/iab/vast/tags/MediaFileTag;)Z
    .registers 3

    .line 3
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/MediaFileTag;->getType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 4
    const-string v0, "video/.*(?i)(mp4|3gpp|mp2t|webm|matroska)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lio/bidmachine/iab/vast/tags/MediaFileTag;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/MediaFileTag;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/MediaFileTag;->getHeight()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, p1, :cond_e

    move p1, v2

    goto :goto_f

    :cond_e
    move p1, v1

    .line 2
    :goto_f
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;->b:Z

    if-ne p1, v0, :cond_14

    return v2

    :cond_14
    return v1
.end method

.method public pickVideo(Ljava/util/List;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lio/bidmachine/iab/vast/tags/LinearCreativeTag;",
            "Lio/bidmachine/iab/vast/tags/MediaFileTag;",
            ">;>;)",
            "Landroid/util/Pair<",
            "Lio/bidmachine/iab/vast/tags/LinearCreativeTag;",
            "Lio/bidmachine/iab/vast/tags/MediaFileTag;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1
    :cond_4
    new-instance v1, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker$b;

    invoke-direct {v1, p0, v0}, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker$b;-><init>(Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;Lio/bidmachine/iab/vast/processor/DefaultMediaPicker$a;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;->a(Ljava/util/List;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.iab.vast.processor.DefaultMediaPicker.a (io.bidmachine.iab.vast.processor.DefaultMediaPicker$a)
.class public abstract synthetic Lio/bidmachine/iab/vast/processor/DefaultMediaPicker$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.iab.vast.processor.DefaultMediaPicker.b (io.bidmachine.iab.vast.processor.DefaultMediaPicker$b)
.class public Lio/bidmachine/iab/vast/processor/DefaultMediaPicker$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker$b;->a:Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;Lio/bidmachine/iab/vast/processor/DefaultMediaPicker$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker$b;-><init>(Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/Pair;Landroid/util/Pair;)I
    .registers 6

    .line 1
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/iab/vast/tags/MediaFileTag;

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/MediaFileTag;->getWidth()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/iab/vast/tags/MediaFileTag;

    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/MediaFileTag;->getHeight()I

    move-result p1

    mul-int/2addr v0, p1

    .line 2
    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/iab/vast/tags/MediaFileTag;

    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/MediaFileTag;->getWidth()I

    move-result p1

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lio/bidmachine/iab/vast/tags/MediaFileTag;

    invoke-virtual {p2}, Lio/bidmachine/iab/vast/tags/MediaFileTag;->getHeight()I

    move-result p2

    mul-int/2addr p1, p2

    .line 4
    iget-object p2, p0, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker$b;->a:Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;

    invoke-static {p2}, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;->a(Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;)I

    move-result p2

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker$b;->a:Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;

    invoke-static {v0}, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;->a(Lio/bidmachine/iab/vast/processor/DefaultMediaPicker;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DefaultMediaPicker"

    const-string v2, "AreaComparator: obj1 - %d, obj2 - %d"

    invoke-static {v1, v2, v0}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ge p2, p1, :cond_4f

    const/4 p1, -0x1

    return p1

    :cond_4f
    if-le p2, p1, :cond_53

    const/4 p1, 0x1

    return p1

    :cond_53
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/vast/processor/DefaultMediaPicker$b;->a(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p1

    return p1
.end method

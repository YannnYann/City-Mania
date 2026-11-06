###### Class info.flowersoft.theotown.draftloader.ImageHandleResolver (info.flowersoft.theotown.draftloader.ImageHandleResolver)
.class public interface abstract Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;
.super Ljava/lang/Object;
.source "ImageHandleResolver.java"


# static fields
.field public static final DEFAULT:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;

.field public static final TOP_LEFT:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver$1;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver$1;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;->DEFAULT:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;

    .line 32
    new-instance v0, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver$2;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver$2;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;->TOP_LEFT:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;

    return-void
.end method

.method public static forBuilding(II)Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;
    .registers 3

    if-ne p0, p1, :cond_5

    .line 49
    sget-object p0, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;->DEFAULT:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;

    return-object p0

    .line 51
    :cond_5
    new-instance v0, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver$3;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver$3;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public abstract getHandleX(III)I
.end method

.method public abstract getHandleY(III)I
.end method

###### Class info.flowersoft.theotown.draftloader.ImageHandleResolver.AnonymousClass1 (info.flowersoft.theotown.draftloader.ImageHandleResolver$1)
.class public Linfo/flowersoft/theotown/draftloader/ImageHandleResolver$1;
.super Ljava/lang/Object;
.source "ImageHandleResolver.java"

# interfaces
.implements Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandleX(III)I
    .registers 4

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public getHandleY(III)I
    .registers 4

    .line 25
    div-int/lit8 p1, p1, 0x20

    mul-int/lit8 p1, p1, 0x10

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    return p2
.end method

###### Class info.flowersoft.theotown.draftloader.ImageHandleResolver.AnonymousClass2 (info.flowersoft.theotown.draftloader.ImageHandleResolver$2)
.class public Linfo/flowersoft/theotown/draftloader/ImageHandleResolver$2;
.super Ljava/lang/Object;
.source "ImageHandleResolver.java"

# interfaces
.implements Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandleX(III)I
    .registers 4

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public getHandleY(III)I
    .registers 4

    .line 0
    const/4 p1, 0x0

    return p1
.end method

###### Class info.flowersoft.theotown.draftloader.ImageHandleResolver.AnonymousClass3 (info.flowersoft.theotown.draftloader.ImageHandleResolver$3)
.class public Linfo/flowersoft/theotown/draftloader/ImageHandleResolver$3;
.super Ljava/lang/Object;
.source "ImageHandleResolver.java"

# interfaces
.implements Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;->forBuilding(II)Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$height:I

.field public final synthetic val$width:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    iput p1, p0, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver$3;->val$width:I

    iput p2, p0, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver$3;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandleX(III)I
    .registers 4

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public getHandleY(III)I
    .registers 4

    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_c

    .line 60
    iget p1, p0, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver$3;->val$width:I

    mul-int/lit8 p1, p1, 0x10

    div-int/lit8 p1, p1, 0x2

    :goto_a
    sub-int/2addr p2, p1

    return p2

    .line 62
    :cond_c
    iget p1, p0, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver$3;->val$height:I

    mul-int/lit8 p1, p1, 0x10

    div-int/lit8 p1, p1, 0x2

    goto :goto_a
.end method

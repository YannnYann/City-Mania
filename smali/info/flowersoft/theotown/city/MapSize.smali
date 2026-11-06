###### Class info.flowersoft.theotown.city.MapSize (info.flowersoft.theotown.city.MapSize)
.class public abstract enum Linfo/flowersoft/theotown/city/MapSize;
.super Ljava/lang/Enum;
.source "MapSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linfo/flowersoft/theotown/city/MapSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Linfo/flowersoft/theotown/city/MapSize;

.field public static final enum BIG:Linfo/flowersoft/theotown/city/MapSize;

.field public static final enum BIG2:Linfo/flowersoft/theotown/city/MapSize;

.field public static final enum BIG3:Linfo/flowersoft/theotown/city/MapSize;

.field public static final enum BIG4:Linfo/flowersoft/theotown/city/MapSize;

.field public static final enum BIG8:Linfo/flowersoft/theotown/city/MapSize;

.field public static final enum MIDDLE:Linfo/flowersoft/theotown/city/MapSize;

.field public static final enum OTHER:Linfo/flowersoft/theotown/city/MapSize;

.field public static final enum SMALL:Linfo/flowersoft/theotown/city/MapSize;


# instance fields
.field public final height:I

.field public final localizationId:I

.field public final width:I


# direct methods
.method public static synthetic $values()[Linfo/flowersoft/theotown/city/MapSize;
    .registers 8

    .line 9
    sget-object v0, Linfo/flowersoft/theotown/city/MapSize;->SMALL:Linfo/flowersoft/theotown/city/MapSize;

    sget-object v1, Linfo/flowersoft/theotown/city/MapSize;->MIDDLE:Linfo/flowersoft/theotown/city/MapSize;

    sget-object v2, Linfo/flowersoft/theotown/city/MapSize;->BIG:Linfo/flowersoft/theotown/city/MapSize;

    sget-object v3, Linfo/flowersoft/theotown/city/MapSize;->BIG2:Linfo/flowersoft/theotown/city/MapSize;

    sget-object v4, Linfo/flowersoft/theotown/city/MapSize;->BIG3:Linfo/flowersoft/theotown/city/MapSize;

    sget-object v5, Linfo/flowersoft/theotown/city/MapSize;->BIG4:Linfo/flowersoft/theotown/city/MapSize;

    sget-object v6, Linfo/flowersoft/theotown/city/MapSize;->BIG8:Linfo/flowersoft/theotown/city/MapSize;

    sget-object v7, Linfo/flowersoft/theotown/city/MapSize;->OTHER:Linfo/flowersoft/theotown/city/MapSize;

    filled-new-array/range {v0 .. v7}, [Linfo/flowersoft/theotown/city/MapSize;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 12

    .line 10
    new-instance v0, Linfo/flowersoft/theotown/city/MapSize$1;

    const/16 v4, 0x20

    const/16 v5, 0x20

    const-string v1, "SMALL"

    const/4 v2, 0x0

    const/16 v3, 0x6cf

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/city/MapSize$1;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Linfo/flowersoft/theotown/city/MapSize;->SMALL:Linfo/flowersoft/theotown/city/MapSize;

    .line 16
    new-instance v1, Linfo/flowersoft/theotown/city/MapSize$2;

    const/16 v5, 0x40

    const/16 v6, 0x40

    const-string v2, "MIDDLE"

    const/4 v3, 0x1

    const/16 v4, 0x6c6

    invoke-direct/range {v1 .. v6}, Linfo/flowersoft/theotown/city/MapSize$2;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Linfo/flowersoft/theotown/city/MapSize;->MIDDLE:Linfo/flowersoft/theotown/city/MapSize;

    .line 22
    new-instance v2, Linfo/flowersoft/theotown/city/MapSize$3;

    const/16 v6, 0x80

    const/16 v7, 0x80

    const-string v3, "BIG"

    const/4 v4, 0x2

    const/16 v5, 0x963

    invoke-direct/range {v2 .. v7}, Linfo/flowersoft/theotown/city/MapSize$3;-><init>(Ljava/lang/String;IIII)V

    sput-object v2, Linfo/flowersoft/theotown/city/MapSize;->BIG:Linfo/flowersoft/theotown/city/MapSize;

    .line 28
    new-instance v3, Linfo/flowersoft/theotown/city/MapSize$4;

    const/16 v7, 0x100

    const/16 v8, 0x100

    const-string v4, "BIG2"

    const/4 v5, 0x3

    const/16 v6, 0xbff

    invoke-direct/range {v3 .. v8}, Linfo/flowersoft/theotown/city/MapSize$4;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Linfo/flowersoft/theotown/city/MapSize;->BIG2:Linfo/flowersoft/theotown/city/MapSize;

    .line 34
    new-instance v4, Linfo/flowersoft/theotown/city/MapSize$5;

    const/16 v8, 0x180

    const/16 v9, 0x180

    const-string v5, "BIG3"

    const/4 v6, 0x4

    const/16 v7, 0x301

    invoke-direct/range {v4 .. v9}, Linfo/flowersoft/theotown/city/MapSize$5;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Linfo/flowersoft/theotown/city/MapSize;->BIG3:Linfo/flowersoft/theotown/city/MapSize;

    .line 40
    new-instance v5, Linfo/flowersoft/theotown/city/MapSize$6;

    const/16 v9, 0x200

    const/16 v10, 0x200

    const-string v6, "BIG4"

    const/4 v7, 0x5

    const/16 v8, 0xcd3

    invoke-direct/range {v5 .. v10}, Linfo/flowersoft/theotown/city/MapSize$6;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Linfo/flowersoft/theotown/city/MapSize;->BIG4:Linfo/flowersoft/theotown/city/MapSize;

    .line 46
    new-instance v6, Linfo/flowersoft/theotown/city/MapSize$7;

    const/16 v10, 0x400

    const/16 v11, 0x400

    const-string v7, "BIG8"

    const/4 v8, 0x6

    const/16 v9, 0x631

    invoke-direct/range {v6 .. v11}, Linfo/flowersoft/theotown/city/MapSize$7;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Linfo/flowersoft/theotown/city/MapSize;->BIG8:Linfo/flowersoft/theotown/city/MapSize;

    .line 52
    new-instance v0, Linfo/flowersoft/theotown/city/MapSize$8;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "OTHER"

    const/4 v2, 0x7

    const/16 v3, 0x2cd

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/city/MapSize$8;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Linfo/flowersoft/theotown/city/MapSize;->OTHER:Linfo/flowersoft/theotown/city/MapSize;

    .line 9
    invoke-static {}, Linfo/flowersoft/theotown/city/MapSize;->$values()[Linfo/flowersoft/theotown/city/MapSize;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/city/MapSize;->$VALUES:[Linfo/flowersoft/theotown/city/MapSize;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Linfo/flowersoft/theotown/city/MapSize;->localizationId:I

    .line 67
    iput p4, p0, Linfo/flowersoft/theotown/city/MapSize;->width:I

    .line 68
    iput p5, p0, Linfo/flowersoft/theotown/city/MapSize;->height:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIILinfo/flowersoft/theotown/city/MapSize$1;)V
    .registers 7

    .line 9
    invoke-direct/range {p0 .. p5}, Linfo/flowersoft/theotown/city/MapSize;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method public static fromSize(II)Linfo/flowersoft/theotown/city/MapSize;
    .registers 5

    if-ne p0, p1, :cond_14

    .line 73
    invoke-static {}, Linfo/flowersoft/theotown/city/MapSize;->values()[Linfo/flowersoft/theotown/city/MapSize;

    move-result-object p1

    const/4 v0, 0x0

    .line 74
    :goto_7
    array-length v1, p1

    if-ge v0, v1, :cond_14

    .line 75
    aget-object v1, p1, v0

    iget v2, v1, Linfo/flowersoft/theotown/city/MapSize;->width:I

    if-ne v2, p0, :cond_11

    return-object v1

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 81
    :cond_14
    sget-object p0, Linfo/flowersoft/theotown/city/MapSize;->OTHER:Linfo/flowersoft/theotown/city/MapSize;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/city/MapSize;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 9
    const-class v0, Linfo/flowersoft/theotown/city/MapSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/city/MapSize;

    return-object p0
.end method

.method public static values()[Linfo/flowersoft/theotown/city/MapSize;
    .registers 1

    .line 9
    sget-object v0, Linfo/flowersoft/theotown/city/MapSize;->$VALUES:[Linfo/flowersoft/theotown/city/MapSize;

    invoke-virtual {v0}, [Linfo/flowersoft/theotown/city/MapSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/city/MapSize;

    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .line 93
    iget v0, p0, Linfo/flowersoft/theotown/city/MapSize;->height:I

    return v0
.end method

.method public abstract getIcon()I
.end method

.method public getLocalizationId()I
    .registers 2

    .line 85
    iget v0, p0, Linfo/flowersoft/theotown/city/MapSize;->localizationId:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 89
    iget v0, p0, Linfo/flowersoft/theotown/city/MapSize;->width:I

    return v0
.end method

###### Class info.flowersoft.theotown.city.MapSize.AnonymousClass1 (info.flowersoft.theotown.city.MapSize$1)
.class final enum Linfo/flowersoft/theotown/city/MapSize$1;
.super Linfo/flowersoft/theotown/city/MapSize;
.source "MapSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/MapSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 10
    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/city/MapSize;-><init>(Ljava/lang/String;IIIILinfo/flowersoft/theotown/city/MapSize$1;)V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 13
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_SMALL_MAP:I

    return v0
.end method

###### Class info.flowersoft.theotown.city.MapSize.AnonymousClass2 (info.flowersoft.theotown.city.MapSize$2)
.class final enum Linfo/flowersoft/theotown/city/MapSize$2;
.super Linfo/flowersoft/theotown/city/MapSize;
.source "MapSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/MapSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 16
    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/city/MapSize;-><init>(Ljava/lang/String;IIIILinfo/flowersoft/theotown/city/MapSize$1;)V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 19
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_MEDIUM_MAP:I

    return v0
.end method

###### Class info.flowersoft.theotown.city.MapSize.AnonymousClass3 (info.flowersoft.theotown.city.MapSize$3)
.class final enum Linfo/flowersoft/theotown/city/MapSize$3;
.super Linfo/flowersoft/theotown/city/MapSize;
.source "MapSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/MapSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 22
    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/city/MapSize;-><init>(Ljava/lang/String;IIIILinfo/flowersoft/theotown/city/MapSize$1;)V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 25
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_BIG_MAP:I

    return v0
.end method

###### Class info.flowersoft.theotown.city.MapSize.AnonymousClass4 (info.flowersoft.theotown.city.MapSize$4)
.class final enum Linfo/flowersoft/theotown/city/MapSize$4;
.super Linfo/flowersoft/theotown/city/MapSize;
.source "MapSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/MapSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 28
    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/city/MapSize;-><init>(Ljava/lang/String;IIIILinfo/flowersoft/theotown/city/MapSize$1;)V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 31
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_BIGBIG_MAP:I

    return v0
.end method

###### Class info.flowersoft.theotown.city.MapSize.AnonymousClass5 (info.flowersoft.theotown.city.MapSize$5)
.class final enum Linfo/flowersoft/theotown/city/MapSize$5;
.super Linfo/flowersoft/theotown/city/MapSize;
.source "MapSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/MapSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 34
    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/city/MapSize;-><init>(Ljava/lang/String;IIIILinfo/flowersoft/theotown/city/MapSize$1;)V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 37
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_BIGBIGEXTRA_MAP:I

    return v0
.end method

###### Class info.flowersoft.theotown.city.MapSize.AnonymousClass6 (info.flowersoft.theotown.city.MapSize$6)
.class final enum Linfo/flowersoft/theotown/city/MapSize$6;
.super Linfo/flowersoft/theotown/city/MapSize;
.source "MapSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/MapSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 40
    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/city/MapSize;-><init>(Ljava/lang/String;IIIILinfo/flowersoft/theotown/city/MapSize$1;)V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 43
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_BIGBIGBIG_MAP:I

    return v0
.end method

###### Class info.flowersoft.theotown.city.MapSize.AnonymousClass7 (info.flowersoft.theotown.city.MapSize$7)
.class final enum Linfo/flowersoft/theotown/city/MapSize$7;
.super Linfo/flowersoft/theotown/city/MapSize;
.source "MapSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/MapSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 46
    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/city/MapSize;-><init>(Ljava/lang/String;IIIILinfo/flowersoft/theotown/city/MapSize$1;)V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 49
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_PICKLE_COIN:I

    return v0
.end method

###### Class info.flowersoft.theotown.city.MapSize.AnonymousClass8 (info.flowersoft.theotown.city.MapSize$8)
.class final enum Linfo/flowersoft/theotown/city/MapSize$8;
.super Linfo/flowersoft/theotown/city/MapSize;
.source "MapSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/MapSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 52
    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/city/MapSize;-><init>(Ljava/lang/String;IIIILinfo/flowersoft/theotown/city/MapSize$1;)V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 55
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    return v0
.end method

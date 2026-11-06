###### Class info.flowersoft.theotown.resources.ShaderConfig (info.flowersoft.theotown.resources.ShaderConfig)
.class public abstract enum Linfo/flowersoft/theotown/resources/ShaderConfig;
.super Ljava/lang/Enum;
.source "ShaderConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linfo/flowersoft/theotown/resources/ShaderConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Linfo/flowersoft/theotown/resources/ShaderConfig;

.field public static final enum COLORFUL:Linfo/flowersoft/theotown/resources/ShaderConfig;

.field public static final enum DEFAULT:Linfo/flowersoft/theotown/resources/ShaderConfig;

.field public static final enum GRAY:Linfo/flowersoft/theotown/resources/ShaderConfig;

.field public static final enum OLD:Linfo/flowersoft/theotown/resources/ShaderConfig;

.field public static final enum UNCHANGED:Linfo/flowersoft/theotown/resources/ShaderConfig;

.field public static cachedValues:[Linfo/flowersoft/theotown/resources/ShaderConfig;


# instance fields
.field public id:I


# direct methods
.method public static synthetic $values()[Linfo/flowersoft/theotown/resources/ShaderConfig;
    .registers 5

    .line 9
    sget-object v0, Linfo/flowersoft/theotown/resources/ShaderConfig;->DEFAULT:Linfo/flowersoft/theotown/resources/ShaderConfig;

    sget-object v1, Linfo/flowersoft/theotown/resources/ShaderConfig;->UNCHANGED:Linfo/flowersoft/theotown/resources/ShaderConfig;

    sget-object v2, Linfo/flowersoft/theotown/resources/ShaderConfig;->GRAY:Linfo/flowersoft/theotown/resources/ShaderConfig;

    sget-object v3, Linfo/flowersoft/theotown/resources/ShaderConfig;->COLORFUL:Linfo/flowersoft/theotown/resources/ShaderConfig;

    sget-object v4, Linfo/flowersoft/theotown/resources/ShaderConfig;->OLD:Linfo/flowersoft/theotown/resources/ShaderConfig;

    filled-new-array {v0, v1, v2, v3, v4}, [Linfo/flowersoft/theotown/resources/ShaderConfig;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 10
    new-instance v0, Linfo/flowersoft/theotown/resources/ShaderConfig$1;

    const/4 v1, 0x0

    const/16 v2, 0x63a

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/resources/ShaderConfig$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Linfo/flowersoft/theotown/resources/ShaderConfig;->DEFAULT:Linfo/flowersoft/theotown/resources/ShaderConfig;

    .line 16
    new-instance v0, Linfo/flowersoft/theotown/resources/ShaderConfig$2;

    const/4 v1, 0x1

    const/16 v2, 0x32

    const-string v3, "UNCHANGED"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/resources/ShaderConfig$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Linfo/flowersoft/theotown/resources/ShaderConfig;->UNCHANGED:Linfo/flowersoft/theotown/resources/ShaderConfig;

    .line 22
    new-instance v0, Linfo/flowersoft/theotown/resources/ShaderConfig$3;

    const/4 v1, 0x2

    const/16 v2, 0xbd1

    const-string v3, "GRAY"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/resources/ShaderConfig$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Linfo/flowersoft/theotown/resources/ShaderConfig;->GRAY:Linfo/flowersoft/theotown/resources/ShaderConfig;

    .line 28
    new-instance v0, Linfo/flowersoft/theotown/resources/ShaderConfig$4;

    const/4 v1, 0x3

    const/16 v2, 0x5fe

    const-string v3, "COLORFUL"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/resources/ShaderConfig$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Linfo/flowersoft/theotown/resources/ShaderConfig;->COLORFUL:Linfo/flowersoft/theotown/resources/ShaderConfig;

    .line 34
    new-instance v0, Linfo/flowersoft/theotown/resources/ShaderConfig$5;

    const/4 v1, 0x4

    const/16 v2, 0x4d8

    const-string v3, "OLD"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/resources/ShaderConfig$5;-><init>(Ljava/lang/String;II)V

    sput-object v0, Linfo/flowersoft/theotown/resources/ShaderConfig;->OLD:Linfo/flowersoft/theotown/resources/ShaderConfig;

    .line 9
    invoke-static {}, Linfo/flowersoft/theotown/resources/ShaderConfig;->$values()[Linfo/flowersoft/theotown/resources/ShaderConfig;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/resources/ShaderConfig;->$VALUES:[Linfo/flowersoft/theotown/resources/ShaderConfig;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Linfo/flowersoft/theotown/resources/ShaderConfig;->id:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILinfo/flowersoft/theotown/resources/ShaderConfig$1;)V
    .registers 5

    .line 9
    invoke-direct {p0, p1, p2, p3}, Linfo/flowersoft/theotown/resources/ShaderConfig;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static cachedValues()[Linfo/flowersoft/theotown/resources/ShaderConfig;
    .registers 1

    .line 60
    sget-object v0, Linfo/flowersoft/theotown/resources/ShaderConfig;->cachedValues:[Linfo/flowersoft/theotown/resources/ShaderConfig;

    if-nez v0, :cond_a

    .line 61
    invoke-static {}, Linfo/flowersoft/theotown/resources/ShaderConfig;->values()[Linfo/flowersoft/theotown/resources/ShaderConfig;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/resources/ShaderConfig;->cachedValues:[Linfo/flowersoft/theotown/resources/ShaderConfig;

    .line 63
    :cond_a
    sget-object v0, Linfo/flowersoft/theotown/resources/ShaderConfig;->cachedValues:[Linfo/flowersoft/theotown/resources/ShaderConfig;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/resources/ShaderConfig;
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
    const-class v0, Linfo/flowersoft/theotown/resources/ShaderConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/resources/ShaderConfig;

    return-object p0
.end method

.method public static values()[Linfo/flowersoft/theotown/resources/ShaderConfig;
    .registers 1

    .line 9
    sget-object v0, Linfo/flowersoft/theotown/resources/ShaderConfig;->$VALUES:[Linfo/flowersoft/theotown/resources/ShaderConfig;

    invoke-virtual {v0}, [Linfo/flowersoft/theotown/resources/ShaderConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/resources/ShaderConfig;

    return-object v0
.end method


# virtual methods
.method public abstract apply(Lio/blueflower/stapel2d/drawing/Shader;)V
.end method

.method public getNameId()I
    .registers 2

    .line 50
    iget v0, p0, Linfo/flowersoft/theotown/resources/ShaderConfig;->id:I

    return v0
.end method

.method public set(Lio/blueflower/stapel2d/drawing/Shader;F)V
    .registers 4

    .line 56
    const-string v0, "saturation"

    invoke-virtual {p1, v0, p2}, Lio/blueflower/stapel2d/drawing/Shader;->setUniform(Ljava/lang/String;F)V

    return-void
.end method

###### Class info.flowersoft.theotown.resources.ShaderConfig.AnonymousClass1 (info.flowersoft.theotown.resources.ShaderConfig$1)
.class public final enum Linfo/flowersoft/theotown/resources/ShaderConfig$1;
.super Linfo/flowersoft/theotown/resources/ShaderConfig;
.source "ShaderConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/ShaderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, p2, p3, v0}, Linfo/flowersoft/theotown/resources/ShaderConfig;-><init>(Ljava/lang/String;IILinfo/flowersoft/theotown/resources/ShaderConfig$1;)V

    return-void
.end method


# virtual methods
.method public apply(Lio/blueflower/stapel2d/drawing/Shader;)V
    .registers 3

    const v0, 0x3f933333    # 1.15f

    .line 13
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/resources/ShaderConfig;->set(Lio/blueflower/stapel2d/drawing/Shader;F)V

    return-void
.end method

###### Class info.flowersoft.theotown.resources.ShaderConfig.AnonymousClass2 (info.flowersoft.theotown.resources.ShaderConfig$2)
.class public final enum Linfo/flowersoft/theotown/resources/ShaderConfig$2;
.super Linfo/flowersoft/theotown/resources/ShaderConfig;
.source "ShaderConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/ShaderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, p3, v0}, Linfo/flowersoft/theotown/resources/ShaderConfig;-><init>(Ljava/lang/String;IILinfo/flowersoft/theotown/resources/ShaderConfig$1;)V

    return-void
.end method


# virtual methods
.method public apply(Lio/blueflower/stapel2d/drawing/Shader;)V
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/resources/ShaderConfig;->set(Lio/blueflower/stapel2d/drawing/Shader;F)V

    return-void
.end method

###### Class info.flowersoft.theotown.resources.ShaderConfig.AnonymousClass3 (info.flowersoft.theotown.resources.ShaderConfig$3)
.class public final enum Linfo/flowersoft/theotown/resources/ShaderConfig$3;
.super Linfo/flowersoft/theotown/resources/ShaderConfig;
.source "ShaderConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/ShaderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, p3, v0}, Linfo/flowersoft/theotown/resources/ShaderConfig;-><init>(Ljava/lang/String;IILinfo/flowersoft/theotown/resources/ShaderConfig$1;)V

    return-void
.end method


# virtual methods
.method public apply(Lio/blueflower/stapel2d/drawing/Shader;)V
    .registers 3

    const/high16 v0, 0x3f000000    # 0.5f

    .line 25
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/resources/ShaderConfig;->set(Lio/blueflower/stapel2d/drawing/Shader;F)V

    return-void
.end method

###### Class info.flowersoft.theotown.resources.ShaderConfig.AnonymousClass4 (info.flowersoft.theotown.resources.ShaderConfig$4)
.class public final enum Linfo/flowersoft/theotown/resources/ShaderConfig$4;
.super Linfo/flowersoft/theotown/resources/ShaderConfig;
.source "ShaderConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/ShaderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3, v0}, Linfo/flowersoft/theotown/resources/ShaderConfig;-><init>(Ljava/lang/String;IILinfo/flowersoft/theotown/resources/ShaderConfig$1;)V

    return-void
.end method


# virtual methods
.method public apply(Lio/blueflower/stapel2d/drawing/Shader;)V
    .registers 3

    const v0, 0x3fa66666    # 1.3f

    .line 31
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/resources/ShaderConfig;->set(Lio/blueflower/stapel2d/drawing/Shader;F)V

    return-void
.end method

###### Class info.flowersoft.theotown.resources.ShaderConfig.AnonymousClass5 (info.flowersoft.theotown.resources.ShaderConfig$5)
.class public final enum Linfo/flowersoft/theotown/resources/ShaderConfig$5;
.super Linfo/flowersoft/theotown/resources/ShaderConfig;
.source "ShaderConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/ShaderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3, v0}, Linfo/flowersoft/theotown/resources/ShaderConfig;-><init>(Ljava/lang/String;IILinfo/flowersoft/theotown/resources/ShaderConfig$1;)V

    return-void
.end method


# virtual methods
.method public apply(Lio/blueflower/stapel2d/drawing/Shader;)V
    .registers 3

    const/high16 v0, 0x40000000    # 2.0f

    .line 37
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/resources/ShaderConfig;->set(Lio/blueflower/stapel2d/drawing/Shader;F)V

    return-void
.end method

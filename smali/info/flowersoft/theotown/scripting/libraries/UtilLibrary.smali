###### Class info.flowersoft.theotown.scripting.libraries.UtilLibrary (info.flowersoft.theotown.scripting.libraries.UtilLibrary)
.class public Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;
.super Linfo/flowersoft/theotown/scripting/ManagedLibrary;
.source "UtilLibrary.java"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;


# instance fields
.field public tempColor:Lio/blueflower/stapel2d/drawing/Color;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    const-string v0, "libs/Util.lua"

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0}, Lio/blueflower/stapel2d/drawing/Color;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;->tempColor:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 1

    .line 22
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;->tempColor:Lio/blueflower/stapel2d/drawing/Color;

    return-object p0
.end method


# virtual methods
.method public inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
    .registers 4

    .line 32
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$1;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$1;-><init>(Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;)V

    const-string p3, "urlEncode"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 44
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$2;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$2;-><init>(Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;)V

    const-string p3, "urlDecode"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 56
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$3;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$3;-><init>(Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;)V

    const-string p3, "hex2color"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 68
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$4;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$4;-><init>(Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;)V

    const-string p3, "color2hex"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 79
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$5;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$5;-><init>(Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;)V

    const-string p3, "rgb2hsv"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 91
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$6;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$6;-><init>(Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;)V

    const-string p3, "hsv2rgb"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 106
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$7;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$7;-><init>(Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;)V

    const-string p3, "base64Encode"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 113
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$8;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$8;-><init>(Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;)V

    const-string p3, "sha256"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.UtilLibrary.AnonymousClass1 (info.flowersoft.theotown.scripting.libraries.UtilLibrary$1)
.class public Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$1;
.super Lvm2/lib/OneArgFunction;
.source "UtilLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 32
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 36
    :try_start_0
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "+"

    const-string v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_16} :catch_17

    return-object p1

    :catch_17
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.UtilLibrary.AnonymousClass2 (info.flowersoft.theotown.scripting.libraries.UtilLibrary$2)
.class public Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$2;
.super Lvm2/lib/OneArgFunction;
.source "UtilLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 44
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 48
    :try_start_0
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.UtilLibrary.AnonymousClass3 (info.flowersoft.theotown.scripting.libraries.UtilLibrary$3)
.class public Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$3;
.super Lvm2/lib/VarArgFunction;
.source "UtilLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 56
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    .line 59
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 61
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    .line 62
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v1

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v1

    .line 63
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    .line 60
    invoke-static {v0, v1, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 64
    :cond_32
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.UtilLibrary.AnonymousClass4 (info.flowersoft.theotown.scripting.libraries.UtilLibrary$4)
.class public Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$4;
.super Lvm2/lib/ThreeArgFunction;
.source "UtilLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 68
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 71
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 72
    invoke-virtual {p2, p1}, Lvm2/LuaValue;->optint(I)I

    move-result p2

    .line 73
    invoke-virtual {p3, p2}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 74
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, p1, p2, p3, v1}, Lio/blueflower/stapel2d/drawing/Color;->setTo(IIII)Lio/blueflower/stapel2d/drawing/Color;

    .line 75
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->toHexRGB()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.UtilLibrary.AnonymousClass5 (info.flowersoft.theotown.scripting.libraries.UtilLibrary$5)
.class public Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$5;
.super Lvm2/lib/VarArgFunction;
.source "UtilLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 9

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-static {v1, v3, p1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->parseColor(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getHue()F

    move-result v1

    const v3, 0x42652ee0

    mul-float/2addr v1, v3

    const/high16 v3, 0x43b40000    # 360.0f

    add-float/2addr v1, v3

    rem-float/2addr v1, v3

    float-to-double v5, v1

    invoke-static {v5, v6}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v1

    .line 85
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getSaturation()F

    move-result v3

    float-to-double v5, v3

    invoke-static {v5, v6}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v3

    .line 86
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getValue()F

    move-result p1

    float-to-double v5, p1

    invoke-static {v5, v6}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    new-array v4, v4, [Lvm2/LuaValue;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v3, v4, v0

    aput-object p1, v4, v2

    .line 83
    invoke-static {v4}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.UtilLibrary.AnonymousClass6 (info.flowersoft.theotown.scripting.libraries.UtilLibrary$6)
.class public Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$6;
.super Lvm2/lib/VarArgFunction;
.source "UtilLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 91
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 9

    const/4 v0, 0x1

    .line 95
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkdouble(I)D

    move-result-wide v1

    const-wide v3, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double/2addr v1, v3

    double-to-float v1, v1

    const/4 v2, 0x2

    .line 96
    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkdouble(I)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v4, 0x3

    .line 97
    invoke-virtual {p1, v4}, Lvm2/Varargs;->checkdouble(I)D

    move-result-wide v5

    double-to-float p1, v5

    .line 94
    invoke-static {v1, v3, p1}, Lio/blueflower/stapel2d/drawing/Color;->fromHSV(FFF)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v1

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v1

    .line 100
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v3

    invoke-static {v3}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v3

    .line 101
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    new-array v4, v4, [Lvm2/LuaValue;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v3, v4, v0

    aput-object p1, v4, v2

    .line 98
    invoke-static {v4}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.UtilLibrary.AnonymousClass7 (info.flowersoft.theotown.scripting.libraries.UtilLibrary$7)
.class public Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$7;
.super Lvm2/lib/OneArgFunction;
.source "UtilLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 106
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 109
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Base64Coder;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.UtilLibrary.AnonymousClass8 (info.flowersoft.theotown.scripting.libraries.UtilLibrary$8)
.class public Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$8;
.super Lvm2/lib/OneArgFunction;
.source "UtilLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 113
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 116
    invoke-virtual {p1}, Lvm2/LuaValue;->checkstring()Lvm2/LuaString;

    move-result-object p1

    .line 117
    iget-object v0, p1, Lvm2/LuaString;->m_bytes:[B

    iget v1, p1, Lvm2/LuaString;->m_offset:I

    iget p1, p1, Lvm2/LuaString;->m_length:I

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/util/Hashing;->sha([BII)[B

    move-result-object p1

    .line 119
    invoke-static {p1}, Linfo/flowersoft/theotown/util/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

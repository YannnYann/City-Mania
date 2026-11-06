###### Class info.flowersoft.theotown.scripting.libraries.PixmapLibrary (info.flowersoft.theotown.scripting.libraries.PixmapLibrary)
.class public final Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;
.super Linfo/flowersoft/theotown/scripting/ManagedLibrary;
.source "PixmapLibrary.kt"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPixmapLibrary.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PixmapLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/PixmapLibrary\n+ 2 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,265:1\n41#2,4:266\n31#2,4:270\n41#2,4:274\n61#2,5:278\n31#2,4:284\n31#2,4:288\n61#2,5:292\n51#2,4:297\n31#2,4:301\n31#2,4:305\n31#2,4:309\n1#3:283\n*S KotlinDebug\n*F\n+ 1 PixmapLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/PixmapLibrary\n*L\n42#1:266,4\n48#1:270,4\n74#1:274,4\n97#1:278,5\n152#1:284,4\n153#1:288,4\n167#1:292,5\n175#1:297,4\n245#1:301,4\n250#1:305,4\n255#1:309,4\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    const-string v0, "libs/Pixmap.lua"

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$loadPixmap(Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;[BLcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 3

    .line 32
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->loadPixmap([BLcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$resolveFrame(Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;Lvm2/LuaValue;)I
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->resolveFrame(Lvm2/LuaValue;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$wrapPixmap(Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;Lcom/badlogic/gdx/graphics/Pixmap;)Lvm2/LuaUserdata;
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->wrapPixmap(Lcom/badlogic/gdx/graphics/Pixmap;)Lvm2/LuaUserdata;

    move-result-object p0

    return-object p0
.end method

.method private final resolveFrame(Lvm2/LuaValue;)I
    .registers 4

    .line 127
    invoke-virtual {p1}, Lvm2/LuaValue;->istable()Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->origKey:Lvm2/LuaValue;

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->isnil()Z

    move-result v1

    if-nez v1, :cond_34

    .line 129
    invoke-virtual {p1, v0}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    .line 130
    const-class v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 128
    invoke-static {p1, v0}, Lvm2/lib/jse/CoerceLuaToJava;->coerce(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type info.flowersoft.theotown.draft.AnimationDraft"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 132
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v0, p1

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    .line 133
    aget p1, p1, v0

    return p1

    .line 132
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Draft has no frames"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_34
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    return p1
.end method


# virtual methods
.method public final getPixmapTable(Lcom/badlogic/gdx/graphics/Pixmap;)Lvm2/LuaTable;
    .registers 5

    .line 150
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    .line 31
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$1;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$1;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 152
    const-string v2, "getWidth"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 31
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$2;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$2;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 153
    const-string v2, "getHeight"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 154
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$3;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$3;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    const-string v2, "getSize"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 61
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$3;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$3;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 167
    const-string v2, "setPixel"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 51
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$4;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$4;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 175
    const-string v2, "getPixel"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 181
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$6;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$6;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    const-string v2, "draw"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 218
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$7;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$7;-><init>(Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;Lcom/badlogic/gdx/graphics/Pixmap;)V

    const-string v2, "upload"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 31
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$5;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$5;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 245
    const-string v2, "premultiplyAlpha"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 31
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$6;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$6;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 250
    const-string v2, "reversePremultiplyAlpha"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 31
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$7;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$7;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 255
    const-string p1, "dispose"

    invoke-virtual {v0, p1, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 260
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
    .registers 5

    const-string v0, "lib"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privateLib"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "globals"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$$inlined$luaFun$1;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$$inlined$luaFun$1;-><init>(Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;)V

    .line 42
    const-string p3, "create"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 31
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$$inlined$luaFun$2;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$$inlined$luaFun$2;-><init>(Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;)V

    .line 48
    const-string p3, "load"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 41
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$$inlined$luaFun$3;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$$inlined$luaFun$3;-><init>(Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;)V

    .line 74
    const-string p3, "download"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 61
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$$inlined$luaFun$4;

    invoke-direct {p2}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$$inlined$luaFun$4;-><init>()V

    .line 97
    const-string p3, "packColor"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 106
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$5;

    invoke-direct {p2}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$5;-><init>()V

    const-string p3, "unpackColor"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-void
.end method

.method public final loadPixmap([BLcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 7

    .line 38
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    array-length v2, p1

    invoke-static {p2}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->toGdx2DPixmapFormat(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I

    move-result p2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, v2, p2}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>([BIII)V

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;)V

    return-object v0
.end method

.method public final wrapPixmap(Lcom/badlogic/gdx/graphics/Pixmap;)Lvm2/LuaUserdata;
    .registers 5

    .line 140
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 141
    invoke-static {p1}, Lvm2/LuaValue;->userdataOf(Ljava/lang/Object;)Lvm2/LuaUserdata;

    move-result-object v0

    .line 142
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v1

    .line 143
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->getPixmapTable(Lcom/badlogic/gdx/graphics/Pixmap;)Lvm2/LuaTable;

    move-result-object p1

    .line 144
    const-string v2, "__index"

    invoke-virtual {v1, v2, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 145
    invoke-virtual {v0, v1}, Lvm2/LuaUserdata;->setmetatable(Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 146
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.PixmapLibrary.AnonymousClass3 (info.flowersoft.theotown.scripting.libraries.PixmapLibrary$getPixmapTable$3)
.class public final Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$3;
.super Lvm2/lib/VarArgFunction;
.source "PixmapLibrary.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->getPixmapTable(Lcom/badlogic/gdx/graphics/Pixmap;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

.field public final returnValues:[Lvm2/LuaValue;

.field public final varargs:Lvm2/Varargs;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 5

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$3;->$pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 154
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    const/4 p1, 0x3

    .line 157
    new-array v0, p1, [Lvm2/LuaValue;

    const/4 v1, 0x0

    :goto_9
    if-ge v1, p1, :cond_12

    sget-object v2, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_12
    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$3;->returnValues:[Lvm2/LuaValue;

    .line 158
    invoke-static {v0}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$3;->varargs:Lvm2/Varargs;

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$3;->returnValues:[Lvm2/LuaValue;

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$3;->$pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(I)Lvm2/LuaInteger;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 162
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$3;->returnValues:[Lvm2/LuaValue;

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$3;->$pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v0

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(I)Lvm2/LuaInteger;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 163
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$3;->varargs:Lvm2/Varargs;

    const-string v0, "varargs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.PixmapLibrary.AnonymousClass6 (info.flowersoft.theotown.scripting.libraries.PixmapLibrary$getPixmapTable$6)
.class public final Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$6;
.super Lvm2/lib/VarArgFunction;
.source "PixmapLibrary.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->getPixmapTable(Lcom/badlogic/gdx/graphics/Pixmap;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $pixmap:Lcom/badlogic/gdx/graphics/Pixmap;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$6;->$pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 181
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 15

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 184
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    const-class v2, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v1, v2}, Lvm2/LuaValue;->checkuserdata(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.badlogic.gdx.graphics.Pixmap"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v1

    check-cast v6, Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v1, 0x3

    .line 185
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->checkint()I

    move-result v4

    const/4 v2, 0x4

    .line 186
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->checkint()I

    move-result v5

    const/4 v2, 0x5

    .line 187
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->optint(I)I

    move-result v2

    const/4 v7, 0x6

    .line 188
    invoke-virtual {p1, v7}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lvm2/LuaValue;->optint(I)I

    move-result v7

    const/4 v9, 0x7

    .line 189
    invoke-virtual {p1, v9}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v9

    invoke-virtual {v9, v8}, Lvm2/LuaValue;->optint(I)I

    move-result v8

    const/16 v9, 0x8

    .line 190
    invoke-virtual {p1, v9}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v9

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Lvm2/LuaValue;->optint(I)I

    move-result v9

    const/16 v10, 0x9

    .line 191
    invoke-virtual {p1, v10}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v10

    invoke-virtual {p1, v10}, Lvm2/LuaValue;->optint(I)I

    move-result v10

    if-eqz v2, :cond_70

    if-eq v2, v3, :cond_68

    goto :goto_77

    .line 196
    :cond_68
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$6;->$pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v11, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->SourceOver:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {p1, v11}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    goto :goto_77

    .line 194
    :cond_70
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$6;->$pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v11, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {p1, v11}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    :goto_77
    if-eqz v2, :cond_a2

    if-eq v2, v3, :cond_a2

    if-eq v2, v0, :cond_9c

    if-ne v2, v1, :cond_85

    .line 209
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$6;->$pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static/range {v3 .. v10}, Linfo/flowersoft/theotown/util/PixmapUtil;->blendPixmapOverlay(Lcom/badlogic/gdx/graphics/Pixmap;IILcom/badlogic/gdx/graphics/Pixmap;IIII)V

    goto :goto_b2

    .line 211
    :cond_85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown blending option "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 207
    :cond_9c
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$6;->$pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static/range {v3 .. v10}, Linfo/flowersoft/theotown/util/PixmapUtil;->blendPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IILcom/badlogic/gdx/graphics/Pixmap;IIII)V

    goto :goto_b2

    .line 204
    :cond_a2
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$6;->$pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    move v12, v5

    move v5, v4

    move-object v4, v6

    move v6, v12

    invoke-virtual/range {v3 .. v10}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    .line 205
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$6;->$pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 214
    :goto_b2
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.PixmapLibrary.AnonymousClass7 (info.flowersoft.theotown.scripting.libraries.PixmapLibrary$getPixmapTable$7)
.class public final Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$7;
.super Lvm2/lib/ThreeArgFunction;
.source "PixmapLibrary.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->getPixmapTable(Lcom/badlogic/gdx/graphics/Pixmap;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 3

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$7;->$pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 218
    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 9

    const-string v0, "arg1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "arg2"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "arg3"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p1

    const-string v0, "Pixmap:upload"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->assertPrivileged(Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->access$resolveFrame(Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;Lvm2/LuaValue;)I

    move-result p1

    const/4 p2, 0x1

    .line 222
    invoke-virtual {p3, p2}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p2

    .line 224
    sget-object p3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {p3, p1}, Lio/blueflower/stapel2d/drawing/Image;->getTextureId(I)I

    move-result p3

    .line 225
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v0, p3}, Lio/blueflower/stapel2d/drawing/Image;->selectTexture(I)V

    .line 226
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Image;->getX(I)F

    move-result v0

    float-to-int v0, v0

    .line 227
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Image;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 228
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, p3}, Lio/blueflower/stapel2d/drawing/Image;->getTextureOfId(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p2, :cond_74

    .line 232
    new-instance p2, Lcom/badlogic/gdx/graphics/Pixmap;

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$7;->$pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$7;->$pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$7;->$pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v4

    invoke-direct {p2, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 233
    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 234
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$7;->$pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {p2, v2, v1, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 235
    invoke-static {p2}, Linfo/flowersoft/theotown/util/PixmapUtil;->premultiplyAlpha(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    .line 236
    invoke-virtual {p3}, Lio/blueflower/stapel2d/drawing/Texture;->getSource()Lio/blueflower/stapel2d/drawing/TextureSource;

    move-result-object p3

    invoke-virtual {p3, p2, v0, p1, v1}, Lio/blueflower/stapel2d/drawing/TextureSource;->upload(Lcom/badlogic/gdx/graphics/Pixmap;III)V

    .line 237
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    goto :goto_7d

    .line 239
    :cond_74
    invoke-virtual {p3}, Lio/blueflower/stapel2d/drawing/Texture;->getSource()Lio/blueflower/stapel2d/drawing/TextureSource;

    move-result-object p2

    iget-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$7;->$pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {p2, p3, v0, p1, v1}, Lio/blueflower/stapel2d/drawing/TextureSource;->upload(Lcom/badlogic/gdx/graphics/Pixmap;III)V

    .line 241
    :goto_7d
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.PixmapLibrary.AnonymousClass5 (info.flowersoft.theotown.scripting.libraries.PixmapLibrary$inject$5)
.class public final Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$5;
.super Lvm2/lib/VarArgFunction;
.source "PixmapLibrary.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final returnValues:[Lvm2/LuaValue;

.field public final varargs:Lvm2/Varargs;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 106
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    const/4 v0, 0x4

    .line 108
    new-array v1, v0, [Lvm2/LuaValue;

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_10

    sget-object v3, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_10
    iput-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$5;->returnValues:[Lvm2/LuaValue;

    .line 109
    invoke-static {v1}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$5;->varargs:Lvm2/Varargs;

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 7

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    ushr-int/lit8 v0, p1, 0x18

    ushr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p1, p1, 0xff

    .line 117
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$5;->returnValues:[Lvm2/LuaValue;

    const/4 v4, 0x0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    aput-object v0, v3, v4

    .line 118
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$5;->returnValues:[Lvm2/LuaValue;

    const/4 v3, 0x1

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v1

    aput-object v1, v0, v3

    .line 119
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$5;->returnValues:[Lvm2/LuaValue;

    const/4 v1, 0x2

    invoke-static {v2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v2

    aput-object v2, v0, v1

    .line 120
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$5;->returnValues:[Lvm2/LuaValue;

    const/4 v1, 0x3

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    aput-object p1, v0, v1

    .line 121
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$5;->varargs:Lvm2/Varargs;

    const-string v0, "varargs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.PixmapLibrary$getPixmapTable$$inlined$luaFun$1 (info.flowersoft.theotown.scripting.libraries.PixmapLibrary$getPixmapTable$$inlined$luaFun$1)
.class public final Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$1;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->getPixmapTable(Lcom/badlogic/gdx/graphics/Pixmap;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 PixmapLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/PixmapLibrary\n*L\n1#1,66:1\n152#2:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic $pixmap$inlined:Lcom/badlogic/gdx/graphics/Pixmap;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$1;->$pixmap$inlined:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$1;->$pixmap$inlined:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result p1

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(I)Lvm2/LuaInteger;

    move-result-object p1

    if-nez p1, :cond_13

    .line 33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_13
    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.PixmapLibrary$getPixmapTable$$inlined$luaFun$2 (info.flowersoft.theotown.scripting.libraries.PixmapLibrary$getPixmapTable$$inlined$luaFun$2)
.class public final Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$2;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->getPixmapTable(Lcom/badlogic/gdx/graphics/Pixmap;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 PixmapLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/PixmapLibrary\n*L\n1#1,66:1\n153#2:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic $pixmap$inlined:Lcom/badlogic/gdx/graphics/Pixmap;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$2;->$pixmap$inlined:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$2;->$pixmap$inlined:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result p1

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(I)Lvm2/LuaInteger;

    move-result-object p1

    if-nez p1, :cond_13

    .line 33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_13
    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.PixmapLibrary$getPixmapTable$$inlined$luaFun$3 (info.flowersoft.theotown.scripting.libraries.PixmapLibrary$getPixmapTable$$inlined$luaFun$3)
.class public final Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$3;
.super Lvm2/lib/VarArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->getPixmapTable(Lcom/badlogic/gdx/graphics/Pixmap;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$5\n+ 2 PixmapLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/PixmapLibrary\n*L\n1#1,66:1\n168#2,5:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic $pixmap$inlined:Lcom/badlogic/gdx/graphics/Pixmap;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$3;->$pixmap$inlined:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 61
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    const-string v1, "arg(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    .line 68
    invoke-virtual {v2}, Lvm2/LuaValue;->checkint()I

    move-result v1

    .line 69
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 70
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$3;->$pixmap$inlined:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v2, v0, v1, p1}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(III)V

    .line 63
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.PixmapLibrary$getPixmapTable$$inlined$luaFun$4 (info.flowersoft.theotown.scripting.libraries.PixmapLibrary$getPixmapTable$$inlined$luaFun$4)
.class public final Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$4;
.super Lvm2/lib/ThreeArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->getPixmapTable(Lcom/badlogic/gdx/graphics/Pixmap;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$4\n+ 2 PixmapLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/PixmapLibrary\n*L\n1#1,66:1\n176#2,3:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic $pixmap$inlined:Lcom/badlogic/gdx/graphics/Pixmap;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$4;->$pixmap$inlined:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 51
    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    const-string v0, "arg1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "arg2"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "arg3"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 68
    invoke-virtual {p3}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 69
    iget-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$4;->$pixmap$inlined:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result p1

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(I)Lvm2/LuaInteger;

    move-result-object p1

    if-nez p1, :cond_25

    .line 53
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_25
    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.PixmapLibrary$getPixmapTable$$inlined$luaFun$5 (info.flowersoft.theotown.scripting.libraries.PixmapLibrary$getPixmapTable$$inlined$luaFun$5)
.class public final Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$5;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->getPixmapTable(Lcom/badlogic/gdx/graphics/Pixmap;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 PixmapLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/PixmapLibrary\n*L\n1#1,66:1\n246#2,2:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic $pixmap$inlined:Lcom/badlogic/gdx/graphics/Pixmap;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$5;->$pixmap$inlined:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$5;->$pixmap$inlined:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static {p1}, Linfo/flowersoft/theotown/util/PixmapUtil;->premultiplyAlpha(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    .line 33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.PixmapLibrary$getPixmapTable$$inlined$luaFun$6 (info.flowersoft.theotown.scripting.libraries.PixmapLibrary$getPixmapTable$$inlined$luaFun$6)
.class public final Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$6;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->getPixmapTable(Lcom/badlogic/gdx/graphics/Pixmap;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 PixmapLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/PixmapLibrary\n*L\n1#1,66:1\n251#2,2:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic $pixmap$inlined:Lcom/badlogic/gdx/graphics/Pixmap;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$6;->$pixmap$inlined:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$6;->$pixmap$inlined:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static {p1}, Linfo/flowersoft/theotown/util/PixmapUtil;->reversePremultiplyAlpha(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    .line 33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.PixmapLibrary$getPixmapTable$$inlined$luaFun$7 (info.flowersoft.theotown.scripting.libraries.PixmapLibrary$getPixmapTable$$inlined$luaFun$7)
.class public final Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$7;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->getPixmapTable(Lcom/badlogic/gdx/graphics/Pixmap;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 PixmapLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/PixmapLibrary\n*L\n1#1,66:1\n256#2,2:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic $pixmap$inlined:Lcom/badlogic/gdx/graphics/Pixmap;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$7;->$pixmap$inlined:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$getPixmapTable$$inlined$luaFun$7;->$pixmap$inlined:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.PixmapLibrary$inject$$inlined$luaFun$1 (info.flowersoft.theotown.scripting.libraries.PixmapLibrary$inject$$inlined$luaFun$1)
.class public final Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$$inlined$luaFun$1;
.super Lvm2/lib/TwoArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$3\n+ 2 PixmapLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/PixmapLibrary\n*L\n1#1,66:1\n43#2,3:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$$inlined$luaFun$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;

    .line 41
    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    const-string v0, "arg1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arg2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 68
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 69
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$$inlined$luaFun$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;

    new-instance v1, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v1, p1, p2, v2}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->access$wrapPixmap(Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;Lcom/badlogic/gdx/graphics/Pixmap;)Lvm2/LuaUserdata;

    move-result-object p1

    if-nez p1, :cond_23

    .line 43
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_23
    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.PixmapLibrary$inject$$inlined$luaFun$2 (info.flowersoft.theotown.scripting.libraries.PixmapLibrary$inject$$inlined$luaFun$2)
.class public final Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$$inlined$luaFun$2;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 PixmapLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/PixmapLibrary\n*L\n1#1,66:1\n49#2,23:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$$inlined$luaFun$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lvm2/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_33

    .line 70
    :try_start_17
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 71
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$$inlined$luaFun$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {v1, v0, v2}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->access$loadPixmap(Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;[BLcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->access$wrapPixmap(Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;Lcom/badlogic/gdx/graphics/Pixmap;)Lvm2/LuaUserdata;

    move-result-object p1
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_2e} :catch_2f

    goto :goto_5c

    :catch_2f
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    :cond_33
    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->readPath(Lvm2/LuaValue;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object p1

    if-eqz p1, :cond_5a

    .line 79
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 81
    :try_start_3f
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->readBytes()[B

    move-result-object p1

    .line 82
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$$inlined$luaFun$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {v0, p1, v1}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->access$loadPixmap(Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;[BLcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->access$wrapPixmap(Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;Lcom/badlogic/gdx/graphics/Pixmap;)Lvm2/LuaUserdata;

    move-result-object p1
    :try_end_52
    .catch Ljava/io/IOError; {:try_start_3f .. :try_end_52} :catch_53

    goto :goto_5c

    :catch_53
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    goto :goto_5c

    .line 88
    :cond_5a
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :goto_5c
    if-nez p1, :cond_60

    .line 33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_60
    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.PixmapLibrary$inject$$inlined$luaFun$3 (info.flowersoft.theotown.scripting.libraries.PixmapLibrary$inject$$inlined$luaFun$3)
.class public final Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$$inlined$luaFun$3;
.super Lvm2/lib/TwoArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$3\n+ 2 PixmapLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/PixmapLibrary\n*L\n1#1,66:1\n75#2,20:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$$inlined$luaFun$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;

    .line 41
    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 11

    const-string v0, "arg1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arg2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "Pixmap.download"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->assertPrivileged(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p2, v0}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p2

    .line 70
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$$inlined$luaFun$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->access$resolveFrame(Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;Lvm2/LuaValue;)I

    move-result p1

    .line 71
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Image;->getTextureId(I)I

    move-result v0

    .line 72
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Image;->selectTexture(I)V

    .line 73
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Image;->getX(I)F

    move-result v1

    float-to-int v5, v1

    .line 74
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Image;->getY(I)F

    move-result v1

    float-to-int v6, v1

    .line 75
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Image;->getTextureOfId(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v0

    .line 76
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v1

    float-to-int v1, v1

    .line 77
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v2, p1}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result p1

    float-to-int p1, p1

    .line 79
    new-instance v4, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v4, v1, p1, v2}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 80
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Texture;->getSource()Lio/blueflower/stapel2d/drawing/TextureSource;

    move-result-object v2

    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, p1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lio/blueflower/stapel2d/drawing/TextureSource;->download(Lio/blueflower/stapel2d/drawing/Engine;Lcom/badlogic/gdx/graphics/Pixmap;III)V

    if-eqz p2, :cond_63

    .line 83
    invoke-static {v4}, Linfo/flowersoft/theotown/util/PixmapUtil;->reversePremultiplyAlpha(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    .line 86
    :cond_63
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$$inlined$luaFun$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;

    invoke-static {p1, v4}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->access$wrapPixmap(Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;Lcom/badlogic/gdx/graphics/Pixmap;)Lvm2/LuaUserdata;

    move-result-object p1

    if-nez p1, :cond_6d

    .line 43
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_6d
    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.PixmapLibrary$inject$$inlined$luaFun$4 (info.flowersoft.theotown.scripting.libraries.PixmapLibrary$inject$$inlined$luaFun$4)
.class public final Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary$inject$$inlined$luaFun$4;
.super Lvm2/lib/VarArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$5\n+ 2 PixmapLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/PixmapLibrary\n*L\n1#1,66:1\n98#2,6:67\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 7

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    const-string v1, "arg(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    .line 68
    invoke-virtual {v2}, Lvm2/LuaValue;->checkint()I

    move-result v1

    .line 69
    invoke-virtual {v3}, Lvm2/LuaValue;->checkint()I

    move-result v2

    const/16 v3, 0xff

    .line 70
    invoke-virtual {p1, v3}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 72
    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(I)Lvm2/LuaInteger;

    move-result-object p1

    if-eqz p1, :cond_49

    return-object p1

    .line 63
    :cond_49
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

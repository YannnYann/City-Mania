###### Class vm2.server.DefaultLauncher (vm2.server.DefaultLauncher)
.class public Lvm2/server/DefaultLauncher;
.super Ljava/lang/Object;
.source "DefaultLauncher.java"

# interfaces
.implements Lvm2/server/Launcher;


# instance fields
.field protected g:Lvm2/Globals;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lvm2/lib/jse/JsePlatform;->standardGlobals()Lvm2/Globals;

    move-result-object v0

    iput-object v0, p0, Lvm2/server/DefaultLauncher;->g:Lvm2/Globals;

    return-void
.end method

.method private launchChunk(Lvm2/LuaValue;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 9

    .line 71
    array-length v0, p2

    new-array v1, v0, [Lvm2/LuaValue;

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v0, :cond_12

    .line 73
    aget-object v4, p2, v3

    invoke-static {v4}, Lvm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 74
    :cond_12
    invoke-static {v1}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p2

    invoke-virtual {p1, p2}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lvm2/Varargs;->narg()I

    move-result p2

    .line 77
    new-array v0, p2, [Ljava/lang/Object;

    :goto_20
    if-ge v2, p2, :cond_75

    add-int/lit8 v1, v2, 0x1

    .line 79
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Lvm2/LuaValue;->type()I

    move-result v4

    const/4 v5, -0x2

    if-eq v4, v5, :cond_69

    const/4 v5, 0x1

    if-eq v4, v5, :cond_65

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5a

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4f

    const/4 v5, 0x5

    if-eq v4, v5, :cond_48

    const/4 v5, 0x6

    if-eq v4, v5, :cond_41

    .line 100
    aput-object v3, v0, v2

    goto :goto_73

    .line 97
    :cond_41
    invoke-virtual {v3}, Lvm2/LuaValue;->touserdata()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_73

    .line 94
    :cond_48
    invoke-virtual {v3}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_73

    .line 85
    :cond_4f
    invoke-virtual {v3}, Lvm2/LuaValue;->todouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_73

    .line 82
    :cond_5a
    invoke-virtual {v3}, Lvm2/LuaValue;->toboolean()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_73

    :cond_65
    const/4 v3, 0x0

    .line 91
    aput-object v3, v0, v2

    goto :goto_73

    .line 88
    :cond_69
    invoke-virtual {v3}, Lvm2/LuaValue;->toint()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    :goto_73
    move v2, v1

    goto :goto_20

    :cond_75
    return-object v0
.end method


# virtual methods
.method public launch(Ljava/io/InputStream;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6

    .line 62
    iget-object v0, p0, Lvm2/server/DefaultLauncher;->g:Lvm2/Globals;

    const-string v1, "main"

    const-string v2, "bt"

    invoke-virtual {v0, p1, v1, v2, v0}, Lvm2/Globals;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lvm2/server/DefaultLauncher;->launchChunk(Lvm2/LuaValue;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public launch(Ljava/io/Reader;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5

    .line 67
    iget-object v0, p0, Lvm2/server/DefaultLauncher;->g:Lvm2/Globals;

    const-string v1, "main"

    invoke-virtual {v0, p1, v1}, Lvm2/Globals;->load(Ljava/io/Reader;Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lvm2/server/DefaultLauncher;->launchChunk(Lvm2/LuaValue;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public launch(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5

    .line 57
    iget-object v0, p0, Lvm2/server/DefaultLauncher;->g:Lvm2/Globals;

    const-string v1, "main"

    invoke-virtual {v0, p1, v1}, Lvm2/Globals;->load(Ljava/lang/String;Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lvm2/server/DefaultLauncher;->launchChunk(Lvm2/LuaValue;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

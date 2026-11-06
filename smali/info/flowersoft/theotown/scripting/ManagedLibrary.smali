###### Class info.flowersoft.theotown.scripting.ManagedLibrary (info.flowersoft.theotown.scripting.ManagedLibrary)
.class public Linfo/flowersoft/theotown/scripting/ManagedLibrary;
.super Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;
.source "ManagedLibrary.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;)V
    .registers 5

    .line 19
    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;->extractName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;->getCode()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-direct {p0, v0, v1, p1, p2}, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;)V

    .line 9
    instance-of p1, p0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;

    if-eqz p1, :cond_d

    .line 10
    move-object p1, p0

    check-cast p1, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->injector:Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;

    :cond_d
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;)V
    .registers 4

    .line 15
    invoke-static {}, Linfo/flowersoft/theotown/resources/ScriptingManager;->getInstance()Linfo/flowersoft/theotown/resources/ScriptingManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/resources/ScriptingManager;->get(Ljava/lang/String;)Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;)V

    return-void
.end method

.method public static extractName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x2f

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_e

    add-int/lit8 v0, v0, 0x1

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_e
    const/16 v0, 0x2e

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1b

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1b
    return-object p0
.end method


# virtual methods
.method public assertPrivileged(Ljava/lang/String;)V
    .registers 3

    .line 26
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->assertPrivileged(Ljava/lang/String;)V

    return-void
.end method

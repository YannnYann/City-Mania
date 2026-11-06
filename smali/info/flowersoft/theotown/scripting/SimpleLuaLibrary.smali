###### Class info.flowersoft.theotown.scripting.SimpleLuaLibrary (info.flowersoft.theotown.scripting.SimpleLuaLibrary)
.class public Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;
.super Ljava/lang/Object;
.source "SimpleLuaLibrary.java"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/LuaLibrary;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;
    }
.end annotation


# static fields
.field public static final origKey:Lvm2/LuaValue;


# instance fields
.field public code:Ljava/lang/String;

.field public injector:Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->origKey:Lvm2/LuaValue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;)V
    .registers 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_22

    if-eqz p2, :cond_1a

    if-eqz p3, :cond_12

    .line 28
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->name:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->code:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->path:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->injector:Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;

    return-void

    .line 26
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "path may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "code may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public load(Lvm2/Globals;Lvm2/LuaTable;Linfo/flowersoft/theotown/scripting/LuaLibrary$CodeLoader;)V
    .registers 6

    .line 36
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    .line 37
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->code:Ljava/lang/String;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->path:Ljava/lang/String;

    invoke-interface {p3, v0, v1}, Linfo/flowersoft/theotown/scripting/LuaLibrary$CodeLoader;->loadBase64(Ljava/lang/String;Ljava/lang/String;)Lvm2/LuaFunction;

    move-result-object p3

    sget-object v0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->origKey:Lvm2/LuaValue;

    invoke-virtual {p3, v0, p2}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 38
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    .line 41
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p2

    .line 42
    const-string p3, "_private"

    invoke-virtual {p2, p3}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p3

    .line 44
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->injector:Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;

    if-eqz v0, :cond_26

    .line 45
    invoke-interface {v0, p2, p3, p1}, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V

    .line 48
    :cond_26
    const-string p1, "finalize"

    invoke-virtual {p2, p1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lvm2/LuaValue;->optfunction(Lvm2/LuaFunction;)Lvm2/LuaFunction;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 50
    invoke-virtual {p1, p2}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    :cond_36
    return-void
.end method

.method public unload(Lvm2/Globals;)V
    .registers 4

    .line 56
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->name:Ljava/lang/String;

    sget-object v1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.SimpleLuaLibrary.LibraryInjector (info.flowersoft.theotown.scripting.SimpleLuaLibrary$LibraryInjector)
.class public interface abstract Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;
.super Ljava/lang/Object;
.source "SimpleLuaLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LibraryInjector"
.end annotation


# virtual methods
.method public abstract inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end method
